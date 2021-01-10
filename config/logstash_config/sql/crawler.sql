SELECT
crawler_doc_id AS id
, crawler_base_url AS base_url
, crawler_target_url AS target_url
, crawler_keyword AS keyword
, crawler_title AS title
, crawler_content AS content
, crawler_image_path AS image_path
, reg_date
, chg_date
, UNIX_TIMESTAMP(chg_date) AS unix_ts_in_secs
FROM crawler
WHERE 1 = 1
        AND (UNIX_TIMESTAMP(chg_date) > :sql_last_value AND chg_date < NOW())
ORDER BY chg_date ASC
