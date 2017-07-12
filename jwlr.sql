-- $Id$
-- Purpose: Show long running sessions

set pages 10000 lines 1000 time on

column opname         format a30
column target         format a36
column time_remaining format 9,999,999

select   inst_id, sid, serial#, target, opname, sofar, totalwork, time_remaining
   from  gv$session_longops
   where sofar <> totalwork
   order by target, sid
/
