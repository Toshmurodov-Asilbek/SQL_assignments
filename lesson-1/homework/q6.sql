-- 1. Create 'customer' table with DEFAULT value for city
CREATE TABLE customer (
    customer_id INT CONSTRAINT PK_customer PRIMARY KEY,
    name NVARCHAR(100),
    city NVARCHAR(100) CONSTRAINT DF_city DEFAULT 'Unknown'
);

-- 2. Drop the DEFAULT constraint
ALTER TABLE customer DROP CONSTRAINT DF_city;

-- 3. Re-add the DEFAULT constraint
ALTER TABLE customer
ADD CONSTRAINT DF_city DEFAULT 'Unknown' FOR city;
