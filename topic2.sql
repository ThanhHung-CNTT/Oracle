-- cau 2
create table student(
    Id number(5)primary key not null,
    Firstname varchar2(50),
    Lastname varchar2(50),
    DateOfBirth date,
    Address varchar2(100),
    Gender varchar2(20)
);
create sequence Id minvalue 1 start with 1 cache 11;
-- cau3
alter table student
    add(
    Note varchar2(50),
    Email varchar2(50),
    PlaceOfBirth varchar2(50),
    Address2 varchar2(100)
);
-- cau4
alter table student modify(
   Gender varchar2(250) check (Gender in ('male','female')),
   Email varchar2(250)
);

-- cau5
insert into student(Id,Firstname,Lastname,DateOfBirth,Address,Gender,Email,PlaceOfBirth,Note) values ('1','Nguyễn Minh','Thông',to_date('20000219','YYYYMMDD'),'Tp. Hồ Chí Minh','male','thong.minh@oum.edu.vn','Vũng Tàu','Lớp trưởng');
insert into student(Id,Firstname,Lastname,DateOfBirth,Address,Gender,Email,PlaceOfBirth,Note) values ('2','Lê Văn','Nam',to_date('19950513','YYYYMMDD'),'Bến Tre','male','name.lv@hutech.edu.vn','Đồng Nai','Lớp phó');
insert into student(Id,Firstname,Lastname,DateOfBirth,Address,Gender,Email,PlaceOfBirth,Note) values ('3','Nguyễn Thị','Ngọc',to_date('19980820','YYYYMMDD'),'Bình Dương','female','ngocthi@gmail.com','Hà Giang',null);
insert into student(Id,Firstname,Lastname,DateOfBirth,Address,Gender,Email,PlaceOfBirth,Note) values ('4','Võ Văn','Minh',to_date('20010326','YYYYMMDD'),'Thanh Hóa','male','minhvo@email.com','Tiền Giang',null);
insert into student(Id,Firstname,Lastname,DateOfBirth,Address,Gender,Email,PlaceOfBirth,Note) values ('5','Phan Thị Thanh','Trúc',to_date('20020705','YYYYMMDD'),'Đồng Nai','female','tructhanh@hutech.edu.vn','Bến Tre',null);

-- cau6
--a,Create query to get all the fields of the Student table.
select * from student;
--b,Create query to get 3 fields: Id, Firstname, Lastname.
select Id, Firstname, Lastname from student;
--c,Create query to get 3 fields: Id, Fullname, Address (firstname and lastname is in 1 field).
select Id, Firstname || ' ' || Lastname as "Full name", Address from student;
--d,Create query to get 3 fields: Id, Fullname, Address. Sort the name from A – Z.
select Id, Firstname || ' ' || Lastname as "Full name", Address 
from student
order by Lastname ASC;
--e,Create query to get 4 fields: Id, Fullname, DateOfBirth, Address. Descending arrangement the DateOfBirth field.
select Id, Firstname || ' ' || Lastname as "Full name",DateOfBirth, Address 
from student
order by DateOfBirth DESC;
--f,Create query to get 4 fields: Id, Fullname, Age, Address. Get only students whose address begins with the letter: "T".
select Id, Firstname || ' ' || Lastname as "Full name",floor(months_between(sysdate,DateOfBirth)/12) as Age, Address 
from student
where Address like 'T%'
order by Address;
--g,Create query to get 4 fields: Id, Fullname, Age, Address. Get only students whose age > 25.
select Id, Firstname || ' ' || Lastname as "Full name",floor(months_between(sysdate,DateOfBirth)/12) as Age, Address 
from student
where  floor(months_between(sysdate,DateOfBirth)/12) >25
order by DateOfBirth;
--h,Create query to get 5 fields: Id, Fullname, Age, Gender, Address. Get only students whose gender is male and age > 20 or gender is female and age > 18.
insert into student(Id,Firstname,Lastname,DateOfBirth,Address,Gender,Email,PlaceOfBirth,Note) values ('6','Phan Thị Thanh','Tâm',to_date('20050705','YYYYMMDD'),'Lào Cai','female','thanhtam@gmail.com','Lạng Sơn',null);
select Id, Firstname || ' ' || Lastname as "Full name",floor(months_between(sysdate,DateOfBirth)/12) as Age,Gender, Address 
from student
where (Gender = 'male' and floor(months_between(sysdate,DateOfBirth)/12) >20) or (Gender = 'female' and floor(months_between(sysdate,DateOfBirth)/12) >18)
order by gender, DateOfBirth;
