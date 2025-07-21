CREATE TABLE [dbo].[DimCustomer](
	[CustomerSK] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[CompanyName] [varchar](100) NULL,
	[ContactName] [varchar](100) NULL,
	[ContactTitle] [varchar](100) NULL,
	[Address] [varchar](200) NULL,
	[City] [varchar](50) NULL,
	[Region] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Fax] [varchar](50) NULL,
	CONSTRAINT [PK_DimCustomer] PRIMARY KEY CLUSTERED([CustomerSK] ASC)
)