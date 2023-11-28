CREATE OR REPLACE FUNCTION user_register_secure (
    v_user_name varchar, 
        v_password varchar
)
        RETURNS INTEGER
AS $$
BEGIN
        IF NOT EXISTS ( SELECT FROM probable_v2_top12000 
                                                WHERE passname = v_password) THEN                          
                IF password_is_correct(v_password) THEN				
			INSERT INTO users (user_name,password_hash) 
					VALUES (v_user_name,
						md5(v_password));
			RETURN 1;
		ELSE
			RAISE NOTICE 'Passname = % INCORRECT!', v_password;
			RETURN -1;
		END IF;
        ELSE 
                RAISE NOTICE 'Passname = % is bad passname', v_password;
                RETURN -1;                                             
        END IF;                                             
END;
$$ LANGUAGE plpgsql;

======================================================
======================================================

CREATE OR REPLACE FUNCTION password_is_correct(password_text TEXT)
RETURNS BOOLEAN AS
$$
DECLARE
    num_digits INT;
    num_lower_chars INT;
    num_upper_chars INT;
    num_special_chars INT;
BEGIN
 
    SELECT
        count(*) INTO num_digits
        FROM REGEXP_MATCHES(password_text, '\d', 'g');

    SELECT
        count(*) INTO num_lower_chars
        FROM REGEXP_MATCHES(password_text, '[a-z]', 'g');

    SELECT
        count(*) INTO num_upper_chars
        FROM REGEXP_MATCHES(password_text, '[A-Z]', 'g');

    SELECT
        count(*) INTO num_special_chars
        FROM REGEXP_MATCHES(password_text, '[!@#$%^&*]', 'g');

 
    IF num_digits < 3 OR num_lower_chars < 2 OR num_upper_chars < 2 OR num_special_chars < 4 OR LENGTH(password_text) < 10  THEN
        RETURN FALSE;
    ELSE
        RETURN TRUE;
    END IF;
END;
$$
LANGUAGE plpgsql;



