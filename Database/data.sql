USE [master]
GO
/****** Object:  Database [Seafood]    Script Date: 7/21/2023 6:11:13 PM ******/
CREATE DATABASE [Seafood]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Seefood', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Seefood.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Seefood_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Seefood_log.ldf' , SIZE = 20096KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Seafood] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Seafood].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Seafood] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Seafood] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Seafood] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Seafood] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Seafood] SET ARITHABORT OFF 
GO
ALTER DATABASE [Seafood] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Seafood] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Seafood] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Seafood] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Seafood] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Seafood] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Seafood] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Seafood] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Seafood] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Seafood] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Seafood] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Seafood] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Seafood] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Seafood] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Seafood] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Seafood] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Seafood] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Seafood] SET RECOVERY FULL 
GO
ALTER DATABASE [Seafood] SET  MULTI_USER 
GO
ALTER DATABASE [Seafood] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Seafood] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Seafood] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Seafood] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Seafood] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Seafood] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Seafood', N'ON'
GO
ALTER DATABASE [Seafood] SET QUERY_STORE = OFF
GO
USE [Seafood]
GO
/****** Object:  User [seafooddb]    Script Date: 7/21/2023 6:11:13 PM ******/
CREATE USER [seafooddb] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Addresses]    Script Date: 7/21/2023 6:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addresses](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[FullName] [nvarchar](250) NOT NULL,
	[Mobile] [nvarchar](10) NOT NULL,
	[CodeRegion] [nvarchar](50) NOT NULL,
	[CodeDistrict] [nvarchar](50) NOT NULL,
	[CodeWard] [nvarchar](50) NOT NULL,
	[TypeAddress] [int] NOT NULL,
	[TypeAddressDetail] [int] NOT NULL,
	[IsAddressMain] [bit] NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Note] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Baskets]    Script Date: 7/21/2023 6:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Baskets](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[ProdProcessingId] [uniqueidentifier] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 7/21/2023 6:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[Code] [nvarchar](100) NULL,
	[Icon] [nvarchar](100) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CheckCodeFirebases]    Script Date: 7/21/2023 6:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CheckCodeFirebases](
	[Id] [uniqueidentifier] NOT NULL,
	[Mobile] [char](20) NOT NULL,
	[TimeSend] [datetime] NOT NULL,
	[NumberOfSend] [int] NOT NULL,
	[LatestCode] [char](6) NULL,
	[Description] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FavouriteProds]    Script Date: 7/21/2023 6:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FavouriteProds](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NULL,
	[IpRequest] [nvarchar](100) NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[ProdBasketId] [uniqueidentifier] NULL,
	[ClassName] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 7/21/2023 6:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[Id] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NULL,
	[ShopSeefoodId] [uniqueidentifier] NULL,
	[MoreImgId] [uniqueidentifier] NULL,
	[UrlPath] [nvarchar](100) NULL,
	[Base64Str] [nvarchar](max) NULL,
	[IsImageMain] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 7/21/2023 6:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[ProdProcessingId] [uniqueidentifier] NOT NULL,
	[AddressId] [uniqueidentifier] NOT NULL,
	[TypeAddress] [int] NOT NULL,
	[Code] [nvarchar](100) NOT NULL,
	[Status] [int] NOT NULL,
	[CodeVoucher] [nvarchar](100) NULL,
	[TypeVoucher] [int] NULL,
	[Quantity] [int] NOT NULL,
	[TotalPrice] [int] NOT NULL,
	[TimeOrder] [datetime] NOT NULL,
	[StartDeliveryTime] [datetime] NULL,
	[EstimateDeliveryTime] [datetime] NULL,
	[SuccessfulDeliveryTime] [datetime] NULL,
	[CancellationTime] [datetime] NULL,
	[Note] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProdInfos]    Script Date: 7/21/2023 6:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProdInfos](
	[Id] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Note] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProdProcessings]    Script Date: 7/21/2023 6:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProdProcessings](
	[Id] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NULL,
	[Name] [nvarchar](100) NULL,
	[Price] [int] NULL,
	[Note] [nvarchar](max) NULL,
	[IsDeleted] [bit] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProdPromotions]    Script Date: 7/21/2023 6:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProdPromotions](
	[Id] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NULL,
	[Content] [nvarchar](max) NULL,
	[PromotionMain] [bit] NULL,
	[Note] [nvarchar](max) NULL,
	[IsDeleted] [bit] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 7/21/2023 6:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [uniqueidentifier] NOT NULL,
	[CategoryCode] [nvarchar](100) NOT NULL,
	[ShopCode] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[ReviewProd] [float] NULL,
	[Price] [int] NOT NULL,
	[PriceSale] [int] NOT NULL,
	[Amount] [float] NULL,
	[Note] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Regions]    Script Date: 7/21/2023 6:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regions](
	[Id] [uniqueidentifier] NOT NULL,
	[NameRegion] [nvarchar](100) NULL,
	[CodeRegion] [nvarchar](50) NULL,
	[NameDistrict] [nvarchar](100) NULL,
	[CodeDistrict] [nvarchar](50) NULL,
	[NameWard] [nvarchar](100) NULL,
	[CodeWard] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[IsDeleted] [bit] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeafoodPromotions]    Script Date: 7/21/2023 6:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeafoodPromotions](
	[Id] [uniqueidentifier] NOT NULL,
	[ShopCode] [nvarchar](100) NULL,
	[Content] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[IsDeleted] [bit] NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SessionAuthorizeAdmins]    Script Date: 7/21/2023 6:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SessionAuthorizeAdmins](
	[Id] [uniqueidentifier] NOT NULL,
	[Username] [char](20) NOT NULL,
	[IpRequest] [nvarchar](100) NULL,
	[Session] [nvarchar](max) NULL,
	[SessionId] [nvarchar](100) NULL,
	[TimeLogin] [datetime] NOT NULL,
	[TimeLogout] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SessionAuthorizes]    Script Date: 7/21/2023 6:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SessionAuthorizes](
	[Id] [uniqueidentifier] NOT NULL,
	[Username] [char](20) NOT NULL,
	[IpRequest] [nvarchar](100) NULL,
	[Session] [nvarchar](max) NOT NULL,
	[SessionId] [nvarchar](100) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShopSeafoods]    Script Date: 7/21/2023 6:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShopSeafoods](
	[Id] [uniqueidentifier] NOT NULL,
	[CodeRegion] [nvarchar](100) NOT NULL,
	[CodeDistrict] [nvarchar](100) NOT NULL,
	[CodeWard] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](200) NOT NULL,
	[TypeAddress] [int] NOT NULL,
	[Mobile] [nvarchar](20) NOT NULL,
	[Code] [nvarchar](100) NOT NULL,
	[Note] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAdmins]    Script Date: 7/21/2023 6:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAdmins](
	[Id] [uniqueidentifier] NOT NULL,
	[Username] [char](20) NOT NULL,
	[PasswordHash] [char](250) NOT NULL,
	[DisplayName] [nvarchar](100) NULL,
	[Avarta] [nvarchar](max) NULL,
	[Birthday] [date] NULL,
	[Sex] [int] NULL,
	[Mobile] [char](20) NOT NULL,
	[Email] [nvarchar](250) NULL,
	[Company] [nvarchar](250) NULL,
	[Roles] [nvarchar](100) NULL,
	[IsAdminUser] [bit] NULL,
	[IsLocked] [bit] NULL,
	[Session] [nvarchar](max) NULL,
	[SessionId] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/21/2023 6:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [uniqueidentifier] NOT NULL,
	[Username] [char](20) NOT NULL,
	[PasswordHash] [nvarchar](250) NOT NULL,
	[DisplayName] [nvarchar](100) NULL,
	[Avarta] [nvarchar](max) NULL,
	[Birthday] [date] NULL,
	[Sex] [int] NULL,
	[Mobile] [char](20) NOT NULL,
	[Email] [nvarchar](250) NULL,
	[Company] [nvarchar](250) NULL,
	[Roles] [nvarchar](100) NULL,
	[IsAdminUser] [bit] NULL,
	[IsLocked] [bit] NULL,
	[Session] [nvarchar](max) NULL,
	[SessionId] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK__Users__3214EC072E83A939] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vouchers]    Script Date: 7/21/2023 6:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vouchers](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Code] [nvarchar](100) NOT NULL,
	[TypeVoucher] [int] NOT NULL,
	[ReductionAmount] [int] NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[ConditionsApply] [int] NULL,
	[Note] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VoucherSeafoods]    Script Date: 7/21/2023 6:11:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VoucherSeafoods](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[TypeVoucher] [int] NOT NULL,
	[ReductionAmount] [int] NOT NULL,
	[Code] [nvarchar](100) NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[ConditionsApply] [int] NULL,
	[Note] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime] NULL,
	[DeletedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Addresses] ADD  DEFAULT ((0)) FOR [IsAddressMain]
GO
ALTER TABLE [dbo].[Addresses] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Baskets] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[CheckCodeFirebases] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[FavouriteProds] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Images] ADD  DEFAULT ((0)) FOR [IsImageMain]
GO
ALTER TABLE [dbo].[Images] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ProdInfos] ADD  DEFAULT ((0)) FOR [DeletedAt]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[SessionAuthorizeAdmins] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[SessionAuthorizes] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ShopSeafoods] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[UserAdmins] ADD  DEFAULT ((1)) FOR [Sex]
GO
ALTER TABLE [dbo].[UserAdmins] ADD  DEFAULT ((0)) FOR [IsAdminUser]
GO
ALTER TABLE [dbo].[UserAdmins] ADD  DEFAULT ((0)) FOR [IsLocked]
GO
ALTER TABLE [dbo].[UserAdmins] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Sex__7A3223E8]  DEFAULT ((1)) FOR [Sex]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__IsAdminUs__7B264821]  DEFAULT ((0)) FOR [IsAdminUser]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__IsLocked__7C1A6C5A]  DEFAULT ((0)) FOR [IsLocked]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__IsDeleted__7D0E9093]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Vouchers] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[VoucherSeafoods] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
USE [master]
GO
ALTER DATABASE [Seafood] SET  READ_WRITE 
GO
