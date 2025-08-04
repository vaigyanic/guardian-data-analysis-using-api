WITH guardian_data AS (
  SELECT * FROM guardian_articles
),
all_tags AS (
  SELECT 
    t.id,
    t."webTitle",
    tag_item->>'type' AS type,
    tag_item->>'webTitle' AS tagValue
  FROM guardian_data t,
  LATERAL jsonb_array_elements(t.tags::jsonb) AS tag_item
),
author_tags AS (
  SELECT * FROM all_tags WHERE type = 'contributor'
)
SELECT 
  g.id,
  g.type,
  g."sectionId",
  g."sectionName",
  g."webPublicationDate",
  g."webTitle",
  g."webUrl",
  g."fields.charCount" AS charCount,
  g."fields.isLive" AS isLive,
  g."fields.lang" AS lang,
  g."fields.lastModified" AS lastModified,
  g."fields.productionOffice" AS productionOffice,
  g."fields.wordcount" AS wordCount,
  a.tagValue AS authorName
FROM guardian_data g
LEFT JOIN author_tags a
  ON g.id = a.id;
