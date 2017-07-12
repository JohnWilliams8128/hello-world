-- $Id$
-- Purpose: Show objects that are more than 10 GB

set head on pages 1000 lines 1000 trimout on trimspool on tab off

column segment_name format a30
select   owner, segment_type, segment_name, to_char(sum(bytes)/1024/1024/1024,'99,999.9') as GB_Used
from dba_segments
group by owner, segment_type, segment_name
having sum(bytes)/1024/1024/1024 > 10
order by owner, segment_type, segment_name
/
