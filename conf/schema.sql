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
