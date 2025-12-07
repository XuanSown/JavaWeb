<<<<<<< HEAD
CREATE DATABASE dbjava06;
go

USE dbjava06;
go

-- Tạo bảng j6_role
CREATE TABLE j6_role
(
    role_id int primary key identity(1,1),
    role_code nvarchar(100),
    role_name nvarchar(100)
);

-- Tạo bảng j6_user
CREATE TABLE j6_user
(
    user_id int primary key identity(1,1),
    user_name nvarchar(100),
    user_password varchar(100),
    user_email varchar(100),
    user_birthday datetime,
    role_id int,
    foreign key (role_id) references j6_role (role_id)
);

-- Tạo bảng j6_product
CREATE TABLE j6_product
(
    prod_id int primary key identity(1,1),
    prod_name nvarchar(100),
    prod_img varchar(200),
    prod_number_of int,
    prod_price decimal(10, 2)
);

-- Tạo bảng j6_order
CREATE TABLE j6_order
(
    order_id int primary key identity(1,1),
    order_total_price decimal(10, 2),
    order_date datetime default getdate(),
    user_id int,
    foreign key (user_id) references j6_user (user_id)
);

-- Tạo bảng j6_order_detail
CREATE TABLE j6_order_detail
(
    order_detail_id int primary key identity(1,1),
    prod_id int,
    order_number_of int,
    order_price decimal(10, 2),
    order_total_price decimal(10, 2),
    order_id int, -- Cột này bị thiếu trong script gốc, cần thiết cho khóa ngoại
    foreign key (order_id) references j6_order (order_id), -- Đã sửa 'j6_ordex' thành 'j6_order'
    foreign key (prod_id) references j6_product (prod_id)
);
GO

-- Chèn dữ liệu
INSERT INTO j6_role(role_code, role_name)
VALUES ('ROLE_ADMIN', N'Vai trò quản trị hệ thống'),
       ('ROLE_USER', N'Vai trò người dùng hệ thống');

INSERT INTO j6_user(user_name, user_password, user_email, user_birthday, role_id)
VALUES (N'customer01', 'cus01123', 'cus01@gmai.com', '2000-03-09', 1),
       (N'customer02', 'cus02123', 'cus01@gmai.com', '2000-03-09', 2);

INSERT INTO j6_product(prod_name, prod_number_of, prod_price)
VALUES (N'Iphone16', 100, 40000000),
       (N'Laptop Asus Zephyrus G14', 100, 25000000),
       (N'Laptop Asus Gen book', 100, 45000000),
       (N'Macbook chip M1', 100, 49000000),
       (N'Bàn phím cơ blue', 100, 2000000),
       (N'Bàn phím cơ red', 100, 2500000);
GO

select * from j6_role
select * from j6_user
=======
CREATE DATABASE dbjava06;
go

USE dbjava06;
go

-- Tạo bảng j6_role
CREATE TABLE j6_role
(
    role_id int primary key identity(1,1),
    role_code nvarchar(100),
    role_name nvarchar(100)
);

-- Tạo bảng j6_user
CREATE TABLE j6_user
(
    user_id int primary key identity(1,1),
    user_name nvarchar(100),
    user_password varchar(100),
    user_email varchar(100),
    user_birthday datetime,
    role_id int,
    foreign key (role_id) references j6_role (role_id)
);

-- Tạo bảng j6_product
CREATE TABLE j6_product
(
    prod_id int primary key identity(1,1),
    prod_name nvarchar(100),
    prod_img varchar(200),
    prod_number_of int,
    prod_price decimal(10, 2)
);

-- Tạo bảng j6_order
CREATE TABLE j6_order
(
    order_id int primary key identity(1,1),
    order_total_price decimal(10, 2),
    order_date datetime default getdate(),
    user_id int,
    foreign key (user_id) references j6_user (user_id)
);

-- Tạo bảng j6_order_detail
CREATE TABLE j6_order_detail
(
    order_detail_id int primary key identity(1,1),
    prod_id int,
    order_number_of int,
    order_price decimal(10, 2),
    order_total_price decimal(10, 2),
    order_id int, -- Cột này bị thiếu trong script gốc, cần thiết cho khóa ngoại
    foreign key (order_id) references j6_order (order_id), -- Đã sửa 'j6_ordex' thành 'j6_order'
    foreign key (prod_id) references j6_product (prod_id)
);
GO

-- Chèn dữ liệu
INSERT INTO j6_role(role_code, role_name)
VALUES ('ROLE_ADMIN', N'Vai trò quản trị hệ thống'),
       ('ROLE_USER', N'Vai trò người dùng hệ thống');

INSERT INTO j6_user(user_name, user_password, user_email, user_birthday, role_id)
VALUES (N'customer01', 'cus01123', 'cus01@gmai.com', '2000-03-09', 1),
       (N'customer02', 'cus02123', 'cus01@gmai.com', '2000-03-09', 2);

INSERT INTO j6_product(prod_name, prod_number_of, prod_price)
VALUES (N'Iphone16', 100, 40000000),
       (N'Laptop Asus Zephyrus G14', 100, 25000000),
       (N'Laptop Asus Gen book', 100, 45000000),
       (N'Macbook chip M1', 100, 49000000),
       (N'Bàn phím cơ blue', 100, 2000000),
       (N'Bàn phím cơ red', 100, 2500000);
GO

select * from j6_role
select * from j6_user
>>>>>>> d5e15063f93a823fe244839533cab5aa46b878bb
select * from j6_product