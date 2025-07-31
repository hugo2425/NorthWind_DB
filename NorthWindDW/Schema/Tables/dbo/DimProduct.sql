CREATE TABLE [dbo].[DimProduct]
(
	[ProductSK] [int] IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimProduct PRIMARY KEY,
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](255) NOT NULL,
	[SupplierName] [nvarchar](255) NOT NULL,
	[SupplierPhone] [nvarchar](50),
	[CategoryName] [nvarchar](100) NOT NULL,
	[UnitPrice] [money] NULL,
	[UnitsInStock] [smallint] NULL,
	[Estado] [bit] NOT NULL
)