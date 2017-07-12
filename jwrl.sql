-- $Id$
-- Purpose: Show Redo logs in V$LOG

set lines 1000 head on pages 1000 feedback 1

column FIRST_CHANGE# format 999999999999999

select * from v$log order by THREAD#, GROUP# ;
