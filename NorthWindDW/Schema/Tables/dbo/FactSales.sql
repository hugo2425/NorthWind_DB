CREATE TABLE [dbo].[FactSales]
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
GO

ALTER TABLE [dbo].[FactSales] ADD CONSTRAINT PK_FactSales PRIMARY KEY(OrderID,[ProductSK]);
GO

ALTER TABLE [dbo].[FactSales] ADD CONSTRAINT [FK_DimProduct] FOREIGN KEY([ProductSK]) REFERENCES [dbo].[DimProduct] ([ProductSK]);
GO

ALTER TABLE [dbo].[FactSales] ADD CONSTRAINT [FK_DimCustomer] FOREIGN KEY([CustomerSK]) REFERENCES [dbo].[DimCustomer] ([CustomerSK]);
GO

ALTER TABLE [dbo].[FactSales] ADD CONSTRAINT [FK_DimEmployee] FOREIGN KEY([EmployeeSK]) REFERENCES [dbo].[DimEmployee] ([EmployeeSK]);
GO

ALTER TABLE [dbo].[FactSales] ADD CONSTRAINT [FK_DimDate] FOREIGN KEY([FactDateKey]) REFERENCES [dbo].[DimDate] ([DateKey]);
GO