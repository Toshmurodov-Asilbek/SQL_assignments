-- 1. Create 'account' table with CHECK constraints
CREATE TABLE account (
    account_id INT CONSTRAINT PK_account PRIMARY KEY,
    balance DECIMAL(10,2) CONSTRAINT CK_balance CHECK (balance >= 0),
    account_type NVARCHAR(50) CONSTRAINT CK_account_type CHECK (account_type IN ('Saving', 'Checking'))
);

-- 2. Drop the CHECK constraints
ALTER TABLE account DROP CONSTRAINT CK_balance;
ALTER TABLE account DROP CONSTRAINT CK_account_type;

-- 3. Re-add the CHECK constraints
ALTER TABLE account
ADD CONSTRAINT CK_balance CHECK (balance >= 0),
    CONSTRAINT CK_account_type CHECK (account_type IN ('Saving', 'Checking'));
