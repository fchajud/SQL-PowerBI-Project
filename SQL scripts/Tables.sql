-- Creation of tables

-- Create table 'Categories'.
CREATE TABLE Categories (
    id_category INT PRIMARY KEY IDENTITY(1,1),
    name_category VARCHAR(255) NOT NULL
);

-- Create table 'Suppliers'.
CREATE TABLE Suppliers (
    id_supplier INT PRIMARY KEY IDENTITY(1,1),
    name_supplier VARCHAR(255) NOT NULL,
    address_supplier VARCHAR(255),
    tel_supplier VARCHAR(15),
    email VARCHAR(255),
    national_supplier BIT
);

-- Create table 'Products'.
CREATE TABLE Products (
    id_product INT PRIMARY KEY IDENTITY(1,1),
    name_product VARCHAR(255) NOT NULL,
    cost_price DECIMAL(10,2),
    sale_price DECIMAL(10,2),
    id_category INT FOREIGN KEY REFERENCES Categories(id_category),
    id_supplier INT FOREIGN KEY REFERENCES Suppliers(id_supplier)
);

-- Create table 'Inventory'.
CREATE TABLE Inventory (
    id_product INT FOREIGN KEY REFERENCES Products(id_product),
    quantity_available INT,
    restock_date DATE
);

-- Create table 'Invoice_Details'
CREATE TABLE Invoice_Details (
    id_detail INT PRIMARY KEY IDENTITY(1,1),
    cod_detail VARCHAR(15),
    id_product INT FOREIGN KEY REFERENCES Products(id_product),
    quantity INT,
    total INT
);

-- Create table 'Billing'
CREATE TABLE Billing (
    id_bill INT PRIMARY KEY IDENTITY(1,1),
    cod_detail VARCHAR(15),
    billing_date DATE,
    subtotal DECIMAL(10,2),
    vat DECIMAL(10,2),
    total DECIMAL(10,2)
);