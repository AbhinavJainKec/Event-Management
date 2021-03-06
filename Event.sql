USE [master]
GO
/****** Object:  Database [EventDB]    Script Date: 18-08-2021 05:10:32 ******/
CREATE DATABASE [EventDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EventDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\EventDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EventDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\EventDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [EventDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EventDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EventDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EventDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EventDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EventDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EventDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [EventDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EventDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EventDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EventDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EventDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EventDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EventDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EventDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EventDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EventDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EventDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EventDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EventDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EventDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EventDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EventDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EventDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EventDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EventDB] SET  MULTI_USER 
GO
ALTER DATABASE [EventDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EventDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EventDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EventDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EventDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EventDB] SET QUERY_STORE = OFF
GO
USE [EventDB]
GO
/****** Object:  Table [dbo].[BookingDetails]    Script Date: 18-08-2021 05:10:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingDetails](
	[BookingID] [int] IDENTITY(1,1) NOT NULL,
	[BookingNo] [varchar](50) NULL,
	[BookingDate] [date] NULL,
	[Createdby] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[BookingApproval] [varchar](1) NULL,
	[BookingApprovalDate] [datetime] NULL,
	[BookingCompletedFlag] [varchar](1) NULL,
 CONSTRAINT [PK_BookingDetails] PRIMARY KEY CLUSTERED 
(
	[BookingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingEquipment]    Script Date: 18-08-2021 05:10:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingEquipment](
	[BookingEquipmentID] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentID] [int] NULL,
	[Createdby] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[BookingID] [int] NOT NULL,
 CONSTRAINT [PK_BookingEquipment] PRIMARY KEY CLUSTERED 
(
	[BookingEquipmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingFlower]    Script Date: 18-08-2021 05:10:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingFlower](
	[BookingFlowerID] [int] IDENTITY(1,1) NOT NULL,
	[FlowerID] [int] NULL,
	[Createdby] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[BookingID] [int] NULL,
 CONSTRAINT [PK_BookingFlower] PRIMARY KEY CLUSTERED 
(
	[BookingFlowerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingFood]    Script Date: 18-08-2021 05:10:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingFood](
	[BookFoodID] [int] IDENTITY(1,1) NOT NULL,
	[FoodType] [char](1) NULL,
	[MealType] [char](1) NULL,
	[DishType] [int] NULL,
	[DishName] [int] NULL,
	[Createdby] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[BookingID] [int] NOT NULL,
 CONSTRAINT [PK_BookingFood] PRIMARY KEY CLUSTERED 
(
	[BookFoodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingLight]    Script Date: 18-08-2021 05:10:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingLight](
	[BookLightID] [int] IDENTITY(1,1) NOT NULL,
	[LightType] [char](1) NULL,
	[LightIDSelected] [int] NULL,
	[BookingID] [int] NULL,
	[Createdby] [int] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_BookingLight] PRIMARY KEY CLUSTERED 
(
	[BookLightID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingVenue]    Script Date: 18-08-2021 05:10:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingVenue](
	[BookingVenueID] [int] IDENTITY(1,1) NOT NULL,
	[VenueID] [int] NULL,
	[EventTypeID] [int] NULL,
	[GuestCount] [int] NULL,
	[Createdby] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[BookingID] [int] NULL,
 CONSTRAINT [PK_BookingVenue] PRIMARY KEY CLUSTERED 
(
	[BookingVenueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 18-08-2021 05:10:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](200) NULL,
	[StateID] [int] NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 18-08-2021 05:10:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dishtypes]    Script Date: 18-08-2021 05:10:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dishtypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Dishtype] [varchar](50) NULL,
 CONSTRAINT [PK_Dishtypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipment]    Script Date: 18-08-2021 05:10:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipment](
	[EquipmentID] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentName] [varchar](200) NULL,
	[EquipmentFilename] [varchar](200) NULL,
	[EquipmentFilePath] [varchar](200) NULL,
	[Createdby] [int] NULL,
	[Createdate] [datetime] NULL,
	[EquipmentCost] [int] NULL,
 CONSTRAINT [PK_Equipment] PRIMARY KEY CLUSTERED 
(
	[EquipmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 18-08-2021 05:10:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[EventID] [int] IDENTITY(1,1) NOT NULL,
	[EventType] [varchar](50) NULL,
	[Status] [char](1) NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Flower]    Script Date: 18-08-2021 05:10:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flower](
	[FlowerID] [int] IDENTITY(1,1) NOT NULL,
	[FlowerName] [varchar](200) NULL,
	[FlowerFilename] [varchar](200) NULL,
	[FlowerFilePath] [varchar](200) NULL,
	[Createdby] [int] NULL,
	[Createdate] [datetime] NULL,
	[FlowerCost] [int] NULL,
 CONSTRAINT [PK_Flower] PRIMARY KEY CLUSTERED 
(
	[FlowerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Food]    Script Date: 18-08-2021 05:10:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Food](
	[FoodID] [int] IDENTITY(1,1) NOT NULL,
	[FoodType] [char](1) NULL,
	[MealType] [char](1) NULL,
	[DishType] [int] NULL,
	[FoodName] [varchar](200) NULL,
	[FoodFilename] [varchar](200) NULL,
	[FoodFilePath] [varchar](200) NULL,
	[Createdby] [int] NULL,
	[Createdate] [datetime] NULL,
	[FoodCost] [int] NULL,
 CONSTRAINT [PK_Food] PRIMARY KEY CLUSTERED 
(
	[FoodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Light]    Script Date: 18-08-2021 05:10:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Light](
	[LightID] [int] IDENTITY(1,1) NOT NULL,
	[LightType] [char](1) NULL,
	[LightName] [varchar](200) NULL,
	[LightFilename] [varchar](200) NULL,
	[LightFilePath] [varchar](200) NULL,
	[Createdby] [int] NULL,
	[Createdate] [datetime] NULL,
	[LightCost] [int] NULL,
 CONSTRAINT [PK_Light] PRIMARY KEY CLUSTERED 
(
	[LightID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 18-08-2021 05:10:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Address] [varchar](100) NULL,
	[City] [int] NULL,
	[State] [int] NULL,
	[Country] [int] NULL,
	[Mobileno] [varchar](20) NULL,
	[EmailID] [varchar](100) NULL,
	[Username] [varchar](20) NULL,
	[Password] [varchar](100) NULL,
	[ConfirmPassword] [varchar](100) NULL,
	[Gender] [varchar](10) NULL,
	[Birthdate] [datetime] NULL,
	[RoleID] [int] NULL,
	[CreatedOn] [datetime] NULL,
 CONSTRAINT [PK_Registration] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 18-08-2021 05:10:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[Rolename] [varchar](100) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[States]    Script Date: 18-08-2021 05:10:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[States](
	[StateID] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [varchar](200) NULL,
	[CountryID] [int] NULL,
 CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venue]    Script Date: 18-08-2021 05:10:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venue](
	[VenueID] [int] IDENTITY(1,1) NOT NULL,
	[VenueName] [varchar](200) NULL,
	[VenueFilename] [varchar](200) NULL,
	[VenueFilePath] [varchar](200) NULL,
	[Createdby] [int] NULL,
	[Createdate] [datetime] NULL,
	[VenueCost] [int] NULL,
 CONSTRAINT [PK_Venue] PRIMARY KEY CLUSTERED 
(
	[VenueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BookingDetails] ON 

INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (1, N'BK-2016-1', CAST(N'2016-05-14' AS Date), 1, CAST(N'2016-05-10T09:52:00.403' AS DateTime), N'A', CAST(N'2017-07-21T09:48:42.977' AS DateTime), N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (24, N'BK-2017-24', CAST(N'2017-07-18' AS Date), 1, CAST(N'2017-07-18T23:00:25.057' AS DateTime), N'C', CAST(N'2017-07-21T10:50:09.933' AS DateTime), N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (25, N'BK-2017-25', CAST(N'2017-07-20' AS Date), 1, CAST(N'2017-07-19T09:07:15.350' AS DateTime), N'R', CAST(N'2017-09-03T14:21:45.447' AS DateTime), N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (26, N'BK-2017-26', CAST(N'2017-07-22' AS Date), 1, CAST(N'2017-07-21T10:01:37.140' AS DateTime), N'P', NULL, NULL)
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (27, N'BK-2017-27', CAST(N'2017-07-24' AS Date), 1, CAST(N'2017-07-21T10:05:12.240' AS DateTime), N'P', NULL, NULL)
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (28, N'BK-2017-28', CAST(N'2017-07-27' AS Date), 1, CAST(N'2017-07-21T10:07:07.020' AS DateTime), N'P', NULL, NULL)
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (29, N'BK-2017-29', CAST(N'2017-07-27' AS Date), 1, CAST(N'2017-07-21T10:10:33.927' AS DateTime), N'P', NULL, NULL)
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (30, N'BK-2017-30', CAST(N'2017-07-29' AS Date), 1, CAST(N'2017-07-21T10:19:35.417' AS DateTime), N'A', CAST(N'2021-08-13T01:27:38.210' AS DateTime), N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (31, N'BK-2017-31', CAST(N'2017-07-22' AS Date), 1, CAST(N'2017-07-21T10:39:06.570' AS DateTime), N'R', CAST(N'2017-07-21T10:42:47.043' AS DateTime), N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (32, N'BK-2017-32', CAST(N'2017-07-28' AS Date), 1, CAST(N'2017-07-22T13:59:09.487' AS DateTime), N'C', CAST(N'2017-07-22T14:00:46.503' AS DateTime), N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (33, N'BK-2017-33', CAST(N'2017-07-24' AS Date), 1, CAST(N'2017-07-22T16:19:23.703' AS DateTime), N'A', CAST(N'2017-07-22T16:23:13.777' AS DateTime), N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (34, N'BK-2017-34', CAST(N'2017-07-30' AS Date), 1, CAST(N'2017-07-23T10:27:40.050' AS DateTime), N'A', CAST(N'2017-07-23T10:28:28.567' AS DateTime), N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (35, N'BK-2017-35', CAST(N'2017-08-03' AS Date), 1, CAST(N'2017-07-25T09:26:23.737' AS DateTime), N'A', CAST(N'2017-07-25T09:27:35.817' AS DateTime), N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (36, N'BK-2017-36', CAST(N'2017-09-13' AS Date), 1, CAST(N'2017-09-03T14:25:30.677' AS DateTime), N'P', NULL, N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (37, N'BK-2017-37', CAST(N'2017-10-22' AS Date), 1, CAST(N'2017-10-15T18:50:16.220' AS DateTime), N'P', NULL, N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (38, N'BK-2021-38', CAST(N'2021-01-21' AS Date), 10, CAST(N'2021-01-08T08:58:13.950' AS DateTime), N'P', NULL, NULL)
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (39, N'BK-2021-39', CAST(N'2021-01-20' AS Date), 9, CAST(N'2021-01-08T09:13:01.463' AS DateTime), N'P', NULL, N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (40, N'BK-2021-40', CAST(N'2021-01-31' AS Date), 9, CAST(N'2021-01-08T09:14:25.737' AS DateTime), N'A', CAST(N'2021-01-10T14:21:05.927' AS DateTime), N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (41, N'BK-2021-41', CAST(N'2021-01-26' AS Date), 1, CAST(N'2021-01-10T14:14:49.047' AS DateTime), N'P', NULL, N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (42, N'BK-2021-42', CAST(N'2021-08-20' AS Date), 11, CAST(N'2021-08-02T21:50:21.397' AS DateTime), N'A', CAST(N'2021-08-02T22:02:16.353' AS DateTime), N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (43, N'BK-2021-43', CAST(N'2021-08-20' AS Date), 21, CAST(N'2021-08-11T13:42:24.123' AS DateTime), N'P', NULL, NULL)
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (44, N'BK-2021-44', CAST(N'2021-08-11' AS Date), 21, CAST(N'2021-08-11T14:03:57.660' AS DateTime), N'P', NULL, NULL)
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (45, N'BK-2021-45', CAST(N'2021-08-18' AS Date), 21, CAST(N'2021-08-11T16:41:25.773' AS DateTime), N'P', NULL, NULL)
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (46, N'BK-2021-46', CAST(N'2021-08-30' AS Date), 21, CAST(N'2021-08-11T16:42:17.657' AS DateTime), N'A', CAST(N'2021-08-11T16:45:40.537' AS DateTime), N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (47, N'BK-2021-47', CAST(N'2021-08-15' AS Date), 21, CAST(N'2021-08-13T00:22:45.920' AS DateTime), N'P', NULL, NULL)
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (48, N'BK-2021-48', CAST(N'2021-08-16' AS Date), 21, CAST(N'2021-08-13T00:29:54.523' AS DateTime), N'P', NULL, N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (49, N'BK-2021-49', CAST(N'2021-08-17' AS Date), 21, CAST(N'2021-08-13T12:32:29.407' AS DateTime), N'A', CAST(N'2021-08-13T12:34:26.457' AS DateTime), N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (50, N'BK-2021-50', CAST(N'2021-08-16' AS Date), 21, CAST(N'2021-08-13T20:05:44.923' AS DateTime), N'P', NULL, NULL)
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (51, N'BK-2021-51', CAST(N'2021-08-24' AS Date), 21, CAST(N'2021-08-14T18:02:46.343' AS DateTime), N'P', NULL, NULL)
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (52, N'BK-2021-52', CAST(N'2021-08-26' AS Date), 21, CAST(N'2021-08-14T18:26:23.687' AS DateTime), N'P', NULL, NULL)
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (53, N'BK-2021-53', CAST(N'2021-08-27' AS Date), 21, CAST(N'2021-08-15T01:15:24.810' AS DateTime), N'P', NULL, N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (54, N'BK-2021-54', CAST(N'2021-08-25' AS Date), 21, CAST(N'2021-08-17T10:58:45.243' AS DateTime), N'A', CAST(N'2021-08-17T11:01:52.677' AS DateTime), N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (55, N'BK-2021-55', CAST(N'2021-09-08' AS Date), 21, CAST(N'2021-08-17T15:06:17.063' AS DateTime), N'P', NULL, NULL)
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (56, N'BK-2021-56', CAST(N'2021-09-09' AS Date), 21, CAST(N'2021-08-17T15:07:38.130' AS DateTime), N'A', CAST(N'2021-08-17T15:09:07.413' AS DateTime), N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (57, N'BK-2021-57', CAST(N'2021-08-28' AS Date), 21, CAST(N'2021-08-17T15:34:48.120' AS DateTime), N'P', NULL, NULL)
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (58, N'BK-2021-58', CAST(N'2021-08-26' AS Date), 21, CAST(N'2021-08-17T15:37:28.870' AS DateTime), N'P', NULL, NULL)
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (59, N'BK-2021-59', CAST(N'2021-08-19' AS Date), 21, CAST(N'2021-08-17T15:41:12.447' AS DateTime), N'P', NULL, NULL)
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (60, N'BK-2021-60', CAST(N'2021-08-19' AS Date), 21, CAST(N'2021-08-17T15:43:33.453' AS DateTime), N'P', NULL, NULL)
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (61, N'BK-2021-61', CAST(N'2021-08-27' AS Date), 21, CAST(N'2021-08-17T15:46:34.660' AS DateTime), N'P', NULL, NULL)
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (62, N'BK-2021-62', CAST(N'2021-08-23' AS Date), 21, CAST(N'2021-08-17T15:52:50.233' AS DateTime), N'P', NULL, N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (63, N'BK-2021-63', CAST(N'2021-08-31' AS Date), 21, CAST(N'2021-08-17T16:01:47.803' AS DateTime), N'P', NULL, NULL)
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (64, N'BK-2021-64', CAST(N'2021-08-05' AS Date), 21, CAST(N'2021-08-17T16:07:46.600' AS DateTime), N'P', NULL, NULL)
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (65, N'BK-2021-65', CAST(N'2021-08-13' AS Date), 21, CAST(N'2021-08-17T16:21:40.840' AS DateTime), N'P', NULL, NULL)
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (66, N'BK-2021-66', CAST(N'2021-08-31' AS Date), 21, CAST(N'2021-08-17T16:26:50.873' AS DateTime), N'P', NULL, NULL)
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (67, N'BK-2021-67', CAST(N'2021-08-31' AS Date), 21, CAST(N'2021-08-17T16:33:42.583' AS DateTime), N'P', NULL, NULL)
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (68, N'BK-2021-68', CAST(N'2021-08-07' AS Date), 21, CAST(N'2021-08-17T16:37:25.340' AS DateTime), N'P', NULL, NULL)
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (69, N'BK-2021-69', CAST(N'2021-08-06' AS Date), 21, CAST(N'2021-08-17T16:39:29.000' AS DateTime), N'P', NULL, N'C')
INSERT [dbo].[BookingDetails] ([BookingID], [BookingNo], [BookingDate], [Createdby], [CreatedDate], [BookingApproval], [BookingApprovalDate], [BookingCompletedFlag]) VALUES (70, N'BK-2021-70', CAST(N'2021-09-01' AS Date), 21, CAST(N'2021-08-17T16:55:22.037' AS DateTime), N'C', CAST(N'2021-08-17T16:58:10.307' AS DateTime), N'C')
SET IDENTITY_INSERT [dbo].[BookingDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[BookingEquipment] ON 

INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (1, 1, 1, CAST(N'2016-05-10T09:52:06.107' AS DateTime), 1)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (20, 1, 1, CAST(N'2017-07-18T23:00:31.630' AS DateTime), 24)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (21, 1, 1, CAST(N'2017-07-19T09:07:25.157' AS DateTime), 25)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (22, 1, 1, CAST(N'2017-07-21T10:01:42.500' AS DateTime), 26)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (23, 1, 1, CAST(N'2017-07-21T10:05:17.420' AS DateTime), 27)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (24, 1, 1, CAST(N'2017-07-21T10:07:15.637' AS DateTime), 28)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (25, 1, 1, CAST(N'2017-07-21T10:10:38.253' AS DateTime), 29)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (26, 1, 1, CAST(N'2017-07-21T10:19:39.253' AS DateTime), 30)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (27, 1, 1, CAST(N'2017-07-21T10:39:10.200' AS DateTime), 31)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (28, 1, 1, CAST(N'2017-07-22T13:59:56.670' AS DateTime), 32)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (29, 2, 1, CAST(N'2017-07-22T13:59:56.683' AS DateTime), 32)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (30, 1, 1, CAST(N'2017-07-22T16:19:33.043' AS DateTime), 33)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (31, 2, 1, CAST(N'2017-07-22T16:19:33.073' AS DateTime), 33)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (32, 1, 1, CAST(N'2017-07-23T10:27:45.787' AS DateTime), 34)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (33, 1, 1, CAST(N'2017-07-25T09:26:29.890' AS DateTime), 35)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (34, 2, 1, CAST(N'2017-07-25T09:26:30.017' AS DateTime), 35)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (35, 1, 1, CAST(N'2017-09-03T14:27:15.503' AS DateTime), 36)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (36, 1, 1, CAST(N'2017-10-15T18:53:26.603' AS DateTime), 37)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (37, 2, 1, CAST(N'2017-10-15T18:53:26.617' AS DateTime), 37)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (38, 1, 9, CAST(N'2021-01-08T09:13:16.140' AS DateTime), 39)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (39, 2, 9, CAST(N'2021-01-08T09:13:16.170' AS DateTime), 39)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (40, 2, 9, CAST(N'2021-01-08T09:14:31.977' AS DateTime), 40)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (41, 1, 1, CAST(N'2021-01-10T14:15:22.270' AS DateTime), 41)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (42, 2, 1, CAST(N'2021-01-10T14:15:22.293' AS DateTime), 41)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (43, 1, 11, CAST(N'2021-08-02T21:50:27.617' AS DateTime), 42)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (44, 1, 21, CAST(N'2021-08-11T16:42:42.333' AS DateTime), 46)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (45, 2, 21, CAST(N'2021-08-13T00:32:26.163' AS DateTime), 48)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (46, 1, 21, CAST(N'2021-08-13T12:32:38.527' AS DateTime), 49)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (47, 1, 21, CAST(N'2021-08-15T01:13:34.347' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (48, 1, 21, CAST(N'2021-08-15T01:13:36.813' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (49, 1, 21, CAST(N'2021-08-15T01:13:37.930' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (50, 1, 21, CAST(N'2021-08-15T01:13:38.840' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (51, 1, 21, CAST(N'2021-08-15T01:13:39.710' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (52, 1, 21, CAST(N'2021-08-15T01:13:40.573' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (53, 1, 21, CAST(N'2021-08-15T01:13:41.410' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (54, 1, 21, CAST(N'2021-08-15T01:13:42.267' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (55, 1, 21, CAST(N'2021-08-15T01:13:45.713' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (56, 2, 21, CAST(N'2021-08-15T01:13:45.727' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (57, 1, 21, CAST(N'2021-08-15T01:13:46.613' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (58, 2, 21, CAST(N'2021-08-15T01:13:46.627' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (59, 1, 21, CAST(N'2021-08-15T01:13:47.410' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (60, 2, 21, CAST(N'2021-08-15T01:13:47.423' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (61, 1, 21, CAST(N'2021-08-15T01:13:48.287' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (62, 2, 21, CAST(N'2021-08-15T01:13:48.300' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (63, 1, 21, CAST(N'2021-08-15T01:13:49.147' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (64, 2, 21, CAST(N'2021-08-15T01:13:49.167' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (65, 1, 21, CAST(N'2021-08-15T01:13:50.003' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (66, 2, 21, CAST(N'2021-08-15T01:13:50.020' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (67, 1, 21, CAST(N'2021-08-15T01:13:50.947' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (68, 2, 21, CAST(N'2021-08-15T01:13:50.960' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (69, 1, 21, CAST(N'2021-08-15T01:14:43.147' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (70, 2, 21, CAST(N'2021-08-15T01:14:43.160' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (71, 1, 21, CAST(N'2021-08-15T01:14:44.407' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (72, 2, 21, CAST(N'2021-08-15T01:14:44.420' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (73, 1, 21, CAST(N'2021-08-15T01:14:45.920' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (74, 2, 21, CAST(N'2021-08-15T01:14:45.933' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (75, 1, 21, CAST(N'2021-08-15T01:14:46.747' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (76, 2, 21, CAST(N'2021-08-15T01:14:46.760' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (77, 1, 21, CAST(N'2021-08-15T01:14:46.943' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (78, 2, 21, CAST(N'2021-08-15T01:14:46.960' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (79, 1, 21, CAST(N'2021-08-15T01:14:47.100' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (80, 2, 21, CAST(N'2021-08-15T01:14:47.120' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (81, 1, 21, CAST(N'2021-08-15T01:14:47.267' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (82, 2, 21, CAST(N'2021-08-15T01:14:47.297' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (83, 1, 21, CAST(N'2021-08-15T01:14:47.433' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (84, 2, 21, CAST(N'2021-08-15T01:14:47.477' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (85, 1, 21, CAST(N'2021-08-15T01:14:47.650' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (86, 2, 21, CAST(N'2021-08-15T01:14:47.663' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (87, 1, 21, CAST(N'2021-08-15T01:14:47.993' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (88, 2, 21, CAST(N'2021-08-15T01:14:48.003' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (89, 1, 21, CAST(N'2021-08-15T01:14:48.240' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (90, 2, 21, CAST(N'2021-08-15T01:14:48.257' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (91, 1, 21, CAST(N'2021-08-15T01:14:48.563' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (92, 2, 21, CAST(N'2021-08-15T01:14:48.583' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (93, 1, 21, CAST(N'2021-08-15T01:14:48.853' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (94, 2, 21, CAST(N'2021-08-15T01:14:48.867' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (95, 1, 21, CAST(N'2021-08-15T01:14:49.103' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (96, 2, 21, CAST(N'2021-08-15T01:14:49.117' AS DateTime), 0)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (97, 1, 21, CAST(N'2021-08-15T01:23:18.920' AS DateTime), 53)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (98, 1, 21, CAST(N'2021-08-15T01:56:45.543' AS DateTime), 53)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (99, 1, 21, CAST(N'2021-08-15T01:58:03.080' AS DateTime), 53)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (100, 2, 21, CAST(N'2021-08-17T10:59:16.837' AS DateTime), 54)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (101, 2, 21, CAST(N'2021-08-17T15:06:24.330' AS DateTime), 55)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (102, 2, 21, CAST(N'2021-08-17T15:07:44.340' AS DateTime), 56)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (103, 2, 21, CAST(N'2021-08-17T15:37:36.243' AS DateTime), 58)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (104, 2, 21, CAST(N'2021-08-17T16:26:56.503' AS DateTime), 66)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (105, 2, 21, CAST(N'2021-08-17T16:33:47.130' AS DateTime), 67)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (106, 2, 21, CAST(N'2021-08-17T16:37:32.617' AS DateTime), 68)
INSERT [dbo].[BookingEquipment] ([BookingEquipmentID], [EquipmentID], [Createdby], [CreatedDate], [BookingID]) VALUES (107, 1, 21, CAST(N'2021-08-17T16:55:38.093' AS DateTime), 70)
SET IDENTITY_INSERT [dbo].[BookingEquipment] OFF
GO
SET IDENTITY_INSERT [dbo].[BookingFlower] ON 

INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (1, 1, 1, CAST(N'2016-05-10T09:52:23.500' AS DateTime), 1)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (2, 1, 1, CAST(N'2017-07-18T23:00:47.720' AS DateTime), 24)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (4, 1, 1, CAST(N'2017-07-19T09:07:38.923' AS DateTime), 25)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (5, 1, 1, CAST(N'2017-07-21T10:21:14.210' AS DateTime), 30)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (6, 1, 1, CAST(N'2017-07-21T10:39:27.733' AS DateTime), 31)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (7, 1, 1, CAST(N'2017-07-22T14:00:14.283' AS DateTime), 32)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (8, 2, 1, CAST(N'2017-07-22T14:00:14.317' AS DateTime), 32)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (9, 1, 1, CAST(N'2017-07-22T16:19:58.033' AS DateTime), 33)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (10, 2, 1, CAST(N'2017-07-23T10:28:02.587' AS DateTime), 34)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (11, 1, 1, CAST(N'2017-07-25T09:26:48.337' AS DateTime), 35)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (12, 2, 1, CAST(N'2017-07-25T09:26:48.423' AS DateTime), 35)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (13, 1, 1, CAST(N'2017-09-03T14:29:12.680' AS DateTime), 36)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (14, 1, 1, CAST(N'2017-10-15T19:08:54.120' AS DateTime), 37)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (15, 2, 9, CAST(N'2021-01-08T09:13:51.730' AS DateTime), 39)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (16, 2, 9, CAST(N'2021-01-08T09:14:58.067' AS DateTime), 40)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (17, 2, 1, CAST(N'2021-01-10T14:16:52.030' AS DateTime), 41)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (18, 1, 11, CAST(N'2021-08-02T21:51:00.217' AS DateTime), 42)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (19, 1, 21, CAST(N'2021-08-11T16:43:58.660' AS DateTime), 46)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (20, 2, 21, CAST(N'2021-08-13T00:33:16.287' AS DateTime), 48)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (21, 2, 21, CAST(N'2021-08-13T12:33:15.580' AS DateTime), 49)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (22, 2, 21, CAST(N'2021-08-15T01:42:21.787' AS DateTime), 53)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (23, 2, 21, CAST(N'2021-08-15T01:43:06.383' AS DateTime), 53)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (24, 2, 21, CAST(N'2021-08-15T01:44:34.750' AS DateTime), 53)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (25, 1, 21, CAST(N'2021-08-15T01:45:52.023' AS DateTime), 53)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (26, 1, 21, CAST(N'2021-08-15T01:46:59.740' AS DateTime), 53)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (27, 1, 21, CAST(N'2021-08-15T01:47:19.947' AS DateTime), 53)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (28, 2, 21, CAST(N'2021-08-15T01:48:00.420' AS DateTime), 53)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (29, 2, 21, CAST(N'2021-08-15T01:57:37.550' AS DateTime), 53)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (30, 2, 21, CAST(N'2021-08-15T02:00:01.053' AS DateTime), 53)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (31, 1, 21, CAST(N'2021-08-17T11:00:19.607' AS DateTime), 54)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (32, 1, 21, CAST(N'2021-08-17T15:04:12.917' AS DateTime), 0)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (33, 2, 21, CAST(N'2021-08-17T15:08:05.243' AS DateTime), 56)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (34, NULL, 21, CAST(N'2021-08-17T16:40:02.230' AS DateTime), 69)
INSERT [dbo].[BookingFlower] ([BookingFlowerID], [FlowerID], [Createdby], [CreatedDate], [BookingID]) VALUES (35, NULL, 21, CAST(N'2021-08-17T16:56:17.620' AS DateTime), 70)
SET IDENTITY_INSERT [dbo].[BookingFlower] OFF
GO
SET IDENTITY_INSERT [dbo].[BookingFood] ON 

INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (1, N'1', N'1', 1, 1, 1, CAST(N'2016-05-10T09:52:12.223' AS DateTime), 1)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (24, N'1', N'2', 1, 1, 1, CAST(N'2017-07-18T23:00:41.313' AS DateTime), 24)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (25, N'1', N'2', 1, 2, 1, CAST(N'2017-07-18T23:00:41.327' AS DateTime), 24)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (26, N'1', N'1', 1, 2, 1, CAST(N'2017-07-19T09:07:33.220' AS DateTime), 25)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (27, N'1', N'1', 1, 1, 1, CAST(N'2017-07-21T10:10:45.993' AS DateTime), 29)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (28, N'1', N'1', 1, 1, 1, CAST(N'2017-07-21T10:19:50.740' AS DateTime), 30)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (29, N'1', N'1', 1, 2, 1, CAST(N'2017-07-21T10:19:50.803' AS DateTime), 30)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (30, N'1', N'1', 1, 3, 1, CAST(N'2017-07-21T10:19:50.820' AS DateTime), 30)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (31, N'1', N'1', 2, 1, 1, CAST(N'2017-07-21T10:39:17.557' AS DateTime), 31)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (32, N'1', N'1', 2, 3, 1, CAST(N'2017-07-21T10:39:17.573' AS DateTime), 31)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (33, N'1', N'1', 2, 4, 1, CAST(N'2017-07-21T10:39:17.587' AS DateTime), 31)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (34, N'1', N'2', 1, 1, 1, CAST(N'2017-07-22T14:00:03.517' AS DateTime), 32)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (35, N'1', N'2', 1, 2, 1, CAST(N'2017-07-22T14:00:03.533' AS DateTime), 32)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (36, N'1', N'2', 1, 3, 1, CAST(N'2017-07-22T14:00:03.537' AS DateTime), 32)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (37, N'2', N'1', 1, 2, 1, CAST(N'2017-07-22T16:19:43.160' AS DateTime), 33)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (38, N'2', N'1', 1, 3, 1, CAST(N'2017-07-22T16:19:43.207' AS DateTime), 33)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (39, N'1', N'2', 1, 1, 1, CAST(N'2017-07-23T10:27:52.820' AS DateTime), 34)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (40, N'1', N'2', 1, 2, 1, CAST(N'2017-07-23T10:27:52.890' AS DateTime), 34)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (41, N'2', N'1', 1, 1, 1, CAST(N'2017-07-25T09:26:37.997' AS DateTime), 35)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (42, N'2', N'1', 1, 2, 1, CAST(N'2017-07-25T09:26:38.090' AS DateTime), 35)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (43, N'2', N'1', 1, 3, 1, CAST(N'2017-07-25T09:26:38.097' AS DateTime), 35)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (44, N'1', N'1', 1, 1, 1, CAST(N'2017-09-03T14:27:57.493' AS DateTime), 36)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (45, N'1', N'1', 1, 2, 1, CAST(N'2017-09-03T14:27:57.510' AS DateTime), 36)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (46, N'1', N'1', 1, 1, 1, CAST(N'2017-10-15T18:57:16.343' AS DateTime), 37)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (47, N'1', N'1', 1, 2, 1, CAST(N'2017-10-15T18:57:16.367' AS DateTime), 37)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (48, N'1', N'1', 1, 4, 1, CAST(N'2017-10-15T18:57:16.377' AS DateTime), 37)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (49, N'1', N'1', 1, 1, 9, CAST(N'2021-01-08T09:13:36.437' AS DateTime), 39)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (50, N'1', N'1', 1, 2, 9, CAST(N'2021-01-08T09:13:36.463' AS DateTime), 39)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (51, N'1', N'1', 1, 3, 9, CAST(N'2021-01-08T09:13:36.480' AS DateTime), 39)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (52, N'1', N'1', 1, 4, 9, CAST(N'2021-01-08T09:13:36.527' AS DateTime), 39)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (53, N'1', N'2', 2, 1, 9, CAST(N'2021-01-08T09:14:42.783' AS DateTime), 40)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (54, N'1', N'1', 1, 1, 1, CAST(N'2021-01-10T14:16:27.043' AS DateTime), 41)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (55, N'1', N'1', 1, 2, 1, CAST(N'2021-01-10T14:16:27.087' AS DateTime), 41)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (56, N'1', N'1', 1, 3, 1, CAST(N'2021-01-10T14:16:27.130' AS DateTime), 41)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (57, N'1', N'1', 1, 4, 1, CAST(N'2021-01-10T14:16:27.163' AS DateTime), 41)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (58, N'1', N'1', 1, 1, 11, CAST(N'2021-08-02T21:50:40.283' AS DateTime), 42)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (59, N'1', N'1', 1, 2, 11, CAST(N'2021-08-02T21:50:40.307' AS DateTime), 42)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (60, N'1', N'1', 2, 1, 21, CAST(N'2021-08-11T16:43:04.593' AS DateTime), 46)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (61, N'1', N'1', 2, 2, 21, CAST(N'2021-08-11T16:43:04.640' AS DateTime), 46)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (62, N'1', N'1', 2, 3, 21, CAST(N'2021-08-11T16:43:04.653' AS DateTime), 46)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (63, N'1', N'1', 1, 1, 21, CAST(N'2021-08-13T00:32:43.817' AS DateTime), 48)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (64, N'1', N'1', 2, 3, 21, CAST(N'2021-08-13T12:32:53.803' AS DateTime), 49)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (65, N'1', N'1', 1, 1, 21, CAST(N'2021-08-15T01:31:53.357' AS DateTime), 53)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (66, N'1', N'1', 1, 1, 21, CAST(N'2021-08-15T01:57:08.010' AS DateTime), 53)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (67, N'1', N'1', 1, 1, 21, CAST(N'2021-08-15T01:58:10.487' AS DateTime), 53)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (68, N'1', N'1', 2, 1, 21, CAST(N'2021-08-17T10:59:47.040' AS DateTime), 54)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (69, N'1', N'1', 2, 4, 21, CAST(N'2021-08-17T10:59:47.113' AS DateTime), 54)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (70, N'1', N'1', 1, 1, 21, CAST(N'2021-08-17T15:07:55.030' AS DateTime), 56)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (71, N'1', N'1', 1, 1, 21, CAST(N'2021-08-17T15:46:44.557' AS DateTime), 61)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (72, N'1', N'1', 1, 1, 21, CAST(N'2021-08-17T15:53:00.690' AS DateTime), 62)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (73, N'1', N'1', 2, 1, 21, CAST(N'2021-08-17T16:07:56.293' AS DateTime), 64)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (74, N'1', N'1', 2, 1, 21, CAST(N'2021-08-17T16:56:01.667' AS DateTime), 70)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (75, N'1', N'1', 2, 2, 21, CAST(N'2021-08-17T16:56:01.710' AS DateTime), 70)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (76, N'1', N'1', 2, 3, 21, CAST(N'2021-08-17T16:56:01.723' AS DateTime), 70)
INSERT [dbo].[BookingFood] ([BookFoodID], [FoodType], [MealType], [DishType], [DishName], [Createdby], [CreatedDate], [BookingID]) VALUES (77, N'1', N'1', 2, 4, 21, CAST(N'2021-08-17T16:56:01.730' AS DateTime), 70)
SET IDENTITY_INSERT [dbo].[BookingFood] OFF
GO
SET IDENTITY_INSERT [dbo].[BookingLight] ON 

INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (1, N'1', 1, 1, 1, CAST(N'2016-05-10T09:52:17.343' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (2, N'1', 1, 24, 1, CAST(N'2017-07-19T09:50:15.410' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (3, N'1', 1, 1, 1, CAST(N'2017-07-21T10:10:51.507' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (4, N'1', 1, 30, 1, CAST(N'2017-07-21T10:19:59.743' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (5, N'1', 1, 31, 1, CAST(N'2017-07-21T10:39:23.447' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (6, N'1', 1, 32, 1, CAST(N'2017-07-22T14:00:09.803' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (7, N'1', 2, 32, 1, CAST(N'2017-07-22T14:00:09.967' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (8, N'2', 1, 33, 1, CAST(N'2017-07-22T16:19:51.680' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (9, N'2', 1, 34, 1, CAST(N'2017-07-23T10:27:58.413' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (10, N'2', 1, 35, 1, CAST(N'2017-07-25T09:26:43.507' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (11, N'2', 2, 35, 1, CAST(N'2017-07-25T09:26:43.573' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (12, N'1', 1, 36, 1, CAST(N'2017-09-03T14:28:33.827' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (13, N'2', 1, 37, 1, CAST(N'2017-10-15T19:07:09.107' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (14, N'2', 2, 37, 1, CAST(N'2017-10-15T19:07:09.147' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (15, N'1', 1, 39, 9, CAST(N'2021-01-08T09:13:44.407' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (16, N'1', 2, 39, 9, CAST(N'2021-01-08T09:13:44.437' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (17, N'1', 2, 40, 9, CAST(N'2021-01-08T09:14:53.963' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (18, N'1', 1, 41, 1, CAST(N'2021-01-10T14:16:42.597' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (19, N'2', 1, 42, 11, CAST(N'2021-08-02T21:50:55.320' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (20, N'2', 2, 42, 11, CAST(N'2021-08-02T21:50:55.340' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (21, N'1', 1, 46, 21, CAST(N'2021-08-11T16:43:42.970' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (22, N'1', 1, 48, 21, CAST(N'2021-08-13T00:33:05.747' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (23, N'1', 2, 49, 21, CAST(N'2021-08-13T12:33:04.343' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (24, N'1', 2, 53, 21, CAST(N'2021-08-15T01:36:41.997' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (25, N'1', 2, 53, 21, CAST(N'2021-08-15T01:41:38.163' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (26, N'1', 2, 53, 21, CAST(N'2021-08-15T01:41:41.043' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (27, N'1', 2, 53, 21, CAST(N'2021-08-15T01:42:13.657' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (28, N'1', 2, 53, 21, CAST(N'2021-08-15T01:43:01.707' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (29, N'1', 2, 53, 21, CAST(N'2021-08-15T01:44:30.560' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (30, N'1', 1, 53, 21, CAST(N'2021-08-15T01:45:48.173' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (31, N'1', 1, 53, 21, CAST(N'2021-08-15T01:57:16.583' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (32, N'1', 1, 53, 21, CAST(N'2021-08-15T01:58:52.330' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (33, N'2', 2, 54, 21, CAST(N'2021-08-17T11:00:04.517' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (34, N'1', 2, 55, 21, CAST(N'2021-08-17T15:06:33.303' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (35, N'1', 2, 59, 21, CAST(N'2021-08-17T15:41:21.053' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (36, N'1', 2, 60, 21, CAST(N'2021-08-17T15:43:43.340' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (37, N'1', 1, 63, 21, CAST(N'2021-08-17T16:01:56.637' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (38, N'1', 2, 65, 21, CAST(N'2021-08-17T16:21:51.483' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (39, N'1', 2, 66, 21, CAST(N'2021-08-17T16:27:05.177' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (40, N'1', 1, 67, 21, CAST(N'2021-08-17T16:33:54.370' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (41, N'1', 2, 69, 21, CAST(N'2021-08-17T16:39:39.853' AS DateTime))
INSERT [dbo].[BookingLight] ([BookLightID], [LightType], [LightIDSelected], [BookingID], [Createdby], [CreatedDate]) VALUES (42, N'2', 2, 70, 21, CAST(N'2021-08-17T16:56:11.763' AS DateTime))
SET IDENTITY_INSERT [dbo].[BookingLight] OFF
GO
SET IDENTITY_INSERT [dbo].[BookingVenue] ON 

INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (1, 1, 1, 500, 1, CAST(N'2016-05-10T09:52:00.510' AS DateTime), 1)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (24, 1, 1, 500, 1, CAST(N'2017-07-18T23:00:25.263' AS DateTime), 24)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (25, 1, 2, 500, 1, CAST(N'2017-07-19T09:07:16.247' AS DateTime), 25)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (26, 1, 1, 50, 1, CAST(N'2017-07-21T10:01:37.337' AS DateTime), 26)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (27, 1, 1, 50, 1, CAST(N'2017-07-21T10:05:12.310' AS DateTime), 27)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (28, 1, 1, 55, 1, CAST(N'2017-07-21T10:07:07.040' AS DateTime), 28)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (29, 3, 2, 658, 1, CAST(N'2017-07-21T10:10:34.117' AS DateTime), 29)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (30, 1, 1, 500, 1, CAST(N'2017-07-21T10:19:35.667' AS DateTime), 30)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (31, 2, 1, 4547, 1, CAST(N'2017-07-21T10:39:06.753' AS DateTime), 31)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (32, 1, 2, 5000, 1, CAST(N'2017-07-22T13:59:09.923' AS DateTime), 32)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (33, 2, 6, 5000, 1, CAST(N'2017-07-22T16:19:23.930' AS DateTime), 33)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (34, 1, 1, 500, 1, CAST(N'2017-07-23T10:27:40.650' AS DateTime), 34)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (35, 1, 1, 600, 1, CAST(N'2017-07-25T09:26:24.473' AS DateTime), 35)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (36, 1, 1, 200, 1, CAST(N'2017-09-03T14:25:30.893' AS DateTime), 36)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (37, 1, 3, 200, 1, CAST(N'2017-10-15T18:50:16.627' AS DateTime), 37)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (38, 2, 3, 8, 10, CAST(N'2021-01-08T08:58:14.057' AS DateTime), 38)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (39, 1, 1, 8, 9, CAST(N'2021-01-08T09:13:01.540' AS DateTime), 39)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (40, 2, 3, 88, 9, CAST(N'2021-01-08T09:14:25.787' AS DateTime), 40)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (41, 2, 6, 5000, 1, CAST(N'2021-01-10T14:14:49.257' AS DateTime), 41)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (42, 1, 1, 600, 11, CAST(N'2021-08-02T21:50:21.460' AS DateTime), 42)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (43, 2, 1, 99, 21, CAST(N'2021-08-11T13:42:24.613' AS DateTime), 43)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (44, 1, 1, 600, 21, CAST(N'2021-08-11T14:03:58.543' AS DateTime), 44)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (45, 1, 1, 600, 21, CAST(N'2021-08-11T16:41:25.910' AS DateTime), 45)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (46, 2, 2, 66, 21, CAST(N'2021-08-11T16:42:17.710' AS DateTime), 46)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (47, 1, 1, 6000, 21, CAST(N'2021-08-13T00:22:46.523' AS DateTime), 47)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (48, 1, 6, 600, 21, CAST(N'2021-08-13T00:29:54.983' AS DateTime), 48)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (49, 1, 1, 600, 21, CAST(N'2021-08-13T12:32:29.780' AS DateTime), 49)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (50, 1, 1, 600, 21, CAST(N'2021-08-13T20:05:45.080' AS DateTime), 50)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (51, 1, 1, 766, 21, CAST(N'2021-08-14T18:02:47.083' AS DateTime), 51)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (52, 1, 2, 600, 21, CAST(N'2021-08-14T18:26:24.303' AS DateTime), 52)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (53, 1, 1, 500, 21, CAST(N'2021-08-15T01:15:24.883' AS DateTime), 53)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (54, 1, 1, 600, 21, CAST(N'2021-08-17T10:58:45.810' AS DateTime), 54)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (55, 1, 1, 6000, 21, CAST(N'2021-08-17T15:06:17.237' AS DateTime), 55)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (56, 1, 1, 650, 21, CAST(N'2021-08-17T15:07:38.163' AS DateTime), 56)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (57, 2, 2, 600, 21, CAST(N'2021-08-17T15:34:48.287' AS DateTime), 57)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (58, 2, 2, 877, 21, CAST(N'2021-08-17T15:37:28.900' AS DateTime), 58)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (59, 1, 1, 657, 21, CAST(N'2021-08-17T15:41:12.620' AS DateTime), 59)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (60, 2, 1, 44, 21, CAST(N'2021-08-17T15:43:33.630' AS DateTime), 60)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (61, 2, 3, 465, 21, CAST(N'2021-08-17T15:46:34.843' AS DateTime), 61)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (62, 1, 1, 456, 21, CAST(N'2021-08-17T15:52:50.400' AS DateTime), 62)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (63, 2, 2, 56, 21, CAST(N'2021-08-17T16:01:47.970' AS DateTime), 63)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (64, 2, 2, 67, 21, CAST(N'2021-08-17T16:07:46.630' AS DateTime), 64)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (65, 1, 1, 456, 21, CAST(N'2021-08-17T16:21:41.013' AS DateTime), 65)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (66, 1, 1, 567, 21, CAST(N'2021-08-17T16:26:51.040' AS DateTime), 66)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (67, 3, 1, 787, 21, CAST(N'2021-08-17T16:33:42.750' AS DateTime), 67)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (68, 2, 2, 34, 21, CAST(N'2021-08-17T16:37:25.503' AS DateTime), 68)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (69, 1, 2, 55, 21, CAST(N'2021-08-17T16:39:29.173' AS DateTime), 69)
INSERT [dbo].[BookingVenue] ([BookingVenueID], [VenueID], [EventTypeID], [GuestCount], [Createdby], [CreatedDate], [BookingID]) VALUES (70, 1, 3, 1000, 21, CAST(N'2021-08-17T16:55:22.220' AS DateTime), 70)
SET IDENTITY_INSERT [dbo].[BookingVenue] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (1, N'Delhi', 1)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (2, N'New Delhi', 1)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (3, N'Mumbai', 2)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (4, N'Pune', 2)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (5, N'Nagpur', 2)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (6, N'Thane', 2)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (7, N'Ghaziabad', 3)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (8, N'Lucknow', 3)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (9, N'Kanpur', 3)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (10, N'Baghpat', 3)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (11, N'Meerut', 3)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (12, N'Gurgaon', 4)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (13, N'Sonipat', 4)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (14, N'Karnal', 4)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (15, N'Rohtak', 4)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (16, N'Newark', 5)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (17, N'Paterson', 5)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (18, N'San Antonio', 6)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (19, N'Austin', 6)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (20, N'Armstrong', 7)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (21, N'Castletown', 7)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (22, N'Barrington', 8)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (23, N'Portsmouth', 8)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (24, N'Reichstag', 9)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (25, N'Potsdam Square', 9)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (26, N'Stade', 10)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (27, N'Cuxhaven', 10)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (28, N'Huajing', 11)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (29, N'Shanyang', 11)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (30, N'Henanzhai', 12)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (31, N'Jiuxian', 12)
INSERT [dbo].[City] ([CityID], [CityName], [StateID]) VALUES (32, N'Lucheng', 12)
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([CountryID], [Name]) VALUES (1, N'India')
INSERT [dbo].[Country] ([CountryID], [Name]) VALUES (2, N'China')
INSERT [dbo].[Country] ([CountryID], [Name]) VALUES (3, N'USA')
INSERT [dbo].[Country] ([CountryID], [Name]) VALUES (4, N'UK')
INSERT [dbo].[Country] ([CountryID], [Name]) VALUES (5, N'Germany')
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
SET IDENTITY_INSERT [dbo].[Dishtypes] ON 

INSERT [dbo].[Dishtypes] ([ID], [Dishtype]) VALUES (1, N'Deluxe')
INSERT [dbo].[Dishtypes] ([ID], [Dishtype]) VALUES (2, N'Regular')
SET IDENTITY_INSERT [dbo].[Dishtypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Equipment] ON 

INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName], [EquipmentFilename], [EquipmentFilePath], [Createdby], [Createdate], [EquipmentCost]) VALUES (1, N'DJ', N'2011-10-15 - Wedding - Brito-Lopez - Flip''s Setup - 640x512x256.jpg', N'EquipmentImages/c1bf21d9-361e-400b-b706-eb2067bd6576.jpg', 2, CAST(N'2017-07-14T00:00:41.177' AS DateTime), 5000)
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName], [EquipmentFilename], [EquipmentFilePath], [Createdby], [Createdate], [EquipmentCost]) VALUES (2, N'Speakers and Mike', N'speaker.png', N'EquipmentImages/6671822f-4a69-4aa5-a75f-a279328cf334.png', 2, CAST(N'2017-07-14T00:00:41.177' AS DateTime), 2000)
SET IDENTITY_INSERT [dbo].[Equipment] OFF
GO
SET IDENTITY_INSERT [dbo].[Event] ON 

INSERT [dbo].[Event] ([EventID], [EventType], [Status]) VALUES (1, N'Wedding Party', N'1')
INSERT [dbo].[Event] ([EventID], [EventType], [Status]) VALUES (2, N'Family Function', N'2')
INSERT [dbo].[Event] ([EventID], [EventType], [Status]) VALUES (3, N'Birthday Party', N'3')
INSERT [dbo].[Event] ([EventID], [EventType], [Status]) VALUES (4, N'Marriage Anniversary', N'4')
INSERT [dbo].[Event] ([EventID], [EventType], [Status]) VALUES (5, N'Farewell Party', N'5')
INSERT [dbo].[Event] ([EventID], [EventType], [Status]) VALUES (6, N'College Event', N'6')
SET IDENTITY_INSERT [dbo].[Event] OFF
GO
SET IDENTITY_INSERT [dbo].[Flower] ON 

INSERT [dbo].[Flower] ([FlowerID], [FlowerName], [FlowerFilename], [FlowerFilePath], [Createdby], [Createdate], [FlowerCost]) VALUES (1, N'Orchids', N'Orchid.jpg', N'FlowerImages/70f41879-909d-45a8-a6d9-dba7bb33f0d6.jpg', 2, CAST(N'2017-07-14T00:00:41.177' AS DateTime), 3000)
INSERT [dbo].[Flower] ([FlowerID], [FlowerName], [FlowerFilename], [FlowerFilePath], [Createdby], [Createdate], [FlowerCost]) VALUES (2, N'red wedding flower-bouquets', N'red-wedding-flower-bouquets-collection.jpg', N'FlowerImages/cbd90318-99e7-45c2-bddb-3a3e2089208f.jpg', 2, CAST(N'2017-07-14T00:00:41.177' AS DateTime), 3000)
SET IDENTITY_INSERT [dbo].[Flower] OFF
GO
SET IDENTITY_INSERT [dbo].[Food] ON 

INSERT [dbo].[Food] ([FoodID], [FoodType], [MealType], [DishType], [FoodName], [FoodFilename], [FoodFilePath], [Createdby], [Createdate], [FoodCost]) VALUES (1, N'1', N'1', 1, N'South India thali', N'south_indian_thali.jpg', N'FoodImages/411ea912-758d-4f02-b9e0-ea9ca9e95816.jpg', 2, CAST(N'2017-07-14T10:42:00.063' AS DateTime), 250)
INSERT [dbo].[Food] ([FoodID], [FoodType], [MealType], [DishType], [FoodName], [FoodFilename], [FoodFilePath], [Createdby], [Createdate], [FoodCost]) VALUES (2, N'1', N'2', 2, N'North Indian Thali', N'maxim-s-cafe.jpg', N'FoodImages/6406e92b-9002-4c58-98ed-1be4e6c6d8fd.jpg', 2, CAST(N'2017-07-14T10:42:00.063' AS DateTime), 250)
INSERT [dbo].[Food] ([FoodID], [FoodType], [MealType], [DishType], [FoodName], [FoodFilename], [FoodFilePath], [Createdby], [Createdate], [FoodCost]) VALUES (3, N'2', N'1', 1, N'Punjab Thali', N'o.jpg', N'FoodImages/e0f91736-4988-4569-b6b5-749c19b9fd14.jpg', 2, CAST(N'2017-07-14T10:42:00.063' AS DateTime), 300)
INSERT [dbo].[Food] ([FoodID], [FoodType], [MealType], [DishType], [FoodName], [FoodFilename], [FoodFilePath], [Createdby], [Createdate], [FoodCost]) VALUES (4, N'2', N'2', 1, N'Maharashtrian thali', N'a-thali-plate.jpg', N'FoodImages/f482caad-1826-444c-8d72-a2bacd6f496b.jpg', 2, CAST(N'2017-07-14T10:42:00.063' AS DateTime), 300)
SET IDENTITY_INSERT [dbo].[Food] OFF
GO
SET IDENTITY_INSERT [dbo].[Light] ON 

INSERT [dbo].[Light] ([LightID], [LightType], [LightName], [LightFilename], [LightFilePath], [Createdby], [Createdate], [LightCost]) VALUES (1, N'1', N'String Lights', N'string-lights-wedding.jpg', N'LightImages/0dfa03d5-2f9d-44f0-87ad-f07e0f0b7224.jpg', 2, CAST(N'2017-07-15T10:03:20.923' AS DateTime), 3000)
INSERT [dbo].[Light] ([LightID], [LightType], [LightName], [LightFilename], [LightFilePath], [Createdby], [Createdate], [LightCost]) VALUES (2, N'2', N'Acqualina outdoor Lights', N'Acqualina-outdoor-wedding-lighting-12.jpg', N'LightImages/84a52172-2dae-43d3-ba8b-e6126ef7d248.jpg', 2, CAST(N'2017-07-15T10:03:20.923' AS DateTime), 5000)
SET IDENTITY_INSERT [dbo].[Light] OFF
GO
SET IDENTITY_INSERT [dbo].[Registration] ON 

INSERT [dbo].[Registration] ([ID], [Name], [Address], [City], [State], [Country], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn]) VALUES (18, N'Abhinav Jain', N'East Jyoti Nagar, Shahdara', 1, 1, 1, N'9910035591', N'Admin@gmail.com', N'AdminUser', N'AV9s/LZQmi2kuPln2kowHA==', N'AV9s/LZQmi2kuPln2kowHA==', N'M', CAST(N'2000-09-21T00:00:00.000' AS DateTime), 1, CAST(N'2021-08-11T00:37:09.963' AS DateTime))
INSERT [dbo].[Registration] ([ID], [Name], [Address], [City], [State], [Country], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn]) VALUES (19, N'Abhinav Jain', N'East Jyoti Nagar, Shahdara', 1, 1, 1, N'9910035591', N'SuperAdmin@gmail.com', N'SuperAdminUser', N'kY89IsiE2FiQKyB+kq7wPA==', N'kY89IsiE2FiQKyB+kq7wPA==', N'M', CAST(N'2000-09-21T00:00:00.000' AS DateTime), 3, CAST(N'2021-08-11T00:37:46.923' AS DateTime))
INSERT [dbo].[Registration] ([ID], [Name], [Address], [City], [State], [Country], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn]) VALUES (20, N'Abhinav Jain', N'East Jyoti Nagar, Shahdara', 1, 1, 1, N'9910035591', N'AnonymousUser@gmail.com', N'AnonymousUser', N'ZCLtlKAnsl6qn7JonBHURw==', N'ZCLtlKAnsl6qn7JonBHURw==', N'M', CAST(N'2000-09-21T00:00:00.000' AS DateTime), 4, CAST(N'2021-08-11T00:40:10.653' AS DateTime))
INSERT [dbo].[Registration] ([ID], [Name], [Address], [City], [State], [Country], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn]) VALUES (21, N'Abhinav Jain', N'East Jyoti Nagar, Shahdara', 1, 1, 1, N'9910035591', N'SimpleUser@gmail.com', N'SimpleUser', N'H5UUJWQ4yowXgdQiw28L+g==', N'H5UUJWQ4yowXgdQiw28L+g==', N'M', CAST(N'2000-09-21T00:00:00.000' AS DateTime), 2, CAST(N'2021-08-11T00:40:48.177' AS DateTime))
SET IDENTITY_INSERT [dbo].[Registration] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleID], [Rolename]) VALUES (1, N'Admin')
INSERT [dbo].[Roles] ([RoleID], [Rolename]) VALUES (2, N'Users')
INSERT [dbo].[Roles] ([RoleID], [Rolename]) VALUES (3, N'SuperAdmin')
INSERT [dbo].[Roles] ([RoleID], [Rolename]) VALUES (4, N'Anonymous ')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[States] ON 

INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (1, N'Delhi', 1)
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (2, N'Maharashtra', 1)
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (3, N'Uttar Pradesh', 1)
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (4, N'Haryana', 1)
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (5, N'New Jersey', 3)
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (6, N'Texas', 3)
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (7, N'Sunderland', 4)
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (8, N'Newport', 4)
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (9, N'Berlin', 5)
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (10, N'Hamburg', 5)
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (11, N'Shanghai', 2)
INSERT [dbo].[States] ([StateID], [StateName], [CountryID]) VALUES (12, N'Beijing', 2)
SET IDENTITY_INSERT [dbo].[States] OFF
GO
SET IDENTITY_INSERT [dbo].[Venue] ON 

INSERT [dbo].[Venue] ([VenueID], [VenueName], [VenueFilename], [VenueFilePath], [Createdby], [Createdate], [VenueCost]) VALUES (1, N'Beach', N'The-Wedding-Co.weddingplz1.jpg', N'VenueImages/d0894394-1dce-4b3b-87a6-1f97a05417a2.jpg', 2, CAST(N'2017-07-11T11:14:54.250' AS DateTime), 50000)
INSERT [dbo].[Venue] ([VenueID], [VenueName], [VenueFilename], [VenueFilePath], [Createdby], [Createdate], [VenueCost]) VALUES (2, N'Garden', N'SR-Event-Planners4.weddingplz.jpg', N'VenueImages/3b2b3b1c-643b-42b6-b815-1bebbd27d3f6.jpg', 2, CAST(N'2017-07-11T11:14:54.250' AS DateTime), 20000)
INSERT [dbo].[Venue] ([VenueID], [VenueName], [VenueFilename], [VenueFilePath], [Createdby], [Createdate], [VenueCost]) VALUES (3, N'Tent House', N'4cc281ec-7ed9-4232-b983-4c29ac1d707a.jpg', N'VenueImages/03ab9cbf-2da4-4a18-be0e-8a1a3a7c8331.jpg', 1, CAST(N'2017-07-11T11:14:54.250' AS DateTime), 500)
INSERT [dbo].[Venue] ([VenueID], [VenueName], [VenueFilename], [VenueFilePath], [Createdby], [Createdate], [VenueCost]) VALUES (4, N'Hall', N'030fcdb0-08ad-4411-a99a-0abd1e674454.jpg', N'VenueImages/030fcdb0-08ad-4411-a99a-0abd1e674454.jpg', 18, CAST(N'2021-08-17T17:00:40.663' AS DateTime), 5000)
SET IDENTITY_INSERT [dbo].[Venue] OFF
GO
ALTER TABLE [dbo].[Equipment] ADD  CONSTRAINT [DF_Equipment_Createdate]  DEFAULT (getdate()) FOR [Createdate]
GO
ALTER TABLE [dbo].[Flower] ADD  CONSTRAINT [DF_Flower_Createdate]  DEFAULT (getdate()) FOR [Createdate]
GO
ALTER TABLE [dbo].[Food] ADD  CONSTRAINT [DF_Food_Createdate]  DEFAULT (getdate()) FOR [Createdate]
GO
ALTER TABLE [dbo].[Light] ADD  CONSTRAINT [DF_Light_Createdate]  DEFAULT (getdate()) FOR [Createdate]
GO
ALTER TABLE [dbo].[Venue] ADD  CONSTRAINT [DF_Venue_Createdate]  DEFAULT (getdate()) FOR [Createdate]
GO
USE [master]
GO
ALTER DATABASE [EventDB] SET  READ_WRITE 
GO
