-- 1. Create 'invoice' table with IDENTITY (auto-increment)
CREATE TABLE invoice (
    invoice_id INT IDENTITY(1,1) CONSTRAINT PK_invoice PRIMARY KEY,
    amount DECIMAL(10,2)
);

-- 2. Insert 5 rows without specifying invoice_id
INSERT INTO invoice (amount) VALUES (100), (200), (300), (400), (500);

-- 3. Insert manually with specific invoice_id using IDENTITY_INSERT
SET IDENTITY_INSERT invoice ON;
INSERT INTO invoice (invoice_id, amount) VALUES (100, 999);
SET IDENTITY_INSERT invoice OFF;
