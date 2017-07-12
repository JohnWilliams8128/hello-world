-- $Id$
-- Purpose: Show ASM space in MB for each tablespace

set head on pages 1000 lines 1000 trimout on trimspool on tab off

select   tablespace_name, to_char(sum(bytes)/1024/1024/1024,'99,999.9') as GB_Used, count(1)
from dba_segments
group by tablespace_name
order by tablespace_name
/
