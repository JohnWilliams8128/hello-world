-- $Id$
-- Purpose: Display records in DBA_JOBS

alter session set nls_date_format = 'YYYY-MM-DD HH24:MI:SS'
/

select ''
||CHR(10)||'JOB         = '||JOB
||CHR(10)||'LOG_USER    = '||LOG_USER
||CHR(10)||'PRIV_USER   = '||PRIV_USER
||CHR(10)||'SCHEMA_USER = '||SCHEMA_USER
||CHR(10)||'LAST_DATE   = '||LAST_DATE
||CHR(10)||'LAST_SEC    = '||LAST_SEC
||CHR(10)||'THIS_DATE   = '||THIS_DATE
||CHR(10)||'THIS_SEC    = '||THIS_SEC
||CHR(10)||'NEXT_DATE   = '||NEXT_DATE
||CHR(10)||'NEXT_SEC    = '||NEXT_SEC
||CHR(10)||'TOTAL_TIME  = '||TOTAL_TIME
||CHR(10)||'BROKEN      = '||BROKEN
||CHR(10)||'INTERVAL    = '||INTERVAL
||CHR(10)||'FAILURES    = '||FAILURES
||CHR(10)||'WHAT        = '||WHAT
||CHR(10)||'NLS_ENV     = '||NLS_ENV
||CHR(10)||'MISC_ENV    = '||MISC_ENV
||CHR(10)||'INSTANCE    = '||INSTANCE
from dba_jobs
order by job
/
