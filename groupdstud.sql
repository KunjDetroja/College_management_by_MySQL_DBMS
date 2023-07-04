create or replace procedure dstud
is 
cursor c is select *from stud;
r stud%rowtype;
begin
open c;
loop
fetch c into r;
exit when c%notfound;
dbms_output.put_line('id:-'||r.sid||' name:-'||r.sname||' city:-'||r.scity||' state:-'||r.sstate||' dob:-'||r.sdob||' num:-'||r.snum);
end loop;
close c;
end;
/