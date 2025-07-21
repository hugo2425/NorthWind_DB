CREATE PROCEDURE [dbo].[DW_MergeDimProduct]
AS
BEGIN
	UPDATE dp
	SET [ProductName] = sp.[ProductName],
		[SupplierName] = sp.[SupplierName],
		[SupplierPhone] = sp.[SupplierPhone],
		[CategoryName] = sp.[CategoryName],
		[UnitPrice] = sp.[UnitPrice],
		[UnitsInStock] = sp.[UnitsInStock],
		[Estado] = sp.[Estado]
	FROM [dbo].[DimProduct] dp
			INNER JOIN [staging].[Product] sp on (dp.[ProductSK] = sp.[ProductSK])
END
GO