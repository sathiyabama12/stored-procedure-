create table public.testing (demo_column text);
create or replace procedure public.testing_procedure(p_msg text)

language'plpgsql'
as $body$
declare
begin
	
	insert into public.testing(demo_column) values(p_msg);
end;
$body$;


create or replace procedure public.testing_procedure(p_num1 numeric,p_num2 numeric)

language'plpgsql'
as $body$
declare
v_result numeric;
begin
	v_result := p_num1+p_num2;
	insert into public.testing(demo_column) values('The Sun is '||v_result);
end;
$body$;

call public.testing_procedure('hello world');

call public.testing_procedure(3,5); 
select * from public.testing;