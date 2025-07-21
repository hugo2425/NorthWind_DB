CREATE TABLE [staging].[Employee]
(
	[EmployeeSK] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
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