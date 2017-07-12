-- $Id$
-- Purpose: Show records from DBA_OBJECTS for specified object

column object_name format a30

select owner, object_type, object_name from dba_objects where object_name = upper('&1')
/
