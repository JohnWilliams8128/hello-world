-- $Id$
-- Purpose: Display important job history from DBA_SCHEDULER_JOB_RUN_DETAILS

COLUMN   job_name          FORMAT   a30
COLUMN   actual_start_date FORMAT   a50
COLUMN   run_duration      FORMAT   a20

select   job_name, actual_start_date, run_duration
from dba_scheduler_job_run_details
where actual_start_date > trunc(sysdate) - 30
and job_name not in ('CHARGE_JOB','MGMT_CONFIG_JOB','MGMT_CONFIG_JOB_1','MGMT_STATS_CONFIG_JOB','MGMT_STATS_CONFIG_JOB_1','PURGE_LOG')
and job_name not like 'UTL_RECOMP_%'
order by job_name, actual_start_date
/
