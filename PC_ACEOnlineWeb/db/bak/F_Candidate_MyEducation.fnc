create or replace function F_Candidate_MyEducation(cid in varchar2) return varchar2 is
  Result varchar2(200);
  v_tmp  varchar2(200);
  v_key  varchar2(200);
begin
  Result := '';
  DECLARE CURSOR v_rs IS select c5, c5||'|'||F_DataParam(c7) from B_Candidate_CVEducation where c1=cid and c2=130001 order by c3 desc;
  begin
    open v_rs;
    LOOP
      FETCH v_rs INTO v_key, v_tmp;
      exit when v_rs%notfound;
      if length(v_key)>0 then
        Result := v_tmp;
      end if;
    END LOOP;
    close v_rs;
  end;
  return(Result);
end F_Candidate_MyEducation;
/
