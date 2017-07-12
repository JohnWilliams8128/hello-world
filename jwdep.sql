-- $Id$
-- Purpose: Show dependencies for specified object

select * from dba_dependencies where name = upper('&1')
/
