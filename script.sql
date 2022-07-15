USE [giftshop]
GO
/****** Object:  Table [dbo].[supplier]    Script Date: 07/15/2022 19:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[supplier](
	[sid] [nvarchar](50) NOT NULL,
	[sname] [nvarchar](50) NULL,
	[saddr] [nvarchar](50) NULL,
	[pcode] [bigint] NULL,
	[phno] [bigint] NULL,
	[mail] [nvarchar](50) NULL,
	[status] [nvarchar](50) NULL,
 CONSTRAINT [PK_supplier] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[logistic]    Script Date: 07/15/2022 19:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[logistic](
	[logid] [nvarchar](50) NOT NULL,
	[emailid] [nvarchar](50) NULL,
	[phoneno] [bigint] NULL,
	[address] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
	[pincode] [bigint] NULL,
	[status] [nvarchar](50) NULL,
 CONSTRAINT [PK_logistic] PRIMARY KEY CLUSTERED 
(
	[logid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 07/15/2022 19:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[custid] [int] NULL,
	[name] [nvarchar](50) NULL,
	[mobno] [bigint] NULL,
	[email] [nvarchar](50) NOT NULL,
	[setpassword] [nvarchar](50) NULL,
	[confpassword] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
	[pincode] [bigint] NULL,
	[secqn] [nvarchar](50) NULL,
	[secans] [nvarchar](50) NULL,
	[status] [nvarchar](50) NULL,
 CONSTRAINT [PK_customer] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[inventory]    Script Date: 07/15/2022 19:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inventory](
	[pid] [nvarchar](50) NOT NULL,
	[pname] [nvarchar](50) NULL,
	[cat_name] [nchar](10) NULL,
	[image1] [nvarchar](50) NULL,
	[image2] [nvarchar](50) NULL,
	[image3] [nvarchar](50) NULL,
	[qty] [int] NULL,
	[description] [nvarchar](50) NULL,
	[price] [decimal](18, 0) NULL,
	[status] [nvarchar](50) NULL,
 CONSTRAINT [PK_inventory] PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[purchase_order]    Script Date: 07/15/2022 19:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[purchase_order](
	[pono] [nvarchar](50) NOT NULL,
	[date] [datetime] NULL,
	[sid] [nvarchar](50) NULL,
	[sname] [nvarchar](50) NULL,
 CONSTRAINT [PK_purchase_order] PRIMARY KEY CLUSTERED 
(
	[pono] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[purchase_bill]    Script Date: 07/15/2022 19:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[purchase_bill](
	[serialno] [nvarchar](50) NULL,
	[pbno] [nvarchar](50) NOT NULL,
	[date] [datetime] NULL,
	[pono] [nvarchar](50) NULL,
	[sid] [nvarchar](50) NULL,
	[grandtotal] [decimal](18, 0) NULL,
 CONSTRAINT [PK_purchase_bill] PRIMARY KEY CLUSTERED 
(
	[pbno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[purchase_order_details]    Script Date: 07/15/2022 19:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[purchase_order_details](
	[pono] [nvarchar](50) NULL,
	[pid] [nvarchar](50) NULL,
	[qty] [int] NULL,
	[pname] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sales_order]    Script Date: 07/15/2022 19:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sales_order](
	[sono] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NULL,
	[date] [datetime] NULL,
	[gtotal] [decimal](18, 0) NULL,
 CONSTRAINT [PK_sales_order] PRIMARY KEY CLUSTERED 
(
	[sono] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart]    Script Date: 07/15/2022 19:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[cartid] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[image1] [nvarchar](50) NULL,
	[pid] [nvarchar](50) NULL,
	[pname] [nvarchar](50) NULL,
	[qty] [int] NULL,
	[price] [decimal](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sales_bill]    Script Date: 07/15/2022 19:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sales_bill](
	[sbno] [nvarchar](50) NOT NULL,
	[date] [datetime] NULL,
	[sono] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[gtotal] [decimal](18, 0) NULL,
	[tax] [decimal](18, 0) NULL,
 CONSTRAINT [PK_sales_bill] PRIMARY KEY CLUSTERED 
(
	[sbno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sales_bill_details]    Script Date: 07/15/2022 19:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sales_bill_details](
	[sbno] [nvarchar](50) NULL,
	[pid] [nvarchar](50) NULL,
	[qty] [int] NULL,
	[price] [decimal](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sales_order_details]    Script Date: 07/15/2022 19:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sales_order_details](
	[sono] [nvarchar](50) NULL,
	[pid] [nvarchar](50) NULL,
	[qty] [int] NULL,
	[price] [decimal](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[purchase_bill_details]    Script Date: 07/15/2022 19:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[purchase_bill_details](
	[pbno] [nvarchar](50) NULL,
	[pid] [nvarchar](50) NULL,
	[qty] [int] NULL,
	[price] [decimal](18, 0) NULL,
	[total] [decimal](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sales]    Script Date: 07/15/2022 19:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sales](
	[sono] [nvarchar](50) NULL,
	[cartid] [int] NULL,
	[pid] [nvarchar](50) NULL,
	[pname] [nvarchar](50) NULL,
	[price] [int] NULL,
	[qty] [int] NULL,
	[date] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_cart_customer]    Script Date: 07/15/2022 19:21:01 ******/
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FK_cart_customer] FOREIGN KEY([email])
REFERENCES [dbo].[customer] ([email])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FK_cart_customer]
GO
/****** Object:  ForeignKey [FK_purchase_bill_purchase_bill]    Script Date: 07/15/2022 19:21:01 ******/
ALTER TABLE [dbo].[purchase_bill]  WITH CHECK ADD  CONSTRAINT [FK_purchase_bill_purchase_bill] FOREIGN KEY([pbno])
REFERENCES [dbo].[purchase_bill] ([pbno])
GO
ALTER TABLE [dbo].[purchase_bill] CHECK CONSTRAINT [FK_purchase_bill_purchase_bill]
GO
/****** Object:  ForeignKey [FK_purchase_bill_purchase_order]    Script Date: 07/15/2022 19:21:01 ******/
ALTER TABLE [dbo].[purchase_bill]  WITH CHECK ADD  CONSTRAINT [FK_purchase_bill_purchase_order] FOREIGN KEY([pono])
REFERENCES [dbo].[purchase_order] ([pono])
GO
ALTER TABLE [dbo].[purchase_bill] CHECK CONSTRAINT [FK_purchase_bill_purchase_order]
GO
/****** Object:  ForeignKey [FK_purchase_bill_supplier]    Script Date: 07/15/2022 19:21:01 ******/
ALTER TABLE [dbo].[purchase_bill]  WITH CHECK ADD  CONSTRAINT [FK_purchase_bill_supplier] FOREIGN KEY([sid])
REFERENCES [dbo].[supplier] ([sid])
GO
ALTER TABLE [dbo].[purchase_bill] CHECK CONSTRAINT [FK_purchase_bill_supplier]
GO
/****** Object:  ForeignKey [FK_purchase_bill_details_inventory]    Script Date: 07/15/2022 19:21:01 ******/
ALTER TABLE [dbo].[purchase_bill_details]  WITH CHECK ADD  CONSTRAINT [FK_purchase_bill_details_inventory] FOREIGN KEY([pid])
REFERENCES [dbo].[inventory] ([pid])
GO
ALTER TABLE [dbo].[purchase_bill_details] CHECK CONSTRAINT [FK_purchase_bill_details_inventory]
GO
/****** Object:  ForeignKey [FK_purchase_order_supplier]    Script Date: 07/15/2022 19:21:01 ******/
ALTER TABLE [dbo].[purchase_order]  WITH CHECK ADD  CONSTRAINT [FK_purchase_order_supplier] FOREIGN KEY([sid])
REFERENCES [dbo].[supplier] ([sid])
GO
ALTER TABLE [dbo].[purchase_order] CHECK CONSTRAINT [FK_purchase_order_supplier]
GO
/****** Object:  ForeignKey [FK_purchase_order_details_inventory]    Script Date: 07/15/2022 19:21:01 ******/
ALTER TABLE [dbo].[purchase_order_details]  WITH CHECK ADD  CONSTRAINT [FK_purchase_order_details_inventory] FOREIGN KEY([pid])
REFERENCES [dbo].[inventory] ([pid])
GO
ALTER TABLE [dbo].[purchase_order_details] CHECK CONSTRAINT [FK_purchase_order_details_inventory]
GO
/****** Object:  ForeignKey [FK_purchase_order_details_purchase_order]    Script Date: 07/15/2022 19:21:01 ******/
ALTER TABLE [dbo].[purchase_order_details]  WITH CHECK ADD  CONSTRAINT [FK_purchase_order_details_purchase_order] FOREIGN KEY([pono])
REFERENCES [dbo].[purchase_order] ([pono])
GO
ALTER TABLE [dbo].[purchase_order_details] CHECK CONSTRAINT [FK_purchase_order_details_purchase_order]
GO
/****** Object:  ForeignKey [FK_sales_inventory]    Script Date: 07/15/2022 19:21:01 ******/
ALTER TABLE [dbo].[sales]  WITH CHECK ADD  CONSTRAINT [FK_sales_inventory] FOREIGN KEY([pid])
REFERENCES [dbo].[inventory] ([pid])
GO
ALTER TABLE [dbo].[sales] CHECK CONSTRAINT [FK_sales_inventory]
GO
/****** Object:  ForeignKey [FK_sales_bill_customer]    Script Date: 07/15/2022 19:21:01 ******/
ALTER TABLE [dbo].[sales_bill]  WITH CHECK ADD  CONSTRAINT [FK_sales_bill_customer] FOREIGN KEY([email])
REFERENCES [dbo].[customer] ([email])
GO
ALTER TABLE [dbo].[sales_bill] CHECK CONSTRAINT [FK_sales_bill_customer]
GO
/****** Object:  ForeignKey [FK_sales_bill_details_inventory]    Script Date: 07/15/2022 19:21:01 ******/
ALTER TABLE [dbo].[sales_bill_details]  WITH CHECK ADD  CONSTRAINT [FK_sales_bill_details_inventory] FOREIGN KEY([pid])
REFERENCES [dbo].[inventory] ([pid])
GO
ALTER TABLE [dbo].[sales_bill_details] CHECK CONSTRAINT [FK_sales_bill_details_inventory]
GO
/****** Object:  ForeignKey [FK_sales_order_customer]    Script Date: 07/15/2022 19:21:01 ******/
ALTER TABLE [dbo].[sales_order]  WITH CHECK ADD  CONSTRAINT [FK_sales_order_customer] FOREIGN KEY([email])
REFERENCES [dbo].[customer] ([email])
GO
ALTER TABLE [dbo].[sales_order] CHECK CONSTRAINT [FK_sales_order_customer]
GO
/****** Object:  ForeignKey [FK_sales_order_details_inventory]    Script Date: 07/15/2022 19:21:01 ******/
ALTER TABLE [dbo].[sales_order_details]  WITH CHECK ADD  CONSTRAINT [FK_sales_order_details_inventory] FOREIGN KEY([pid])
REFERENCES [dbo].[inventory] ([pid])
GO
ALTER TABLE [dbo].[sales_order_details] CHECK CONSTRAINT [FK_sales_order_details_inventory]
GO
