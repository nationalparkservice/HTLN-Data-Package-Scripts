

-- Based on Itzik Ben-Gan

USE master;

-- Drop database
IF DB_ID(N'HTLN_Sandbox') IS NOT NULL DROP DATABASE HTLN_Sandbox;

-- If database could not be created due to open connections, abort
IF @@ERROR = 3702 
   RAISERROR(N'Database cannot be dropped because there are still open connections.', 127, 127) WITH NOWAIT, LOG;

-- Create database
CREATE DATABASE HTLN_Sandbox

GO

USE HTLN_Sandbox

GO

