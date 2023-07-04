create or replace procedure dcourse
is
cursor c is select * from course;
r course%rowtype;
begin
open c;
loop
fetch c into r;
exit when c%notfound;
dbms_output.put_line('id:-'||r.cid||' name:-'||r.cname||' duration:-'||r.cdur);
end loop;
close c;
end;
/