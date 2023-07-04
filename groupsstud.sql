create or replace procedure sstud (x in varchar2,y in varchar2,z in number,w in varchar2)
is 
cursor c is select *from stud ;
r stud%rowtype;
begin
open c;
loop
fetch c into r;
exit when c%notfound;
if x like 'id' and w like 'equal' and z=r.sid then
dbms_output.put_line('id:-'||r.sid||' name:-'||r.sname||' city:-'||r.scity||' state:-'||r.sstate||' dob:-'||r.sdob||' number:-'||r.snum);
end if;
if x like 'id' and w like 'greater' and z<r.sid then
dbms_output.put_line('id:-'||r.sid||' name:-'||r.sname||' city:-'||r.scity||' state:-'||r.sstate||' dob:-'||r.sdob||' number:-'||r.snum);
end if;
if x like 'id' and w like 'lesser' and z>r.sid then
dbms_output.put_line('id:-'||r.sid||' name:-'||r.sname||' city:-'||r.scity||' state:-'||r.sstate||' dob:-'||r.sdob||' number:-'||r.snum);
end if;
if x like 'name' and y like r.sname then
dbms_output.put_line('id:-'||r.sid||' name:-'||r.sname||' city:-'||r.scity||' state:-'||r.sstate||' dob:-'||r.sdob||' number:-'||r.snum);
end if;
if x like 'city' and y like r.scity then
dbms_output.put_line('id:-'||r.sid||' name:-'||r.sname||' city:-'||r.scity||' state:-'||r.sstate||' dob:-'||r.sdob||' number:-'||r.snum);
end if;
if x like 'state' and y like r.sstate then
dbms_output.put_line('id:-'||r.sid||' name:-'||r.sname||' city:-'||r.scity||' state:-'||r.sstate||' dob:-'||r.sdob||' number:-'||r.snum);
end if;
if x like 'dob' and y like r.sdob then
dbms_output.put_line('id:-'||r.sid||' name:-'||r.sname||' city:-'||r.scity||' state:-'||r.sstate||' dob:-'||r.sdob||' number:-'||r.snum);
end if;
if x like 'number' and y like r.snum then
dbms_output.put_line('id:-'||r.sid||' name:-'||r.sname||' city:-'||r.scity||' state:-'||r.sstate||' dob:-'||r.sdob||' number:-'||r.snum);
end if;
end loop;
close c;
end;
/