-- 1. Create table 'product' with UNIQUE constraint on product_id
CREATE TABLE product (
    product_id INT CONSTRAINT UQ_product_id UNIQUE,
    product_name NVARCHAR(100),
    price DECIMAL(10,2)
);

-- 2. Drop UNIQUE constraint
ALTER TABLE product DROP CONSTRAINT UQ_product_id;

-- 3. Add UNIQUE constraint on combination of product_id and product_name
ALTER TABLE product
ADD CONSTRAINT UQ_product_id_name UNIQUE (product_id, product_name);
