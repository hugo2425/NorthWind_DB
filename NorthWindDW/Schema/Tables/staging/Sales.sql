CREATE TABLE [staging].[Sales]
(
	[FactDateKey] INT NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductSK] [int] NOT NULL,
	[CustomerSK] [int] NOT NULL,
	[EmployeeSK] [int] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[Quantity] [smallint] NOT NULL,
	[Discount] [real] NOT NULL,
	[OrderDate] DATE NOT NULL,
	[RequiredDate] DATE NULL,
	[ShippedDate] DATE NULL
)