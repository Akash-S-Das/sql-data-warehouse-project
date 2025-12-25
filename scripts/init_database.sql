/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
*/

-- Creating the Database (Then right click the database and select "Query Tool")
SELECT 'CREATE DATABASE DataWarehouse'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'DataWarehouse')\gexec

-- Create Schemas
CREATE SCHEMA bronze;

CREATE SCHEMA silver;

CREATE SCHEMA gold;
