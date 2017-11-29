if not exists (select * from sysobjects where id = object_id('dbo.CreditCards') and sysstat & 0xf = 3)
	:r .\instnwnd1.1.sql

if exists (select * from sysobjects where id = object_id('dbo.Region') and sysstat & 0xf = 3)
	EXEC sp_rename 'dbo.Region', 'Regions'; 

if COL_LENGTH('dbo.Customers', 'FoundationDate') IS NULL
	ALTER TABLE [dbo].Customers 
	ADD FoundationDate date