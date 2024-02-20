-- Insert records

-- Inserting records in the table Categories
-----------------------------------------
EXEC Insert_Category 'Frutas';
EXEC Insert_Category 'Verduras';
EXEC Insert_Category 'Carnes';
EXEC Insert_Category 'Pescados y Mariscos';
EXEC Insert_Category 'Lacteos';
EXEC Insert_Category 'Panaderia';
EXEC Insert_Category 'Bebidas';
EXEC Insert_Category 'Abarrotes';
EXEC Insert_Category 'Congelados';
EXEC Insert_Category 'Snacks';
EXEC Insert_Category 'Pastas y Arroces';
EXEC Insert_Category 'Cuidado Personal';
EXEC Insert_Category 'Limpieza';
EXEC Insert_Category 'Hogar';
EXEC Insert_Category 'Electronicos';
------------------------------------------

-- Inserting records in the table Suppliers
---------------------------------------------
EXEC Insert_Supplier 'FruitCo', 'Avenida 1, San Jose', '2255-6789', 'info@fruitco.com', 1;
EXEC Insert_Supplier 'Verduras del Valle', 'Calle Central, Heredia', '2244-5678', 'info@verdurasvalle.com', 1;
EXEC Insert_Supplier 'Carnes Don Juan', 'Avenida 2, Cartago', '2266-7890', 'info@carnesdonjuan.com', 1;
EXEC Insert_Supplier 'Mariscos del Pacifico', 'Puntarenas', '2288-1234', 'info@mariscospacifico.com', 1;
EXEC Insert_Supplier 'Lacteos Lala', 'Alajuela', '2244-5566', 'info@lacteoslala.com', 1;
EXEC Insert_Supplier 'Pan Caliente', 'Heredia', '2277-3344', 'info@pancaliente.com', 1;
EXEC Insert_Supplier 'Bebidas Tropicales', 'San Jose', '2299-4455', 'info@bebidastrpicales.com', 1;
EXEC Insert_Supplier 'Abarrotes Sol', 'Cartago', '2222-3344', 'info@abarrotesol.com', 1;
EXEC Insert_Supplier 'Congelados Frio', 'Limon', '2277-8899', 'info@congeladosfrio.com', 1;
EXEC Insert_Supplier 'Snackitos', 'Guanacaste', '2266-4455', 'info@snackitos.com', 1;
EXEC Insert_Supplier 'Pastas y Arroces Ricos', 'Puntarenas', '2211-6677', 'info@pastasyarrocesricos.com', 1;
EXEC Insert_Supplier 'Belleza Total', 'Alajuela', '2244-7788', 'info@bellezatotal.com', 1;
EXEC Insert_Supplier 'Limpieza Profunda', 'San Jose', '2255-8899', 'info@limpiezaprofunda.com', 1;
EXEC Insert_Supplier 'Casa y Mas', 'Heredia', '2233-6677', 'info@casaymas.com', 1;
EXEC Insert_Supplier 'ElectroShop', 'Cartago', '2211-3344', 'info@electroshop.com', 1;
--------------------------------------------------

-- Inserting records in the table Products
-- Assumes that the categories and suppliers already exist in the database
---------------------------------------------------------
EXEC Insert_Product 'Manzanas', 1000.00, 1250.00, 1, 1;
EXEC Insert_Product 'Tomates', 800.00, 1000.00, 2, 2;
EXEC Insert_Product 'Carne de res', 5000.00, 6500.00, 3, 3;
EXEC Insert_Product 'Atun', 1200.00, 1500.00, 4, 4;
EXEC Insert_Product 'Leche', 900.00, 1100.00, 5, 5;
EXEC Insert_Product 'Pan blanco', 400.00, 500.00, 6, 6;
EXEC Insert_Product 'Refresco de cola', 700.00, 900.00, 7, 7;
EXEC Insert_Product 'Arroz', 600.00, 750.00, 10, 8;
EXEC Insert_Product 'Shampoo', 1000.00, 1250.00, 11, 9;
EXEC Insert_Product 'Detergente', 800.00, 1000.00, 12, 10;
EXEC Insert_Product 'Escoba', 300.00, 400.00, 13, 11;
EXEC Insert_Product 'Televisor LED', 25000.00, 30000.00, 15, 12;
EXEC Insert_Product 'Papaya', 600.00, 800.00, 1, 1;
EXEC Insert_Product 'Espinacas', 700.00, 900.00, 2, 2;
EXEC Insert_Product 'Pollo', 4000.00, 5000.00, 3, 3;
EXEC Insert_Product 'Salmon', 1500.00, 2000.00, 4, 4;
EXEC Insert_Product 'Queso', 1200.00, 1500.00, 5, 5;
EXEC Insert_Product 'Pan integral', 450.00, 600.00, 6, 6;
EXEC Insert_Product 'Agua mineral', 500.00, 650.00, 7, 7;
EXEC Insert_Product 'Frijoles', 700.00, 900.00, 10, 8;
EXEC Insert_Product 'Jabon corporal', 600.00, 750.00, 11, 9;
EXEC Insert_Product 'Limpiavidrios', 400.00, 500.00, 12, 10;
EXEC Insert_Product 'Trapo de limpieza', 200.00, 300.00, 13, 11;
EXEC Insert_Product 'Tablet', 20000.00, 25000.00, 15, 12;
EXEC Insert_Product 'Pina', 500.00, 650.00, 1, 1;
EXEC Insert_Product 'Brocoli', 600.00, 750.00, 2, 2;
EXEC Insert_Product 'Cerdo', 4500.00, 5500.00, 3, 3;
EXEC Insert_Product 'Camaron', 2000.00, 2500.00, 4, 4;
EXEC Insert_Product 'Yogur', 700.00, 900.00, 5, 5;
EXEC Insert_Product 'Pan baguette', 550.00, 700.00, 6, 6;
EXEC Insert_Product 'Jugo natural', 600.00, 750.00, 7, 7;
EXEC Insert_Product 'Pasta', 650.00, 800.00, 10, 8;
EXEC Insert_Product 'Acondicionador', 1100.00, 1350.00, 11, 9;
EXEC Insert_Product 'Desinfectante', 500.00, 650.00, 12, 10;
EXEC Insert_Product 'Escoba de cerdas', 350.00, 450.00, 13, 11;
------------------------------------------------------------

-- Inserting records in the Inventory table
-- Assumes that the products already exist in the database

EXEC Insert_Inventory 1, 200, '2024-01-1';
EXEC Insert_Inventory 2, 500, '2024-01-1';
EXEC Insert_Inventory 3, 300, '2024-01-1';
EXEC Insert_Inventory 4, 100, '2024-01-1';
EXEC Insert_Inventory 5, 100, '2024-01-1';
EXEC Insert_Inventory 6, 400, '2024-01-1';
EXEC Insert_Inventory 7, 250, '2024-01-1';
EXEC Insert_Inventory 8, 150, '2024-01-1';
EXEC Insert_Inventory 9, 150, '2024-01-1';
EXEC Insert_Inventory 11, 150, '2024-01-1';
EXEC Insert_Inventory 12, 300, '2024-01-1';
EXEC Insert_Inventory 13, 200, '2024-01-1';
EXEC Insert_Inventory 14, 100, '2024-01-1';
EXEC Insert_Inventory 15, 250, '2024-01-1';
EXEC Insert_Inventory 16, 250, '2024-01-1';
EXEC Insert_Inventory 17, 150, '2024-01-1';
EXEC Insert_Inventory 18, 200, '2024-01-1';
EXEC Insert_Inventory 19, 90, '2024-01-1';
EXEC Insert_Inventory 20, 50, '2024-01-1';
EXEC Insert_Inventory 21, 300, '2024-01-1';
EXEC Insert_Inventory 22, 330, '2024-01-1';
EXEC Insert_Inventory 23, 220, '2024-01-1';
EXEC Insert_Inventory 24, 100, '2024-01-1';
EXEC Insert_Inventory 25, 150, '2024-01-1';
EXEC Insert_Inventory 26, 210, '2024-01-1';
EXEC Insert_Inventory 27, 130, '2024-01-1';
EXEC Insert_Inventory 28, 210, '2024-01-1';
EXEC Insert_Inventory 29, 160, '2024-01-1';
EXEC Insert_Inventory 30, 170, '2024-01-1';
EXEC Insert_Inventory 31, 200, '2024-01-1';
EXEC Insert_Inventory 32, 200, '2024-01-1';
EXEC Insert_Inventory 33, 190, '2024-01-1';
EXEC Insert_Inventory 34, 200, '2024-01-1';
EXEC Insert_Inventory 35, 250, '2024-01-1';

---------------------------------------------------------------


-- Inserting records in the Invoice_Details table
EXEC Insert_Invoice_Details '1001', 1, 2;
EXEC Insert_Invoice_Details '1001', 3, 1;
EXEC Insert_Invoice_Details '1001', 34, 3;

EXEC Insert_Invoice_Details '1002', 2, 1;
EXEC Insert_Invoice_Details '1002', 4, 2;
EXEC Insert_Invoice_Details '1002', 6, 1;

EXEC Insert_Invoice_Details '1003', 8, 3;
EXEC Insert_Invoice_Details '1003', 10, 2;
EXEC Insert_Invoice_Details '1003', 12, 1;

EXEC Insert_Invoice_Details '1004', 14, 4;
EXEC Insert_Invoice_Details '1004', 1, 2;

EXEC Insert_Invoice_Details '1005', 3, 1;
EXEC Insert_Invoice_Details '1005', 7, 3;

EXEC Insert_Invoice_Details '1006', 5, 2;
EXEC Insert_Invoice_Details '1006', 9, 1;
EXEC Insert_Invoice_Details '1006', 11, 4;
EXEC Insert_Invoice_Details '1006', 15, 3;

EXEC Insert_Invoice_Details '1007', 2, 2;
EXEC Insert_Invoice_Details '1007', 35, 2;

EXEC Insert_Invoice_Details '1008', 25, 3;
EXEC Insert_Invoice_Details '1008', 21, 2;

EXEC Insert_Invoice_Details '1009', 6, 1;
EXEC Insert_Invoice_Details '1009', 18, 2;

EXEC Insert_Invoice_Details '1010', 8, 4;
EXEC Insert_Invoice_Details '1010', 29, 1;

EXEC Insert_Invoice_Details '1011', 10, 2;
EXEC Insert_Invoice_Details '1011', 23, 2;

EXEC Insert_Invoice_Details '1012', 12, 3;
EXEC Insert_Invoice_Details '1012', 2, 4;

EXEC Insert_Invoice_Details '1013', 19, 5;
EXEC Insert_Invoice_Details '1013', 24, 1;

EXEC Insert_Invoice_Details '1014', 1, 1;
EXEC Insert_Invoice_Details '1014', 32, 1;
EXEC Insert_Invoice_Details '1014', 31, 1;

EXEC Insert_Invoice_Details '1015', 3, 2;
EXEC Insert_Invoice_Details '1015', 33, 1;

EXEC Insert_Invoice_Details '1016', 35, 3;

EXEC Insert_Invoice_Details '1017', 1, 1;
EXEC Insert_Invoice_Details '1017', 2, 2;

EXEC Insert_Invoice_Details '1018', 3, 2;

EXEC Insert_Invoice_Details '1019', 4, 5;
EXEC Insert_Invoice_Details '1019', 5, 4;
EXEC Insert_Invoice_Details '1019', 32, 2;

EXEC Insert_Invoice_Details '1020', 24, 1;
EXEC Insert_Invoice_Details '1020', 11, 2;
EXEC Insert_Invoice_Details '1020', 13, 3;
EXEC Insert_Invoice_Details '1020', 15, 2;

EXEC Insert_Invoice_Details '1021', 5, 1;
EXEC Insert_Invoice_Details '1021', 6, 1;
EXEC Insert_Invoice_Details '1021', 7, 1;

EXEC Insert_Invoice_Details '1022', 8, 1;
EXEC Insert_Invoice_Details '1022', 9, 2;
EXEC Insert_Invoice_Details '1022', 10, 1;

EXEC Insert_Invoice_Details '1023', 9, 1;
EXEC Insert_Invoice_Details '1023', 8, 5;

EXEC Insert_Invoice_Details '1024', 11, 3;

EXEC Insert_Invoice_Details '1025', 10, 3;
EXEC Insert_Invoice_Details '1025', 12, 2;

EXEC Insert_Invoice_Details '1026', 21, 1;
EXEC Insert_Invoice_Details '1026', 22, 3;

EXEC Insert_Invoice_Details '1027', 27, 2;
EXEC Insert_Invoice_Details '1027', 29, 2;

EXEC Insert_Invoice_Details '1028', 31, 1;
EXEC Insert_Invoice_Details '1028', 30, 3;

EXEC Insert_Invoice_Details '1029', 28, 1;
EXEC Insert_Invoice_Details '1029', 24, 1;

EXEC Insert_Invoice_Details '1030', 30, 2;
EXEC Insert_Invoice_Details '1030', 35, 1;

EXEC Insert_Invoice_Details '1031', 34, 3;
EXEC Insert_Invoice_Details '1031', 35, 1;
EXEC Insert_Invoice_Details '1031', 33, 2;

EXEC Insert_Invoice_Details '1032', 33, 5;
EXEC Insert_Invoice_Details '1032', 34, 1;
EXEC Insert_Invoice_Details '1032', 16, 3;

EXEC Insert_Invoice_Details '1033', 15, 1;
EXEC Insert_Invoice_Details '1033', 14, 2;

EXEC Insert_Invoice_Details '1034', 17, 2;
EXEC Insert_Invoice_Details '1034', 21, 1;

EXEC Insert_Invoice_Details '1035', 7, 6;

EXEC Insert_Invoice_Details '1036', 4, 1;
EXEC Insert_Invoice_Details '1036', 9, 4;

-- Inserting records in the Billing table
EXEC Insert_Billing '1001', '2024-01-15';
EXEC Insert_Billing '1002', '2024-01-15';
EXEC Insert_Billing '1003', '2024-01-15';

EXEC Insert_Billing '1004', '2024-01-16';
EXEC Insert_Billing '1005', '2024-01-16';

EXEC Insert_Billing '1006', '2024-01-17';
EXEC Insert_Billing '1007', '2024-01-17';
EXEC Insert_Billing '1008', '2024-01-17';

EXEC Insert_Billing '1009', '2024-01-18';
EXEC Insert_Billing '1010', '2024-01-18';

EXEC Insert_Billing '1011', '2024-01-19';

EXEC Insert_Billing '1012', '2024-01-20';
EXEC Insert_Billing '1013', '2024-01-20';

EXEC Insert_Billing '1014', '2024-01-22';
EXEC Insert_Billing '1015', '2024-01-22';

EXEC Insert_Billing '1016', '2024-01-23';
EXEC Insert_Billing '1017', '2024-01-23';
EXEC Insert_Billing '1018', '2024-01-23';

EXEC Insert_Billing '1019', '2024-01-24';

EXEC Insert_Billing '1020', '2024-01-25';
EXEC Insert_Billing '1021', '2024-01-25';

EXEC Insert_Billing '1022', '2024-01-26';
EXEC Insert_Billing '1023', '2024-01-26';

EXEC Insert_Billing '1024', '2024-01-27';
EXEC Insert_Billing '1025', '2024-01-27';
EXEC Insert_Billing '1026', '2024-01-27';

EXEC Insert_Billing '1027', '2024-01-29';
EXEC Insert_Billing '1028', '2024-01-29';

EXEC Insert_Billing '1029', '2024-01-30';
EXEC Insert_Billing '1030', '2024-01-30';
EXEC Insert_Billing '1031', '2024-01-30';

EXEC Insert_Billing '1032', '2024-01-31';
EXEC Insert_Billing '1033', '2024-01-31';
EXEC Insert_Billing '1034', '2024-01-31';
EXEC Insert_Billing '1035', '2024-01-31';
EXEC Insert_Billing '1036', '2024-01-31';