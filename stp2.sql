create or replace procedure datestyle_change()
language plpgsql set datestyle to postgres,dmy
as $$
begin
raise notice 'current date is :%',now();
end;
$$;

call datestyle_change();
select now ();