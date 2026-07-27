/*
====================================================
Create Database and Schemas
====================================================
Purpose:
  This script creates a new database named 'DataWarehouse' after checking if it already exists.
  If it already exists, it is droped and recreated. In addition, the script sets up three shcemas named: 'bronze', 'silver', 'gold'.

!WARNING:
  Running this script will drop the entire 'DataWarehouse' database if it existes.
  All data will be permanently delted. PROCEED WITH CAUTION.
  Ensure you have proper backups before running this script.
*/

-- Create Database 'DataWarehouse'

USE master;

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.database WHRE name = 'DataWarehouse')
BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;

USE DataWarehouse;

-- Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
