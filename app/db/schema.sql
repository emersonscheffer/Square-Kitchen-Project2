DROP DATABASE IF EXISTS warehouse_db;
CREATE DATABASE warehouse_db;
USE warehouse_db;

CREATE TABLE restaurants (
  id INT NOT NULL AUTO_INCREMENT,
  rest_name VARCHAR(100) NOT NULL,
  food_type VARCHAR(100) NOT NULL,
  website_url VARCHAR(100) NOT NULL,
  tel_number VARCHAR(20) NOT NULL,
  rest_description VARCHAR(500) NOT NULL,
  slot_num INT NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE menu (
  id INT NOT NULL AUTO_INCREMENT,
  item_name VARCHAR(100) NOT NULL,
  item_price DECIMAL(5,2) NOT NULL,
  rest_name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE cart(
	id INTEGER NOT NULL AUTO_INCREMENT,
    item_name VARCHAR(100) NOT NULL,
	item_price DECIMAL(5,2) NOT NULL,
    item_qty INTEGER NOT NULL,
	rest_name VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
);


INSERT INTO restaurants (rest_name, food_type, website_url, tel_number, rest_description, slot_num)
VALUE ("Berkeley Pizza", "Italian", "www.berkeleypizza.com", "574 745 7366", "Best Pizza in Town", 4);

INSERT INTO restaurants (rest_name, food_type, website_url, tel_number, rest_description, slot_num)
VALUE ("Delhi Diner", "Indian", "www.indiandelhi.com", "510 111 1111", "Indian Bites", 3);

INSERT INTO restaurants (rest_name, food_type, website_url, tel_number, rest_description, slot_num)
VALUE ("Paris Bakery", "French", "www.parisbakery.com", "510 111 1111", "Best French", 5);

INSERT INTO restaurants (rest_name, food_type, website_url, tel_number, rest_description, slot_num)
VALUE ("Smokehouse Burgers", "American", "www.smokeburgers.com", "510 555 5555", "Burgers and Fries", 5);

INSERT INTO menu (item_name, item_price, rest_name)
VALUE("Pepperoni Pizza", 12.99, "Berkeley Pizza");





INSERT INTO menu (item_name, item_price, rest_name)
VALUE("Plain croissants", 3.99, "Paris Bakery");

INSERT INTO menu (item_name, item_price, rest_name)
VALUE("Almond croissants", 5.99, "Paris Bakery");

INSERT INTO menu (item_name, item_price, rest_name)
VALUE("Biscuit bakery with provolone cheese and ham or turkey", 7.99, "Paris Bakery");

INSERT INTO menu (item_name, item_price, rest_name)
VALUE("Brioche", 2.99, "Paris Bakery");

INSERT INTO menu (item_name, item_price, rest_name)
VALUE("French baguette", 5.99, "Paris Bakery");

INSERT INTO menu (item_name, item_price, rest_name)
VALUE("Kalamata olive and Herbs", 4.99, "Paris Bakery");

INSERT INTO menu (item_name, item_price, rest_name)
VALUE("Walnut-raisins bread", 6.99, "Paris Bakery");

INSERT INTO menu (item_name, item_price, rest_name)
VALUE("Boule", 3.99, "Paris Bakery");

INSERT INTO menu (item_name, item_price, rest_name)
VALUE("Epis bread", 8.99, "Paris Bakery");

INSERT INTO menu (item_name, item_price, rest_name)
VALUE("Tarts with baked fruits", 5.99, "Paris Bakery");




SELECT * FROM cart;
SELECT * FROM menu;