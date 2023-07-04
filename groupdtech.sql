create or replace procedure dtech
is 
cursor c is select *from tech;
r tech%rowtype;
begin
open c;
loop
fetch c into r;
exit when c%notfound;
dbms_output.put_line('id:-'||r.tid||' name:-'||r.tname||' dept:-'||r.tdept||' salary:-'||r.tsal||' number:-'||r.tnum);
end loop;
close c;
end;
/