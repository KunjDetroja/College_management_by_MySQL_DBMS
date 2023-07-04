create or replace procedure instud(i in stud.sid%type,n in stud.sname%type,c in stud.scity%type,s in stud.sstate%type,d in stud.sdob%type,num in stud.snum%type)
is
begin
insert into stud values (i,n,c,s,d,num);
commit;
end;
/