-- $Id$
-- Purpose: Show records in DBA_ERRORS for specified object

select * from dba_errors where name = upper('&1')
/
