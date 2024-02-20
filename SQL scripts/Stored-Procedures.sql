-- Creating stored procedures

-- PROC: Insert records in the Categories Table
CREATE PROCEDURE Insert_Category
    @name_category VARCHAR(255)
AS
BEGIN
    INSERT INTO Categories (name_category)
    VALUES (@name_category);
END;

-- PROC: Insert records in the Suppliers Table
CREATE PROCEDURE Insert_Supplier
    @name_supplier VARCHAR(255),
    @address_supplier VARCHAR(255),
    @tel_supplier VARCHAR(15),
    @email VARCHAR(255),
    @national_supplier BIT
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM Suppliers WHERE name_supplier = @name_supplier)
    BEGIN
        INSERT INTO Suppliers (name_supplier, address_supplier, tel_supplier, email, national_supplier)
        VALUES (@name_supplier, @address_supplier, @tel_supplier, @email, @national_supplier);
    END
    ELSE
    BEGIN
        PRINT 'Supplier already existing';
    END
END;

-- PROC: Insert records in the Products Table
CREATE PROCEDURE Insert_Product
    @name_product VARCHAR(255),
    @cost_price DECIMAL(10,2),
    @sale_price DECIMAL(10,2),
    @id_category INT,
    @id_supplier INT
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM Products WHERE name_product = @name_product)
    BEGIN
        INSERT INTO Products (name_product, cost_price, sale_price, id_category, id_supplier)
        VALUES (@name_product, @cost_price, @sale_price, @id_category, @id_supplier);
    END
    ELSE
    BEGIN
        PRINT 'Product already existing';
    END
END;

-- PROC: Insert records in the Inventory Table
CREATE PROCEDURE Insert_Inventory
    @id_product INT,
    @quantity_available INT,
    @restock_date DATE
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM Inventory WHERE id_product = @id_product)
    BEGIN
        INSERT INTO Inventory (id_product, quantity_available, restock_date)
        VALUES (@id_product, @quantity_available, @restock_date);
    END
    ELSE
    BEGIN
        PRINT 'Already existing in inventory';
    END
END;

-- PROC: Insert records in the Invoice_Details Table
CREATE PROCEDURE Insert_Invoice_Details
    @cod_detail VARCHAR(15),
    @id_product INT,
    @quantity INT
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM Products WHERE id_product = @id_product)
    BEGIN
        PRINT 'Error: The specified product does not exist.';
    END
    ELSE
    BEGIN
            
        DECLARE @total INT;

        SELECT @total = P.sale_price * @quantity
        FROM Products P
        WHERE P.id_product = @id_product

        INSERT INTO Invoice_Details (cod_detail, id_product, quantity, total)
        VALUES (@cod_detail, @id_product, @quantity, @total);
        PRINT 'Record successfully inserted in Invoice_Details.';
    END
END;

-- PROC: Insert records in the Billing Table
CREATE PROCEDURE Insert_Billing
    @cod_detail VARCHAR(15),
    @billing_date DATE
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Billing WHERE cod_detail = @cod_detail)
    BEGIN
        PRINT 'Error: An invoice with the same detail code already exists.';
    END
    ELSE
    BEGIN
        DECLARE @subtotal DECIMAL(10,2);

        SELECT @subtotal = SUM(IDS.total)
        FROM Invoice_Details IDS
        WHERE IDS.cod_detail = @cod_detail;

        DECLARE @vat DECIMAL(10,2);

        SELECT @vat = SUM(IDS.total) * 0.13
        FROM Invoice_Details IDS
        WHERE IDS.cod_detail = @cod_detail;

        DECLARE @total DECIMAL(10,2);

        SELECT @total = SUM(IDS.total) + SUM(IDS.total) * 0.13
        FROM Invoice_Details IDS
        WHERE IDS.cod_detail = @cod_detail;

        INSERT INTO Billing (cod_detail, billing_date, subtotal, vat, total)
        VALUES (@cod_detail, @billing_date, @subtotal, @vat, @total);
        PRINT 'Record successfully inserted in Billing.';
    END
END;