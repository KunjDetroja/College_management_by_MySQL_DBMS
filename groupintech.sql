create or replace procedure intech(id in tech.tid%type,name in tech.tname%type,dept in tech.tdept%type,salary in tech.tsal%type,num in tech.tnum%type)
is
begin
insert into tech values (id,name,dept,salary,num);
commit;
end;
/