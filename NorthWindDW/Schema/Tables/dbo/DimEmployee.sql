CREATE TABLE [dbo].[DimEmployee]
(
	[EmployeeSK] [int] IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimEmployee PRIMARY KEY,
	[EmployeeID] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[BirthDate] [datetime] NULL,
	[HireDate] [datetime] NULL,
	[Address] [nvarchar](100) NULL,
	[City] [nvarchar](50) NULL,
	[Region] [nvarchar](50) NULL,
	[PostalCode] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[HomePhone] [nvarchar](50) NULL
)