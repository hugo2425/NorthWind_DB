CREATE TABLE [staging].[Product]
(
	[ProductSK] [int] NOT NULL,
	[ProductName] [varchar](255) NULL,
	[SupplierName] [varchar](255) NULL,
	[SupplierPhone] [varchar](50) NULL,
	[CategoryName] [varchar](100) NULL,
	[UnitPrice] [money] NULL,
	[UnitsInStock] [smallint] NULL,
	[Estado] [bit] NOT NULL
)