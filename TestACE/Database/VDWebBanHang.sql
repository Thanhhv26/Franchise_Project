USE [master]
GO
/****** Object:  Database [VDWebBanHang]    Script Date: 03/14/2013 14:43:34 ******/
CREATE DATABASE [VDWebBanHang] ON  PRIMARY 
( NAME = N'VDWebBanHang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\VDWebBanHang.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'VDWebBanHang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\VDWebBanHang_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [VDWebBanHang] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VDWebBanHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VDWebBanHang] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [VDWebBanHang] SET ANSI_NULLS OFF
GO
ALTER DATABASE [VDWebBanHang] SET ANSI_PADDING OFF
GO
ALTER DATABASE [VDWebBanHang] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [VDWebBanHang] SET ARITHABORT OFF
GO
ALTER DATABASE [VDWebBanHang] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [VDWebBanHang] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [VDWebBanHang] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [VDWebBanHang] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [VDWebBanHang] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [VDWebBanHang] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [VDWebBanHang] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [VDWebBanHang] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [VDWebBanHang] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [VDWebBanHang] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [VDWebBanHang] SET  DISABLE_BROKER
GO
ALTER DATABASE [VDWebBanHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [VDWebBanHang] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [VDWebBanHang] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [VDWebBanHang] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [VDWebBanHang] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [VDWebBanHang] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [VDWebBanHang] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [VDWebBanHang] SET  READ_WRITE
GO
ALTER DATABASE [VDWebBanHang] SET RECOVERY FULL
GO
ALTER DATABASE [VDWebBanHang] SET  MULTI_USER
GO
ALTER DATABASE [VDWebBanHang] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [VDWebBanHang] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'VDWebBanHang', N'ON'
GO
USE [VDWebBanHang]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 03/14/2013 14:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Customer_Id] [int] NULL,
	[TotalMoney] [float] NULL,
	[Date] [datetime] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 03/14/2013 14:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Link] [nvarchar](500) NULL,
	[Order] [int] NULL,
	[ParentId] [int] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupProduct]    Script Date: 03/14/2013 14:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Content] [ntext] NULL,
	[Images] [nvarchar](300) NULL,
	[Order] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_GroupProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 03/14/2013 14:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[BirthDay] [datetime] NULL,
	[Province] [nvarchar](300) NULL,
	[Address] [ntext] NULL,
	[Tel] [varchar](20) NULL,
	[Email] [nvarchar](300) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 03/14/2013 14:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contact](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Company] [nvarchar](500) NULL,
	[Address] [ntext] NULL,
	[Tel] [varchar](20) NULL,
	[Mal] [varchar](300) NULL,
	[Detail] [ntext] NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Company]    Script Date: 03/14/2013 14:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company](
	[Name] [nvarchar](500) NULL,
	[Address] [ntext] NULL,
	[PhoneNumber] [varchar](20) NULL,
	[Fax] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Advertise]    Script Date: 03/14/2013 14:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Advertise](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Url] [nvarchar](500) NULL,
	[Width] [int] NULL,
	[Height] [int] NULL,
	[Link] [nvarchar](500) NULL,
	[Target] [int] NULL,
	[Postion] [int] NULL,
	[Order] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Adverse] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Province]    Script Date: 03/14/2013 14:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Province](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
 CONSTRAINT [PK_Province] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 03/14/2013 14:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[UserName] [varchar](500) NULL,
	[Password] [varchar](500) NULL,
	[Rule] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Support]    Script Date: 03/14/2013 14:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Support](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Tel] [varchar](20) NULL,
	[Type] [int] NULL,
	[Nick] [varchar](50) NULL,
	[Order] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Support] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Shop]    Script Date: 03/14/2013 14:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shop](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Address] [nvarchar](500) NULL,
	[Tel] [varchar](20) NULL,
	[Province_Id] [int] NULL,
 CONSTRAINT [PK_Shop] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 03/14/2013 14:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Detail] [ntext] NULL,
	[Price] [float] NULL,
	[Image] [nvarchar](300) NULL,
	[PriceNew] [float] NULL,
	[Date] [datetime] NULL,
	[Order] [int] NULL,
	[Status] [int] NULL,
	[GroupProduct_Id] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 03/14/2013 14:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Order_Id] [int] NULL,
	[Product_Id] [int] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Shop_Province]    Script Date: 03/14/2013 14:43:36 ******/
ALTER TABLE [dbo].[Shop]  WITH CHECK ADD  CONSTRAINT [FK_Shop_Province] FOREIGN KEY([Province_Id])
REFERENCES [dbo].[Province] ([Id])
GO
ALTER TABLE [dbo].[Shop] CHECK CONSTRAINT [FK_Shop_Province]
GO
/****** Object:  ForeignKey [FK_Product_GroupProduct]    Script Date: 03/14/2013 14:43:36 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_GroupProduct] FOREIGN KEY([GroupProduct_Id])
REFERENCES [dbo].[GroupProduct] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_GroupProduct]
GO
/****** Object:  ForeignKey [FK_OrderDetail_Order]    Script Date: 03/14/2013 14:43:36 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([Order_Id])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
/****** Object:  ForeignKey [FK_OrderDetail_Product]    Script Date: 03/14/2013 14:43:36 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
