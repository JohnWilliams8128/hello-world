-- $Id$
-- Purpose: Estimate how long RMAN backup will run

select   sl.sid, sl.opname, to_char(100*(sofar/totalwork), '9990.9')||'%' pct_done
        ,to_char(sysdate+(TIME_REMAINING/60/60/24),'YYYY-MM-DD HH24:MI:SS') done_by
   from  v$session_longops sl, v$session s
   where sl.sid       = s.sid
     and sl.serial#   = s.serial#
     and sl.sofar    != sl.totalwork
     and sl.totalwork > 0
     and sl.sid       in (select sid from v$session where module like 'backup%' or module like 'restore%' or module like 'rman%')
   order by 4
/
