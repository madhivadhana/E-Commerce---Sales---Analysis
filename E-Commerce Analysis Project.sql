create database project1;
create table customer(customer_id int primary key, customer_name varchar(50), gender enum('Male','Female','Others'), age int, city varchar(20), signup_date date);
INSERT INTO customer
(customer_id, customer_name, gender, age, city, signup_date)
VALUES
(101, 'Arun Kumar', 'Male', 28, 'Chennai', '2024-01-15'),
(102, 'Priya Sharma', 'Female', 25, 'Bangalore', '2024-02-20'),
(103, 'Rahul Verma', 'Male', 32, 'Mumbai', '2024-03-10'),
(104, 'Sneha Iyer', 'Female', 29, 'Chennai', '2024-04-05'),
(105, 'Vikram Singh', 'Male', 35, 'Delhi', '2024-04-18'),
(106, 'Anjali Rao', 'Female', 27, 'Hyderabad', '2024-05-12'),
(107, 'Karthik Raj', 'Male', 30, 'Bangalore', '2024-06-25'),
(108, 'Meera Nair', 'Female', 24, 'Kochi', '2024-07-08'),
(109, 'Rohit Mehta', 'Male', 31, 'Mumbai', '2024-08-14'),
(110, 'Divya Menon', 'Female', 26, 'Chennai', '2024-09-01'),
(111, 'Sanjay Patel', 'Male', 38, 'Ahmedabad', '2024-09-15'),
(112, 'Pooja Shah', 'Female', 33, 'Pune', '2024-10-20'),
(113, 'Amit Das', 'Male', 29, 'Kolkata', '2024-11-11'),
(114, 'Nisha Kapoor', 'Female', 27, 'Delhi', '2024-12-05'),
(115, 'Manoj Reddy', 'Male', 36, 'Hyderabad', '2025-01-10');
select *from customer;
create table categories(category_id int primary key,category_name varchar(50));
INSERT INTO categories
(category_id, category_name)
VALUES
(1, 'Fruits & Vegetables'),
(2, 'Dairy & Breakfast'),
(3, 'Snacks'),
(4, 'Beverages'),
(5, 'Personal Care'),
(6, 'Cleaning'),
(7, 'Bakery'),
(8, 'Baby Care');
select *from categories;
create table products(product_id int primary key, product_name varchar(50), category_id int, brand Varchar(50), price decimal(10,2), cost_price decimal(10,2), stock_qty int);
INSERT INTO products
(product_id, product_name, category_id, brand, price, cost_price, stock_qty)
VALUES
(201, 'Apple 1kg', 1, 'Fresh Farm', 180.00, 130.00, 50),
(202, 'Banana 1kg', 1, 'Fresh Farm', 60.00, 40.00, 80),
(203, 'Tomato 1kg', 1, 'Farm Fresh', 45.00, 30.00, 100),
(204, 'Milk 1L', 2, 'Aavin', 55.00, 42.00, 75),
(205, 'Bread 400g', 7, 'Modern', 45.00, 32.00, 60),
(206, 'Eggs 12 Pack', 2, 'Farm Eggs', 90.00, 65.00, 45),
(207, 'Potato Chips', 3, 'Lays', 30.00, 20.00, 120),
(208, 'Chocolate Bar', 3, 'Cadbury', 50.00, 35.00, 90),
(209, 'Orange Juice 1L', 4, 'Tropicana', 140.00, 105.00, 40),
(210, 'Cola 750ml', 4, 'Coca Cola', 45.00, 30.00, 100),
(211, 'Shampoo 180ml', 5, 'Dove', 220.00, 165.00, 35),
(212, 'Face Wash 100ml', 5, 'Himalaya', 180.00, 130.00, 25),
(213, 'Floor Cleaner 1L', 6, 'Lizol', 190.00, 145.00, 20),
(214, 'Dishwash Liquid 500ml', 6, 'Vim', 110.00, 80.00, 30),
(215, 'Baby Diapers Pack', 8, 'Pampers', 650.00, 500.00, 15),
(216, 'Baby Wipes', 8, 'Huggies', 180.00, 135.00, 22),
(217, 'Water 1L', 4, 'Kinley', 20.00, 12.00, 200),
(218, 'Ice Cream 500ml', 3, 'Amul', 250.00, 190.00, 18),
(219, 'Coffee 200g', 2, 'Bru', 160.00, 120.00, 28),
(220, 'Green Tea 25 Bags', 4, 'Lipton', 150.00, 110.00, 32);

select *from products;
create table orders(order_id int, customer_id int, order_date date , order_time time, delivery_city varchar(50),
 payment_method enum('UPI','Credit Card','Cash','Wallet','Debit Card'), order_status varchar(50), delivery_time_minutes int);

INSERT INTO orders
(order_id, customer_id, order_date, order_time, delivery_city,
 payment_method, order_status, delivery_time_minutes)
VALUES
(1001, 101, '2025-01-05', '09:15:00', 'Chennai', 'UPI', 'Delivered', 18),
(1002, 102, '2025-01-07', '11:30:00', 'Bangalore', 'Credit Card', 'Delivered', 22),
(1003, 103, '2025-01-10', '18:45:00', 'Mumbai', 'UPI', 'Delivered', 15),
(1004, 104, '2025-01-12', '20:10:00', 'Chennai', 'Wallet', 'Delivered', 25),
(1005, 105, '2025-01-15', '08:20:00', 'Delhi', 'Debit Card', 'Cancelled', NULL),
(1006, 106, '2025-01-18', '14:30:00', 'Hyderabad', 'UPI', 'Delivered', 19),
(1007, 107, '2025-01-22', '19:15:00', 'Bangalore', 'UPI', 'Delivered', 17),
(1008, 108, '2025-01-25', '10:45:00', 'Kochi', 'Cash', 'Delivered', 28),
(1009, 109, '2025-02-02', '17:20:00', 'Mumbai', 'Credit Card', 'Delivered', 21),
(1010, 110, '2025-02-05', '21:00:00', 'Chennai', 'UPI', 'Delivered', 16),
(1011, 111, '2025-02-08', '13:10:00', 'Ahmedabad', 'Debit Card', 'Delivered', 24),
(1012, 112, '2025-02-12', '16:40:00', 'Pune', 'UPI', 'Returned', 32),
(1013, 113, '2025-02-15', '09:30:00', 'Kolkata', 'Wallet', 'Delivered', 20),
(1014, 114, '2025-02-18', '18:20:00', 'Delhi', 'UPI', 'Delivered', 19),
(1015, 115, '2025-02-22', '12:00:00', 'Hyderabad', 'Credit Card', 'Delivered', 23),
(1016, 101, '2025-03-01', '10:15:00', 'Chennai', 'UPI', 'Delivered', 14),
(1017, 102, '2025-03-05', '19:30:00', 'Bangalore', 'UPI', 'Delivered', 18),
(1018, 103, '2025-03-08', '15:20:00', 'Mumbai', 'Wallet', 'Cancelled', NULL),
(1019, 104, '2025-03-12', '20:30:00', 'Chennai', 'Credit Card', 'Delivered', 26),
(1020, 105, '2025-03-15', '11:00:00', 'Delhi', 'UPI', 'Delivered', 22);

select *from orders;

create table order_items(order_item_id int, order_id int, product_id int, quantity int, unit_price int, discount int);

INSERT INTO order_items
(order_item_id, order_id, product_id, quantity, unit_price, discount)
VALUES
(1, 1001, 201, 2, 180, 10),
(2, 1001, 204, 1, 55, 0),
(3, 1001, 207, 2, 30, 5),
(4, 1002, 205, 2, 45, 0),
(5, 1002, 206, 1, 90, 10),
(6, 1002, 209, 1, 140, 0),
(7, 1003, 211, 1, 220, 20),
(8, 1003, 208, 3, 50, 5),
(9, 1004, 215, 1, 650, 50),
(10, 1004, 216, 2, 180, 20),
(11, 1005, 201, 1, 180, 0),
(12, 1005, 217, 3, 20, 0),
(13, 1006, 203, 3, 45, 5),
(14, 1006, 204, 2, 55, 0),
(15, 1006, 219, 1, 160, 10),
(16, 1007, 218, 1, 250, 30),
(17, 1007, 210, 2, 45, 0),
(18, 1008, 202, 2, 60, 0),
(19, 1008, 205, 1, 45, 0),
(20, 1008, 220, 1, 150, 15),
(21, 1009, 201, 1, 180, 0),
(22, 1009, 209, 2, 140, 20),
(23, 1010, 212, 1, 180, 10),
(24, 1010, 213, 1, 190, 15),
(25, 1011, 214, 2, 110, 10),
(26, 1011, 207, 3, 30, 5),
(27, 1012, 215, 1, 650, 0),
(28, 1012, 216, 1, 180, 0),
(29, 1013, 204, 2, 55, 0),
(30, 1013, 219, 1, 160, 15),
(31, 1014, 211, 2, 220, 25),
(32, 1014, 208, 2, 50, 5),
(33, 1015, 215, 1, 650, 50),
(34, 1015, 218, 2, 250, 40),
(35, 1016, 201, 2, 180, 20),
(36, 1016, 202, 2, 60, 5),
(37, 1017, 209, 2, 140, 15),
(38, 1017, 210, 3, 45, 5),
(39, 1018, 211, 1, 220, 0),
(40, 1018, 212, 1, 180, 0),
(41, 1019, 203, 4, 45, 10),
(42, 1019, 204, 2, 55, 0),
(43, 1020, 213, 1, 190, 20),
(44, 1020, 214, 2, 110, 10);
select *from order_items;

create table delivery_partners(delivery_partner_id int primary key, partner_name varchar(50), city varchar(50), joining_date date, rating decimal(10,2), total_deliveries int);
INSERT INTO delivery_partners
(delivery_partner_id, partner_name, city, joining_date, rating, total_deliveries)
VALUES
(301, 'Suresh Kumar', 'Chennai', '2024-01-10', 4.80, 1250),
(302, 'Ajay Singh', 'Bangalore', '2024-02-15', 4.60, 980),
(303, 'Ravi Patel', 'Mumbai', '2024-03-20', 4.70, 1100),
(304, 'Kiran Rao', 'Hyderabad', '2024-04-12', 4.50, 870),
(305, 'Mohit Sharma', 'Delhi', '2024-05-05', 4.30, 760),
(306, 'Arun Das', 'Kolkata', '2024-06-18', 4.90, 1350),
(307, 'Vijay Menon', 'Kochi', '2024-07-25', 4.40, 690),
(308, 'Rahul Shah', 'Pune', '2024-08-14', 4.60, 920);
select *from delivery_partners;

create table deliveries(delivery_id int, order_id int, delivery_partner_id int,
 assigned_time datetime, picked_up_time datetime null, delivered_time datetime null, delivery_status enum('Delivered','Cancelled','Returned'));
INSERT INTO deliveries
(delivery_id, order_id, delivery_partner_id,
 assigned_time, picked_up_time, delivered_time, delivery_status)
VALUES
(401, 1001, 301, '2025-01-05 09:17:00', '2025-01-05 09:25:00', '2025-01-05 09:43:00', 'Delivered'),
(402, 1002, 302, '2025-01-07 11:32:00', '2025-01-07 11:40:00', '2025-01-07 12:02:00', 'Delivered'),
(403, 1003, 303, '2025-01-10 18:47:00', '2025-01-10 18:52:00', '2025-01-10 19:07:00', 'Delivered'),
(404, 1004, 301, '2025-01-12 20:12:00', '2025-01-12 20:20:00', '2025-01-12 20:45:00', 'Delivered'),
(405, 1005, 305, '2025-01-15 08:22:00', NULL, NULL, 'Cancelled'),
(406, 1006, 304, '2025-01-18 14:32:00', '2025-01-18 14:40:00', '2025-01-18 14:59:00', 'Delivered'),
(407, 1007, 302, '2025-01-22 19:17:00', '2025-01-22 19:24:00', '2025-01-22 19:41:00', 'Delivered'),
(408, 1008, 307, '2025-01-25 10:47:00', '2025-01-25 10:55:00', '2025-01-25 11:23:00', 'Delivered'),
(409, 1009, 303, '2025-02-02 17:22:00', '2025-02-02 17:30:00', '2025-02-02 17:51:00', 'Delivered'),
(410, 1010, 301, '2025-02-05 21:02:00', '2025-02-05 21:08:00', '2025-02-05 21:24:00', 'Delivered'),
(411, 1011, 303, '2025-02-08 13:12:00', '2025-02-08 13:20:00', '2025-02-08 13:44:00', 'Delivered'),
(412, 1012, 308, '2025-02-12 16:42:00', '2025-02-12 16:50:00', '2025-02-12 17:22:00', 'Returned'),
(413, 1013, 306, '2025-02-15 09:32:00', '2025-02-15 09:40:00', '2025-02-15 10:00:00', 'Delivered'),
(414, 1014, 305, '2025-02-18 18:22:00', '2025-02-18 18:29:00', '2025-02-18 18:48:00', 'Delivered'),
(415, 1015, 304, '2025-02-22 12:02:00', '2025-02-22 12:10:00', '2025-02-22 12:33:00', 'Delivered'),
(416, 1016, 301, '2025-03-01 10:17:00', '2025-03-01 10:23:00', '2025-03-01 10:37:00', 'Delivered'),
(417, 1017, 302, '2025-03-05 19:32:00', '2025-03-05 19:40:00', '2025-03-05 19:58:00', 'Delivered'),
(418, 1018, 303, '2025-03-08 15:22:00', NULL, NULL, 'Cancelled'),
(419, 1019, 301, '2025-03-12 20:32:00', '2025-03-12 20:40:00', '2025-03-12 21:06:00', 'Delivered'),
(420, 1020, 305, '2025-03-15 11:02:00', '2025-03-15 11:10:00', '2025-03-15 11:32:00', 'Delivered');

select *from deliveries;

-- Product details from Brand Vim--
select *from products where brand='Vim';

-- Customers from Chennai city--
select customer_name from customer where city='Chennai';

-- Customers from Chennai city and above 25 years--
select customer_name,age from customer where city='Chennai' and age>25;

-- Customers from Chennai city or Bangalore--
select customer_name,city from customer where city='Chennai' or city='Bangalore';

-- Find customers details in Mumbai--

select *from customer where city in ('Mumbai','Hyderabad');

-- Product details which has price between 100 to 500 --
select product_name,cost_price from products where cost_price between 100 and 500 ;

-- Product cost more than 100--
select product_name,cost_price from products where cost_price>100 ;

-- Orders Delivered --
select *from deliveries where delivery_status='Delivered';

-- Stocks less that 20 --
select *from products where stock_qty<20;

-- Customer details starts with a --
select *from customer where customer_name like 'a%';

-- Top 5 Costliest Products --
select product_name,cost_price from products order by cost_price desc limit 5;

-- list the city name and number of customers ---
select distinct(city),count(customer_name) from customer group by city order by count(customer_name) desc;

-- Customer having more than one order --
select c.customer_name,count(o.order_id) from customer c inner join orders o on c.customer_id=o.customer_id 
where o.order_status='Delivered' group by c.customer_name having count(o.order_id)>1 order by count(o.order_id);

-- Total Revenue per order --
select order_items.order_id,sum(quantity*(unit_price-(unit_price*discount/100))) as Revenue from order_items
inner join deliveries on order_items.order_id=deliveries.order_id where deliveries.delivery_status='Delivered' group by order_items.order_id;

-- sum of total revenue --
select sum(quantity*(unit_price-(unit_price*discount/100))) as Revenue from order_items
inner join deliveries on order_items.order_id=deliveries.order_id where deliveries.delivery_status='Delivered';
 
 
-- Top 5 Products by revenue--
select p.product_name,c.category_name,sum(oi.quantity*(oi.unit_price-(oi.unit_price*oi.discount/100))) as revenue from order_items oi
inner join deliveries d on oi.order_id=d.order_id
inner join products p on oi.product_id=p.product_id
inner join categories c on p.category_id=c.category_id
where d.delivery_status='Delivered' group by p.product_name,c.category_name order by revenue desc limit 5;

-- Revenue by category--
select c.category_name,sum(oi.quantity*(oi.unit_price-(oi.unit_price*oi.discount/100))) as revenue from order_items oi
inner join deliveries d
on oi.order_id=d.order_id
inner join products p on oi.product_id=p.product_id
inner join categories c on p.category_id=c.category_id
where d.delivery_status='Delivered'
group by c.category_name
order by revenue desc;

-- Top 5 Customer by spending --
select cus.customer_id,cus.customer_name,sum(oi.quantity*(oi.unit_price-(oi.unit_price*oi.discount/100))) as revenue from order_items oi
inner join orders o
on oi.order_id=o.order_id
inner join customer cus
on o.customer_id=cus.customer_id
inner join deliveries d
on oi.order_id=d.order_id
where d.delivery_status='Delivered'
group by cus.customer_id,cus.customer_name
order by revenue desc limit 5;

-- Average revenue for each city --
with sumrevenue as (select o.delivery_city,sum(oi.quantity*(oi.unit_price-(oi.unit_price*oi.discount/100))) as sumrev from order_items oi 
inner join deliveries d on oi.order_id=d.order_id 
inner join orders o on oi.order_id=o.order_id
where d.delivery_status='Delivered'
group by o.delivery_city,oi.order_id)
select delivery_city,avg(sumrev) as avgrev from sumrevenue group by delivery_city order by avgrev desc;

-- Categories customer based on their age 18–25 → Young, 26–35 → Adult and 36+   → Senior--
select if(age>36,'Senior',if(age>=26 and age<=25,'Adult','Young')) as age_group,count(customer_name) from customer group by age_group order by count(customer_name) desc;

-- Customer name - city --
select concat(customer_name,'-',city) from customer;

-- Find the length of each product name and sort from longest to shortest--
select product_name,length(product_name) from products order by length(product_name) desc;

-- Find the number of days between customer signup and their first order.--
select c.customer_name,datediff(o.order_date,c.signup_date) from customer c inner join orders o on c.customer_id=o.customer_id;

-- Find the average delivery time for each month.--
select date_format(order_date,'%m'),avg(delivery_time_minutes) from orders group by date_format(order_date,'%m');

-- Delivery Partners and Delivered order count ---
select dp.partner_name,count(d.order_id) from delivery_partners dp right join deliveries d on dp.delivery_partner_id=d.delivery_partner_id where d.delivery_status='Delivered' group by dp.partner_name;

-- Find customers who have placed more orders than the average number of orders per customer.--
select c.customer_name,count(o.order_id) from customer c inner join orders o on c.customer_id=o.customer_id 
group by c.customer_name 
having count(o.order_id)>(select avg(order_count) from (select customer_id, COUNT(order_id) as order_count from orders group by customer_id) as Avg_order)
order by count(o.order_id) desc;