if not exists (select * from sysobjects where id = object_id('dbo.CreditCards') and sysstat & 0xf = 3)
	CREATE TABLE CreditCards 
	(
		CreditCardID int IDENTITY (1,1) NOT NULL ,
		CustomerID nchar (5) NOT NULL ,
		CardNumber nchar (19) NOT NULL ,
		ExperationDate date NOT NULL ,
		CardFolder nchar(100) NOT NULL,
		CONSTRAINT PK_CreditCards PRIMARY KEY CLUSTERED 
		(
			CreditCardID
		),
		CONSTRAINT FK_CreditCards_Customers FOREIGN KEY 
		(
			CustomerID
		) REFERENCES dbo.Customers (
			CustomerID
		),
		CONSTRAINT CK_ExperationDate CHECK (ExperationDate < getdate())
	)