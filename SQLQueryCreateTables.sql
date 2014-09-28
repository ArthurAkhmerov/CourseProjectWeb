CREATE DATABASE CourseProjectWebDB;
USE CourseProjectWebDB;

CREATE TABLE Restaurant
(
rest_name varchar(50) PRIMARY KEY,
rest_contact varchar(20),
rest_address varchar(100)
);

CREATE TABLE News
(
news_id int IDENTITY(1,1) PRIMARY KEY,
news_datetime datetime NOT NULL DEFAULT GETDATE(),
news_imageURL varchar(100),
news_text varchar(200) NOT NULL,
news_restName varchar(50) NOT NULL
);

CREATE TABLE Reviews
(
reviews_id int IDENTITY(1,1) PRIMARY KEY,
reviews_datetime datetime NOT NULL DEFAULT GETDATE(),
reviews_message varchar(200) NOT NULL,
reviews_restName varchar(50) NOT NULL
);

CREATE TABLE Menu
(
menu_id int IDENTITY(1,1) PRIMARY KEY,
menu_version varchar(50) NOT NULL,
menu_restName varchar(50) NOT NULL
);

CREATE TABLE Section
(
section_id int IDENTITY(1,1) PRIMARY KEY,
section_type varchar(50) NOT NULL,
section_restName varchar(50) NOT NULL
);

CREATE TABLE DiningTable
(
dintable_No int NOT NULL PRIMARY KEY,
dintable_numberOfChairs int NOT NULL,
dintable_status bit NOT NULL,
dintable_sectionID int NOT NULL
);

CREATE TABLE Dintable_Order
(
dintable_No int NOT NULL,
order_id int NOT NULL,
);

CREATE TABLE Orders
(
order_id int NOT NULL PRIMARY KEY,
order_datetime datetime NOT NULL DEFAULT GETDATE(),
order_author varchar(50) NOT NULL,
order_description varchar(100) NOT NULL,
order_phone varchar(20) NOT NULL,
order_timeReservation datetime NOT NULL
);

CREATE TABLE Menu_Cuisine
(
menu_id int NOT NULL,
cuisine_name varchar(50) NOT NULL
);

CREATE TABLE Cuisine
(
cuisine_name varchar(50) NOT NULL PRIMARY KEY,
cuisine_imageURL varchar(100) NOT NULL,
cuisine_description varchar(200)
);

CREATE TABLE Cuisine_Class
(
cuisine_name varchar(50) NOT NULL,
class_id int NOT NULL
);

CREATE TABLE Class
(
class_id int IDENTITY(1,1) PRIMARY KEY,
class_name varchar(50) NOT NULL
);

CREATE TABLE Dish
(
dish_id int IDENTITY(1,1) PRIMARY KEY,
dish_name varchar(50) NOT NULL,
dish_description varchar(200),
dish_price int NOT NULL,
dish_imageURL varchar(100) NOT NULL,
dish_classID int
);

CREATE TABLE Dish_Recipe
(
dish_id int NOT NULL,
recipe_id int NOT NULL
);

CREATE TABLE Recipe
(
recipe_id int IDENTITY(1,1) PRIMARY KEY,
recipe_description varchar(200) NOT NULL,
recipe_imageURL varchar(100)
);

CREATE TABLE Dish_Item
(
dish_id int NOT NULL,
item_id int NOT NULL
);

CREATE TABLE Item
(
item_id int IDENTITY(1,1) PRIMARY KEY,
item_name varchar(50) NOT NULL,
item_description varchar(200),
item_price int NOT NULL
);

