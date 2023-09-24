create table DEVELOPMENT.EMPLOYEE.Emp(
      ID                 VARCHAR2(4 BYTE)         NOT NULL,
      First_Name         VARCHAR2(10 BYTE),
      Last_Name          VARCHAR2(10 BYTE),
      Start_Date         DATE,
      End_Date           DATE,
      Salary             Number(8,2),
      City               VARCHAR2(10 BYTE),
      Description        VARCHAR2(15 BYTE)
   );

insert into DEVELOPMENT.EMPLOYEE.Emp(ID,  First_Name, Last_Name, Start_Date,                     End_Date,                       Salary,  City,       Description)
 values ('01','Jason',    'Martin',  to_date('19960725','YYYYMMDD'), to_date('20060725','YYYYMMDD'), 1234.56, 'Toronto',  'Programmer')
 ;

insert into DEVELOPMENT.EMPLOYEE.Emp(ID,  First_Name, Last_Name, Start_Date,                     End_Date,                       Salary,  City,       Description)
values('02','Alison',   'Mathews', to_date('19760321','YYYYMMDD'), to_date('19860221','YYYYMMDD'), 6661.78, 'Vancouver','Tester')
;

insert into DEVELOPMENT.EMPLOYEE.Emp(ID,  First_Name, Last_Name, Start_Date,                     End_Date,                       Salary,  City,       Description)
values('03','James',    'Smith',   to_date('19781212','YYYYMMDD'), to_date('19900315','YYYYMMDD'), 6544.78, 'Vancouver','Tester')
;

insert into DEVELOPMENT.EMPLOYEE.Emp(ID,  First_Name, Last_Name, Start_Date,                     End_Date,                       Salary,  City,       Description)
values('04','Celia',    'Rice',    to_date('19821024','YYYYMMDD'), to_date('19990421','YYYYMMDD'), 2344.78, 'Vancouver','Manager')
;

insert into DEVELOPMENT.EMPLOYEE.Emp(ID,  First_Name, Last_Name, Start_Date,                     End_Date,                       Salary,  City,       Description)
values('05','Robert',   'Black',   to_date('19840115','YYYYMMDD'), to_date('19980808','YYYYMMDD'), 2334.78, 'Vancouver','Tester')
;

insert into DEVELOPMENT.EMPLOYEE.Emp(ID,  First_Name, Last_Name, Start_Date,                     End_Date,                       Salary, City,        Description)
 values('06','Linda',    'Green',   to_date('19870730','YYYYMMDD'), to_date('19960104','YYYYMMDD'), 4322.78,'New York',  'Tester')
 ;

insert into DEVELOPMENT.EMPLOYEE.Emp(ID,  First_Name, Last_Name, Start_Date,                     End_Date,                       Salary, City,        Description)
values('07','David',    'Larry',   to_date('19901231','YYYYMMDD'), to_date('19980212','YYYYMMDD'), 7897.78,'New York',  'Manager')
;

insert into DEVELOPMENT.EMPLOYEE.Emp(ID,  First_Name, Last_Name, Start_Date,                     End_Date,                       Salary, City,        Description)
values('08','James',    'Cat',     to_date('19960917','YYYYMMDD'), to_date('20020415','YYYYMMDD'), 1232.78,'Vancouver', 'Tester')
;
