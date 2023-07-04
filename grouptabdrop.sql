create or replace procedure tabdrop(n in varchar2)
is
begin
if n like 'stud' then
execute immediate 'drop table stud';
elsif n like 'course' then
execute immediate 'drop table course';
elsif n like 'exam' then
execute immediate 'drop table exam';
elsif n like 'subj' then
execute immediate 'drop table subj';
elsif n like 'tech' then
execute immediate 'drop table tech';
elsif n like 'dept' then
execute immediate 'drop table dept';
else
dbms_output.put_line('table not exist');
end if;
end;
/