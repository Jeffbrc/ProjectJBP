CREATE TABLE user
(
	username VARCHAR(64) NOT NULL,
	passwd_hash VARCHAR(64) NOT NULL,
	first_name VARCHAR(64) DEFAULT NULL,
	last_name VARCHAR(64) DEFAULT NULL,
	email VARCHAR(128) DeFAULT NULL
); 


INSERT INTO user (username, passwd_hash, first_name,last_name, email) VALUES ('paul','8aefb06c426e07a0a671a1e2488b4858d694a730','Paul','Sarasin','paulsarasin@gmail.com');
INSERT INTO user (username, passwd_hash, first_name,last_name, email) VALUES ('jefferson','75d472285ec7d59be0927446a22daf2db60ee617','Jefferson','Mudry','mudryjefferson@gmail.com');
INSERT INTO user (username, passwd_hash, first_name,last_name, email) VALUES ('birunthaban','e7d537e128158790157ea057bb883e0292a84930','Birunthaban','Sivalingam','birun2020@gmail.com');
-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2019-03-24 11:37:44.286

-- tables
-- Table: brand
CREATE TABLE brand (
    id integer NOT NULL CONSTRAINT brand_pk PRIMARY KEY,
    name integer NOT NULL
);

-- Table: category
CREATE TABLE category (
    category_id integer NOT NULL CONSTRAINT category_pk PRIMARY KEY,
    product_id integer NOT NULL,
    CONSTRAINT category_product FOREIGN KEY (product_id)
    REFERENCES product (id)
);

-- Table: color
CREATE TABLE color (
    color_id integer NOT NULL CONSTRAINT color_pk PRIMARY KEY,
    CONSTRAINT color_id UNIQUE (color_id)
);

-- Table: material
CREATE TABLE material (
    material_id integer NOT NULL CONSTRAINT material_pk PRIMARY KEY,
    product_id integer NOT NULL,
    CONSTRAINT material_product FOREIGN KEY (product_id)
    REFERENCES product (id)
);

-- Table: photo
CREATE TABLE photo (
    product_photo_product_id integer NOT NULL CONSTRAINT photo_pk PRIMARY KEY,
    CONSTRAINT photo_product_photo FOREIGN KEY (product_photo_product_id)
    REFERENCES product_photo (product_id)
);

-- Table: price
CREATE TABLE price (
    product_price_product_id integer NOT NULL CONSTRAINT price_pk PRIMARY KEY,
    CONSTRAINT price_product_price FOREIGN KEY (product_price_product_id)
    REFERENCES product_price (product_id)
);

-- Table: product
CREATE TABLE product (
    id integer NOT NULL CONSTRAINT product_pk PRIMARY KEY,
    brand_id integer NOT NULL,
    material_id integer NOT NULL,
    category_id integer NOT NULL,
    color_id integer NOT NULL,
    photo_id integer NOT NULL,
    price_id integer NOT NULL,
    size_id integer NOT NULL,
    CONSTRAINT product_brand FOREIGN KEY (brand_id)
    REFERENCES brand (id),
    CONSTRAINT product_color FOREIGN KEY (color_id)
    REFERENCES color (color_id)
);

-- Table: product_photo
CREATE TABLE product_photo (
    product_id integer NOT NULL CONSTRAINT product_photo_pk PRIMARY KEY,
    CONSTRAINT product_photo_product FOREIGN KEY (product_id)
    REFERENCES product (id)
);

-- Table: product_price
CREATE TABLE product_price (
    product_id integer NOT NULL CONSTRAINT product_price_pk PRIMARY KEY,
    CONSTRAINT product_price_product FOREIGN KEY (product_id)
    REFERENCES product (id)
);

-- Table: product_size
CREATE TABLE product_size (
    product_id integer NOT NULL CONSTRAINT product_size_pk PRIMARY KEY,
    size_id integer NOT NULL,
    CONSTRAINT product_size_product FOREIGN KEY (product_id)
    REFERENCES product (id)
);

-- Table: shop
CREATE TABLE shop (
    id integer NOT NULL CONSTRAINT shop_pk PRIMARY KEY,
    name varchar(64) NOT NULL,
    adress integer NOT NULL,
    city integer NOT NULL,
    zipcode integer NOT NULL
);

-- Table: shop_product
CREATE TABLE shop_product (
    shop_product integer NOT NULL CONSTRAINT shop_product_pk PRIMARY KEY,
    product_id integer NOT NULL,
    shop_id integer NOT NULL,
    CONSTRAINT shop_product_product FOREIGN KEY (product_id)
    REFERENCES product (id),
    CONSTRAINT shop_product_shop FOREIGN KEY (shop_id)
    REFERENCES shop (id)
);

-- Table: size
CREATE TABLE size (
    id integer NOT NULL CONSTRAINT id PRIMARY KEY,
    product_size_product_id integer NOT NULL,
    CONSTRAINT size_product_size FOREIGN KEY (product_size_product_id)
    REFERENCES product_size (product_id)
);

-- End of file.

