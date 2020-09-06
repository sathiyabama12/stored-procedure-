create table empinfo(id int,name text,job text,salary float);
insert into empinfo values(1,'sathiya','developer',3200.85);
insert into empinfo values(96,'dhiya','software developer',2500.95);
create or replace procedure public.infopro(int,text,text,float)
language 'plpgsql'
as $body$
begin
insert into empinfo(id,name,job,salary) values ($1,$2,$3,$4);
insert into empinfo values(45,'inigo','engineer',12000.64);
insert into empinfo values(78,'kim','attender',4200);
insert into empinfo values(93,'joe','testing',28000.56);
insert into empinfo values(72,'jim','analyst',21000.3);
commit;
end;
$body$;
select * from empinfo;