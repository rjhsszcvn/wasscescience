/*
  # Generate topic_sections from topics.content for Core Science, Health Science, Physical Education

  These three subjects had their notes stored directly in topics.content (HTML format)
  but the TopicPage component reads from the topic_sections table.

  This migration:
  1. Splits each topic's HTML content on <h3> tags to create sections
  2. The intro content (before first <h3>) becomes the 'overview' section
  3. Each subsequent <h3> block becomes a 'content' section
  4. Only processes topics that have no sections yet and have content

  Section types rotate: overview, explanation, definitions, examples, practice, content
*/

DO $$
DECLARE
  rec RECORD;
  raw_content TEXT;
  parts TEXT[];
  part TEXT;
  section_title TEXT;
  section_body TEXT;
  section_type TEXT;
  section_types TEXT[] := ARRAY['overview','explanation','definitions','examples','practice','content'];
  idx INTEGER;
  order_idx INTEGER;
BEGIN
  FOR rec IN
    SELECT t.id AS topic_id, t.name AS topic_name, t.content
    FROM topics t
    JOIN subjects s ON s.id = t.subject_id
    WHERE s.name IN ('Core Science', 'Health Science', 'Physical Education')
      AND t.content IS NOT NULL
      AND t.content <> ''
      AND NOT EXISTS (
        SELECT 1 FROM topic_sections ts WHERE ts.topic_id = t.id
      )
  LOOP
    raw_content := rec.content;
    -- Split on <h3> boundaries
    parts := regexp_split_to_array(raw_content, '<h3[^>]*>');
    order_idx := 1;
    idx := 1;

    FOR i IN 1..array_length(parts, 1) LOOP
      part := trim(parts[i]);
      IF part = '' THEN CONTINUE; END IF;

      IF i = 1 THEN
        -- Intro block before first h3 - strip leading h2 tag for title
        section_title := regexp_replace(part, '^<h2[^>]*>(.*?)</h2>.*$', '\1', 'is');
        IF section_title = part THEN
          section_title := rec.topic_name;
        END IF;
        section_body := part;
        section_type := 'overview';
      ELSE
        -- Extract the h3 text as the section title
        section_title := regexp_replace(part, '^(.*?)</h3>.*$', '\1', 'is');
        section_body := '<h3>' || part;
        section_type := section_types[((idx - 1) % array_length(section_types, 1)) + 1];
        idx := idx + 1;
      END IF;

      -- Clean HTML tags from title
      section_title := regexp_replace(section_title, '<[^>]+>', '', 'g');
      section_title := trim(section_title);
      IF section_title = '' THEN
        section_title := rec.topic_name || ' - Part ' || order_idx;
      END IF;

      INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
      VALUES (rec.topic_id, section_title, section_body, section_type, order_idx);

      order_idx := order_idx + 1;
    END LOOP;
  END LOOP;
END $$;
