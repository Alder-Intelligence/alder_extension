-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION alder_optimizer" to load this file. \quit

--
-- gp_dump_query_oids()
--
CREATE OR REPLACE FUNCTION public.gp_dump_query_oids(query TEXT)
RETURNS TEXT
AS 'MODULE_PATHNAME', 'gp_dump_query_oids'
LANGUAGE C VOLATILE PARALLEL RESTRICTED;
