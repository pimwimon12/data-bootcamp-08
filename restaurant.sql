.open restaurant.db 

-- create table
create table chefs 
  (chef_id integer primary key, 
  firstname nvarchar(200), 
  lastname nvarchar(200), 
  position text);

insert into chefs VALUES
	(1, "Chumpol", "Jangprai", "Chef de Entremetier"),
	(2, "Natthapol", "Pawapaiboon", "Chef de Saucier"),
	(3, "Thanarak", "Chooto", "Sous Chef de Cuisine"),
  (4, "Andy", "Yung-akesakul", "Commis de Cuisine"),
  (5, "Chalit", "Korbuakaew", "Chef de Cuisine");

CREATE TABLE menus
  (menu_id integer primary key,
  menu_name varchar,
  chef_for_menu_id integer,
  price numeric);
  
INSERT into menus VALUES
	(1, "Fish Jungle Curry", 1, 110),
	(2, "Turmeric Rice", 1, 50),
	(3, "Spaghetti with Chicken Breast and Green Curry Sauce", 2, 100),
	(4, "Macaroni Cream Sauce", 2, 95),
	(5, "Chinese-Styled Fried Noodle with Cheeva Pork", 3, 100),
  (6, "Young Coconut Pudding", 3, 55),
  (7, "Pad Thai Fai Ta Lu", 4, 90),
  (8, "๋Jasmine Rice", 4, 30),
  (9, "Smoked Duck Breast)", 5, 85),
  (10, "Chrysanthemum Juice", 5, 20);

CREATE TABLE customers
  (customer_id integer primary key,
  firstname nvarchar(200),
  lastname nvarchar(200),
  gender text,
  occupation text);

INSERT INTO customers values
  (1, "Thomas", " Kwok", "male", "engineer"),
  (2, "Jakkrit", "Yompayom", "male", "teacher"),
  (3, "Sivakorn", "Adulsuttikul", "male", "artist"),
  (4, "Jirayu", "Tangsrisuk", "male", "actor"),
  (5, "Peerada", "Kamalanan", "female", "doctor"),
  (6, "Taopipop", "Limjittrakorn", "male", "polititian"),
  (7, "Pimwimon", "Wijit", "female", "seller");

CREATE TABLE orders
  (order_id integer primary key,
  order_date date,
  customer_id integer,
  menu_id integer,
  quantity integer);

INSERT INTO orders values
  (1, "2023-09-01", 2, 7, 2),
  (2, "2023-09-05", 6, 1, 1),
  (3, "2023-09-05", 6, 8, 1),
  (4, "2023-09-05", 5, 5, 2),
  (5, "2023-09-07", 3, 3, 1),
  (6, "2023-09-07", 3, 10, 1),
  (7, "2023-09-10", 7, 2, 1),
  (8, "2023-09-10", 7, 9, 1),
  (9, "2023-09-10", 7, 6, 1),
  (10, "2023-09-18", 4, 4, 2),
  (11, "2023-09-18", 3, 9, 2),
  (12, "2023-09-22", 5, 7,1),
  (13, "2023-09-22", 5, 6, 1),
  (14, "2023-09-30", 1, 1, 2),
  (15, "2023-09-30", 1, 10, 1),
  (16, "2023-10-02", 4, 2, 1),
  (17, "2023-10-02", 4, 9, 1),
  (18, "2023-10-07", 2, 5, 1);

-- explore data
.mode box
SELECT * FROM chefs;
SELECT * FROM menus;
SELECT * FROM customers;
SELECT * FROM orders;

-- query 1
SELECT  
  orders.order_id, orders.order_date, orders.customer_id,
  customers.firstname, customers.lastname,
  menus.menu_id, menus.menu_name,
  chefs.chef_id, chefs.firstname, chefs.lastname
FROM chefs
JOIN menus
ON menus.chef_for_menu_id = chefs.chef_id
JOIN orders
ON orders.menu_id = menus.menu_id
JOIN customers
ON customers.customer_id = orders.customer_id
WHERE STRFTIME("%Y-%m" ,order_date) = "2023-09";

-- query 2
SELECT menus.menu_id, menu_name, count(*) AS n
FROM orders
JOIN menus
ON orders.menu_id = menus.menu_id
GROUP BY menu_name
order by n desc;

-- query 3
SELECT order_date, SUM(total_price) AS Sales
FROM (SELECT orders.order_id, orders.order_date,
  orders.customer_id, orders.menu_id,
    menus.menu_name, menus.price, orders.quantity,
    menus.price * orders.quantity AS total_price
FROM menus
join orders
ON menus.menu_id = orders.menu_id)
group by order_date
ORDER BY Sales desc;
