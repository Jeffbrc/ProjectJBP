CREATE TABLE user
(
	username VARCHAR(64) NOT NULL,
	passwd_hash VARCHAR(64) NOT NULL,
	first_name VARCHAR(64) DEFAULT NULL,
	last_name VARCHAR(64) DEFAULT NULL,
	email VARCHAR(128) DeFAULT NULL
); 

-- tables
-- Table: brand
CREATE TABLE brand (
    id INTEGER PRIMARY KEY,
    name integer NOT NULL
);

-- Table: category
CREATE TABLE category (
    id INTEGER PRIMARY KEY,
    name integer NOT NULL
);


-- Table: product
CREATE TABLE product (
    id INTEGER PRIMARY KEY,
    name varchar(64) NOT NULL,
    brand_id integer NOT NULL,
    category_id integer NOT NULL
);

-- Table: shop
CREATE TABLE shop (
    id INTEGER PRIMARY KEY,
    name varchar(64) NOT NULL,
    address integer NOT NULL,
    city integer NOT NULL,
    zipcode integer NOT NULL
);

-- Table: shop_product
CREATE TABLE shop_product (
    product_id integer NOT NULL,
    shop_id integer NOT NULL
);

-- End of file.

INSERT INTO user (username, passwd_hash, first_name,last_name, email) VALUES ('paul','8aefb06c426e07a0a671a1e2488b4858d694a730','Paul','Sarasin','paulsarasin@gmail.com');
INSERT INTO user (username, passwd_hash, first_name,last_name, email) VALUES ('jefferson','75d472285ec7d59be0927446a22daf2db60ee617','Jefferson','Mudry','mudryjefferson@gmail.com');
INSERT INTO user (username, passwd_hash, first_name,last_name, email) VALUES ('birun','e7d537e128158790157ea057bb883e0292a84930','Birunthaban','Sivalingam','birun2020@gmail.com');

-- brands
INSERT INTO brand (name) VALUES ('adidas');
INSERT INTO brand (name) VALUES ('fila');
INSERT INTO brand (name) VALUES ('nike');
INSERT INTO brand (name) VALUES ('north face');
INSERT INTO brand (name) VALUES ('vans');
INSERT INTO brand (name) VALUES ('champion');
INSERT INTO brand (name) VALUES ('stüssy');


-- category
INSERT INTO category (name) VALUES ('shoes');
INSERT INTO category (name) VALUES ('t-shirt');
INSERT INTO category (name) VALUES ('cap');  
INSERT INTO category (name) VALUES ('hoodie'); 
INSERT INTO category (name) VALUES ('sweatshirt');


-- shops
INSERT INTO shop (name) VALUES ('Foot Locker');
INSERT INTO shop (name) VALUES ('Snipes');
INSERT INTO shop (name) VALUES ('Forexx store');
INSERT INTO shop (name) VALUES ('Doodah');
INSERT INTO shop (name) VALUES ('Maniak');
INSERT INTO shop (name) VALUES ('Pump It Up');
INSERT INTO shop (name) VALUES ('Blue Tomato');

INSERT INTO category (name) VALUES ('short'); 
INSERT INTO category (name) VALUES ('socks');     