create or replace procedure dsubj
is 
cursor c is select *from subj;
r subj%rowtype;
begin
open c;
loop
fetch c into r;
exit when c%notfound;
dbms_output.put_line('id:-'||r.subid||' name:-'||r.subname);
end loop;
close c;
end;
/