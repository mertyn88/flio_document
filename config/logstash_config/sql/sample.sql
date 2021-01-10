SELECT
 *
, UNIX_TIMESTAMP(modification_time) AS unix_ts_in_secs
FROM es_table
WHERE 1 = 1
	AND (UNIX_TIMESTAMP(modification_time) > :sql_last_value AND modification_time < NOW())
ORDER BY modification_time ASC
