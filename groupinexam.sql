create or replace procedure inexam(da in exam.edate%type,ti in exam.time%type,ro in exam.room%type,code in exam.ecode%type)
is
begin
insert into exam values(da,ti,ro,code);
commit;
end;
/