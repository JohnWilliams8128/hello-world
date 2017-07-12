-- $Id$
-- Purpose: Display records in DBA_SCHEDULER_JOBS

alter session set nls_date_format = 'YYYY-MM-DD HH24:MI:SS'
/

select ''
||CHR(10)||'OWNER                = '||OWNER
||CHR(10)||'JOB_NAME             = '||JOB_NAME
||CHR(10)||'JOB_SUBNAME          = '||JOB_SUBNAME
||CHR(10)||'JOB_CREATOR          = '||JOB_CREATOR
||CHR(10)||'CLIENT_ID            = '||CLIENT_ID
||CHR(10)||'GLOBAL_UID           = '||GLOBAL_UID
||CHR(10)||'PROGRAM_OWNER        = '||PROGRAM_OWNER
||CHR(10)||'PROGRAM_NAME         = '||PROGRAM_NAME
||CHR(10)||'JOB_TYPE             = '||JOB_TYPE
--||CHR(10)||'JOB_ACTION           = '||JOB_ACTION
||CHR(10)||'NUMBER_OF_ARGUMENTS  = '||NUMBER_OF_ARGUMENTS
||CHR(10)||'SCHEDULE_OWNER       = '||SCHEDULE_OWNER
||CHR(10)||'SCHEDULE_NAME        = '||SCHEDULE_NAME
||CHR(10)||'SCHEDULE_TYPE        = '||SCHEDULE_TYPE
||CHR(10)||'START_DATE           = '||START_DATE
||CHR(10)||'REPEAT_INTERVAL      = '||REPEAT_INTERVAL
||CHR(10)||'EVENT_QUEUE_OWNER    = '||EVENT_QUEUE_OWNER
||CHR(10)||'EVENT_QUEUE_NAME     = '||EVENT_QUEUE_NAME
||CHR(10)||'EVENT_QUEUE_AGENT    = '||EVENT_QUEUE_AGENT
||CHR(10)||'EVENT_CONDITION      = '||EVENT_CONDITION
||CHR(10)||'EVENT_RULE           = '||EVENT_RULE
||CHR(10)||'END_DATE             = '||END_DATE
||CHR(10)||'JOB_CLASS            = '||JOB_CLASS
||CHR(10)||'ENABLED              = '||ENABLED
||CHR(10)||'AUTO_DROP            = '||AUTO_DROP
||CHR(10)||'RESTARTABLE          = '||RESTARTABLE
||CHR(10)||'STATE                = '||STATE
||CHR(10)||'JOB_PRIORITY         = '||JOB_PRIORITY
||CHR(10)||'RUN_COUNT            = '||RUN_COUNT
||CHR(10)||'MAX_RUNS             = '||MAX_RUNS
||CHR(10)||'FAILURE_COUNT        = '||FAILURE_COUNT
||CHR(10)||'MAX_FAILURES         = '||MAX_FAILURES
||CHR(10)||'RETRY_COUNT          = '||RETRY_COUNT
||CHR(10)||'LAST_START_DATE      = '||LAST_START_DATE
||CHR(10)||'LAST_RUN_DURATION    = '||LAST_RUN_DURATION
||CHR(10)||'NEXT_RUN_DATE        = '||NEXT_RUN_DATE
||CHR(10)||'SCHEDULE_LIMIT       = '||SCHEDULE_LIMIT
||CHR(10)||'MAX_RUN_DURATION     = '||MAX_RUN_DURATION
||CHR(10)||'LOGGING_LEVEL        = '||LOGGING_LEVEL
||CHR(10)||'STOP_ON_WINDOW_CLOSE = '||STOP_ON_WINDOW_CLOSE
||CHR(10)||'INSTANCE_STICKINESS  = '||INSTANCE_STICKINESS
||CHR(10)||'RAISE_EVENTS         = '||RAISE_EVENTS
||CHR(10)||'SYSTEM               = '||SYSTEM
||CHR(10)||'JOB_WEIGHT           = '||JOB_WEIGHT
||CHR(10)||'NLS_ENV              = '||NLS_ENV
||CHR(10)||'SOURCE               = '||SOURCE
||CHR(10)||'DESTINATION          = '||DESTINATION
||CHR(10)||'COMMENTS             = '||COMMENTS
||CHR(10)||'FLAGS                = '||FLAGS
from dba_scheduler_jobs
order by owner, job_name
/
