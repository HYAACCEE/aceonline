create or replace function F_Candidate_MyWork(cid in varchar2) return varchar2 is
  Result varchar2(500);
  v_tmp  varchar2(100);
begin
  Result := '';
  DECLARE CURSOR v_rs IS select NVL(b.c2,a.c5)||'|'||a.c9 from B_Candidate_CVWork a, A_Organ b where a.c5=b.c1(+) and a.c1=cid and a.c2=130001 order by a.c3 desc;
  begin
    open v_rs;
    LOOP
      FETCH v_rs INTO v_tmp;
      exit when v_rs%notfound;
      if length(v_tmp)>0 then
        Result := ',' || Result || v_tmp;
      end if;
    END LOOP;
    close v_rs;
  end;
  if length(Result)>0 then Result := substr(Result,2); end if;
  return(Result);
end F_Candidate_MyWork;
/
