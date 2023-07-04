create or replace procedure indept(id in dept.deptid%type,name in dept.deptname%type)
is
begin
insert into dept values(id,name);
commit;
end;
/