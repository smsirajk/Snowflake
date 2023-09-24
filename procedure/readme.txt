Stored procedures allow you to write procedural code that executes business logic by combining multiple SQL statements. In a stored procedure, you can use programmatic constructs to perform branching and looping.

CREATE OR REPLACE PROCEDURE <name> ( [ <arg_name> <arg_data_type> ] [ , ... ] )
   RETURNS <result_data_type> 
   LANGUAGE SQL
AS 
   $$
      <procedure_body>
   $$
;

NAME <name>
Specifies the name of the stored procedure.

The name must start with an alphabetic character and cannot contain spaces or special characters unless the entire identifier string is enclosed in double quotes (e.g. “My Procedure”). Identifiers enclosed in double quotes are also case-sensitive.

2.2. INPUT PARAMETERS ( [ <arg_name> <arg_data_type> ] [ , … ] )
A Stored Procedures can be built which takes one or more arguments as input parameters or even without any input parameters.

The <arg_name> specifies the name of the input argument.
The <arg_data_type> specifies the SQL data type of the input argument.
