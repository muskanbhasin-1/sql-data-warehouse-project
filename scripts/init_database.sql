/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new SQL Server database named 'DataWarehouse'. 
    If the database already exists, it is dropped to ensure a clean setup. 
    Additionally, the script sets up three schemas within the database:
    gold, silver and bronze.
    
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists, 
    permanently deleting all data within it. Proceed with caution and ensure you 
    have proper backups before executing this script.
*/

USE MASTER;
GO

--Drop and recreate the 'Datawarehouse' Database
    IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
    BEGIN
        ALTER DATABASE DataWarehouse SET SINGLEUSER WITH ROLLBACK IMMEDIATE;
        DROP DATABASE DataWarehouse;
    END;
    GO
    
    --CREATE DATABASE 'DataWarehouse'
    CREATE DATABASE DataWarehouse;
    GO

    USE DataWarehouse;
    GO 

    CREATE SCHEMA bronze;
    GO

    CREATE SCHEMA silver;
    GO
    
    CREATE SCHEMA gold;
    GO
