create or replace procedure textpro(msg inout text)
language 'plpgsql'
as $$
begin
raise notice '%',msg;
end;
$$;

call textpro('be urself');