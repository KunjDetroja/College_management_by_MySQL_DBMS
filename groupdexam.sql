create or replace procedure dexam
is 
cursor c is select *from exam;
r exam%rowtype;
begin
open c;
loop
fetch c into r;
exit when c%notfound;
dbms_output.put_line('date:-'||r.edate||' time:-'||r.time||' room:-'||r.room||' code:-'||r.ecode);
end loop;
close c;
end;
/