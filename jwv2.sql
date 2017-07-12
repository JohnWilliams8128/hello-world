-- $Id$
-- Purpose: Show all sessions from GV$SESSION

set pages 10000 lines 1000 trimout on trimspool on tab off

column inst_id    format 999 heading "INS"
column status     format a8
column username   format a14
column schemaname format a14
column osuser     format a8
column machine    format a20
column logon_time format a20
column program    format a30

select
        INST_ID
       ,to_char(SID             ,   '9999') AS SID         --NUMBER
       ,to_char(SERIAL#         , '999999') AS SERIAL#         --NUMBER
       ,substr (STATUS          , 1, 12) AS STATUS              --VARCHAR2(8)
       ,substr (USERNAME        , 1, 14) AS USERNAME            --VARCHAR2(30)
       ,substr (SCHEMANAME      , 1, 14) AS SCHEMANAME          --VARCHAR2(30)
       ,substr (OSUSER          , 1,  8) AS OSUSER              --VARCHAR2(30)
       ,substr (MACHINE         , 1, 15) AS MACHINE             --VARCHAR2(64)
       ,TO_CHAR(LOGON_TIME      ,'YYYY-MM-DD HH24:MI:SS') AS LOGON_TIME            --DATE
       ,substr (PROGRAM         , 1, 30) AS PROGRAM             --VARCHAR2(48)
   from gv$session
   where username not in ('SYS','SYSTEM','CTXSYS','WMSYS','FLOWS_030100','DBSNMP','OUTLN','GREENARMOR','SYSMAN')
-- and status = 'ACTIVE'
   order by inst_id, username, schemaname, sid, serial#
/
