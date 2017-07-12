-- $Id$
-- Purpose: Show record from DBA_SEQUENCES for specified sequence

select * from dba_sequences where sequence_name = upper('&1')
/
