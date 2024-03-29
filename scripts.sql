USE [master]
GO
/****** Object:  Database [Store]    Script Date: 16.04.2020 23:29:09 ******/
CREATE DATABASE [Store]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Store', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Store.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Store_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Store_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Store] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Store].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Store] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Store] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Store] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Store] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Store] SET ARITHABORT OFF 
GO
ALTER DATABASE [Store] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Store] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Store] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Store] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Store] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Store] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Store] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Store] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Store] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Store] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Store] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Store] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Store] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Store] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Store] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Store] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Store] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Store] SET RECOVERY FULL 
GO
ALTER DATABASE [Store] SET  MULTI_USER 
GO
ALTER DATABASE [Store] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Store] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Store] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Store] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Store] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Store', N'ON'
GO
ALTER DATABASE [Store] SET QUERY_STORE = OFF
GO
USE [Store]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 16.04.2020 23:29:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 16.04.2020 23:29:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [int] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 16.04.2020 23:29:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[PhotoPath] [nvarchar](max) NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 16.04.2020 23:29:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 16.04.2020 23:29:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genders]    Script Date: 16.04.2020 23:29:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Genders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProducts]    Script Date: 16.04.2020 23:29:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProducts](
	[ProductId] [int] NULL,
	[OrderId] [int] NOT NULL,
	[StockId] [int] NOT NULL,
	[Qty] [int] NOT NULL,
 CONSTRAINT [PK_OrderProducts] PRIMARY KEY CLUSTERED 
(
	[StockId] ASC,
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 16.04.2020 23:29:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address1] [nvarchar](max) NOT NULL,
	[Address2] [nvarchar](max) NULL,
	[City] [nvarchar](max) NOT NULL,
	[PostCode] [nvarchar](max) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[UserId] [int] NULL,
	[IsSend] [bit] NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[OrderSendDate] [datetime2](7) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 16.04.2020 23:29:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[PhotoPath] [nvarchar](max) NULL,
	[Price] [decimal](15, 2) NOT NULL,
	[ColorId] [int] NULL,
	[BrandId] [int] NULL,
	[SexId] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 16.04.2020 23:29:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleClaims]    Script Date: 16.04.2020 23:29:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_RoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sexes]    Script Date: 16.04.2020 23:29:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sexes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Sexes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stock]    Script Date: 16.04.2020 23:29:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Qty] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[IsLastElementOrdered] [bit] NOT NULL,
 CONSTRAINT [PK_Stock] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserClaims]    Script Date: 16.04.2020 23:29:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLogin]    Script Date: 16.04.2020 23:29:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogin](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_UserLogin] PRIMARY KEY CLUSTERED 
(
	[ProviderKey] ASC,
	[LoginProvider] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 16.04.2020 23:29:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 16.04.2020 23:29:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[FirstName] [nvarchar](25) NOT NULL,
	[LastName] [nvarchar](25) NOT NULL,
	[GenderId] [int] NOT NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhotoPath] [nvarchar](max) NULL,
	[Address1] [nvarchar](max) NULL,
	[Address2] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[PostCode] [nvarchar](max) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200401173154_Initial-Migration', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200401234800_SeedDatabaseWithSexesTypesAndSizes', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200403094333_ChangePriceFromDoubleToDecimal', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200403102916_SeedDatabaseWithProducts', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200407174807_AddedStockOrdersOrderProductsTable', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200410163431_SizeTableDeleted', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200410202449_RenameLogoPathToPhotoPath', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200411121201_RenameTypeToCategory', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200411193820_InCartBoolAddedToStock', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200412104853_OrderProductsUpdated', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200413081837_OrderModelChangfee', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200413125722_AddresDataAddedToUserTable', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200413132154_OrdersAddedToUser', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200413134237_NullableUserIdInOrderTable', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200413155619_OrderTableUpdate', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200413180816_UserTownColumnDeleted', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200413181019_XD', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200413192452_UserAndAdminAdded', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200413193120_SeedDataWithStock', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200416175207_QtyInOrderProduct', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200416181721_AddProductIdToOrderProduct', N'3.1.3')
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([Id], [Name], [Description], [PhotoPath]) VALUES (1, N'Jordan', NULL, N'jordan.png')
INSERT [dbo].[Brands] ([Id], [Name], [Description], [PhotoPath]) VALUES (2, N'Adidas', NULL, N'adidas.png')
INSERT [dbo].[Brands] ([Id], [Name], [Description], [PhotoPath]) VALUES (3, N'Nike', NULL, N'nike.png')
INSERT [dbo].[Brands] ([Id], [Name], [Description], [PhotoPath]) VALUES (4, N'Supreme', NULL, N'supreme.png')
SET IDENTITY_INSERT [dbo].[Brands] OFF
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Obuwie')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Odzież')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Colors] ON 

INSERT [dbo].[Colors] ([Id], [Name]) VALUES (1, N'Biały')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (2, N'Czarny')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (3, N'Niebieski')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (4, N'Żółty')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (5, N'Szary')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (6, N'Czerwony')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (7, N'Inny')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (8, N'Pomarańczowy')
SET IDENTITY_INSERT [dbo].[Colors] OFF
SET IDENTITY_INSERT [dbo].[Genders] ON 

INSERT [dbo].[Genders] ([Id], [Name]) VALUES (1, N'Mężczyzna')
INSERT [dbo].[Genders] ([Id], [Name]) VALUES (2, N'Kobieta')
INSERT [dbo].[Genders] ([Id], [Name]) VALUES (3, N'Nieznany')
SET IDENTITY_INSERT [dbo].[Genders] OFF
INSERT [dbo].[OrderProducts] ([ProductId], [OrderId], [StockId], [Qty]) VALUES (1, 14, 1, 1)
INSERT [dbo].[OrderProducts] ([ProductId], [OrderId], [StockId], [Qty]) VALUES (1, 15, 1, 1)
INSERT [dbo].[OrderProducts] ([ProductId], [OrderId], [StockId], [Qty]) VALUES (1, 16, 1, 1)
INSERT [dbo].[OrderProducts] ([ProductId], [OrderId], [StockId], [Qty]) VALUES (1, 15, 2, 1)
INSERT [dbo].[OrderProducts] ([ProductId], [OrderId], [StockId], [Qty]) VALUES (1, 16, 2, 1)
INSERT [dbo].[OrderProducts] ([ProductId], [OrderId], [StockId], [Qty]) VALUES (1, 17, 3, 1)
INSERT [dbo].[OrderProducts] ([ProductId], [OrderId], [StockId], [Qty]) VALUES (2, 14, 8, 2)
INSERT [dbo].[OrderProducts] ([ProductId], [OrderId], [StockId], [Qty]) VALUES (2, 17, 8, 1)
INSERT [dbo].[OrderProducts] ([ProductId], [OrderId], [StockId], [Qty]) VALUES (3, 17, 23, 1)
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [Address1], [Address2], [City], [PostCode], [FirstName], [LastName], [Email], [UserId], [IsSend], [OrderDate], [OrderSendDate]) VALUES (1, N'admin', NULL, N'admin', N'51-627', N'admin', N'admin', N'admin@store.com', 1, 1, CAST(N'2020-04-15T16:38:01.9548109' AS DateTime2), CAST(N'2020-04-15T16:38:12.0586184' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [Address1], [Address2], [City], [PostCode], [FirstName], [LastName], [Email], [UserId], [IsSend], [OrderDate], [OrderSendDate]) VALUES (2, N'user', NULL, N'user', N'51-627', N'user', N'user', N'user@store.com', 2, 1, CAST(N'2020-04-15T17:12:22.4463558' AS DateTime2), CAST(N'2020-04-15T17:13:38.6560085' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [Address1], [Address2], [City], [PostCode], [FirstName], [LastName], [Email], [UserId], [IsSend], [OrderDate], [OrderSendDate]) VALUES (4, N'Wróblewskiego 25', NULL, N'Wrocław', N'51-627', N'Jakub', N'Pietrus', N'pietrusjakub@gmail.com', 3, 0, CAST(N'2020-04-15T17:16:36.5648958' AS DateTime2), NULL)
INSERT [dbo].[Orders] ([Id], [Address1], [Address2], [City], [PostCode], [FirstName], [LastName], [Email], [UserId], [IsSend], [OrderDate], [OrderSendDate]) VALUES (5, N'Wróblewskiego 25', NULL, N'Wrocław', N'51-627', N'Jakub', N'Pietrus', N'pietrusjakub@gmail.com', 3, 1, CAST(N'2020-04-15T17:16:47.4630023' AS DateTime2), CAST(N'2020-04-15T17:17:16.8337613' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [Address1], [Address2], [City], [PostCode], [FirstName], [LastName], [Email], [UserId], [IsSend], [OrderDate], [OrderSendDate]) VALUES (6, N'Wróblewskiego 25', NULL, N'Wrocław', N'51-627', N'Jakub', N'Pietrus', N'pietrusjakub@gmail.com', 3, 0, CAST(N'2020-04-15T17:17:00.5815675' AS DateTime2), NULL)
INSERT [dbo].[Orders] ([Id], [Address1], [Address2], [City], [PostCode], [FirstName], [LastName], [Email], [UserId], [IsSend], [OrderDate], [OrderSendDate]) VALUES (7, N'Kazimierz', N'Wielki', N'Dalachów', N'43-324', N'kaziu', N'mraziu', N'kazik@gmail.com', 4, 1, CAST(N'2020-04-15T17:18:16.3270813' AS DateTime2), CAST(N'2020-04-15T17:18:47.6499901' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [Address1], [Address2], [City], [PostCode], [FirstName], [LastName], [Email], [UserId], [IsSend], [OrderDate], [OrderSendDate]) VALUES (8, N'Kazimierz', N'Wielki', N'Dalachów', N'43-324', N'kaziu', N'mraziu', N'kazik@gmail.com', 4, 1, CAST(N'2020-04-15T17:18:25.3155505' AS DateTime2), CAST(N'2020-04-16T20:51:13.4397049' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [Address1], [Address2], [City], [PostCode], [FirstName], [LastName], [Email], [UserId], [IsSend], [OrderDate], [OrderSendDate]) VALUES (14, N'admin', NULL, N'admin', N'51-627', N'admin', N'admin', N'admin@store.com', 1, 0, CAST(N'2020-04-16T20:37:55.8244172' AS DateTime2), NULL)
INSERT [dbo].[Orders] ([Id], [Address1], [Address2], [City], [PostCode], [FirstName], [LastName], [Email], [UserId], [IsSend], [OrderDate], [OrderSendDate]) VALUES (15, N'admin', NULL, N'admin', N'51-627', N'admin', N'admin', N'admin@store.com', 1, 0, CAST(N'2020-04-16T20:47:40.3941221' AS DateTime2), NULL)
INSERT [dbo].[Orders] ([Id], [Address1], [Address2], [City], [PostCode], [FirstName], [LastName], [Email], [UserId], [IsSend], [OrderDate], [OrderSendDate]) VALUES (16, N'admin', NULL, N'admin', N'51-627', N'admin', N'admin', N'admin@store.com', 1, 0, CAST(N'2020-04-16T20:49:00.2840352' AS DateTime2), NULL)
INSERT [dbo].[Orders] ([Id], [Address1], [Address2], [City], [PostCode], [FirstName], [LastName], [Email], [UserId], [IsSend], [OrderDate], [OrderSendDate]) VALUES (17, N'admin', NULL, N'admin', N'51-627', N'admin', N'admin', N'admin@store.com', 1, 0, CAST(N'2020-04-16T23:28:10.8349375' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 
Use Store

INSERT [dbo].[Products] ([Id], [Name], [PhotoPath], [Price], [ColorId], [BrandId], [SexId], [Description], [CategoryId]) VALUES (1, N'Air Max 97', N'nikeairmax97.png', CAST(399.99 AS Decimal(15, 2)), 2, 3, 3, N'But z 97 roku!', 1)
INSERT [dbo].[Products] ([Id], [Name], [PhotoPath], [Price], [ColorId], [BrandId], [SexId], [Description], [CategoryId]) VALUES (2, N'Cortez', N'nikecortez.png', CAST(199.99 AS Decimal(15, 2)), 1, 3, 1, N'Klasyk noszony przez Forresta Gumpa!', 1)
INSERT [dbo].[Products] ([Id], [Name], [PhotoPath], [Price], [ColorId], [BrandId], [SexId], [Description], [CategoryId]) VALUES (3, N'30', N'jordan30.png', CAST(599.99 AS Decimal(15, 2)), 6, 1, 2, N'Kolejny model butów od najlepszego koszykarza w historii!', 1)
INSERT [dbo].[Products] ([Id], [Name], [PhotoPath], [Price], [ColorId], [BrandId], [SexId], [Description], [CategoryId]) VALUES (4, N'Bogo Red', N'bogored.png', CAST(999.99 AS Decimal(15, 2)), 6, 4, 1, N'Najpopularnieszy model bluzy Supreme!', 2)
INSERT [dbo].[Products] ([Id], [Name], [PhotoPath], [Price], [ColorId], [BrandId], [SexId], [Description], [CategoryId]) VALUES (5, N'Buju Banton Tee', N'bujubanton.png', CAST(599.99 AS Decimal(15, 2)), 1, 4, 1, N'Świetny T-Shirt od Supreme!', 2)
INSERT [dbo].[Products] ([Id], [Name], [PhotoPath], [Price], [ColorId], [BrandId], [SexId], [Description], [CategoryId]) VALUES (6, N'Camp Cap', N'supremecapblack.png', CAST(199.99 AS Decimal(15, 2)), 1, 4, 3, N'Czarna czapka od Supreme!', 2)
INSERT [dbo].[Products] ([Id], [Name], [PhotoPath], [Price], [ColorId], [BrandId], [SexId], [Description], [CategoryId]) VALUES (7, N'Neo White', N'adidasneowhite.png', CAST(299.99 AS Decimal(15, 2)), 1, 2, 2, N'Białe adidasy od Adidasa!', 1)
INSERT [dbo].[Products] ([Id], [Name], [PhotoPath], [Price], [ColorId], [BrandId], [SexId], [Description], [CategoryId]) VALUES (8, N'MARS 270', N'61ae7916-88e6-4c15-998b-7eefa8a579e5_mars270.jpg', CAST(300.00 AS Decimal(15, 2)), 2, 1, 1, NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [PhotoPath], [Price], [ColorId], [BrandId], [SexId], [Description], [CategoryId]) VALUES (9, N'JUMPMAN DIAMOND MID', N'1eab9c3a-47f9-4731-91fd-f7ebdb1ff967_JUMPMAN-DIAMOND-MID.jpg', CAST(398.00 AS Decimal(15, 2)), 2, 1, 1, NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [PhotoPath], [Price], [ColorId], [BrandId], [SexId], [Description], [CategoryId]) VALUES (10, N'AURA ', N'400527d9-9573-418c-bc1e-ef90bd02c56b_AURA.png', CAST(369.00 AS Decimal(15, 2)), 1, 1, 1, NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [PhotoPath], [Price], [ColorId], [BrandId], [SexId], [Description], [CategoryId]) VALUES (11, N'JUMPMAN FLEECE', N'b10993e6-5448-4262-b634-b179d4116b3c_jordanbluza.png', CAST(219.00 AS Decimal(15, 2)), 2, 1, 1, NULL, 2)
INSERT [dbo].[Products] ([Id], [Name], [PhotoPath], [Price], [ColorId], [BrandId], [SexId], [Description], [CategoryId]) VALUES (12, N'STEFAN JANOSKI', N'601fd970-37f2-4f57-a277-99bc0890d457_original.jpg', CAST(249.00 AS Decimal(15, 2)), 2, 3, 1, NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [PhotoPath], [Price], [ColorId], [BrandId], [SexId], [Description], [CategoryId]) VALUES (13, N'Motion Logo Hooded', N'56d8764d-037d-40dc-90a5-7b40544192f5_motionsup.jpg', CAST(800.00 AS Decimal(15, 2)), 4, 4, 1, NULL, 2)
INSERT [dbo].[Products] ([Id], [Name], [PhotoPath], [Price], [ColorId], [BrandId], [SexId], [Description], [CategoryId]) VALUES (14, N'Sailboat', N'78ca064d-565d-4d58-8013-9066f85fcbf8_sailboat.jpg', CAST(450.00 AS Decimal(15, 2)), 2, 4, 3, NULL, 2)
INSERT [dbo].[Products] ([Id], [Name], [PhotoPath], [Price], [ColorId], [BrandId], [SexId], [Description], [CategoryId]) VALUES (15, N'Crossover Hooded', N'7b84bd78-93f4-4330-9b4e-6f0cc86c4e62_crossover.jpg', CAST(730.00 AS Decimal(15, 2)), 1, 4, 3, NULL, 2)
INSERT [dbo].[Products] ([Id], [Name], [PhotoPath], [Price], [ColorId], [BrandId], [SexId], [Description], [CategoryId]) VALUES (16, N'Sportswear Club Fleece', N'829a8940-c439-42fb-85d9-c71b91a73546_joggery-meskie-sportswear-club-fleece-phSWZS.jpg', CAST(300.00 AS Decimal(15, 2)), 2, 3, 1, NULL, 2)
INSERT [dbo].[Products] ([Id], [Name], [PhotoPath], [Price], [ColorId], [BrandId], [SexId], [Description], [CategoryId]) VALUES (17, N'Sportswear Club Fleece', N'c346797d-406d-40b8-9835-26ffd744dcc5_joggery-meskie-sportswear-club-fleece-phSWZS (1).jpg', CAST(350.00 AS Decimal(15, 2)), 8, 1, 1, NULL, 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (1, N'Admin', N'ADMIN', N'440cdcb3-fa68-4302-bd7d-d2daf999ef95')
INSERT [dbo].[Role] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (2, N'User', N'USER', N'dafd95da-5783-41c1-b730-a74137b2bb93')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[Sexes] ON 

INSERT [dbo].[Sexes] ([Id], [Name]) VALUES (1, N'Mężczyzna')
INSERT [dbo].[Sexes] ([Id], [Name]) VALUES (2, N'Kobieta')
INSERT [dbo].[Sexes] ([Id], [Name]) VALUES (3, N'Unisex')
SET IDENTITY_INSERT [dbo].[Sexes] OFF
SET IDENTITY_INSERT [dbo].[Stock] ON 

INSERT [dbo].[Stock] ([Id], [Qty], [ProductId], [Name], [IsLastElementOrdered]) VALUES (1, 0, 1, N'10', 1)
INSERT [dbo].[Stock] ([Id], [Qty], [ProductId], [Name], [IsLastElementOrdered]) VALUES (2, 0, 1, N'11', 1)
INSERT [dbo].[Stock] ([Id], [Qty], [ProductId], [Name], [IsLastElementOrdered]) VALUES (3, 0, 1, N'12', 1)
INSERT [dbo].[Stock] ([Id], [Qty], [ProductId], [Name], [IsLastElementOrdered]) VALUES (4, 1, 4, N'S', 0)
INSERT [dbo].[Stock] ([Id], [Qty], [ProductId], [Name], [IsLastElementOrdered]) VALUES (5, 2, 4, N'L', 0)
INSERT [dbo].[Stock] ([Id], [Qty], [ProductId], [Name], [IsLastElementOrdered]) VALUES (6, 0, 4, N'XL', 1)
INSERT [dbo].[Stock] ([Id], [Qty], [ProductId], [Name], [IsLastElementOrdered]) VALUES (7, 1, 7, N'9', 0)
INSERT [dbo].[Stock] ([Id], [Qty], [ProductId], [Name], [IsLastElementOrdered]) VALUES (8, 2, 2, N'11', 0)
INSERT [dbo].[Stock] ([Id], [Qty], [ProductId], [Name], [IsLastElementOrdered]) VALUES (9, 0, 13, N'XL', 1)
INSERT [dbo].[Stock] ([Id], [Qty], [ProductId], [Name], [IsLastElementOrdered]) VALUES (10, 2, 13, N'L', 0)
INSERT [dbo].[Stock] ([Id], [Qty], [ProductId], [Name], [IsLastElementOrdered]) VALUES (11, 1, 13, N'S', 0)
INSERT [dbo].[Stock] ([Id], [Qty], [ProductId], [Name], [IsLastElementOrdered]) VALUES (12, 3, 12, N'9', 0)
INSERT [dbo].[Stock] ([Id], [Qty], [ProductId], [Name], [IsLastElementOrdered]) VALUES (13, 2, 12, N'10', 0)
INSERT [dbo].[Stock] ([Id], [Qty], [ProductId], [Name], [IsLastElementOrdered]) VALUES (14, 3, 12, N'11', 0)
INSERT [dbo].[Stock] ([Id], [Qty], [ProductId], [Name], [IsLastElementOrdered]) VALUES (15, 5, 12, N'12', 0)
INSERT [dbo].[Stock] ([Id], [Qty], [ProductId], [Name], [IsLastElementOrdered]) VALUES (16, 6, 12, N'13', 0)
INSERT [dbo].[Stock] ([Id], [Qty], [ProductId], [Name], [IsLastElementOrdered]) VALUES (17, 12, 11, N'M', 0)
INSERT [dbo].[Stock] ([Id], [Qty], [ProductId], [Name], [IsLastElementOrdered]) VALUES (18, 5, 11, N'L', 0)
INSERT [dbo].[Stock] ([Id], [Qty], [ProductId], [Name], [IsLastElementOrdered]) VALUES (19, 5, 11, N'S', 0)
INSERT [dbo].[Stock] ([Id], [Qty], [ProductId], [Name], [IsLastElementOrdered]) VALUES (20, 1, 8, N'12', 0)
INSERT [dbo].[Stock] ([Id], [Qty], [ProductId], [Name], [IsLastElementOrdered]) VALUES (21, 3, 8, N'13', 0)
INSERT [dbo].[Stock] ([Id], [Qty], [ProductId], [Name], [IsLastElementOrdered]) VALUES (22, 12, 6, N'L', 0)
INSERT [dbo].[Stock] ([Id], [Qty], [ProductId], [Name], [IsLastElementOrdered]) VALUES (23, 3, 3, N'10', 0)
INSERT [dbo].[Stock] ([Id], [Qty], [ProductId], [Name], [IsLastElementOrdered]) VALUES (24, 1, 9, N'13', 0)
INSERT [dbo].[Stock] ([Id], [Qty], [ProductId], [Name], [IsLastElementOrdered]) VALUES (25, 2, 9, N'14', 0)
INSERT [dbo].[Stock] ([Id], [Qty], [ProductId], [Name], [IsLastElementOrdered]) VALUES (26, 1, 10, N'11', 0)
INSERT [dbo].[Stock] ([Id], [Qty], [ProductId], [Name], [IsLastElementOrdered]) VALUES (27, 4, 10, N'13', 0)
INSERT [dbo].[Stock] ([Id], [Qty], [ProductId], [Name], [IsLastElementOrdered]) VALUES (28, 11, 15, N'L', 0)
INSERT [dbo].[Stock] ([Id], [Qty], [ProductId], [Name], [IsLastElementOrdered]) VALUES (29, 10, 15, N'XL', 0)
INSERT [dbo].[Stock] ([Id], [Qty], [ProductId], [Name], [IsLastElementOrdered]) VALUES (30, 28, 15, N'XXL', 0)
INSERT [dbo].[Stock] ([Id], [Qty], [ProductId], [Name], [IsLastElementOrdered]) VALUES (31, 12, 16, N'L', 0)
INSERT [dbo].[Stock] ([Id], [Qty], [ProductId], [Name], [IsLastElementOrdered]) VALUES (32, 5, 16, N'XL', 0)
INSERT [dbo].[Stock] ([Id], [Qty], [ProductId], [Name], [IsLastElementOrdered]) VALUES (33, 9, 17, N'L', 0)
INSERT [dbo].[Stock] ([Id], [Qty], [ProductId], [Name], [IsLastElementOrdered]) VALUES (34, 2, 17, N'XL', 0)
SET IDENTITY_INSERT [dbo].[Stock] OFF
INSERT [dbo].[UserRole] ([UserId], [RoleId]) VALUES (1, 1)
INSERT [dbo].[UserRole] ([UserId], [RoleId]) VALUES (2, 2)
INSERT [dbo].[UserRole] ([UserId], [RoleId]) VALUES (3, 2)
INSERT [dbo].[UserRole] ([UserId], [RoleId]) VALUES (4, 2)
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [GenderId], [PhoneNumber], [PhotoPath], [Address1], [Address2], [City], [PostCode]) VALUES (1, N'admin', N'ADMIN', N'admin@store.com', N'ADMIN@STORE.COM', 1, N'AQAAAAEAACcQAAAAEPoX0cLbm3yVlhqmRSc19zzd4Uh6/yOjF5r7yXckASqahFSE9533au5xtwl2aK3pHw==', N'662d9587-7baf-43a8-9765-39450e7a1af2', N'78b8c1e0-da8c-4213-86cb-e6d2778cbae0', 0, 0, NULL, 0, 0, N'admin', N'admin', 3, N'123456789', NULL, N'admin', NULL, N'admin', N'51-627')
INSERT [dbo].[Users] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [GenderId], [PhoneNumber], [PhotoPath], [Address1], [Address2], [City], [PostCode]) VALUES (2, N'user', N'USER', N'user@store.com', N'USER@STORE.COM', 1, N'AQAAAAEAACcQAAAAEOdnw4rzIrEj76iU5UKYsnAYmD1ii4m6vDjL0kndN0MqXmFHqM9AkhNDrko6gzxKWQ==', N'2f9aca15-40a7-4374-9f2e-15b9727d9388', N'd991460e-627b-4cd9-b014-256440b6b5aa', 0, 0, NULL, 0, 0, N'user', N'user', 1, N'987654321', NULL, N'user', NULL, N'user', N'51-627')
INSERT [dbo].[Users] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [GenderId], [PhoneNumber], [PhotoPath], [Address1], [Address2], [City], [PostCode]) VALUES (3, N'kubix', N'KUBIX', N'pietrusjakub@gmail.com', N'PIETRUSJAKUB@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEALc+HAA379nxQ3gUoTlnMznBNS4Qm2dQl1TQ5kWCUlJSOFilEkY3tHMQFNJL/mrHA==', N'GOH3JQ4XM7H6AQBGBJOLGRAAUAPZ736T', N'12a6dec4-8dbb-47c8-b5c9-25f247d8b9a6', 0, 0, NULL, 1, 0, N'Jakub', N'Pietrus', 1, N'883198611', N'aa1637b5-b3bd-4337-b1c0-9fe9f1b645da_sasuke-avatar.jpg', N'Wróblewskiego 25', NULL, N'Wrocław', N'51-627')
INSERT [dbo].[Users] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [GenderId], [PhoneNumber], [PhotoPath], [Address1], [Address2], [City], [PostCode]) VALUES (4, N'kazik', N'KAZIK', N'kazik@gmail.com', N'KAZIK@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEMdp98cfy/V2DUM7x5xzN0m9jKTXwqFsxavVcd9Uclxs2g/ibEKfi2AVRXnIekwc8g==', N'ANUMCAGDPB547GBR4VS5UFT7ATLLNNNY', N'0ad7f475-166d-420c-87ac-d10bd6b03649', 0, 0, NULL, 1, 0, N'kaziu', N'mraziu', 1, NULL, NULL, N'Kazimierz', N'Wielki', N'Dalachów', N'43-324')
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Index [IX_OrderProducts_OrderId]    Script Date: 16.04.2020 23:29:10 ******/
CREATE NONCLUSTERED INDEX [IX_OrderProducts_OrderId] ON [dbo].[OrderProducts]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderProducts_ProductId]    Script Date: 16.04.2020 23:29:10 ******/
CREATE NONCLUSTERED INDEX [IX_OrderProducts_ProductId] ON [dbo].[OrderProducts]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_UserId]    Script Date: 16.04.2020 23:29:10 ******/
CREATE NONCLUSTERED INDEX [IX_Orders_UserId] ON [dbo].[Orders]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_BrandId]    Script Date: 16.04.2020 23:29:10 ******/
CREATE NONCLUSTERED INDEX [IX_Products_BrandId] ON [dbo].[Products]
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 16.04.2020 23:29:10 ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_ColorId]    Script Date: 16.04.2020 23:29:10 ******/
CREATE NONCLUSTERED INDEX [IX_Products_ColorId] ON [dbo].[Products]
(
	[ColorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_SexId]    Script Date: 16.04.2020 23:29:10 ******/
CREATE NONCLUSTERED INDEX [IX_Products_SexId] ON [dbo].[Products]
(
	[SexId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 16.04.2020 23:29:10 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[Role]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_RoleClaims_RoleId]    Script Date: 16.04.2020 23:29:10 ******/
CREATE NONCLUSTERED INDEX [IX_RoleClaims_RoleId] ON [dbo].[RoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Stock_ProductId]    Script Date: 16.04.2020 23:29:10 ******/
CREATE NONCLUSTERED INDEX [IX_Stock_ProductId] ON [dbo].[Stock]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserClaims_UserId]    Script Date: 16.04.2020 23:29:10 ******/
CREATE NONCLUSTERED INDEX [IX_UserClaims_UserId] ON [dbo].[UserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserLogin_UserId]    Script Date: 16.04.2020 23:29:10 ******/
CREATE NONCLUSTERED INDEX [IX_UserLogin_UserId] ON [dbo].[UserLogin]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserRole_UserId]    Script Date: 16.04.2020 23:29:10 ******/
CREATE NONCLUSTERED INDEX [IX_UserRole_UserId] ON [dbo].[UserRole]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 16.04.2020 23:29:10 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[Users]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Users_GenderId]    Script Date: 16.04.2020 23:29:10 ******/
CREATE NONCLUSTERED INDEX [IX_Users_GenderId] ON [dbo].[Users]
(
	[GenderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 16.04.2020 23:29:10 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[Users]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrderProducts] ADD  DEFAULT ((0)) FOR [StockId]
GO
ALTER TABLE [dbo].[OrderProducts] ADD  DEFAULT ((0)) FOR [Qty]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (N'') FOR [FirstName]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (N'') FOR [LastName]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsSend]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [OrderDate]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [CategoryId]
GO
ALTER TABLE [dbo].[Stock] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsLastElementOrdered]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_Users_UserId]
GO
ALTER TABLE [dbo].[OrderProducts]  WITH CHECK ADD  CONSTRAINT [FK_OrderProducts_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderProducts] CHECK CONSTRAINT [FK_OrderProducts_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderProducts]  WITH CHECK ADD  CONSTRAINT [FK_OrderProducts_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[OrderProducts] CHECK CONSTRAINT [FK_OrderProducts_Products_ProductId]
GO
ALTER TABLE [dbo].[OrderProducts]  WITH CHECK ADD  CONSTRAINT [FK_OrderProducts_Stock_StockId] FOREIGN KEY([StockId])
REFERENCES [dbo].[Stock] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderProducts] CHECK CONSTRAINT [FK_OrderProducts_Stock_StockId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users_UserId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands_BrandId] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Brands_BrandId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Colors_ColorId] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Colors] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Colors_ColorId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Sexes_SexId] FOREIGN KEY([SexId])
REFERENCES [dbo].[Sexes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Sexes_SexId]
GO
ALTER TABLE [dbo].[RoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_RoleClaims_Role_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RoleClaims] CHECK CONSTRAINT [FK_RoleClaims_Role_RoleId]
GO
ALTER TABLE [dbo].[Stock]  WITH CHECK ADD  CONSTRAINT [FK_Stock_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Stock] CHECK CONSTRAINT [FK_Stock_Products_ProductId]
GO
ALTER TABLE [dbo].[UserClaims]  WITH CHECK ADD  CONSTRAINT [FK_UserClaims_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserClaims] CHECK CONSTRAINT [FK_UserClaims_Users_UserId]
GO
ALTER TABLE [dbo].[UserLogin]  WITH CHECK ADD  CONSTRAINT [FK_UserLogin_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserLogin] CHECK CONSTRAINT [FK_UserLogin_Users_UserId]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_Role_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_Role_RoleId]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_Users_UserId]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Genders_GenderId] FOREIGN KEY([GenderId])
REFERENCES [dbo].[Genders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Genders_GenderId]
GO
USE [master]
GO
ALTER DATABASE [Store] SET  READ_WRITE 
GO
