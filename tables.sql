create table STORES(stor_id char(4) PRIMARY KEY,stor_name varchar(40),stor_address varchar(40),city varchar(20),state char(2),zip char(5));


create table DISCOUNTS(Discounttype varchar(40),stor_id char(4) FOREIGN KEY references STORES(stor_id),lowqty smallint,higqty smallint,discount decimal(4,2));


create table SALES(stor_id char(4) FOREIGN KEY REFERENCES STORES(stor_id),ord_num varchar(20),ord_date datetime,qty smallint,payterms varchar(12),title_id varchar(6) FOREIGN KEY REFERENCES TITLES(title_id));

create table TITLES(title_id varchar(6) PRIMARY KEY,title varchar(80),type char(12),pub_id char(4),price money,advance money,royalty int,ytd_sales int,notes varchar(200),pubdate datetime);

create table ROYSCHED(title_id varchar(6) FOREIGN KEY REFERENCES TITLES(title_id),lorange int,hirange int,royalty int);


create table AUTHORS(au_id varchar(11) PRIMARY KEY,au_lname varchar(40),au_fname varchar(20),phone char(12),address varchar(40),city varchar(20),state char(2),zip char(5),contract bit);


create table TITLEAUTHOR(au_id varchar(11) FOREIGN KEY REFERENCES AUTHORS(au_id),title_id varchar(6) FOREIGN KEY REFERENCES TITLES(title_id),au_ord tinyint,royaltyper int);



create table PUBLISHERS(pub_id char(4) PRIMARY KEY,pub_name varchar(40),city varchar(20),state char(2),country varchar(30));


create table PUB_INFO(pub_id char(4) FOREIGN KEY REFERENCES PUBLISHERS(pub_id),logo image,pr_info text);


create table EMPLOYEE(emp_id char(9),fname varchar(20),minit char(1),lname varchar(30),job_id smallint,job_lvl tinyint,pub_id char(4) FOREIGN KEY REFERENCES PUBLISHERS(pub_id),hire_date datetime);

create table JOBS(job_id smallint PRIMARY KEY,job_desc varchar(50),min_lvl tinyint,max_lvl tinyint);


INSERT INTO TITLES (title_id, title, type, pub_id, price, advance, royalty, ytd_sales, notes, pubdate)
VALUES
    ('T001', 'The Business Book', 'Business', 'P001', 20.99, 5000, 15, 8000, 'Bestseller', '2022-05-15'),
    ('T002', 'The Psychology Book', 'Psychology', 'P002', 15.49, 4000, 12, 6000, 'Educational', '2023-01-10'),
    ('T003', 'The Great Gatsby', 'Fiction', 'P003', 12.99, 3000, 10, 5000, 'Classic novel', '1925-04-10'),
    ('T004', 'To Kill a Mockingbird', 'Fiction', 'P004', 18.99, 4500, 13, 7000, 'American classic', '1960-07-11');


INSERT INTO AUTHORS (au_id, au_lname, au_fname, phone, address, city, state, zip, contract)
VALUES
    ('A001', 'Smith', 'John', '555-1234', '123 Main St', 'New York', 'NY', '10001', 1),
    ('A002', 'Johnson', 'Lisa', '555-5678', '456 Elm St', 'Los Angeles', 'CA', '90001', 1),
    ('A003', 'Williams', 'David', '555-2468', '789 Oak St', 'Chicago', 'IL', '60601', 1),
    ('A004', 'Brown', 'Mary', '555-3698', '101 Pine St', 'Houston', 'TX', '77002', 1);



INSERT INTO TITLEAUTHOR (au_id, title_id, au_ord, royaltyper)
VALUES
    ('A001', 'T001', 1, 50),
    ('A002', 'T002', 1, 50),
    ('A003', 'T003', 1, 40),
    ('A004', 'T004', 1, 45);

INSERT INTO PUBLISHERS (pub_id, pub_name, city, state, country)
VALUES
    ('P001', 'Business Publishers', 'New York', 'NY', 'USA'),
    ('P002', 'Psychology Press', 'Los Angeles', 'CA', 'USA'),
    ('P003', 'Fiction House', 'Chicago', 'IL', 'USA'),
    ('P004', 'Book Masters', 'Houston', 'TX', 'USA');


INSERT INTO PUB_INFO (pub_id, logo, pr_info)
VALUES
    ('P001', NULL, 'Specializing in various genres.'),
    ('P002', NULL, 'Leading publisher of educational books.'),
    ('P003', NULL, 'Publisher of classic novels and fiction.');


INSERT INTO EMPLOYEE (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date)
VALUES
    ('EMP001', 'John', 'D', 'Doe', 1, 10, 'P001', '2020-01-15'),
    ('EMP002', 'Jane', 'M', 'Smith', 2, 20, 'P002', '2019-05-20'),
    ('EMP003', 'Michael', 'A', 'Brown', 1, 15, 'P001', '2021-03-10'),
    ('EMP004', 'Emily', 'K', 'Johnson', 3, 25, 'P003', '2018-11-05');


INSERT INTO JOBS (job_id, job_desc, min_lvl, max_lvl)
VALUES
    (1, 'Editor', 10, 20),
    (2, 'Marketing Manager', 20, 30),
    (3, 'Graphic Designer', 15, 25);

INSERT INTO ROYSCHED (title_id, lorange, hirange, royalty)
VALUES
    ('T001', 0, 5000, 10),
    ('T002', 0, 5000, 12);

INSERT INTO STORES (stor_id, stor_name, stor_address, city, state, zip)
VALUES 
    ('ST01', 'Store1', '123 Main St', 'Anytown', 'NY', '12345'),
    ('ST02', 'Store2', '456 Elm St', 'Somewhere', 'CA', '67890');


INSERT INTO DISCOUNTS (Discounttype, stor_id, lowqty, higqty, discount)
VALUES
    ('Bulk Discount', 'ST01', 10, 50, 0.1),
    ('Seasonal Discount', 'ST02', 20, 100, 0.15);


INSERT INTO SALES (stor_id, ord_num, ord_date, qty, payterms, title_id)
VALUES
    ('ST01', 'ORD001', '2024-02-14 08:00:00', 25, 'Net 30', 'T001'),
    ('ST02', 'ORD002', '2024-02-14 10:00:00', 50, 'Net 15', 'T002');


