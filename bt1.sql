create database  ECommerceDB;
use  ECommerceDB;
create table Users(
	ID int primary key AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE NOT NULL,
    passwordHash VARCHAR(255) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);
create table Products(
	ID INT PRIMARY KEY AUTO_INCREMENT,
	productName VARCHAR(100) NOT NULL,
	description TEXT,
	price DECIMAL(10, 2) NOT NULL,
	stock INT NOT NULL
);
create table Cart(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    userID int,
    FOREIGN KEY(userID) REFERENCES Users(id),
	total INT NOT NULL
);
create table CartItems(
	ID INT PRIMARY KEY AUTO_INCREMENT,
	cartID INT,
    FOREIGN KEY(cartID) REFERENCES Products(id),
	productID INT, 
    FOREIGN KEY(productID) REFERENCES Products(id),
	quantity INT NOT NULL
);


    