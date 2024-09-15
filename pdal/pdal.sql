-- Make sure `search_path` is set properly
-- ALTER DATABASE app SET search_path="$user",public,postgis;

-- Select all pointcloud patches (pcpatch)
SELECT *
FROM hamilton;

-- Select the schema (formats) for each pointcloud patch (points, too?)
-- it's an XML schema that defines the attributes of each point
SELECT *
FROM pointcloud_formats;

-- pointcloud_columns is like geometry_columns
SELECT *
FROM pointcloud_columns;

-- Number of points in dataset
SELECT sum(PC_NumPoints(pa)) AS total_points
FROM hamilton;

-- Number of rows in table
SELECT COUNT(*)
FROM hamilton;

-- One patch as text
SELECT PC_AsText(pa)
FROM hamilton
LIMIT 1;

-- table summary with attribute statistics
SELECT pc_summary(pa)
FROM hamilton LIMIT 1;

-- extracts one element from the summary-compr, or the type of compression
SELECT pc_summary(pa)::json->'compr'
FROM hamilton LIMIT 1;

-- Get one element from the second level of the summary json 
SELECT jsonb_array_elements(pc_summary(pa)::jsonb->'dims') AS dim
FROM hamilton
WHERE (pc_summary(pa)::jsonb->'dims') @> '[{"name": "Intensity"}]'::jsonb
LIMIT 1;

-- Query to determine the point attributes of the table (schema-like)
WITH sub AS (
	SELECT jsonb_array_elements(pc_summary(pa)::jsonb->'dims') AS elem
 	FROM hamilton
)
SELECT DISTINCT
	elem->>'name' AS name,
	(elem->>'pos')::integer AS pos
FROM sub
ORDER BY (elem->>'pos')::integer;

-- Query to determine the point attributes of the table (schema-like)
-- Alternative to above
-- SELECT DISTINCT
-- 	elem->>'name' AS name,
-- 	(elem->>'pos')::integer AS pos
-- FROM (
--   SELECT jsonb_array_elements(pc_summary(pa)::jsonb->'dims') AS elem
--   FROM hamilton
-- ) sub
-- ORDER BY (elem->>'pos')::integer;

-- Explode all pcpoints from all pcpatches and convert to text
-- one row per point
SELECT PC_AsText(PC_Explode(pa)), id
FROM hamilton;

-- Get the entire point record (as json)
SELECT PC_Get(PC_Explode(pa)::pcpoint), id
FROM hamilton
LIMIT 5;

---------------------------
-- Output spatial tables --
--        (below)        --
---------------------------


-- Get the `X`, `Y`, `Z` and `Classification`'
DROP TABLE IF EXISTS pts;
CREATE TABLE pts AS
SELECT
	id,
	PC_Get(PC_Explode(pa)::pcpoint, 'X') AS x,
	PC_Get(PC_Explode(pa)::pcpoint, 'Y') AS y,
	PC_Get(PC_Explode(pa)::pcpoint, 'Z') AS z,
	PC_Get(PC_Explode(pa)::pcpoint, 'Classification') AS classification,
	ST_MakePoint(
		PC_Get(PC_Explode(pa)::pcpoint, 'X'),
		PC_Get(PC_Explode(pa)::pcpoint, 'Y'),
		PC_Get(PC_Explode(pa)::pcpoint, 'Z')
	)::geometry(POINTZ, 2193) AS geom
FROM hamilton;


-- Get the `X`, `Y` and `Z` and `Classification`'
-- while cutting down on PC_Explode calls
DROP TABLE IF EXISTS pts2;
CREATE TABLE pts2 AS
WITH explode AS (
	SELECT
		PC_Explode(pa)::pcpoint AS elem
	FROM hamilton
), withrowid AS (
	SELECT
		ROW_NUMBER() OVER() AS id,
		elem
	FROM explode
)
SELECT
	id,
	PC_Get(elem, 'X') AS x,
	PC_Get(elem, 'Y') AS y,
	PC_Get(elem, 'Z') AS z,
	PC_Get(elem, 'Classification') AS classification,
	ST_MakePoint(
		PC_Get(elem, 'X'),
		PC_Get(elem, 'Y'),
		PC_Get(elem, 'Z')
	)::geometry(POINTZ, 2193) AS geom
FROM withrowid;

SELECT *
FROM geometry_columns;

