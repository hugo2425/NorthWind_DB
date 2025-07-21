CREATE TABLE [dbo].[DimProduct]
(
	[ProductSK] [int] IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimProduct PRIMARY KEY,
	[ProductID] [int] NOT NULL,
	[ProductName] [varchar](255) NOT NULL,
	[SupplierName] [varchar](255) NOT NULL,
	[SupplierPhone] [varchar](50),
	[CategoryName] [varchar](100) NOT NULL,
	[UnitPrice] [money] NULL,
	[UnitsInStock] [smallint] NULL,
	[Estado] [bit] NOT NULL
)