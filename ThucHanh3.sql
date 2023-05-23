create table DEPARTMENT(
    DeptNo number primary key,
    DeptName nvarchar2(255),
    Location nvarchar2(255),
    NumOfStaff number
);
CREATE TABLE EMPLOYEE(
    EmpNo number primary key,
    EmpName nvarchar2(255),
    Salary number,
    DeptNo number,
    foreign key (DeptNo) REFERENCES DEPARTMENT(DeptNo)
);
CREATE TABLE PROJECT(
    ProjNo number primary key,
    ProjName nvarchar2(255),
    ProjType nvarchar2(255),
    Budget number
);
CREATE TABLE  WORKS (
    EmpNo number not null,
    ProjNo number not null,
    Role nvarchar2(255),
    foreign key (EmpNo) references employee(EmpNo),
    foreign key (ProjNo) references project(ProjNo)
);

insert into department values(10,'IT','CAMPUCHIA',10);
insert into department values(20,'MARKETING','CAMPUCHIA',10);
insert into department values(30,'BUSINESS','CAMPUCHIA',10);
insert into department values(40,'MANAGER','CAMPUCHIA',10);
insert into department values(50,'SHIPPING','CAMPUCHIA',10);

insert into EMPLOYEE values(1,'Nguyen Pham Thanh Hung',2000,10);
insert into EMPLOYEE values(2,'Nguyen Pham Thanh Hung B',2000,10);

insert into EMPLOYEE values(4,'Nguyen Pham Thanh Hung C',4000,20);
insert into EMPLOYEE values(5,'Nguyen Pham Thanh Hung D',5000,20);

insert into PROJECT values(1,'Lua Dao Co To Chuc','Da Quoc gia',10000);
insert into PROJECT values(2,'Lua Dao Phi Chinh Phu','Da Quoc gia',20000);

insert into  WORKS values(1,1,'Manager');
insert into  WORKS values(1,2,'Manager');
insert into  WORKS values(2,2,'IT');
insert into  WORKS values(2,1,'IT');

--4.A
SELECT E.EMPNAME 
FROM EMPLOYEE E,WORKS W,PROJECT P ,department D
WHERE D.DeptName = 'IT' 
AND P.PROJNAME = 'Lua Dao Co To Chuc'
AND E.DeptNo = D.DeptNo
AND E.EmpNo = W.EmpNo                                    
AND W.ProjNo = P.ProjNo
;
--4.b
SELECT p.ProjName 
FROM EMPLOYEE E,WORKS W,PROJECT P ,department D
WHERE e.EmpName like 'Nguyen Pham Thanh Hung B'
AND E.DeptNo = D.DeptNo
AND E.EmpNo = W.EmpNo                                    
AND W.ProjNo = P.ProjNo
;
--4.c
select  PROJNAME, BUDGET FROM PROJECT
WHERE BUDGET = (SELECT MAX(BUDGET) FROM PROJECT);

--4.D
SELECT DeptName FROM DEPARTMENT WHERE NUMOFSTAFF <4;
--4.E
SELECT E.EMPNAME, E.SALARY FROM EMPLOYEE E, DEPARTMENT D
WHERE  E.DeptNo = D.DeptNo AND D.DeptName LIKE 'MARKETING' 
AND SALARY > (SELECT MAX(SALARY) FROM EMPLOYEE E,DEPARTMENT D WHERE E.DeptNo = D.DeptNo AND D.DeptName='IT' );


--4.f
UPDATE EMPLOYEE A
SET SALARY = (SELECT AVG(SALARY) FROM EMPLOYEE B WHERE B.DEPTNO = 20) 
WHERE A.DEPTNO =10;
--4.G
ALTER TABLE WORKS ADD TIME_COMPLETE DATE;