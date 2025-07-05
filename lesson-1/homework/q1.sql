-- 1. Create table 'student' without NOT NULL
CREATE TABLE student (
    id INT,
    name NVARCHAR(100),
    age INT
);

-- 2. Now make 'id' column NOT NULL using ALTER
ALTER TABLE student
ALTER COLUMN id INT NOT NULL;
