create or replace procedure insubj(id in subj.subid%type,name in subj.subname%type)
is
begin
insert into subj values(id,name);
commit;
end;
/