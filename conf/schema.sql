CREATE TABLE user
(
	username VARCHAR(64) NOT NULL,
	passwd_hash VARCHAR(64) NOT NULL,
	first_name VARCHAR(64) DEFAULT NULL,
	last_name VARCHAR(64) DEFAULT NULL,
	email VARCHAR(128) DeFAULT NULL
); 

INSERT INTO user (username, passwd_hash, first_name,last_name, email) VALUES ('paul','8aefb06c426e07a0a671a1e2488b4858d694a730','paul','sarasin','paulsarasin@gmail.com');