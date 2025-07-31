CREATE TABLE [staging].[Product]
(
	[ProductSK] [int] NOT NULL,
	[ProductName] [nvarchar](255) NULL,
	[SupplierName] [nvarchar](255) NULL,
	[SupplierPhone] [nvarchar](50) NULL,
	[CategoryName] [nvarchar](100) NULL,
	[UnitPrice] [money] NULL,
	[UnitsInStock] [smallint] NULL,
	[Estado] [bit] NOT NULL
)