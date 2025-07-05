-- 1. Create 'category' table
CREATE TABLE category (
    category_id INT CONSTRAINT PK_category PRIMARY KEY,
    category_name NVARCHAR(100)
);

-- 2. Create 'item' table with foreign key
CREATE TABLE item (
    item_id INT CONSTRAINT PK_item PRIMARY KEY,
    item_name NVARCHAR(100),
    category_id INT,
    CONSTRAINT FK_item_category FOREIGN KEY (category_id) REFERENCES category(category_id)
);

-- 3. Drop the foreign key
ALTER TABLE item DROP CONSTRAINT FK_item_category;

-- 4. Re-add foreign key
ALTER TABLE item
ADD CONSTRAINT FK_item_category FOREIGN KEY (category_id) REFERENCES category(category_id);
