-- $Id$
-- Purpose: Show size of object from DBA_SEGMENTS

column segment_name format a30
column bytes        format 999,999,999,999

select   owner, segment_type, segment_name, bytes
from dba_segments
where segment_name like upper('&1%')
order by owner, segment_type, segment_name
/
