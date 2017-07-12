-- $Id$
-- Purpose: Show records from DBA_TAB_PRIVS for specified table

select * from dba_tab_privs where table_name = upper('&1')
/
