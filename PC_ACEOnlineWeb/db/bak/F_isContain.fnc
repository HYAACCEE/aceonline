create or replace function F_isContain(
  src            in varchar2,
  checkName      in varchar2,
  b_amid         in varchar2
) return number is
  myName     varchar2(200);
  tmp        varchar2(1000);
  parentName varchar2(200);
  counter    number;
begin
  if src is null then return 0; end if;
  myName := checkName;
  if myName is null then
    select c2 into myName from B_MMOrgan where c1=b_amid;
    
  end if;
  
  tmp := ','||src||',';
  if instr(tmp, ','||myName||',') > 0 then
    return 1;
  end if;
  
  select count(a.dataid) into counter from A_Organ a, A_Organ b where a.c2=b.c6 and b.c5||'['||b.c1||']'=myName;
  if counter > 0 then
    select a.c5||'['||a.c1||']' into parentName from A_Organ a, A_Organ b where a.c2=b.c6 and b.c5||'['||b.c1||']'=myName;
    
    if instr(tmp, ','||parentName||',') > 0 then
      return 1;
    end if;
  end if;
  
  return(0);
end F_isContain;
/
