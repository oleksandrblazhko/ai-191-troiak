CREATE OR REPLACE FUNCTION get_data_secure(street_name varchar)

RETURNS TABLE(hotel_id integer, name varchar, address varchar, spot_conf integer)

AS $$

declare
	str varchar;
begin
	str:= 'SELECT * FROM hotel WHERE name = $1';
	raise notice 'Query = %', str;
	return query execute str using street_name;
end;
$$ LANGUAGE plpgsql;
