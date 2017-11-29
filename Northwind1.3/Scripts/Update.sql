:r .\instnwnd1.1.sql
:r .\instnwnd1.3.sql

DELETE FROM [dbo].[Products];
DELETE FROM [dbo].[Suppliers];
DELETE FROM [dbo].[Categories];
:r .\Categories.sql
:r .\Suppliers.sql
:r .\Products.sql