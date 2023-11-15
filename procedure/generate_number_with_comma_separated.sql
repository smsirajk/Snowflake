SELECT * FROM MY_DB.MY_DATA.FISCAL_YEAR;


CREATE TABLE MY_DB.MY_DATA.dummy_data (ID INT);

CREATE PROCEDURE MY_DB.MY_DATA.break_out_of_loop()
RETURNS INTEGER
LANGUAGE SQL
AS
$$
    DECLARE
        counter INTEGER;
    BEGIN
        counter := 0;
        LOOP
            counter := counter + 1;
            IF (counter >= 16) THEN
                BREAK;
            END IF;
            INSERT INTO MY_DB.MY_DATA.dummy_data (ID) VALUES (:counter);
        END LOOP;
        RETURN counter;
    END;
$$
;

call MY_DB.MY_DATA.break_out_of_loop(); 
commit;
select * from MY_DB.MY_DATA.dummy_data;


CREATE OR REPLACE TABLE MY_DB.MY_DATA.dummy_data (ID varchar);

CREATE OR REPLACE PROCEDURE MY_DB.MY_DATA.break_out_of_loop()
RETURNS INTEGER
LANGUAGE SQL
AS
$$
    DECLARE
        counter INTEGER;
        val varchar;
    BEGIN
        counter := 0;
        LOOP
            IF (counter > 16) THEN
                BREAK;
            END IF;
            IF (counter=0) THEN
                val:='00';
            ELSEIF (counter < 10) THEN
               val:=val ||',0' ||:counter;
            ELSE
                val:=val ||',' ||:counter;
            END IF;
            INSERT INTO MY_DB.MY_DATA.dummy_data (ID) VALUES (:val);

         counter := counter + 1;
        END LOOP;
        RETURN counter;
    END;
$$
;

call MY_DB.MY_DATA.break_out_of_loop(); 
commit;
select * from MY_DB.MY_DATA.dummy_data;

