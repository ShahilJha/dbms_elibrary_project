CREATE DATABASE project;
USE project;

CREATE TABLE admin(
admin_id int IDENTITY,
name varchar(30),
username varchar(15),
password varchar(15),
entry_date date,
PRIMARY KEY(admin_id)
);
CREATE TABLE books(
book_id int IDENTITY,
bookname varchar(30),
author varchar(20),
detail varchar(1000),
entry_date date,
PRIMARY KEY(book_id)
);
CREATE TABLE students(
s_id int IDENTITY,
s_name varchar(30),
s_contact varchar(10),
s_address varchar(20),
s_gender varchar(6),
s_email varchar(20),
s_password varchar(15),
entry_date date,
PRIMARY KEY(s_id)
);
CREATE TABLE publication(
p_id int IDENTITY,
p_name varchar(25),
PRIMARY KEY (p_id)
);
CREATE TABLE manages(
admin_id int,
book_id int,
entry_date date,
FOREIGN KEY (admin_id) REFERENCES admin,
FOREIGN KEY (book_id) REFERENCES books
);
CREATE TABLE views(
s_id int,
book_id int,
entry_date date,
FOREIGN KEY (s_id) REFERENCES students,
FOREIGN KEY (book_id) REFERENCES books
);
CREATE TABLE publish(
p_id int,
book_id int,
FOREIGN KEY (p_id) REFERENCES publication,
FOREIGN KEY (book_id) REFERENCES books
);

SELECT * FROM admin;
SELECT * FROM books;
SELECT * FROM students;
SELECT * FROM publication;
SELECT * FROM manages;
SELECT * FROM views;
SELECT * FROM publish;

INSERT INTO admin VALUES('shahil jha','shahil','shahil','9/02/2019');
INSERT INTO admin VALUES('basu dev subedi','basu','basu','9/02/2019');
INSERT INTO admin VALUES('ananda aryal','ananda','ananda','9/02/2019');

INSERT INTO books VALUES('City of Girls','Elizabeth Gilbert','A SUNDAY TIMES TOP TEN BESTSELLER.','9/02/2019');
INSERT INTO books VALUES('The Testaments','Margaret Atwood','A sequel to her The Handmaids Tale.','9/02/2019');
INSERT INTO books VALUES('Three Women','Lisa Taddeo','THE NUMBER ONE NEW YORK TIMES BESTSELLER.','9/02/2019');
INSERT INTO books VALUES('Red at the Bone','Jacqueline Woodson','Gorgeous, moving…A story of love—romantic.','9/02/2019');
INSERT INTO books VALUES('The Nickel Boys','Colson Whitehead','The Nickel Boys is a 2019 novel by American novelist and writer Colson Whitehead.','9/02/2019');

INSERT INTO publication VALUES('Originally Published');
INSERT INTO publication VALUES('McClelland & Stewart');
INSERT INTO publication VALUES('Originally Published');
INSERT INTO publication VALUES('Originally Publlished');
INSERT INTO publication VALUES('Originally Publlished');

INSERT INTO publish VALUES(1,1);
INSERT INTO publish VALUES(2,2);
INSERT INTO publish VALUES(1,3);
INSERT INTO publish VALUES(1,4);
INSERT INTO publish VALUES(1,5);

INSERT INTO manages VALUES(1,1,'9/03/2019');
INSERT INTO manages VALUES(1,2,'9/03/2019');
INSERT INTO manages VALUES(1,3,'9/03/2019');
INSERT INTO manages VALUES(1,4,'9/03/2019');
INSERT INTO manages VALUES(1,5,'9/03/2019');

INSERT INTO students VALUES('ram','9841123456','kathamndu','male','ram@gmail.com','ram','9/03/2019');
INSERT INTO students VALUES('sagar','9841123456','bahktapur','male','sagar@gmail.com','sagar','9/03/2019');
INSERT INTO students VALUES('kriya','9841123456','lalitpur','female','kriya@gmail.com','kriya','9/03/2019');
INSERT INTO students VALUES('jimmy','9841123456','kalanki','male','jimmy@gmail.com','jimmy','9/03/2019');
INSERT INTO students VALUES('reena','9841123456','kathamndu','female','reena@gmail.com','reena','9/03/2019');

INSERT INTO views VALUES(3,3,'9/04/2019');
INSERT INTO views VALUES(5,1,'9/05/2019');
INSERT INTO views VALUES(2,5,'9/07/2019');
INSERT INTO views VALUES(1,4,'9/11/2019');