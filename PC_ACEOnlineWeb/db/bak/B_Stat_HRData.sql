
insert into B_Stat_HRData(dataid,c5,c1,c2,c3,c4,c6,c7,c8,c9,c10,c11)
select seqB_Stat_HRData.Nextval, 
0,--HR������ c5
c1,to_char(statday,'yyyymmdd'),c3,c4,c6,c7,c8,c9,c10,to_char(statday,'yyyy-mm-dd') from (
select
trunc(istdate) statday,
1 c1, --�� c1
count(distinct userName) c3,--��¼HR�� c3
(select count(dataid) from B_UserLogin m where m.c4=2 and trunc(m.c37)=trunc(t.istdate) and m.dataid>1000) c4,--����HR�� c4   =====sum(decode(context,'MMService.y?cmd=addHR���ؽ��===[1`����HR�ɹ�]',1,0))
(select count(dataid) from B_UserLogin m where m.c4=2 and trunc(m.c37)<=trunc(t.istdate) and m.dataid>1000) c6,--�ܵ�¼����HR�� c6
(select count(distinct dataid) from B_Candidate where c91=1) c7,--�ܾ�ѡ���� c7
sum(decode(title, 'CandiDetailService.y?cmd=detail', decode(sign(instr(context,'index:''1''')), 1, 1, 0), 0)) c8,--��ѡ������� c8
sum(decode(sign(instr(context,'doProcess���ؽ��===[1`�ղسɹ�')), 1, 1, decode(sign(instr(context,'doProcess���ؽ��===[1`��ע�ɹ�')), 1, 1, 0))) c9,--��ѡ���ղ��� c9
sum(decode(sign(instr(context,'doProcess���ؽ��===[1`�������Գɹ�')), 1, 1, 0)) c10--��ѡ�������� c10
from T_SLOG t
where istdate between trunc(sysdate-35) and trunc(sysdate)-1/(24*60*60)
and exists (select dataid from b_Userlogin where dataid>1000 and c11=t.username)
group by trunc(istdate)
) ttt;

insert into B_Stat_HRData(dataid,c5,c1,c2,c3,c4,c6,c7,c8,c9,c10,c11)
select seqB_Stat_HRData.Nextval, 
0,--HR������ c5
c1,c2,c3,c4,c6,c7,c8,c9,c10,to_char(statday,'mm/dd')||'-'||to_char(max_statday,'mm/dd') from (
select
trunc(t.istdate,'d') statday,
trunc(t.istdate,'d')+6 max_statday,
2 c1, --�� c1
to_char(istdate,'yyyyww')-201716 c2, --���� c2
count(distinct userName) c3,--��¼HR�� c3
(select count(dataid) from B_UserLogin m where m.c4=2 and trunc(m.c37,'d')=trunc(t.istdate,'d') and m.dataid>1000) c4,--����HR�� c4
(select count(dataid) from B_UserLogin m where m.c4=2 and trunc(m.c37,'d')<=trunc(t.istdate,'d') and m.dataid>1000) c6,--�ܵ�¼����HR�� c6
(select count(distinct dataid) from B_Candidate where c91=1) c7,--�ܾ�ѡ���� c7
sum(decode(title, 'CandiDetailService.y?cmd=detail', decode(sign(instr(context,'index:''1''')), 1, 1, 0), 0)) c8,--��ѡ������� c8
sum(decode(sign(instr(context,'doProcess���ؽ��===[1`�ղسɹ�')), 1, 1, decode(sign(instr(context,'doProcess���ؽ��===[1`��ע�ɹ�')), 1, 1, 0))) c9,--��ѡ���ղ��� c9
sum(decode(sign(instr(context,'doProcess���ؽ��===[1`�������Գɹ�')), 1, 1, 0)) c10--��ѡ�������� c10
from T_SLOG t
where istdate between trunc(sysdate-35) and trunc(sysdate)-1/(24*60*60)
and exists (select dataid from b_Userlogin where dataid>1000 and c11=t.username)
group by to_char(istdate,'yyyyww'),trunc(t.istdate,'d')
) ttt;


insert into B_Stat_HRData(dataid,c5,c1,c2,c3,c4,c6,c7,c8,c9,c10,c11)
select seqB_Stat_HRData.Nextval, 
0,--HR������ c5
c1,c2,c3,c4,c6,c7,c8,c9,c10,to_char(to_date(statday,'yyyymm'),'yyyy-mm') from (
select
to_char(istdate,'yyyymm') statday,
3 c1, --�� c1
to_char(istdate,'yyyymm') c2, --���� c2
count(distinct userName) c3,--��¼HR�� c3
(select count(dataid) from B_UserLogin m where m.c4=2 and trunc(m.c37,'mm')=trunc(t.istdate,'mm') and m.dataid>1000) c4,--����HR�� c4
(select count(dataid) from B_UserLogin m where m.c4=2 and trunc(m.c37,'mm')<=trunc(t.istdate,'mm') and m.dataid>1000) c6,--�ܵ�¼����HR�� c6
(select count(distinct dataid) from B_Candidate where c91=1) c7,--�ܾ�ѡ���� c7
sum(decode(title, 'CandiDetailService.y?cmd=detail', decode(sign(instr(context,'index:''1''')), 1, 1, 0), 0)) c8,--��ѡ������� c8
sum(decode(sign(instr(context,'doProcess���ؽ��===[1`�ղسɹ�')), 1, 1, decode(sign(instr(context,'doProcess���ؽ��===[1`��ע�ɹ�')), 1, 1, 0))) c9,--��ѡ���ղ��� c9
sum(decode(sign(instr(context,'doProcess���ؽ��===[1`�������Գɹ�')), 1, 1, 0)) c10--��ѡ�������� c10
from T_SLOG t
where istdate between trunc(sysdate-35) and trunc(sysdate)-1/(24*60*60)
and exists (select dataid from b_Userlogin where dataid>1000 and c11=t.username)
group by to_char(istdate,'yyyymm'),trunc(t.istdate,'mm')
) ttt;
