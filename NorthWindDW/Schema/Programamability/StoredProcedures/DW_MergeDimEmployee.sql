﻿CREATE PROCEDURE [dbo].[DW_MergeDimEmployee]
AS
BEGIN
	UPDATE de
	SET [Name] = se.[Name],
		[Title] = se.[Title],
		[BirthDate] = se.[BirthDate],
		[HireDate] = se.[HireDate],
		[Address] = se.[Address],
		[City] = se.[City],
		[Region] = se.[Region],
		[PostalCode] = se.[PostalCode],
		[Country] = se.[Country],
		[HomePhone] = se.[HomePhone]
	FROM [dbo].[DimEmployee] de
			INNER JOIN [staging].[Employee] se ON (de.[EmployeeSK] = se.[EmployeeSK])
END
GO