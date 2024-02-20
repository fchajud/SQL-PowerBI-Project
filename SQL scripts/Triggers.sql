-- Creation of triggers

-- Create trigger: Update inventory after each invoice detail

CREATE TRIGGER Update_Inventory
ON Invoice_Details
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @id_product INT;
    DECLARE @quantity INT;

    -- Getting the id_product and quantity from the row just inserted
    SELECT @id_product = id_product, @quantity = quantity
    FROM inserted;

    -- Updating the quantity_available on the Inventory table
    UPDATE Inventory
    SET quantity_available = quantity_available - @quantity
    WHERE id_product = @id_product;
END;