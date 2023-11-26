CREATE OR REPLACE FUNCTION get_data(
    v_user_name VARCHAR,
	v_token VARCHAR
)
RETURNS TABLE
(name VARCHAR, address VARCHAR)
AS $$
BEGIN
	CALL sso_control(v_user_name,v_token);
	RETURN QUERY EXECUTE 'SELECT name, address FROM hotel';
END;
$$ LANGUAGE plpgsql;
