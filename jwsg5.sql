-- $Id$
-- Purpose: Show LOB columns more than 10 GB

set head on pages 1000 lines 1000 trimout on trimspool on tab off

column column_name format a30
select   ds.owner, dl.table_name, dl.column_name, to_char(sum(ds.bytes)/1024/1024/1024,'99,999.9') as GB_Used
from dba_segments ds, dba_lobs dl
where ds.segment_type = 'LOBSEGMENT'
and dl.owner = ds.owner
and dl.segment_name = ds.segment_name
group by ds.owner, dl.table_name, dl.column_name
having sum(ds.bytes)/1024/1024/1024 > 10
order by ds.owner, dl.table_name, dl.column_name
/
