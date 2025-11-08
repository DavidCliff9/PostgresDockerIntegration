
CREATE OR REPLACE FUNCTION create_api_test()
RETURNS void
LANGUAGE plpgsql
AS $$
BEGIN
    RAISE NOTICE 'create_api_test() called.';
END;
$$;

CREATE OR REPLACE FUNCTION create_med_tables()
RETURNS void
LANGUAGE plpgsql
AS $$
BEGIN
    RAISE NOTICE 'create_med_tables() called.';
END;
$$;
