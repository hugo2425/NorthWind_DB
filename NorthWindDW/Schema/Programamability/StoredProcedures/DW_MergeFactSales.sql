CREATE PROCEDURE [dbo].[DW_MergeFactSales]
AS
BEGIN
	UPDATE f
	SET [FactDateKey]	= s.[FactDateKey], 
		[OrderID]		= s.[OrderID], 
		[ProductSK]		= s.[ProductSK], 
		[CustomerSK]	= s.[CustomerSK], 
		[EmployeeSK]	= s.[EmployeeSK], 
		[UnitPrice]		= s.[UnitPrice], 
		[Quantity]		= s.[Quantity], 
		[Discount]		= s.[Discount], 
		[OrderDate]		= s.[OrderDate], 
		[RequiredDate]	= s.[RequiredDate], 
		[ShippedDate]	= s.[ShippedDate]
	from [dbo].[FactSales] f
			INNER JOIN [staging].[Sales] s ON (f.[OrderID] = s.[OrderID] and f.[ProductSK] = s.[ProductSK])
END
GO