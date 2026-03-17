create database Food_Delivery_business;

create table food_customers(
customer_id int not null,
customer_name text  not null ,
city text not null,
signup_date Date not null,
primary key (customer_id) );

create table food_delivery_partners(
partner_id int not null,
partner_name text  not null ,
city text not null,
joining_date Date not null,
primary key (partner_id) );

create table food_restaurants(
restaurant_id int not null,
restaurant_name text  not null ,
city text not null,
cuisine_type text not null,
primary key (restaurant_id) );

create table food_orders(
order_id int not null,
customer_id int  not null ,
restaurant_id int not null,
partner_id int not null,
order_date date not null,
order_amount decimal(10,2) not null, 
delivery_time_minutes int not null,
order_status text not null,
primary key (order_id),
FOREIGN KEY (customer_id) REFERENCES food_customers(customer_id),
FOREIGN KEY (restaurant_id) REFERENCES food_restaurants(restaurant_id),
FOREIGN KEY (partner_id) REFERENCES food_delivery_partners(partner_id));




.

-- 🟢 BASIC LEVEL (4 Questions)
-- 1️⃣ Total Orders

-- 👉 How many total orders are placed?

-- 2️⃣ Total Revenue

-- 👉 What is the total revenue generated from delivered orders only?

-- 3️⃣ Orders by Status

-- 👉 Count of orders by order_status (Delivered vs Cancelled).

-- 4️⃣ Orders by City

-- 👉 Number of customers from each city.

-- 🟡 INTERMEDIATE LEVEL (4 Questions)
-- 5️⃣ Revenue by City

-- 👉 Total revenue generated in each city.

-- (Hint: join customers + orders)

-- 6️⃣ Top 5 Restaurants by Revenue

-- 👉 Which restaurants generated the highest revenue?

-- 7️⃣ Average Delivery Time

-- 👉 What is the average delivery time for delivered orders?

-- 8️⃣ Cancellation Rate

-- 👉 What is the cancellation percentage?

-- (Hint: use CASE + COUNT)

-- 🔴 ADVANCED LEVEL (4 Questions)
-- 9️⃣ Customers Who Ordered More Than Average

-- 👉 Find customers whose total spending is greater than overall average spending.

-- (Hint: subquery)

-- 🔟 Repeat Customers

-- 👉 Find customers who placed more than 5 orders.

-- 1️⃣1️⃣ Peak Ordering Month

-- 👉 Which month has highest number of orders?

-- (Hint: MONTH(order_date))

-- 1️⃣2️⃣ Restaurants With Above-Average Revenue

-- 👉 Find restaurants whose revenue is above overall average restaurant revenue.

-- (Hint: subquery + GROUP BY)