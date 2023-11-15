#Reversal the string using python language

CREATE OR REPLACE procedure my_db.my_data.reverse_string(input_str string)
returns STRING
LANGUAGE python
runtime_version=3.8
PACKAGES=('snowflake-snowpark-python')
HANDLER='reversal'
AS
$$
def reversal(session, str):
    ms=str[::-1]
    return ms
$$;

call my_db.my_data.reverse_string('input_str string');

#return current user,warehouse, schema the string using python language
  
CREATE OR REPLACE procedure my_db.my_data.retrive_current_user_warehouse()
returns STRING
LANGUAGE python
runtime_version=3.8
PACKAGES=('snowflake-snowpark-python')
HANDLER='retrive_current_user_warehouse'
AS
$$
def retrive_current_user_warehouse(session):
    return session.sql("select current_user(),current_warehouse(),current_schema()").collect()[0].asDict()
$$;

call my_db.my_data.retrive_current_user_warehouse();

