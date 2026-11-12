/*
=========================================
Create Database and Schemas
=========================================
Script Purpose:
	This script creates a new database named 'DataWarehouse' after checking if it already exists.
	If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas within the database: 'bronze', 'silver' and 'gold'.

!!!WARNING!!!:
	This script will drop the entire database if it exists. All data will be permanently deleted. Proceed with caution and ensure you have proper backups before running it.
*/

USE master;
GO

-- Check if Database exists
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse'
BEGIN
	ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- Create Database 'DataWarehouse'
CREATE DATABASE DataWarehouse;
GO
USE DataWarehouse ;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;