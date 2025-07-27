CREATE PROCEDURE [dbo].[GetOrderDetailsChangesByRowVersion](@startRow BIGINT, @endRow BIGINT)
AS
BEGIN
	SELECT
		ord.[OrderID], 
		ord.[OrderDate],
		OrderDateKey = CONVERT(INT,(CONVERT(CHAR(4),DATEPART(YEAR,ord.[OrderDate]))
		+ CASE WHEN DATEPART(MONTH,ord.[OrderDate]) < 10 
			THEN '0' + CONVERT(CHAR(1),DATEPART(MONTH,ord.[OrderDate]))
				ELSE + CONVERT(CHAR(2),DATEPART(MONTH,ord.[OrderDate])) END
		+ CASE WHEN DATEPART(DAY,ord.[OrderDate]) < 10 
			THEN '0' + CONVERT(CHAR(1),DATEPART(DAY,ord.[OrderDate]))
				ELSE + CONVERT(CHAR(2),DATEPART(DAY,ord.[OrderDate]))END)),
		ord.CustomerID,
		ord.EmployeeID,
		odt.ProductID,
		odt.[UnitPrice],
		odt.[Quantity], 
		odt.[Discount], 
		ord.[RequiredDate],
		ord.[ShippedDate]
	FROM Orders ord
		INNER JOIN [OrderDetails] odt on ord.OrderID = odt.OrderID
	WHERE  (ord.[rowversion] > CONVERT(ROWVERSION,@startRow) AND ord.[rowversion] <= CONVERT(ROWVERSION,@endRow))
		OR (odt.[rowversion] > CONVERT(ROWVERSION,@startRow) AND odt.[rowversion] <= CONVERT(ROWVERSION,@endRow))
END
GO