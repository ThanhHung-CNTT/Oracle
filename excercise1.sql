-- 1: get the customer names from the customers table
select name from customers;
-- 2: Get the customer_id, name, and credit_limit from the customers table
select customer_id,name,credit_limit from customers;
-- 3: Get all info from customers table
select * from customers;
-- 4: Retrieves customer name, address, and credit limit from the customers table
select name,address,credit_limit from customers;
-- 5: Get name, address and credit limit, sort the customer data by names alphabetically in ascending order.
select name,address,credit_limit 
from customers
order by name ASC;
-- 6: Sort contacts by their first names in ascending order and their last names in descending order
select first_name,last_name
from contacts
order by first_name,last_name DESC;
-- 7: Retrieves locations and sorts them by city and state
select country_id,city,state
from locations
order by city,state;
-- 8: Sort the customer names case-insensitively
select customer_id,name
from customers
order by upper(name);
-- 9: Sort orders by order date
select order_id,customer_id,status,order_date
from orders
order by order_date DESC;
-- 10: retrieves all contact first names
select first_name 
from contacts
order by first_name;
-- 11: selects distinct product id and quantity from the order_items table
select distinct product_id,quantity
from order_items
order by product_id;
-- 12: retrieves data from the state column, which has many NULL values
select distinct state
from locations
order by state NULLS FIRST;
-- 13: Get only products whose names are 'Kingston'
select product_name,description,list_price,category_id
from products
where product_name = 'Kingston';
-- 14: to get all motherboards that belong to the category id 1 and 4 and have list prices greater than 500
select product_name,list_price
from products
where list_price >500 and category_id IN (1,4);
-- 15: to get the products whose list prices are between 650 and 680
select product_name,list_price
from products
where list_price between 650 and 680
order by list_price;
-- 16: Get the full name of employees
select first_name || ' ' || last_name as "Full name"
from employees;
-- 17: Get the product gross profit, with gross profit is calculated by : list_price - standard_cost
select product_name,list_price - standard_cost as "Gross profit"
from products;
-- 18: finds orders of the customer 2 with the pending status
select order_id,customer_id,status,order_date
from orders
where status = 'Pending' and customer_id=2
order by order_date;
-- 19: Retrieves the orders that meet all the following conditions: placed in 2017; is in charge of the salesman id 60; has the shipped status.
select order_id,customer_id,status, order_date
from orders
where status = 'Shipped' and salesman_id = 60 and extract(year from order_date) = 2017
order by order_date;
-- 20: finds order placed by customer id 44 and has status canceled or pending
select order_id,customer_id,status,salesman_id,order_date
from orders
where (status in('Canceled' ,'Pending') and customer_id = 44)
order by order_date;
-- 21: finds orders whose status is pending or canceled
select order_id,customer_id,status,salesman_id,order_date
from orders
where status in('Canceled' , 'Pending')
order by order_date desc;
-- 22: Retrieves the orders which are in charge of one of the following the salesman id 60, 61 or 62
select order_id,customer_id,status,salesman_id,order_date
from orders
where salesman_id in(60,61,62)
order by order_date desc;
-- 23: Find the orders that belong to the customer id 44 and have canceled or pending status
select order_id,customer_id,status,salesman_id,order_date
from orders
where (status in ('Canceled', 'Pending') and customer_id = 44)
order by order_date;
-- 24: Find only the first 5 products with the highest stock quantity
select product_name,quantity
from inventories inner join products using(product_id)
order by quantity desc 
fetch next 5 rows only;
-- 25: Find products whose standard costs are between 500 and 600
select product_name,standard_cost
from products
where standard_cost between 500 and 600
order by standard_cost;
-- 26: Find products whose standard costs are not between 500 and 600
select product_name,standard_cost
from products
where standard_cost not between 500 and 600
order by product_name;
-- 27: Find the orders placed by customers between December 1, 2016, and December 31, 2016
select order_id,customer_id,status,order_date
from orders
where order_date between date '2016-12-01' and date '2016-12-31'
order by order_date;
-- 28: find the phones of contacts whose last names start with 'St'
select first_name,last_name,phone
from contacts
where last_name like 'St%'
order by last_name;
-- 29: find the phone numbers of contacts whose last names end with the string 'er'
select first_name,last_name,phone
from contacts
where last_name like '%er'
order by last_name;
-- 30: finds emails of contacts whose first names start with CH
select first_name,last_name,phone
from contacts
where upper(first_name) like 'CH%'
order by first_name;
-- 31: find contacts whose phone numbers do not start with '+1'
select first_name,last_name,phone
from contacts
where phone not like '+1%'
order by first_name;
-- 32: finds the phone numbers and emails of contacts whose first names have the following pattern 'Je_i'
select first_name,last_name,email,phone
from contacts
where first_name like 'Je_i'
order by first_name;