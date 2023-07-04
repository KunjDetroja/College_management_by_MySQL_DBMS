create or replace procedure incourse(id in course.cid%type,name in course.cname%type,dur in course.cdur%type)
is
begin
insert into course values(id,name,dur);
commit;
end;
/