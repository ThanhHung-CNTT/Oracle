--(1) Oracle Queries: Basic
--1
CREATE TABLE employees (
  EMPLOYEE_ID numeric(6) NOT NULL primary key,
  FIRST_NAME varchar2(20) DEFAULT NULL,
  LAST_NAME varchar2(25) NOT NULL,
  EMAIL varchar2(25) NOT NULL,
  PHONE_NUMBER varchar2(20) DEFAULT NULL,
  HIRE_DATE date NOT NULL,
  JOB_ID varchar2(10) NOT NULL,
  SALARY decimal(8,2) DEFAULT NULL,
  COMMISSION_PCT decimal(2,2) DEFAULT NULL,
  MANAGER_ID numeric(6) DEFAULT NULL,
  DEPARTMENT_ID numeric(4) DEFAULT NULL
);


INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (100,'Steven','King','SKING','515.123.4567','17-JUN-2003','AD_PRES',24000.00,0.00,0,90);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (101,'Neena','Kochhar','NKOCHHAR','515.123.4568','21-SEP-2005','AD_VP',17000.00,0.00,100,90);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (102,'Lex','De Haan','LDEHAAN','515.123.4569','13-JAN-2001','AD_VP',17000.00,0.00,100,90);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (103,'Alexander','Hunold','AHUNOLD','590.423.4567','03-JAN-2006','IT_PROG',9000.00,0.00,102,60);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (104,'Bruce','Ernst','BERNST','590.423.4568','21-MAY-2007','IT_PROG',6000.00,0.00,103,60);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (105,'David','Austin','DAUSTIN','590.423.4569','25-JUN-2005','IT_PROG',4800.00,0.00,103,60);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (106,'Valli','Pataballa','VPATABAL','590.423.4560','05-FEB-2006','IT_PROG',4800.00,0.00,103,60);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (107,'Diana','Lorentz','DLORENTZ','590.423.5567','07-FEB-2007','IT_PROG',4200.00,0.00,103,60);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (108,'Nancy','Greenberg','NGREENBE','515.124.4569','17-AUG-2002','FI_MGR',12000.00,0.00,101,100);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (109,'Daniel','Faviet','DFAVIET','515.124.4169','16-AUG-2002','FI_ACCOUNT',9000.00,0.00,108,100);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (110,'John','Chen','JCHEN','515.124.4269','28-SEP-2005','FI_ACCOUNT',8200.00,0.00,108,100);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (111,'Ismael','Sciarra','ISCIARRA','515.124.4369','30-SEP-2005','FI_ACCOUNT',7700.00,0.00,108,100);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (112,'Jose Manuel','Urman','JMURMAN','515.124.4469','07-MAR-2006','FI_ACCOUNT',7800.00,0.00,108,100);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (113,'Luis','Popp','LPOPP','515.124.4567','07-DEC-2007','FI_ACCOUNT',6900.00,0.00,108,100);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (114,'Den','Raphaely','DRAPHEAL','515.127.4561','07-DEC-2002','PU_MAN',11000.00,0.00,100,30);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (115,'Alexander','Khoo','AKHOO','515.127.4562','18-MAY-2003','PU_CLERK',3100.00,0.00,114,30);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (116,'Shelli','Baida','SBAIDA','515.127.4563','24-DEC-2005','PU_CLERK',2900.00,0.00,114,30);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (117,'Sigal','Tobias','STOBIAS','515.127.4564','24-JUL-2005','PU_CLERK',2800.00,0.00,114,30);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (118,'Guy','Himuro','GHIMURO','515.127.4565','15-NOV-2006','PU_CLERK',2600.00,0.00,114,30);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (119,'Karen','Colmenares','KCOLMENA','515.127.4566','10-AUG-2007','PU_CLERK',2500.00,0.00,114,30);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (120,'Matthew','Weiss','MWEISS','650.123.1234','18-JUL-2004','ST_MAN',8000.00,0.00,100,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (121,'Adam','Fripp','AFRIPP','650.123.2234','10-APR-2005','ST_MAN',8200.00,0.00,100,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (122,'Payam','Kaufling','PKAUFLIN','650.123.3234','01-MAY-2003','ST_MAN',7900.00,0.00,100,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (123,'Shanta','Vollman','SVOLLMAN','650.123.4234','10-OCT-2005','ST_MAN',6500.00,0.00,100,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (124,'Kevin','Mourgos','KMOURGOS','650.123.5234','16-NOV-2007','ST_MAN',5800.00,0.00,100,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (125,'Julia','Nayer','JNAYER','650.124.1214','16-JUL-2005','ST_CLERK',3200.00,0.00,120,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (126,'Irene','Mikkilineni','IMIKKILI','650.124.1224','28-SEP-2006','ST_CLERK',2700.00,0.00,120,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (127,'James','Landry','JLANDRY','650.124.1334','14-JAN-2007','ST_CLERK',2400.00,0.00,120,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (128,'Steven','Markle','SMARKLE','650.124.1434','08-MAR-2008','ST_CLERK',2200.00,0.00,120,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (129,'Laura','Bissot','LBISSOT','650.124.5234','20-AUG-2005','ST_CLERK',3300.00,0.00,121,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (130,'Mozhe','Atkinson','MATKINSO','650.124.6234','30-OCT-2005','ST_CLERK',2800.00,0.00,121,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (131,'James','Marlow','JAMRLOW','650.124.7234','16-FEB-2005','ST_CLERK',2500.00,0.00,121,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (132,'TJ','Olson','TJOLSON','650.124.8234','10-APR-2007','ST_CLERK',2100.00,0.00,121,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (133,'Jason','Mallin','JMALLIN','650.127.1934','14-JUN-2004','ST_CLERK',3300.00,0.00,122,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (134,'Michael','Rogers','MROGERS','650.127.1834','26-AUG-2006','ST_CLERK',2900.00,0.00,122,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (135,'Ki','Gee','KGEE','650.127.1734','12-DEC-2007','ST_CLERK',2400.00,0.00,122,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (136,'Hazel','Philtanker','HPHILTAN','650.127.1634','06-FEB-2008','ST_CLERK',2200.00,0.00,122,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (137,'Renske','Ladwig','RLADWIG','650.121.1234','14-JUL-2003','ST_CLERK',3600.00,0.00,123,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (138,'Stephen','Stiles','SSTILES','650.121.2034','26-OCT-2005','ST_CLERK',3200.00,0.00,123,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (139,'John','Seo','JSEO','650.121.2019','12-FEB-2006','ST_CLERK',2700.00,0.00,123,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (140,'Joshua','Patel','JPATEL','650.121.1834','06-APR-2006','ST_CLERK',2500.00,0.00,123,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (141,'Trenna','Rajs','TRAJS','650.121.8009','17-OCT-2003','ST_CLERK',3500.00,0.00,124,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (142,'Curtis','Davies','CDAVIES','650.121.2994','29-JAN-2005','ST_CLERK',3100.00,0.00,124,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (143,'Randall','Matos','RMATOS','650.121.2874','15-MAR-2006','ST_CLERK',2600.00,0.00,124,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (144,'Peter','Vargas','PVARGAS','650.121.2004','09-JUL-2006','ST_CLERK',2500.00,0.00,124,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (145,'John','Russell','JRUSSEL','011.44.1344.429268','01-JAN-2004','SA_MAN',14000.00,0.40,100,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (146,'Karen','Partners','KPARTNER','011.44.1344.467268','05-JAN-2005','SA_MAN',13500.00,0.30,100,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (147,'Alberto','Errazuriz','AERRAZUR','011.44.1344.429278','10-MAR-2005','SA_MAN',12000.00,0.30,100,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (148,'Gerald','Cambrault','GCAMBRAU','011.44.1344.619268','15-OCT-2007','SA_MAN',11000.00,0.30,100,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (149,'Eleni','Zlotkey','EZLOTKEY','011.44.1344.429018','29-JAN-2008','SA_MAN',10500.00,0.20,100,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (150,'Peter','Tucker','PTUCKER','011.44.1344.129268','30-JAN-2005','SA_REP',10000.00,0.30,145,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (151,'David','Bernstein','DBERNSTE','011.44.1344.345268','24-MAR-2005','SA_REP',9500.00,0.25,145,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (152,'Peter','Hall','PHALL','011.44.1344.478968','20-AUG-2005','SA_REP',9000.00,0.25,145,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (153,'Christopher','Olsen','COLSEN','011.44.1344.498718','30-MAR-2006','SA_REP',8000.00,0.20,145,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (154,'Nanette','Cambrault','NCAMBRAU','011.44.1344.987668','09-DEC-2006','SA_REP',7500.00,0.20,145,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (155,'Oliver','Tuvault','OTUVAULT','011.44.1344.486508','23-NOV-2007','SA_REP',7000.00,0.15,145,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (156,'Janette','King','JKING','011.44.1345.429268','30-JAN-2004','SA_REP',10000.00,0.35,146,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (157,'Patrick','Sully','PSULLY','011.44.1345.929268','04-MAR-2004','SA_REP',9500.00,0.35,146,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (158,'Allan','McEwen','AMCEWEN','011.44.1345.829268','01-AUG-2004','SA_REP',9000.00,0.35,146,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (159,'Lindsey','Smith','LSMITH','011.44.1345.729268','10-MAR-2005','SA_REP',8000.00,0.30,146,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (160,'Louise','Doran','LDORAN','011.44.1345.629268','15-DEC-2005','SA_REP',7500.00,0.30,146,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (161,'Sarath','Sewall','SSEWALL','011.44.1345.529268','03-NOV-2006','SA_REP',7000.00,0.25,146,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (162,'Clara','Vishney','CVISHNEY','011.44.1346.129268','11-NOV-2005','SA_REP',10500.00,0.25,147,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (163,'Danielle','Greene','DGREENE','011.44.1346.229268','19-MAR-2007','SA_REP',9500.00,0.15,147,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (164,'Mattea','Marvins','MMARVINS','011.44.1346.329268','24-JAN-2008','SA_REP',7200.00,0.10,147,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (165,'David','Lee','DLEE','011.44.1346.529268','23-FEB-2008','SA_REP',6800.00,0.10,147,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (166,'Sundar','Ande','SANDE','011.44.1346.629268','24-MAR-2008','SA_REP',6400.00,0.10,147,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (167,'Amit','Banda','ABANDA','011.44.1346.729268','21-APR-2008','SA_REP',6200.00,0.10,147,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (168,'Lisa','Ozer','LOZER','011.44.1343.929268','11-MAR-2005','SA_REP',11500.00,0.25,148,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (169,'Harrison','Bloom','HBLOOM','011.44.1343.829268','23-MAR-2006','SA_REP',10000.00,0.20,148,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (170,'Tayler','Fox','TFOX','011.44.1343.729268','24-JAN-2006','SA_REP',9600.00,0.20,148,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (171,'William','Smith','WSMITH','011.44.1343.629268','23-FEB-2007','SA_REP',7400.00,0.15,148,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (172,'Elizabeth','Bates','EBATES','011.44.1343.529268','24-MAR-2007','SA_REP',7300.00,0.15,148,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (173,'Sundita','Kumar','SKUMAR','011.44.1343.329268','21-APR-2008','SA_REP',6100.00,0.10,148,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (174,'Ellen','Abel','EABEL','011.44.1644.429267','11-MAY-2004','SA_REP',11000.00,0.30,149,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (175,'Alyssa','Hutton','AHUTTON','011.44.1644.429266','19-MAR-2005','SA_REP',8800.00,0.25,149,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (176,'Jonathon','Taylor','JTAYLOR','011.44.1644.429265','24-MAR-2006','SA_REP',8600.00,0.20,149,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (177,'Jack','Livingston','JLIVINGS','011.44.1644.429264','23-APR-2006','SA_REP',8400.00,0.20,149,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (178,'Kimberely','Grant','KGRANT','011.44.1644.429263','24-MAY-2007','SA_REP',7000.00,0.15,149,0);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (179,'Charles','Johnson','CJOHNSON','011.44.1644.429262','04-JAN-2008','SA_REP',6200.00,0.10,149,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (180,'Winston','Taylor','WTAYLOR','650.507.9876','24-JAN-2006','SH_CLERK',3200.00,0.00,120,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (181,'Jean','Fleaur','JFLEAUR','650.507.9877','23-FEB-2006','SH_CLERK',3100.00,0.00,120,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (182,'Martha','Sullivan','MSULLIVA','650.507.9878','21-JUN-2007','SH_CLERK',2500.00,0.00,120,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (183,'Girard','Geoni','GGEONI','650.507.9879','03-FEB-2008','SH_CLERK',2800.00,0.00,120,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (184,'Nandita','Sarchand','NSARCHAN','650.509.1876','27-JAN-2004','SH_CLERK',4200.00,0.00,121,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (185,'Alexis','Bull','ABULL','650.509.2876','20-FEB-2005','SH_CLERK',4100.00,0.00,121,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (186,'Julia','Dellinger','JDELLING','650.509.3876','24-JUN-2006','SH_CLERK',3400.00,0.00,121,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (187,'Anthony','Cabrio','ACABRIO','650.509.4876','07-FEB-2007','SH_CLERK',3000.00,0.00,121,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (188,'Kelly','Chung','KCHUNG','650.505.1876','14-JUN-2005','SH_CLERK',3800.00,0.00,122,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (189,'Jennifer','Dilly','JDILLY','650.505.2876','13-AUG-2005','SH_CLERK',3600.00,0.00,122,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (190,'Timothy','Gates','TGATES','650.505.3876','11-JUL-2006','SH_CLERK',2900.00,0.00,122,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (191,'Randall','Perkins','RPERKINS','650.505.4876','19-DEC-2007','SH_CLERK',2500.00,0.00,122,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (192,'Sarah','Bell','SBELL','650.501.1876','04-FEB-2004','SH_CLERK',4000.00,0.00,123,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (193,'Britney','Everett','BEVERETT','650.501.2876','03-MAR-2005','SH_CLERK',3900.00,0.00,123,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (194,'Samuel','McCain','SMCCAIN','650.501.3876','01-JUL-2006','SH_CLERK',3200.00,0.00,123,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (195,'Vance','Jones','VJONES','650.501.4876','17-MAR-2007','SH_CLERK',2800.00,0.00,123,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (196,'Alana','Walsh','AWALSH','650.507.9811','24-APR-2006','SH_CLERK',3100.00,0.00,124,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (197,'Kevin','Feeney','KFEENEY','650.507.9822','23-MAY-2006','SH_CLERK',3000.00,0.00,124,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (198,'Donald','OConnell','DOCONNEL','650.507.9833','21-JUN-2007','SH_CLERK',2600.00,0.00,124,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (199,'Douglas','Grant','DGRANT','650.507.9844','13-JAN-2008','SH_CLERK',2600.00,0.00,124,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (200,'Jennifer','Whalen','JWHALEN','515.123.4444','17-SEP-2003','AD_ASST',4400.00,0.00,101,10);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (201,'Michael','Hartstein','MHARTSTE','515.123.5555','17-FEB-2004','MK_MAN',13000.00,0.00,100,20);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (202,'Pat','Fay','PFAY','603.123.6666','17-AUG-2005','MK_REP',6000.00,0.00,201,20);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (203,'Susan','Mavris','SMAVRIS','515.123.7777','07-JUN-2002','HR_REP',6500.00,0.00,101,40);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (204,'Hermann','Baer','HBAER','515.123.8888','07-JUN-2002','PR_REP',10000.00,0.00,101,70);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (205,'Shelley','Higgins','SHIGGINS','515.123.8080','07-JUN-2002','AC_MGR',12000.00,0.00,101,110);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (206,'William','Gietz','WGIETZ','515.123.8181','07-JUN-2002','AC_ACCOUNT',8300.00,0.00,205,110);
select * from employees;

--2
select first_name, last_name, job_id, 12*(salary+nvl(commission_pct,0)) as "Annual Salary" from employees;
--3
select count(*) from employees;
--4
select sum(salary) from employees;
--5
SELECT MAX(salary), MIN(salary) 
     FROM employees;
--6
select first_name, last_name, salary from employees order by salary;
--7
select first_name, last_name, salary from employees order by salary;
--8
select first_name, last_name from employees order by first_name;
--9
select employee_id, first_name, department_id, salary from employees order by first_name asc, department_id asc, salary desc;
--10
select first_name, salary*12 from employees order by salary desc;
--11
select department_id, count(department_id) from employees group by department_id;
--12
select job_id, count(job_id) from employees group by job_id;
--13
select department_id, sum(salary) from employees group by department_id;
--14
select department_id, max(salary) from employees group by department_id;
--15
select job_id, sum(salary) from employees group by job_id;

--(2) Oracle Operator
--1
SELECT first_name, last_name, department_id 
FROM employees 
WHERE department_id =20;
--2
SELECT first_name, last_name, salary*12 "Yearly Salary" 
FROM employees 
WHERE (salary*12) >10000;
--3
SELECT first_name, last_name, salary 
FROM employees 
WHERE (salary/30) >100;
--4
SELECT first_name, last_name, department_id 
FROM employees 
WHERE department_id !=20;
--5
SELECT  first_name, salary 
FROM  employees 
WHERE job_id='AC_MGR' and salary>5000;
--6
SELECT  first_name, salary 
FROM  employees 
WHERE job_id='FI_ACCOUNT' and salary < 20000;
--7
SELECT  first_name, salary 
FROM  employees 
WHERE job_id='FI_ACCOUNT' and (salary>=5000 and salary<=20000);
--8
SELECT EMPLOYEE_ID,COMMISSION_PCT ,SALARY 
FROM employees 
WHERE commission_pct IS NOT NULL;
--9
SELECT first_name, salary 
FROM employees 
WHERE first_name IN ('Peter', 'Smith');
--10
SELECT first_name, last_name, job_id  
FROM employees  
WHERE job_id  NOT IN ('PRESIDENT', 'MGR') 
ORDER BY salary;
--11
SELECT first_name, last_name, hire_date  
FROM employees 
WHERE to_char (hire_date, 'YYYY') NOT IN ('2005');
--12
SELECT first_name, last_name, hire_date 
FROM employees 
WHERE hire_date IN('01-JUL-2006','24-MAR-2007','04-JAN-2008') 
ORDER  BY hire_date asc;
--13
SELECT CONCAT (CONCAT (CONCAT(CONCAT(first_name,' '),last_name), ' is a '),job_id) 
FROM employees 
WHERE salary > 2000;
--14
SELECT * 
FROM employees 
WHERE HIRE_DATE between �01-jan-2004� and �31-dec-2008�;
--(3) Oracle Wildcard special Operators
--1
SELECT TRUNC (SYSDATE, 'MONTH') "First day of current month "FROM DUAL;
--2
SELECT SYSDATE,LAST_DAY(SYSDATE) "Last",
    LAST_DAY(SYSDATE) - SYSDATE "Days Left"
 FROM DUAL;
--3
ALTER SESSION SET TIME_ZONE = '-8:0';
ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MON-YYYY HH24:MI:SS';
SELECT SESSIONTIMEZONE, CURRENT_DATE FROM DUAL;
ALTER SESSION SET TIME_ZONE = '-9:0';
SELECT SESSIONTIMEZONE, CURRENT_DATE FROM DUAL;
--4
SELECT SYSDATE,
       LAST_DAY(SYSDATE) "Last",
       LAST_DAY(SYSDATE) - SYSDATE "Days Left"
  FROM DUAL;
--5
SELECT TRUNC (SYSDATE, 'YEAR') "First Day of the year" FROM DUAL;
SELECT ADD_MONTHS (TRUNC (SYSDATE, 'YEAR'), 12) - 1 "Last Day of the Year" FROM DUAL;
--6
SELECT CAST (TO_CHAR (LAST_DAY (SYSDATE), 'dd') AS INT) number_of_days FROM DUAL; 
--7
SELECT ROUND ((MONTHS_BETWEEN ('01-May-2024', '01-Dec-2023') * 30), 0) num_of_days FROM DUAL;  
--8
SELECT ADD_MONTHS (TRUNC (SYSDATE, 'MONTH'), i) start_date,
TRUNC (LAST_DAY (ADD_MONTHS (SYSDATE, i))) end_date 
FROM XMLTABLE ('for $i in 0 to xs:int(D) 
               return $i'PASSING XMLELEMENT (d,FLOOR (MONTHS_BETWEEN (ADD_MONTHS (TRUNC (SYSDATE, 'YEAR') - 1, 12),  SYSDATE)))COLUMNS i INTEGER PATH '.');  

--(4) Oracle Queries: where statement
--1
SELECT employee_id, first_name, last_name from employees WHERE commission_pct IS NOT NULL;
--2
SELECT employee_id, first_name, last_name from employees WHERE commission_pct IS  NULL;
--3
SELECT first_name, last_name from employees where job_id = 'ST_CLERK' OR job_id = 'SA_MAN' OR job_id='IT_PROG' AND salary>3000;
--4
SELECT first_name, last_name, job_id, department_id from employees where department_id in(10,20,40) or job_id in('ST_CLERK','SA_MAN','IT_PROG');
--5
SELECT first_name, last_name from employees where length(first_name)=5;
--6
SELECT first_name, last_name from employees  where job_id not in('AC_MGR');
--7
SELECT first_name, last_name, job_id, department_id from employees where department_id in(10,20,40) or job_id in('ST_CLERK','SA_MAN','IT_PROG');
--8
SELECT max(salary) as "Maximum Salary" from employees where job_id='ST_CLERK';
--9
SELECT max(salary) as "Maximum Salary" from employees where department_id = 40;
--10
SELECT min(salary) as "Minimum Salary" from employees where job_id = 'SA_MAN';
--11
SELECT sum(salary) as "Total Salary" from employees where job_id='SA_MAN' and department_id=80;
--12
SELECT department_id, count(department_id) as "Number of Employees" from employees  group by department_id having count(*) > 10;
--13
SELECT job_id, sum(salary) as "Total Salary of Designation" from employees  group by job_id having sum(salary) > 50000;
--14
SELECT job_id, count(employee_id) as "Number of employees" from employees  group by job_id having count(job_id) > 3;











