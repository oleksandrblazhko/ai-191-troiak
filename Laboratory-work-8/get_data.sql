CREATE OR REPLACE FUNCTION get_data(street_name varchar)

RETURNS TABLE(name varchar, address varchar)

AS $$

declare
	str varchar;
begin
	str:= 'SELECT name, address FROM hotel WHERE name = ''' || street_name || '''';
	raise notice 'Query=%', str;
	return query execute str;
end;
$$ LANGUAGE plpgsql;
