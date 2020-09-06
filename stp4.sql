
create table public.testing (demo_column text);
create or replace procedure public.testing_procedure(p_num1 numeric,p_num2 numeric)
language'plpgsql'
as $body$
declare
v_result text;
	begin
	begin
	v_result := p_num1/p_num2;
	exception when others then
	v_result := 'you cannot divide a number by zero';
	end;
	insert into public.testing(demo_column) values(v_result);
end;
$body$;
call public.testing_procedure(0,7);
select *from public.testing;






