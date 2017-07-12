-- $Id$
-- Purpose: Show records from DBA_SYNONYMS for specified synonym

select * from dba_synonyms where synonym_name = upper('&1')
/
