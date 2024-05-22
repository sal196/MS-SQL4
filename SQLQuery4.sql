create table p1(

e_id int not null,
e_name varchar (20),
e_salary int,
e_age int,
e_gender varchar(20),
e_dept varchar(20),
primary key (e_id)

);



insert into p1 values(
1,'sam',9500,35,'male','operations');
insert into p1 values(
2,'aysha',8000,32,'female','quality control');
 insert into p1  values(
3,'aejaz',5000,34,'male','packaging');
insert into p1  values(
4,'janvi',8500,40,'female','logistic');

insert into p1 values(
5,'James',7200,35,'Female','Sales');


select e_name,e_salary,e_age from customer;
select* from employee where e_dept='packaging';

select sum(e_salary) from employee;
select avg(e_age) from employee;

select Count (*) from employee where e_salary<5000 and e_gender='Male';


select 'I Hate Bitterguard'
select  LOWER ('SALMAN');
select  reverse ( 'I Hate Bitterguard');

select * from employe order by e_salary Desc;
select  top 3* from employe order by e_age;
select avg(e_salary),e_gender from employe group by e_gender;

select  distint *


select e_dept,avg(e_salary) from employe
group by e_dept having avg(e_salary)<6000

# limiting information #

#create view female_pharma1 AS female
select* from pharma1 where e_gender='Female'

select* from female_pharma1;


# adding and droping column#

alter table pharma1
add e_dob date;

select * from pharma1;

alter table pharma1
drop column e_dob;

# for updating #

update employe set  e_age=36 where e_name='aejaz';

update customer set  e_dept='production' where  e_name='sam'

select * from pharmaceutical

#for delete#
delete pharmaceutical where e_age=40;
select * from pharmaceutical;


insert into p2 values(
6,'Narayan',9000,30,'male','production');
insert into p2 values(
7,'Ali',7600,43,'male','sales');
insert into p2 values(
8,'Lata',8300,50,'male','quality control');
insert into p2 values (
 9,'Mahesh',4000,33,'male','packaging');
 insert into pharma2 values(
   10,'Robert',6800,30,'male','Logistic');                 )

   #joining columns/tables#
 
 a2

select * from pharma1 
 union
 select * from pharma2

 select * from p1
 intersect
 select * from p2
 select * from p1
 
 # for undo #
 begin transaction
 update pharma1 set e_age=31 where e_name='sam'
 rollback transaction

 select * from pharma1

 begin try
  begin transaction
  update  pharma1 set e_salary=50000 where e_gender='male'
  update pharma1 set e_salary=30000/0 where e_gender='Female'
  commit transaction
  print 'transaction commited'
  end try
  begin catch
    rollback transaction
	print'rollback transaction'
	end catch
 
 

 create table d(
 
 d_id int not null,
 d_name varchar(20),
 d_loc varchar(20),
);

 insert into d values(
 1,'production','Banglore');

  insert d values(
 2,'quality conrol','Mumbai');
 insert into d values(
   3,'logistic','Pune') ; 
   insert into d values(
   4, 'sales','Banglore');
    insert into d values(
	5,'packaging','Manglore');
	
   #   Join   #
   select p1.e_name,p1.e_dept,d.d_name,d.d_loc
   from p1
   inner join d on p1.e_dept= d. d_name

  select p1.e_name,p1.e_dept,d.d_name,d.d_loc
  from p1
  left join d
  on p1.e_dept=d.d_name;

  select p1.e_name,p1.e_dept,d.d_name,d.d_loc
  from p1
  right join d
  on p1.e_dept=d.d_name

 
 select p1.e_name,p1.e_dept,d.d_name,d.d_loc
  from p1
  full join d
  
  on p1.e_dept=d.d_name;

 
 # window functions#

select ROW_NUMBER()over (order by e_salary asc) as rowid,
  * from x2

  select rank()over (order by e_salary desc) as rankid,
  * from x2

  select Dense_rank()over (order by e_salary desc) as dense_rankid,
  * from x2


  select ntile(2)over (order by e_salary desc) as ntileid,
  * from x3








  