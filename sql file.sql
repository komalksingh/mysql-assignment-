USE mydatabase;
-- create table if not exists SalesPeople (
-- Snum int unsigned auto_increment not null,
-- Sname varchar(20) not null,
-- City varchar(20),
-- Comm int,
-- primary key (Snum)
-- );
-- create table if not exists Customers (
-- Cnum int unsigned auto_increment not null,
-- City varchar(20) not null,
-- Snum int unsigned not null,
-- Cname varchar(20),
-- primary key (Cnum),
-- foreign key (Snum) references SalesPeople(Snum) 
-- );
-- create table if not exists Orders (
-- Onum int unsigned auto_increment not null,
-- Cnum int unsigned not null,
-- Amt float,
-- Odate date,
-- Snum int unsigned not null,
-- primary key (Onum),
-- foreign key (Cnum) references Customers(Cnum),
-- foreign key (Snum) references SalesPeople(Snum)
-- );



-- insert into SalesPeople values (1001, "Peel", "London", 12),(1002, "Serres", "Sanjose", 13),(1004, "Motika", "London", 11), (1007, "Rifkin", "Barcelona", 15), (1003, "Axelrod", "Newyork", 10);


-- insert into Customers values (2001, "London", 1001, "Hoffman"),(2002, "Rome", 1003, "Giovanni"), (2003, "Sanjose", 1002, "Liu"), (2004, "Berlin", 1002, "Grass"), (2006, "London", 1001, "Clemens"), (2008, "Sanjose", 1007, "Cisnerose"), (2007, "Rome", 1004, "Pereira");

-- insert into Orders values (3001, 2008, 18.69, '1990-3-10',1007), (3003, 2001, 767.19, '1990-3-10',1001),(3002, 2007, 1900.10, '1990-3-10',1004),(3005, 2003, 5160.45, '1990-3-10',1002),(3006, 2008, 1098.16, '1990-3-10',1007),(3009, 2002, 1713.23, '1990-4-10',1003),(3007, 2004, 75.75, '1990-4-10',1002),(3008, 2006, 4273.00, '1990-5-10',1001),(3010, 2004, 1309.95, '1990-6-10',1002),(3011, 2006, 9891.88, '1990-6-10',1001);

/* 1.  Count the number of Salesperson whose name begin with ‘a’/’A’. */

-- select count(*) from SalesPeople where (Sname like 'a%' or Sname like 'A%');

/* 2. Display all the Salesperson whose all orders worth is more than Rs. 2000. */

-- select s.Sname as SalesPerson, sum(o.Amt) as Worth from SalesPeople as s inner join Orders as o on s.Snum = o.Snum group by s.Sname having sum(o.Amt)>2000; 

/* 3.  Count the number of Salesperson belonging to Newyork. */

-- select count(*) from SalesPeople where City = "Newyork";

/* 4.  Display the number of Salespeople belonging to London and belonging to Paris. */

-- select Sname as Salespeople_in_Paris from SalesPeople where City = "Paris";
-- select Sname as Salespeople_in_London  from SalesPeople where City = "London";

/* 5. Display the number of orders taken by each Salesperson and their date of orders. */

-- select s.Sname as SalesPerson, Onum as OrderNumber, o.Odate as date from SalesPeople as s inner join Orders as o on s.Snum = o.Snum; 

