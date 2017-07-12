-- $Id$
-- Purpose: Show ASM space in MB for each schema and total for all schemas

set head on pages 1000 lines 1000 trimout on trimspool on tab off

select   owner, to_char(sum(bytes)/1024/1024/1024,'99,999.9') as GB_Used, count(1)
from dba_segments
group by owner
order by owner
/
select to_char(sum(bytes)/1024/1024/1024,'99,999.9') as GB_Used, count(1) from dba_segments
/
