create or replace procedure ddept
is 
cursor c is select *from dept;
r dept%rowtype;
begin
open c;
loop
fetch c into r;
exit when c%notfound;
dbms_output.put_line('id:-'||r.deptid||' name:-'||r.deptname);
end loop;
close c;
end;
/