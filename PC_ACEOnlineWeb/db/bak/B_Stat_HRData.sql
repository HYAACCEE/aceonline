
insert into B_Stat_HRData(dataid,c5,c1,c2,c3,c4,c6,c7,c8,c9,c10,c11)
select seqB_Stat_HRData.Nextval, 
0,--HR留存率 c5
c1,to_char(statday,'yyyymmdd'),c3,c4,c6,c7,c8,c9,c10,to_char(statday,'yyyy-mm-dd') from (
select
trunc(istdate) statday,
1 c1, --日 c1
count(distinct userName) c3,--登录HR数 c3
(select count(dataid) from B_UserLogin m where m.c4=2 and trunc(m.c37)=trunc(t.istdate) and m.dataid>1000) c4,--新增HR数 c4   =====sum(decode(context,'MMService.y?cmd=addHR返回结果===[1`新增HR成功]',1,0))
(select count(dataid) from B_UserLogin m where m.c4=2 and trunc(m.c37)<=trunc(t.istdate) and m.dataid>1000) c6,--总登录过的HR数 c6
(select count(distinct dataid) from B_Candidate where c91=1) c7,--总精选人数 c7
sum(decode(title, 'CandiDetailService.y?cmd=detail', decode(sign(instr(context,'index:''1''')), 1, 1, 0), 0)) c8,--候选人浏览数 c8
sum(decode(sign(instr(context,'doProcess返回结果===[1`收藏成功')), 1, 1, decode(sign(instr(context,'doProcess返回结果===[1`关注成功')), 1, 1, 0))) c9,--候选人收藏数 c9
sum(decode(sign(instr(context,'doProcess返回结果===[1`邀请面试成功')), 1, 1, 0)) c10--候选人邀面数 c10
from T_SLOG t
where istdate between trunc(sysdate-35) and trunc(sysdate)-1/(24*60*60)
and exists (select dataid from b_Userlogin where dataid>1000 and c11=t.username)
group by trunc(istdate)
) ttt;

insert into B_Stat_HRData(dataid,c5,c1,c2,c3,c4,c6,c7,c8,c9,c10,c11)
select seqB_Stat_HRData.Nextval, 
0,--HR留存率 c5
c1,c2,c3,c4,c6,c7,c8,c9,c10,to_char(statday,'mm/dd')||'-'||to_char(max_statday,'mm/dd') from (
select
trunc(t.istdate,'d') statday,
trunc(t.istdate,'d')+6 max_statday,
2 c1, --周 c1
to_char(istdate,'yyyyww')-201716 c2, --日期 c2
count(distinct userName) c3,--登录HR数 c3
(select count(dataid) from B_UserLogin m where m.c4=2 and trunc(m.c37,'d')=trunc(t.istdate,'d') and m.dataid>1000) c4,--新增HR数 c4
(select count(dataid) from B_UserLogin m where m.c4=2 and trunc(m.c37,'d')<=trunc(t.istdate,'d') and m.dataid>1000) c6,--总登录过的HR数 c6
(select count(distinct dataid) from B_Candidate where c91=1) c7,--总精选人数 c7
sum(decode(title, 'CandiDetailService.y?cmd=detail', decode(sign(instr(context,'index:''1''')), 1, 1, 0), 0)) c8,--候选人浏览数 c8
sum(decode(sign(instr(context,'doProcess返回结果===[1`收藏成功')), 1, 1, decode(sign(instr(context,'doProcess返回结果===[1`关注成功')), 1, 1, 0))) c9,--候选人收藏数 c9
sum(decode(sign(instr(context,'doProcess返回结果===[1`邀请面试成功')), 1, 1, 0)) c10--候选人邀面数 c10
from T_SLOG t
where istdate between trunc(sysdate-35) and trunc(sysdate)-1/(24*60*60)
and exists (select dataid from b_Userlogin where dataid>1000 and c11=t.username)
group by to_char(istdate,'yyyyww'),trunc(t.istdate,'d')
) ttt;


insert into B_Stat_HRData(dataid,c5,c1,c2,c3,c4,c6,c7,c8,c9,c10,c11)
select seqB_Stat_HRData.Nextval, 
0,--HR留存率 c5
c1,c2,c3,c4,c6,c7,c8,c9,c10,to_char(to_date(statday,'yyyymm'),'yyyy-mm') from (
select
to_char(istdate,'yyyymm') statday,
3 c1, --月 c1
to_char(istdate,'yyyymm') c2, --日期 c2
count(distinct userName) c3,--登录HR数 c3
(select count(dataid) from B_UserLogin m where m.c4=2 and trunc(m.c37,'mm')=trunc(t.istdate,'mm') and m.dataid>1000) c4,--新增HR数 c4
(select count(dataid) from B_UserLogin m where m.c4=2 and trunc(m.c37,'mm')<=trunc(t.istdate,'mm') and m.dataid>1000) c6,--总登录过的HR数 c6
(select count(distinct dataid) from B_Candidate where c91=1) c7,--总精选人数 c7
sum(decode(title, 'CandiDetailService.y?cmd=detail', decode(sign(instr(context,'index:''1''')), 1, 1, 0), 0)) c8,--候选人浏览数 c8
sum(decode(sign(instr(context,'doProcess返回结果===[1`收藏成功')), 1, 1, decode(sign(instr(context,'doProcess返回结果===[1`关注成功')), 1, 1, 0))) c9,--候选人收藏数 c9
sum(decode(sign(instr(context,'doProcess返回结果===[1`邀请面试成功')), 1, 1, 0)) c10--候选人邀面数 c10
from T_SLOG t
where istdate between trunc(sysdate-35) and trunc(sysdate)-1/(24*60*60)
and exists (select dataid from b_Userlogin where dataid>1000 and c11=t.username)
group by to_char(istdate,'yyyymm'),trunc(t.istdate,'mm')
) ttt;
