-- $Id$
-- Purpose: Show FRA usage

set head on pages 10000 feedback off

select * from v$flash_recovery_area_usage;

set feedback on
