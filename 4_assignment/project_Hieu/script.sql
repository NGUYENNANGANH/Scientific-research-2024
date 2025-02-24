USE [shipper]
GO
/****** Object:  Table [dbo].[orders_table]    Script Date: 01-Mar-24 10:34:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders_table](
	[order_id] [char](10) NOT NULL,
	[shipper_id] [char](10) NOT NULL,
	[weight] [float] NULL,
	[distance] [float] NULL,
	[adress] [nchar](50) NULL,
	[STT] [int] NULL,
	[Coordinate] [char](20) NULL,
 CONSTRAINT [constraint_name_1] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shipper_table]    Script Date: 01-Mar-24 10:34:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shipper_table](
	[shipper_id] [char](10) NOT NULL,
	[name] [nchar](30) NULL,
	[home_town] [nchar](50) NULL,
	[phone_number] [char](10) NOT NULL,
	[district] [nchar](15) NULL,
 CONSTRAINT [constraint_name] PRIMARY KEY CLUSTERED 
(
	[shipper_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[orders_table]  WITH CHECK ADD  CONSTRAINT [constraint_name_2] FOREIGN KEY([shipper_id])
REFERENCES [dbo].[shipper_table] ([shipper_id])
GO
ALTER TABLE [dbo].[orders_table] CHECK CONSTRAINT [constraint_name_2]
GO
