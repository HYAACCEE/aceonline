create or replace package pkg_pcace_orderStat is

--------------------------------------------
-- Export file for user pcace             --
-- Created by wxl on 2016-10-28           --
-- updated by wxl on 2016-10-28           --
--------------------------------------------
  -- Stat : ���ݼ��
  procedure SP_StatManager;

  -- Order : �������
  procedure SP_Order_Check;

  -- Log : ��־
  procedure P_Log(
    a_context        in varchar2
  );

  -- SMS : ����֪ͨ
  procedure P_SMS(
    a_messageFlag  in integer,
    a_smsType      in integer,
    a_phone        in varchar2,
    a_sms          in varchar2
  );

end pkg_pcace_orderStat;
/
create or replace package body pkg_pcace_orderStat is

  -- Stat : ���ݼ��
  procedure SP_StatManager
  is
    plog             number;
    a_logDateStr     varchar2(20);
    a_curdate        number;
    counter          number;
    counter1         number;
    counter2         number;
    counter3         number;
    counter4         number;
    tmp              varchar2(200);
    tmp1             varchar2(200);
    ResultCursor     pkg_pcace_web.rc_class;
  begin
    plog := 100;
    select to_number(to_char(sysdate,'hh24mi')) into a_curdate from dual;
    a_logDateStr := to_char(sysdate,'yyyy-mm-dd hh24:mi:ss');
    P_Log(a_logDateStr||'���ݼ�ܿ�ʼ curdate='||a_curdate);

    --00:10 ---------------------�û�����ͳ��
    if a_curdate = 0010 then
      plog := 101;
      P_Log(a_logDateStr||'ACE����ͳ�� curdate='||a_curdate);
      insert into ZB_Stat select seq_z_datahis_iid.nextval,'ACE����ͳ�� by system', ttt.* from (select * from B_Stat) ttt;
      delete from B_Stat where istdate<sysdate-1/(24*60);
      --��������
      plog := 102;
      insert into B_Stat(dataid,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c20,c21)
       select seqB_Stat.nextval, 260001, 130001, '', 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 150, 500 from dual;
      --��������
      plog := 103;
      insert into B_Stat(dataid,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c20,c21)
       select seqB_Stat.nextval, 260002, 130001, '', 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 250, 800 from dual;
      --��������
      plog := 104;
      insert into B_Stat(dataid,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c20,c21)
       select seqB_Stat.nextval, 260003, 130001, '', 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 550, 2000 from dual;
      --��������
      plog := 105;
      insert into B_Stat(dataid,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c20,c21)
       select seqB_Stat.nextval, 260004, 130001, '', 600, 600, 600, 600, 600, 600, 600, 600, 600, 600, 600, 600, 600, 600, 950, 4900 from dual;
      --����
      plog := 106;
      insert into B_Stat(dataid,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c20,c21)
       select seqB_Stat.nextval, 260009, 130001, '', 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 7000, 1500, 6000 from dual;

      commit;

      plog := 110;
      P_Log(a_logDateStr||'ACE����ͳ��-HC curdate='||a_curdate);
      insert into ZB_Stat_HC select seq_z_datahis_iid.nextval,'ACE����ͳ��-HC by system', ttt.* from (select * from B_Stat_HC) ttt;
      delete from B_Stat_HC where istdate<sysdate-1/(24*60);
      --��������
      plog := 111;
      insert into B_Stat_HC(dataid,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
       select seqB_Stat_HC.nextval, 260001, 130001, ttt.*
         from (select stat_c3, count(distinct stat_c4), count(distinct stat_c5), count(distinct stat_c6)
                      , count(distinct stat_c7), count(distinct stat_c8), count(distinct stat_c9), count(distinct stat_c10)
                      , count(distinct stat_c11), count(distinct stat_c12), count(distinct stat_c13), count(distinct stat_c14)
                      , count(distinct stat_c15), sum(stat_c16), sum(stat_c17)
               from (select p.c2 stat_c3, --����
                            decode(trunc(p.istdate), trunc(sysdate), decode(p.c3, 240000, p.c1, ''), '') stat_c4, --��ʱ��ѡ��
                            decode(trunc(p.c81), trunc(sysdate), decode(p.c3, 240001, p.c1, ''), '') stat_c5, --�����
                            decode(trunc(p.c4), trunc(sysdate), decode(p.c3, 240090, p.c1, ''), '') stat_c6, --����ѡ��
                            decode(trunc(p.c6), trunc(sysdate), decode(p.c5, 247001, p.c1, ''), '') stat_c7, --active
                            decode(trunc(p.c6), trunc(sysdate), decode(p.c5, 247004, p.c1, ''), '') stat_c8, --inactive
                            decode(trunc(p.c6), trunc(sysdate), decode(p.c5, 247002, p.c1, ''), '') stat_c9, --blocked
                            decode(trunc(b.c22), trunc(sysdate), decode(b.c21, 242001, p.c1, ''), '') stat_c10, --����ע
                            decode(trunc(b.c29), trunc(sysdate), decode(b.c8, 244001, b.c5, ''), '') stat_c11, --��������
                            decode(trunc(b.c29), trunc(sysdate), decode(b.c8, 244005, b.c5, ''), '') stat_c12, --����
                            decode(trunc(b.c29), trunc(sysdate), decode(b.c8, 244020, b.c5, ''), '') stat_c13, --offer
                            decode(trunc(b.c29), trunc(sysdate), decode(b.c8, 244052, b.c5, ''), '') stat_c14, --��ְ
                            decode(trunc(b.c29), trunc(sysdate), decode(b.c16, 246054, b.c5, ''), '') stat_c15, --��ְ
                            decode(trunc(b.c29), trunc(sysdate), decode(b.c16, 246061, c.c9, ''), '') stat_c16, --��Ʊ���
                            decode(trunc(b.c29), trunc(sysdate), decode(b.c16, 246065, c.c9, ''), '') stat_c17 --�տ���
                       from B_Candidate p, B_Candidate_Process_His b, B_Bill c
                      where p.c1 = b.c1(+) and b.c5=c.c2(+)
                    ) tt group by stat_c3) ttt;
      --��������
      plog := 112;
      insert into B_Stat_HC(dataid,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
       select seqB_Stat_HC.nextval, 260002, 130001, ttt.*
         from (select stat_c3, count(distinct stat_c4), count(distinct stat_c5), count(distinct stat_c6)
                      , count(distinct stat_c7), count(distinct stat_c8), count(distinct stat_c9), count(distinct stat_c10)
                      , count(distinct stat_c11), count(distinct stat_c12), count(distinct stat_c13), count(distinct stat_c14)
                      , count(distinct stat_c15), sum(stat_c16), sum(stat_c17)
               from (select p.c2 stat_c3, --����
                            decode(trunc(p.istdate), trunc(sysdate-1), decode(p.c3, 240000, p.c1, ''), '') stat_c4, --��ʱ��ѡ��
                            decode(trunc(p.c81), trunc(sysdate-1), decode(p.c3, 240001, p.c1, ''), '') stat_c5, --�����
                            decode(trunc(p.c4), trunc(sysdate-1), decode(p.c3, 240090, p.c1, ''), '') stat_c6, --����ѡ��
                            decode(trunc(p.c6), trunc(sysdate-1), decode(p.c5, 247001, p.c1, ''), '') stat_c7, --active
                            decode(trunc(p.c6), trunc(sysdate-1), decode(p.c5, 247004, p.c1, ''), '') stat_c8, --inactive
                            decode(trunc(p.c6), trunc(sysdate-1), decode(p.c5, 247002, p.c1, ''), '') stat_c9, --blocked
                            decode(trunc(b.c22), trunc(sysdate-1), decode(b.c21, 242001, p.c1, ''), '') stat_c10, --����ע
                            decode(trunc(b.c29), trunc(sysdate-1), decode(b.c8, 244001, b.c5, ''), '') stat_c11, --��������
                            decode(trunc(b.c29), trunc(sysdate-1), decode(b.c8, 244005, b.c5, ''), '') stat_c12, --����
                            decode(trunc(b.c29), trunc(sysdate-1), decode(b.c8, 244020, b.c5, ''), '') stat_c13, --offer
                            decode(trunc(b.c29), trunc(sysdate-1), decode(b.c8, 244052, b.c5, ''), '') stat_c14, --��ְ
                            decode(trunc(b.c29), trunc(sysdate-1), decode(b.c16, 246054, b.c5, ''), '') stat_c15, --��ְ
                            decode(trunc(b.c29), trunc(sysdate-1), decode(b.c16, 246061, c.c9, ''), '') stat_c16, --��Ʊ���
                            decode(trunc(b.c29), trunc(sysdate-1), decode(b.c16, 246065, c.c9, ''), '') stat_c17 --�տ���
                       from B_Candidate p, B_Candidate_Process_His b, B_Bill c
                      where p.c1 = b.c1(+) and b.c5=c.c2(+)
                    ) tt group by stat_c3) ttt;
      --��������
      plog := 113;
      insert into B_Stat_HC(dataid,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
       select seqB_Stat_HC.nextval, 260003, 130001, ttt.*
         from (select stat_c3, count(distinct stat_c4), count(distinct stat_c5), count(distinct stat_c6)
                      , count(distinct stat_c7), count(distinct stat_c8), count(distinct stat_c9), count(distinct stat_c10)
                      , count(distinct stat_c11), count(distinct stat_c12), count(distinct stat_c13), count(distinct stat_c14)
                      , count(distinct stat_c15), sum(stat_c16), sum(stat_c17)
               from (select p.c2 stat_c3, --����
                            decode(to_char(p.istdate,'yyyymm'), to_char(sysdate,'yyyymm'), decode(p.c3, 240000, p.c1, ''), '') stat_c4, --��ʱ��ѡ��
                            decode(to_char(p.c81,'yyyymm'), to_char(sysdate,'yyyymm'), decode(p.c3, 240001, p.c1, ''), '') stat_c5, --�����
                            decode(to_char(p.c4,'yyyymm'), to_char(sysdate,'yyyymm'), decode(p.c3, 240090, p.c1, ''), '') stat_c6, --����ѡ��
                            decode(to_char(p.c6,'yyyymm'), to_char(sysdate,'yyyymm'), decode(p.c5, 247001, p.c1, ''), '') stat_c7, --active
                            decode(to_char(p.c6,'yyyymm'), to_char(sysdate,'yyyymm'), decode(p.c5, 247004, p.c1, ''), '') stat_c8, --inactive
                            decode(to_char(p.c6,'yyyymm'), to_char(sysdate,'yyyymm'), decode(p.c5, 247002, p.c1, ''), '') stat_c9, --blocked
                            decode(to_char(b.c22,'yyyymm'), to_char(sysdate,'yyyymm'), decode(b.c21, 242001, p.c1, ''), '') stat_c10, --����ע
                            decode(to_char(b.c29,'yyyymm'), to_char(sysdate,'yyyymm'), decode(b.c8, 244001, b.c5, ''), '') stat_c11, --��������
                            decode(to_char(b.c29,'yyyymm'), to_char(sysdate,'yyyymm'), decode(b.c8, 244005, b.c5, ''), '') stat_c12, --����
                            decode(to_char(b.c29,'yyyymm'), to_char(sysdate,'yyyymm'), decode(b.c8, 244020, b.c5, ''), '') stat_c13, --offer
                            decode(to_char(b.c29,'yyyymm'), to_char(sysdate,'yyyymm'), decode(b.c8, 244052, b.c5, ''), '') stat_c14, --��ְ
                            decode(to_char(b.c29,'yyyymm'), to_char(sysdate,'yyyymm'), decode(b.c16, 246054, b.c5, ''), '') stat_c15, --��ְ
                            decode(to_char(b.c29,'yyyymm'), to_char(sysdate,'yyyymm'), decode(b.c16, 246061, c.c9, ''), '') stat_c16, --��Ʊ���
                            decode(to_char(b.c29,'yyyymm'), to_char(sysdate,'yyyymm'), decode(b.c16, 246065, c.c9, ''), '') stat_c17 --�տ���
                       from B_Candidate p, B_Candidate_Process_His b, B_Bill c
                      where p.c1 = b.c1(+) and b.c5=c.c2(+)
                    ) tt group by stat_c3) ttt;
      --��������
      plog := 114;
      insert into B_Stat_HC(dataid,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
       select seqB_Stat_HC.nextval, 260004, 130001, ttt.*
         from (select stat_c3, count(distinct stat_c4), count(distinct stat_c5), count(distinct stat_c6)
                      , count(distinct stat_c7), count(distinct stat_c8), count(distinct stat_c9), count(distinct stat_c10)
                      , count(distinct stat_c11), count(distinct stat_c12), count(distinct stat_c13), count(distinct stat_c14)
                      , count(distinct stat_c15), sum(stat_c16), sum(stat_c17)
               from (select p.c2 stat_c3, --����
                            decode(to_char(p.istdate,'yyyymm'), to_char(sysdate-30,'yyyymm'), decode(p.c3, 240000, p.c1, ''), '') stat_c4, --��ʱ��ѡ��
                            decode(to_char(p.c81,'yyyymm'), to_char(sysdate-30,'yyyymm'), decode(p.c3, 240001, p.c1, ''), '') stat_c5, --�����
                            decode(to_char(p.c4,'yyyymm'), to_char(sysdate-30,'yyyymm'), decode(p.c3, 240090, p.c1, ''), '') stat_c6, --����ѡ��
                            decode(to_char(p.c6,'yyyymm'), to_char(sysdate-30,'yyyymm'), decode(p.c5, 247001, p.c1, ''), '') stat_c7, --active
                            decode(to_char(p.c6,'yyyymm'), to_char(sysdate-30,'yyyymm'), decode(p.c5, 247004, p.c1, ''), '') stat_c8, --inactive
                            decode(to_char(p.c6,'yyyymm'), to_char(sysdate-30,'yyyymm'), decode(p.c5, 247002, p.c1, ''), '') stat_c9, --blocked
                            decode(to_char(b.c22,'yyyymm'), to_char(sysdate-30,'yyyymm'), decode(b.c21, 242001, p.c1, ''), '') stat_c10, --����ע
                            decode(to_char(b.c29,'yyyymm'), to_char(sysdate-30,'yyyymm'), decode(b.c8, 244001, b.c5, ''), '') stat_c11, --��������
                            decode(to_char(b.c29,'yyyymm'), to_char(sysdate-30,'yyyymm'), decode(b.c8, 244005, b.c5, ''), '') stat_c12, --����
                            decode(to_char(b.c29,'yyyymm'), to_char(sysdate-30,'yyyymm'), decode(b.c8, 244020, b.c5, ''), '') stat_c13, --offer
                            decode(to_char(b.c29,'yyyymm'), to_char(sysdate-30,'yyyymm'), decode(b.c8, 244052, b.c5, ''), '') stat_c14, --��ְ
                            decode(to_char(b.c29,'yyyymm'), to_char(sysdate-30,'yyyymm'), decode(b.c16, 246054, b.c5, ''), '') stat_c15, --��ְ
                            decode(to_char(b.c29,'yyyymm'), to_char(sysdate-30,'yyyymm'), decode(b.c16, 246061, c.c9, ''), '') stat_c16, --��Ʊ���
                            decode(to_char(b.c29,'yyyymm'), to_char(sysdate-30,'yyyymm'), decode(b.c16, 246065, c.c9, ''), '') stat_c17 --�տ���
                       from B_Candidate p, B_Candidate_Process_His b, B_Bill c
                      where p.c1 = b.c1(+) and b.c5=c.c2(+)
                    ) tt group by stat_c3) ttt;
      --����
      plog := 115;
      insert into B_Stat_HC(dataid,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17)
       select seqB_Stat_HC.nextval, 260009, 130001, ttt.*
         from (select stat_c3, count(distinct stat_c4), count(distinct stat_c5), count(distinct stat_c6)
                      , count(distinct stat_c7), count(distinct stat_c8), count(distinct stat_c9), count(distinct stat_c10)
                      , count(distinct stat_c11), count(distinct stat_c12), count(distinct stat_c13), count(distinct stat_c14)
                      , count(distinct stat_c15), sum(stat_c16), sum(stat_c17)
               from (select p.c2 stat_c3, --����
                            decode(p.c3, 240000, p.c1, '') stat_c4, --��ʱ��ѡ��
                            decode(p.c3, 240001, p.c1, '') stat_c5, --�����
                            decode(p.c3, 240090, p.c1, '') stat_c6, --����ѡ��
                            decode(p.c5, 247001, p.c1, '') stat_c7, --active
                            decode(p.c5, 247004, p.c1, '') stat_c8, --inactive
                            decode(p.c5, 247002, p.c1, '') stat_c9, --blocked
                            decode(b.c21, 242001, p.c1, '') stat_c10, --����ע
                            decode(b.c8, 244001, b.c5, '') stat_c11, --��������
                            decode(b.c8, 244005, b.c5, '') stat_c12, --����
                            decode(b.c8, 244020, b.c5, '') stat_c13, --offer
                            decode(b.c8, 244052, b.c5, '') stat_c14, --��ְ
                            decode(b.c16, 246054, b.c5, '') stat_c15, --��ְ
                            decode(b.c16, 246061, c.c9, '') stat_c16, --��Ʊ���
                            decode(b.c16, 246065, c.c9, '') stat_c17 --�տ���
                       from B_Candidate p, B_Candidate_Process_His b, B_Bill c
                      where p.c1 = b.c1(+) and b.c5=c.c2(+)
                    ) tt group by stat_c3) ttt;

      commit;
    end if;

    P_Log(a_logDateStr||'���ݼ����ɣ� curdate='||a_curdate);

  exception when others then
    rollback;
    P_Log(a_logDateStr||'���ݼ��:'||' exception:'||sqlerrm);
    P_SMS(1,138444, null, '70333: �뼼����Ա�ٲ�SP_StatManager'||sqlerrm); --���Ͷ���
    commit;
  end;

  -- Order : �������
  procedure SP_Order_Check
  is
    a_logDateStr     varchar2(20);
    a_curdate        date;
    counter          number;

    P_CHECK_TIME     number;
  begin
    select sysdate into a_curdate from dual;
    a_logDateStr := to_char(a_curdate,'yyyy-mm-dd hh24:mi:ss');


  exception when others then
    rollback;
    P_Log(a_logDateStr||'�������:'||' exception:'||sqlerrm);
    P_SMS(1,138444, null, '70333: �뼼����Ա�ٲ�SP_Order_Check'); --���Ͷ���
    commit;
  end;

  -- Log : ��־
  procedure P_Log(
    a_context        in varchar2)
  is
  begin
    insert into T_SLog(Id,Logtype,title,Context,oid,userID,userName,Ipaddress,Istdate)
       values(SEQ_T_Log_ID.nextval,4,'ϵͳ��־',a_context,-1,0,'SYS-MELE','0.0.0.0',sysdate);
  exception when others then
    rollback;
  end;

  -- SMS : ����֪ͨ
  procedure P_SMS(
    a_messageFlag  in integer,
    a_smsType      in integer,
    a_phone        in varchar2,
    a_sms          in varchar2
  )is
    v_phone        varchar2(20);
  begin
    v_phone := a_phone;
    if v_phone is null or length(v_phone)=0 then v_phone := '13693301331'; end if;
    if v_phone = 333 then  --�澯���� ������λ�ϴ�
      insert into T_Sms_Ing(dataid,c1,c2,c3,c4,c5,c6) values(seqT_Sms_Ing.Nextval,'1000077','13693301331',a_sms,0,'',a_smsType);
      --insert into T_Sms_Ing(dataid,c1,c2,c3,c4,c5,c6) values(seqT_Sms_Ing.Nextval,'1000077','13811367810',a_sms,0,'',a_smsType);
      --insert into T_Sms_Ing(dataid,c1,c2,c3,c4,c5,c6) values(seqT_Sms_Ing.Nextval,'1000077','15313089826',a_sms,0,'',a_smsType);
    else
      insert into T_Sms_Ing(dataid,c1,c2,c3,c4,c5,c6) values(seqT_Sms_Ing.Nextval,'1000077',v_phone,a_sms,0,'',a_smsType);
    end if;
    if a_messageFlag=1 then insert into T_Message(id,content,actionID) values(seq_T_message_id.nextval,a_sms,404); end if;
  exception when others then
    rollback;
  end;

end pkg_pcace_orderStat;
/
