解决job不执行的问题：
shutdown transactional;
startup mount;
alter system set job_queue_processes=20 scope=spfile;
shutdown immediate;
startup;



prompt
prompt Creating sys.job pcace.pkg_pcace_stat.SP_Order_Check
prompt ==================================
prompt
declare
  jobno number;
begin
  sys.dbms_job.submit(job => jobno,
                      what => 'pcace.pkg_pcace_OrderStat.SP_Order_Check;',
                      next_date => sysdate,
                      interval => 'to_date(to_char(sysdate,''yyyymmddhh24mi''),''yyyymmddhh24mi'')+2/(60*24)');
  commit;
end;
/
prompt
prompt Creating sys.job pcace.pkg_pcace_stat.SP_StatManager
prompt ==================================
prompt
declare
  jobno number;
begin
  sys.dbms_job.submit(job => jobno,
                      what => 'pcace.pkg_pcace_OrderStat.SP_StatManager;',
                      next_date => sysdate,
                      interval => 'trunc(sysdate, ''hh'')+floor(to_char(sysdate,''mi'')/2+1)*2/(60*24)'); //2分钟一次
  commit;
end;
/
