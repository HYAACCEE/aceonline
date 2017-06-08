create or replace function F_Candidate_WorkYear(cid in varchar2) return varchar2 is
  Result varchar2(200);
begin
  select sum(to_number(substr(decode(c4,'жа╫Я',to_char(sysdate,'yyyy'),c4),1,4)) - to_number(substr(NVL(c3,to_char(sysdate,'yyyy')),1,4))) into Result from B_Candidate_CVWork where c1=cid;
  return(Result);
end F_Candidate_WorkYear;
/
