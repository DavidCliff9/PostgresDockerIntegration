-- This Function will insert details once it passes checks from the stored procedure its called

CREATE OR REPLACE FUNCTION add_patient_details(EFirstName VARCHAR(50),
ELastName VARCHAR(50),
EGENDER VARCHAR(10),
EEmail VARCHAR(50),
EPassword VARCHAR(255)
)

-- Return int to master procedure

RETURNS int
LANGUAGE plpgsql
AS $$
DECLARE

-- Declare Variables

return_msg int;

BEGIN

-- Insert into patient table

INSERT INTO patients.patients (first_name, last_name, gender, email)
VALUES (EFirstName, ELastName, EGender, EEmail)
RETURNING user_id INTO return_msg;

-- Insert into accounts table

INSERT INTO accounts.users_accounts (user_id,email, password_hash)
VALUES (return_msg, EEmail, EPassword);

-- Return a message

RETURN return_msg;

END;
$$;
