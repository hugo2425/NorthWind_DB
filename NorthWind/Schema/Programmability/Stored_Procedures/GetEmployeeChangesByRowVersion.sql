CREATE PROCEDURE [dbo].[GetEmployeeChangesByRowVersion](@startRow BIGINT, @endRow BIGINT)
AS
BEGIN
  SELECT e.[EmployeeID]
      ,e.[LastName] + ' ',e.[FirstName] as [Name]
      ,e.[Title]
      ,e.[BirthDate]
      ,e.[HireDate]
      ,e.[Address]
      ,e.[City]
      ,e.[Region]
      ,e.[PostalCode]
      ,e.[Country]
      ,e.[HomePhone]
  FROM [dbo].[Employees] e
  WHERE e.[rowversion] > CONVERT(ROWVERSION,@startRow) AND e.[rowversion] <= CONVERT(ROWVERSION,@endRow)
END