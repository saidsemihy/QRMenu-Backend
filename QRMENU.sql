USE [master]
GO
/****** Object:  Database [QRMenuProjectBackendDb]    Script Date: 28.10.2024 17:35:49 ******/
CREATE DATABASE [QRMenuProjectBackendDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QRMenuProjectBackendDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QRMenuProjectBackendDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QRMenuProjectBackendDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QRMenuProjectBackendDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QRMenuProjectBackendDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QRMenuProjectBackendDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QRMenuProjectBackendDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QRMenuProjectBackendDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QRMenuProjectBackendDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QRMenuProjectBackendDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QRMenuProjectBackendDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [QRMenuProjectBackendDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QRMenuProjectBackendDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QRMenuProjectBackendDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QRMenuProjectBackendDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QRMenuProjectBackendDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QRMenuProjectBackendDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QRMenuProjectBackendDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QRMenuProjectBackendDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QRMenuProjectBackendDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QRMenuProjectBackendDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QRMenuProjectBackendDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QRMenuProjectBackendDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QRMenuProjectBackendDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QRMenuProjectBackendDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QRMenuProjectBackendDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QRMenuProjectBackendDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [QRMenuProjectBackendDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QRMenuProjectBackendDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QRMenuProjectBackendDb] SET  MULTI_USER 
GO
ALTER DATABASE [QRMenuProjectBackendDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QRMenuProjectBackendDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QRMenuProjectBackendDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QRMenuProjectBackendDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QRMenuProjectBackendDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QRMenuProjectBackendDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QRMenuProjectBackendDb] SET QUERY_STORE = OFF
GO
USE [QRMenuProjectBackendDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 28.10.2024 17:35:49 ******/
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
/****** Object:  Table [dbo].[Categories]    Script Date: 28.10.2024 17:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RestaurantId] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[Photo] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryItem]    Script Date: 28.10.2024 17:35:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryItem](
	[CategoryId] [int] NOT NULL,
	[ItemId] [int] NOT NULL,
 CONSTRAINT [PK_CategoryItem] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC,
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryMenu]    Script Date: 28.10.2024 17:35:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryMenu](
	[CategoryId] [int] NOT NULL,
	[MenuId] [int] NOT NULL,
 CONSTRAINT [PK_CategoryMenu] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC,
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contents]    Script Date: 28.10.2024 17:35:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contents](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Contents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 28.10.2024 17:35:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RestaurantId] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[Photo] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 28.10.2024 17:35:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RestaurantId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Menus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pricings]    Script Date: 28.10.2024 17:35:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pricings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[PortionSize] [nvarchar](50) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Pricings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Restaurants]    Script Date: 28.10.2024 17:35:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Restaurants](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](200) NOT NULL,
	[Address] [nvarchar](200) NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Website] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Restaurants] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240925173219_Initial', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241011054222_manytomany_changed', N'8.0.8')
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (1, 1, N'Izgara Steak', N'Özel soslarla marine edilmiş ızgara steak.', N'https://example.com/photos/grilled_steak.jpg')
INSERT [dbo].[Categories] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (2, 1, N'Acılı Steak', N'Baharatlarla zenginleştirilmiş acılı steak.', N'https://example.com/photos/spicy_steak.jpg')
INSERT [dbo].[Categories] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (3, 1, N'Füme Steak', N'Füme lezzeti ile hazırlanan özel steak.', N'https://example.com/photos/smoked_steak.jpg')
INSERT [dbo].[Categories] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (4, 1, N'Nusret Burger', N'Nusret spesiyali burger, taze malzemelerle.', N'https://example.com/photos/nusret_burger.jpg')
INSERT [dbo].[Categories] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (5, 1, N'Patso Burger', N'Patso usulü burger, çıtır çıtır.', N'https://example.com/photos/patso_burger.jpg')
INSERT [dbo].[Categories] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (6, 1, N'Vejetaryen Burger', N'Taze sebzelerle hazırlanan vejetaryen burger.', N'https://example.com/photos/veggie_burger.jpg')
INSERT [dbo].[Categories] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (7, 1, N'Izgara Levrek', N'Taze levrek, ızgara tarzında hazırlanmış.', N'https://example.com/photos/grilled_seabass.jpg')
INSERT [dbo].[Categories] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (8, 1, N'Karides Tava', N'Çıtır karides, özel sos ile servis edilir.', N'https://example.com/photos/fried_shrimp.jpg')
INSERT [dbo].[Categories] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (9, 1, N'Sushi', N'Özel sushi çeşitleri ile taze lezzet.', N'https://example.com/photos/sushi.jpg')
INSERT [dbo].[Categories] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (10, 1, N'Caesar Salata', N'Klasik Caesar salatası, taze malzemelerle.', N'https://example.com/photos/caesar_salad.jpg')
INSERT [dbo].[Categories] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (11, 1, N'Mevsim Salatası', N'Mevsim sebzeleri ile hazırlanan sağlıklı salata.', N'https://example.com/photos/seasonal_salad.jpg')
INSERT [dbo].[Categories] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (12, 1, N'Avokado Salatası', N'Taze avokado ile hazırlanan salata.', N'https://example.com/photos/avocado_salad.jpg')
INSERT [dbo].[Categories] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (13, 1, N'Döner Kebap', N'Özel baharatlarla tatlandırılmış döner kebap.', N'https://example.com/photos/doner_kebab.jpg')
INSERT [dbo].[Categories] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (14, 1, N'Tavuk Döner', N'Taze tavuk ile hazırlanan döner.', N'https://example.com/photos/chicken_doner.jpg')
INSERT [dbo].[Categories] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (15, 1, N'Et Döner', N'Özel etler ile hazırlanan döner.', N'https://example.com/photos/meat_doner.jpg')
INSERT [dbo].[Categories] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (17, 2, N'string', N'string', N'string')
INSERT [dbo].[Categories] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (18, 2, N'deneme123', N'deneme234', N'string')
INSERT [dbo].[Categories] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (19, 2, N'Sevidiğimiz bir category', N'açıklaması zor', N'photo.jpg')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
INSERT [dbo].[CategoryItem] ([CategoryId], [ItemId]) VALUES (1, 1)
INSERT [dbo].[CategoryItem] ([CategoryId], [ItemId]) VALUES (1, 2)
INSERT [dbo].[CategoryItem] ([CategoryId], [ItemId]) VALUES (1, 3)
INSERT [dbo].[CategoryItem] ([CategoryId], [ItemId]) VALUES (17, 3)
INSERT [dbo].[CategoryItem] ([CategoryId], [ItemId]) VALUES (19, 3)
INSERT [dbo].[CategoryItem] ([CategoryId], [ItemId]) VALUES (1, 4)
INSERT [dbo].[CategoryItem] ([CategoryId], [ItemId]) VALUES (1, 5)
INSERT [dbo].[CategoryItem] ([CategoryId], [ItemId]) VALUES (18, 5)
INSERT [dbo].[CategoryItem] ([CategoryId], [ItemId]) VALUES (2, 6)
INSERT [dbo].[CategoryItem] ([CategoryId], [ItemId]) VALUES (2, 7)
INSERT [dbo].[CategoryItem] ([CategoryId], [ItemId]) VALUES (2, 8)
INSERT [dbo].[CategoryItem] ([CategoryId], [ItemId]) VALUES (2, 9)
INSERT [dbo].[CategoryItem] ([CategoryId], [ItemId]) VALUES (2, 10)
INSERT [dbo].[CategoryItem] ([CategoryId], [ItemId]) VALUES (3, 11)
INSERT [dbo].[CategoryItem] ([CategoryId], [ItemId]) VALUES (3, 12)
INSERT [dbo].[CategoryItem] ([CategoryId], [ItemId]) VALUES (3, 13)
INSERT [dbo].[CategoryItem] ([CategoryId], [ItemId]) VALUES (3, 14)
INSERT [dbo].[CategoryItem] ([CategoryId], [ItemId]) VALUES (3, 15)
INSERT [dbo].[CategoryItem] ([CategoryId], [ItemId]) VALUES (4, 16)
INSERT [dbo].[CategoryItem] ([CategoryId], [ItemId]) VALUES (4, 17)
INSERT [dbo].[CategoryItem] ([CategoryId], [ItemId]) VALUES (4, 18)
INSERT [dbo].[CategoryItem] ([CategoryId], [ItemId]) VALUES (4, 19)
INSERT [dbo].[CategoryItem] ([CategoryId], [ItemId]) VALUES (4, 20)
INSERT [dbo].[CategoryItem] ([CategoryId], [ItemId]) VALUES (5, 21)
INSERT [dbo].[CategoryItem] ([CategoryId], [ItemId]) VALUES (5, 22)
INSERT [dbo].[CategoryItem] ([CategoryId], [ItemId]) VALUES (5, 23)
INSERT [dbo].[CategoryItem] ([CategoryId], [ItemId]) VALUES (5, 24)
INSERT [dbo].[CategoryItem] ([CategoryId], [ItemId]) VALUES (5, 25)
GO
INSERT [dbo].[CategoryMenu] ([CategoryId], [MenuId]) VALUES (1, 1)
INSERT [dbo].[CategoryMenu] ([CategoryId], [MenuId]) VALUES (2, 1)
INSERT [dbo].[CategoryMenu] ([CategoryId], [MenuId]) VALUES (3, 1)
INSERT [dbo].[CategoryMenu] ([CategoryId], [MenuId]) VALUES (4, 2)
INSERT [dbo].[CategoryMenu] ([CategoryId], [MenuId]) VALUES (5, 2)
INSERT [dbo].[CategoryMenu] ([CategoryId], [MenuId]) VALUES (6, 2)
INSERT [dbo].[CategoryMenu] ([CategoryId], [MenuId]) VALUES (7, 3)
INSERT [dbo].[CategoryMenu] ([CategoryId], [MenuId]) VALUES (8, 3)
INSERT [dbo].[CategoryMenu] ([CategoryId], [MenuId]) VALUES (9, 3)
INSERT [dbo].[CategoryMenu] ([CategoryId], [MenuId]) VALUES (10, 4)
INSERT [dbo].[CategoryMenu] ([CategoryId], [MenuId]) VALUES (11, 4)
INSERT [dbo].[CategoryMenu] ([CategoryId], [MenuId]) VALUES (12, 4)
INSERT [dbo].[CategoryMenu] ([CategoryId], [MenuId]) VALUES (19, 4)
INSERT [dbo].[CategoryMenu] ([CategoryId], [MenuId]) VALUES (13, 5)
INSERT [dbo].[CategoryMenu] ([CategoryId], [MenuId]) VALUES (14, 5)
INSERT [dbo].[CategoryMenu] ([CategoryId], [MenuId]) VALUES (15, 5)
INSERT [dbo].[CategoryMenu] ([CategoryId], [MenuId]) VALUES (17, 5)
INSERT [dbo].[CategoryMenu] ([CategoryId], [MenuId]) VALUES (18, 5)
GO
SET IDENTITY_INSERT [dbo].[Contents] ON 

INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (1, 1, N'Nusret Sos', N'Özel Nusret sosu ile tatlandırılmış.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (2, 1, N'Taze Kekik', N'Yemekte taze kekik ile servis edilir.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (3, 2, N'Biber Sos', N'Acılı biber sosu ile sunulur.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (4, 2, N'Kızarmış Soğan', N'Yanında kızarmış soğan ile servis edilir.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (5, 3, N'Acı Sos', N'Acı sos ile zenginleştirilmiş.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (6, 3, N'Fesleğen', N'Fesleğen yaprakları ile süslenmiştir.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (7, 4, N'Tereyağı', N'Üzerinde eritilmiş tereyağı ile servis edilir.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (8, 4, N'Kızarmış Patates', N'Yanında kızarmış patates ile servis edilir.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (9, 5, N'Sarımsak Sosu', N'Sarımsak sosu ile tatlandırılmış.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (10, 5, N'Taze Salata', N'Yanında taze salata ile servis edilir.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (11, 6, N'Acı Biber', N'Yanında acı biber ile servis edilir.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (12, 6, N'Zeytinyağı', N'Zeytinyağı ile lezzetlendirilmiştir.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (13, 7, N'Baharat Karışımı', N'Özel baharat karışımı ile tatlandırılmış.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (14, 7, N'Kızarmış Mısır', N'Yanında kızarmış mısır ile servis edilir.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (15, 8, N'Acılı Yoğurt', N'Acılı yoğurt ile sunulur.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (16, 8, N'Süzme Yoğurt', N'Süzme yoğurt ile zenginleştirilmiştir.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (17, 9, N'Acı Mayonez', N'Acı mayonez ile tatlandırılmış.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (18, 9, N'Izgara Sebzeler', N'Yanında ızgara sebzeler ile servis edilir.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (19, 10, N'Acılı Zeytinyağı', N'Acılı zeytinyağı ile servis edilir.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (20, 10, N'Karışık Salata', N'Karışık yeşilliklerle hazırlanmış salata.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (21, 11, N'Füme Tuz', N'Füme tuz ile lezzetlendirilmiştir.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (22, 11, N'Füme Biber', N'Füme biber ile servis edilir.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (23, 12, N'Füme Sıvı Duman', N'Füme sıvı duman ile tatlandırılmış.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (24, 12, N'Kızarmış Sarımsak', N'Yanında kızarmış sarımsak ile servis edilir.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (25, 13, N'Füme Baharat', N'Füme baharat karışımı ile zenginleştirilmiştir.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (26, 13, N'Izgara Soğan', N'Yanında ızgara soğan ile servis edilir.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (27, 14, N'Füme Peyniri', N'Füme peyniri ile tatlandırılmış.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (28, 14, N'Taze Nane', N'Yanında taze nane ile servis edilir.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (29, 15, N'Füme Baharatlı Sos', N'Füme baharatlı sos ile lezzetlendirilmiştir.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (30, 15, N'Zeytin Yağı', N'Zeytin yağı ile tatlandırılmış.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (31, 16, N'Burger Ekmeği', N'Taze burger ekmeği ile hazırlanmıştır.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (32, 16, N'Marul', N'Taze marul ile süslenmiştir.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (33, 17, N'Çift Et', N'İki kat et ile zenginleştirilmiştir.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (34, 17, N'Çedar Peyniri', N'Üzerine cheddar peyniri eklenmiştir.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (35, 18, N'Acı Sos', N'Acılı sos ile tatlandırılmış.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (36, 18, N'Jalapeño', N'Yanında jalapeño biberi ile servis edilir.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (37, 19, N'Sebze Köftesi', N'Taze sebzelerle hazırlanmış köfte.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (38, 19, N'Guacamole', N'Guacamole ile zenginleştirilmiştir.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (39, 20, N'Çedar Peyniri', N'Çedar peyniri ile hazırlanmıştır.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (40, 20, N'Kızarmış Soğan', N'Yanında kızarmış soğan ile servis edilir.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (41, 21, N'Kızarmış Patates', N'Yanında çıtır kızarmış patates ile servis edilir.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (42, 21, N'Ketchup', N'Yanında ketçap ile sunulur.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (43, 22, N'Acılı Mayonez', N'Acılı mayonez ile tatlandırılmış.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (44, 22, N'Acılı Patates', N'Acılı sos ile tatlandırılmış patates.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (45, 23, N'Vejetaryen Burger', N'Vejetaryen malzemelerle hazırlanmıştır.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (46, 23, N'Taze Sebzeler', N'Yanında taze sebzeler ile sunulur.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (47, 24, N'Çedar Peyniri', N'Çedar peyniri ile tatlandırılmış.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (48, 24, N'Kızarmış Soğan', N'Yanında kızarmış soğan ile servis edilir.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (49, 25, N'Patates Kızartması', N'Yanında çıtır patates kızartması ile servis edilir.')
INSERT [dbo].[Contents] ([Id], [ItemId], [Name], [Description]) VALUES (50, 25, N'Sos', N'Özel sos ile zenginleştirilmiştir.')
SET IDENTITY_INSERT [dbo].[Contents] OFF
GO
SET IDENTITY_INSERT [dbo].[Items] ON 

INSERT [dbo].[Items] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (1, 1, N'Antrikot', N'Yumuşak antrikot, ızgara ile pişirilmiştir.', N'https://example.com/photos/ribeye_steak.jpg')
INSERT [dbo].[Items] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (2, 1, N'T-Bone Steak', N'T-Bone kesimi ile zenginleştirilmiş steak.', N'https://example.com/photos/tbone_steak.jpg')
INSERT [dbo].[Items] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (3, 1, N'Sirloin Steak', N'Üst kaliteli sirloin steak.', N'https://example.com/photos/sirloin_steak.jpg')
INSERT [dbo].[Items] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (4, 1, N'Filet Mignon', N'Yumuşak ve lezzetli filet mignon.', N'https://example.com/photos/filet_mignon.jpg')
INSERT [dbo].[Items] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (5, 1, N'Biftek', N'Sert ama lezzetli biftek.', N'https://example.com/photos/steak.jpg')
INSERT [dbo].[Items] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (6, 1, N'Acılı Antrikot', N'Acı sosla marine edilmiş antrikot.', N'https://example.com/photos/spicy_ribeye.jpg')
INSERT [dbo].[Items] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (7, 1, N'Baharatlı T-Bone', N'Baharatlarla zenginleştirilmiş T-Bone.', N'https://example.com/photos/spicy_tbone.jpg')
INSERT [dbo].[Items] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (8, 1, N'Acılı Sirloin', N'Acı baharatlarla tatlandırılmış sirloin steak.', N'https://example.com/photos/spicy_sirloin.jpg')
INSERT [dbo].[Items] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (9, 1, N'Acılı Filet Mignon', N'Acı sos ile servis edilen filet mignon.', N'https://example.com/photos/spicy_filet.jpg')
INSERT [dbo].[Items] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (10, 1, N'Acılı Biftek', N'Acı sosla zenginleştirilmiş biftek.', N'https://example.com/photos/spicy_steak.jpg')
INSERT [dbo].[Items] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (11, 1, N'Füme Antrikot', N'Füme lezzeti ile hazırlanan antrikot.', N'https://example.com/photos/smoked_ribeye.jpg')
INSERT [dbo].[Items] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (12, 1, N'Füme T-Bone', N'Füme tarzında pişirilmiş T-Bone.', N'https://example.com/photos/smoked_tbone.jpg')
INSERT [dbo].[Items] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (13, 1, N'Füme Sirloin', N'Füme olarak hazırlanmış sirloin steak.', N'https://example.com/photos/smoked_sirloin.jpg')
INSERT [dbo].[Items] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (14, 1, N'Füme Filet Mignon', N'Füme lezzeti ile sunulan filet mignon.', N'https://example.com/photos/smoked_filet.jpg')
INSERT [dbo].[Items] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (15, 1, N'Füme Biftek', N'Füme olarak sunulan lezzetli biftek.', N'https://example.com/photos/smoked_steak.jpg')
INSERT [dbo].[Items] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (16, 1, N'Klasik Nusret Burger', N'Nusret spesiyali, taze malzemelerle yapılmış burger.', N'https://example.com/photos/classic_nusret_burger.jpg')
INSERT [dbo].[Items] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (17, 1, N'Double Nusret Burger', N'İki kat etle hazırlanmış Nusret burger.', N'https://example.com/photos/double_nusret_burger.jpg')
INSERT [dbo].[Items] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (18, 1, N'Acılı Nusret Burger', N'Acılı sos ile tatlandırılmış Nusret burger.', N'https://example.com/photos/spicy_nusret_burger.jpg')
INSERT [dbo].[Items] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (19, 1, N'Vejetaryen Nusret Burger', N'Taze sebzelerle hazırlanan Nusret burger.', N'https://example.com/photos/veggie_nusret_burger.jpg')
INSERT [dbo].[Items] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (20, 1, N'Cheddar Nusret Burger', N'Cheddar peyniri ile zenginleştirilmiş Nusret burger.', N'https://example.com/photos/cheddar_nusret_burger.jpg')
INSERT [dbo].[Items] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (21, 1, N'Klasik Patso Burger', N'Çıtır patates ile hazırlanan patso burger.', N'https://example.com/photos/classic_patso_burger.jpg')
INSERT [dbo].[Items] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (22, 1, N'Acılı Patso Burger', N'Acılı sos ile tatlandırılmış patso burger.', N'https://example.com/photos/spicy_patso_burger.jpg')
INSERT [dbo].[Items] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (23, 1, N'Vejetaryen Patso Burger', N'Taze sebzelerle hazırlanan vejetaryen patso burger.', N'https://example.com/photos/veggie_patso_burger.jpg')
INSERT [dbo].[Items] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (24, 1, N'Cheddar Patso Burger', N'Cheddar peyniri ile hazırlanan patso burger.', N'https://example.com/photos/cheddar_patso_burger.jpg')
INSERT [dbo].[Items] ([Id], [RestaurantId], [Name], [Description], [Photo]) VALUES (25, 1, N'Patatesli Patso Burger', N'Patates kızartması ile birlikte servis edilen patso burger.', N'https://example.com/photos/fried_patso_burger.jpg')
SET IDENTITY_INSERT [dbo].[Items] OFF
GO
SET IDENTITY_INSERT [dbo].[Menus] ON 

INSERT [dbo].[Menus] ([Id], [RestaurantId], [Name], [Description]) VALUES (1, 1, N'Steak Platter', N'Çeşitli etlerin bir arada sunulduğu özel tabak.')
INSERT [dbo].[Menus] ([Id], [RestaurantId], [Name], [Description]) VALUES (2, 1, N'Nusret Burger', N'Özel soslu, büyük boy et ile hazırlanan leziz burger.')
INSERT [dbo].[Menus] ([Id], [RestaurantId], [Name], [Description]) VALUES (3, 1, N'Lamb Chops', N'Izgara kuzu pirzolaları, baharatlarla marine edilmiştir.')
INSERT [dbo].[Menus] ([Id], [RestaurantId], [Name], [Description]) VALUES (4, 1, N'Seafood Platter', N'Taze deniz ürünlerinden oluşan zengin tabak.')
INSERT [dbo].[Menus] ([Id], [RestaurantId], [Name], [Description]) VALUES (5, 1, N'Caesar Salad', N'Taze marul, parmesan peyniri ve özel sos ile hazırlanmış salata.')
SET IDENTITY_INSERT [dbo].[Menus] OFF
GO
SET IDENTITY_INSERT [dbo].[Pricings] ON 

INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (1, 1, 1, N'200g', CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (2, 1, 1, N'300g', CAST(220.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (3, 2, 1, N'Single', CAST(180.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (4, 2, 1, N'Double', CAST(320.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (5, 3, 1, N'Standard', CAST(80.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (6, 3, 1, N'Jumbo', CAST(110.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (7, 4, 1, N'250g', CAST(200.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (8, 4, 1, N'400g', CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (9, 5, 6, N'6 Pieces', CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (10, 5, 12, N'12 Pieces', CAST(110.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (11, 6, 1, N'250g', CAST(180.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (12, 6, 1, N'350g', CAST(250.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (13, 7, 1, N'Small', CAST(220.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (14, 7, 1, N'Large', CAST(350.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (15, 8, 1, N'150g', CAST(140.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (16, 8, 1, N'300g', CAST(270.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (17, 9, 1, N'Regular', CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (18, 9, 1, N'Large', CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (19, 10, 1, N'Single', CAST(180.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (20, 10, 1, N'Family Size', CAST(350.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (21, 11, 1, N'Regular', CAST(50.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (22, 11, 1, N'Double', CAST(75.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (23, 12, 1, N'Regular', CAST(45.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (24, 12, 1, N'Large', CAST(65.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (25, 13, 1, N'Small', CAST(30.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (26, 13, 1, N'Large', CAST(50.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (27, 14, 3, N'Regular', CAST(85.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (28, 14, 5, N'Large', CAST(120.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (29, 15, 1, N'Regular', CAST(45.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (30, 15, 1, N'Double', CAST(65.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (31, 16, 1, N'Small', CAST(220.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (32, 16, 1, N'Regular', CAST(320.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (33, 17, 1, N'Medium', CAST(250.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (34, 17, 1, N'Large', CAST(350.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (35, 18, 1, N'Regular', CAST(450.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (36, 18, 1, N'Extra Large', CAST(650.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (37, 19, 1, N'Medium', CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (38, 19, 1, N'Large', CAST(400.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (39, 20, 1, N'Half', CAST(550.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (40, 20, 1, N'Full', CAST(900.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (41, 21, 1, N'Small', CAST(25.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (42, 21, 1, N'Regular', CAST(40.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (43, 22, 1, N'Regular', CAST(50.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (44, 22, 1, N'Large', CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (45, 23, 1, N'Small', CAST(30.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (46, 23, 1, N'Regular', CAST(45.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (47, 24, 1, N'Small', CAST(20.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (48, 24, 1, N'Regular', CAST(35.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (49, 25, 1, N'Small', CAST(28.00 AS Decimal(18, 2)))
INSERT [dbo].[Pricings] ([Id], [ItemId], [Quantity], [PortionSize], [Price]) VALUES (50, 25, 1, N'Large', CAST(50.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Pricings] OFF
GO
SET IDENTITY_INSERT [dbo].[Restaurants] ON 

INSERT [dbo].[Restaurants] ([Id], [Name], [Description], [Address], [Phone], [Email], [Website]) VALUES (1, N'Nusret', N'Dünya çapında ünlü et restoranı, taze ve kaliteli etlerle hizmet veriyor.', N'Mikado Sokak No: 1, Beşiktaş, İstanbul, Türkiye', N'+90 212 555 1234', N'info@nusret.com', N'http://nusret.com')
INSERT [dbo].[Restaurants] ([Id], [Name], [Description], [Address], [Phone], [Email], [Website]) VALUES (2, N'Patso Burger', N'En lezzetli burgerler ve soslar ile dolu, hızlı ve samimi bir mekan.', N'Burger Cad. No: 34, Kadıköy, İstanbul, Türkiye', N'+90 216 555 5678', N'info@patsoburger.com', N'http://patsoburger.com')
SET IDENTITY_INSERT [dbo].[Restaurants] OFF
GO
/****** Object:  Index [IX_Categories_RestaurantId]    Script Date: 28.10.2024 17:35:50 ******/
CREATE NONCLUSTERED INDEX [IX_Categories_RestaurantId] ON [dbo].[Categories]
(
	[RestaurantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CategoryItem_ItemId]    Script Date: 28.10.2024 17:35:50 ******/
CREATE NONCLUSTERED INDEX [IX_CategoryItem_ItemId] ON [dbo].[CategoryItem]
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CategoryMenu_MenuId]    Script Date: 28.10.2024 17:35:50 ******/
CREATE NONCLUSTERED INDEX [IX_CategoryMenu_MenuId] ON [dbo].[CategoryMenu]
(
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Contents_ItemId]    Script Date: 28.10.2024 17:35:50 ******/
CREATE NONCLUSTERED INDEX [IX_Contents_ItemId] ON [dbo].[Contents]
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Items_RestaurantId]    Script Date: 28.10.2024 17:35:50 ******/
CREATE NONCLUSTERED INDEX [IX_Items_RestaurantId] ON [dbo].[Items]
(
	[RestaurantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Menus_RestaurantId]    Script Date: 28.10.2024 17:35:50 ******/
CREATE NONCLUSTERED INDEX [IX_Menus_RestaurantId] ON [dbo].[Menus]
(
	[RestaurantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pricings_ItemId]    Script Date: 28.10.2024 17:35:50 ******/
CREATE NONCLUSTERED INDEX [IX_Pricings_ItemId] ON [dbo].[Pricings]
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_Restaurants_RestaurantId] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[Restaurants] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_Restaurants_RestaurantId]
GO
ALTER TABLE [dbo].[CategoryItem]  WITH CHECK ADD  CONSTRAINT [FK_CategoryItem_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CategoryItem] CHECK CONSTRAINT [FK_CategoryItem_Categories_CategoryId]
GO
ALTER TABLE [dbo].[CategoryItem]  WITH CHECK ADD  CONSTRAINT [FK_CategoryItem_Items_ItemId] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([Id])
GO
ALTER TABLE [dbo].[CategoryItem] CHECK CONSTRAINT [FK_CategoryItem_Items_ItemId]
GO
ALTER TABLE [dbo].[CategoryMenu]  WITH CHECK ADD  CONSTRAINT [FK_CategoryMenu_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CategoryMenu] CHECK CONSTRAINT [FK_CategoryMenu_Categories_CategoryId]
GO
ALTER TABLE [dbo].[CategoryMenu]  WITH CHECK ADD  CONSTRAINT [FK_CategoryMenu_Menus_MenuId] FOREIGN KEY([MenuId])
REFERENCES [dbo].[Menus] ([Id])
GO
ALTER TABLE [dbo].[CategoryMenu] CHECK CONSTRAINT [FK_CategoryMenu_Menus_MenuId]
GO
ALTER TABLE [dbo].[Contents]  WITH CHECK ADD  CONSTRAINT [FK_Contents_Items_ItemId] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Contents] CHECK CONSTRAINT [FK_Contents_Items_ItemId]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Restaurants_RestaurantId] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[Restaurants] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Restaurants_RestaurantId]
GO
ALTER TABLE [dbo].[Menus]  WITH CHECK ADD  CONSTRAINT [FK_Menus_Restaurants_RestaurantId] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[Restaurants] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Menus] CHECK CONSTRAINT [FK_Menus_Restaurants_RestaurantId]
GO
ALTER TABLE [dbo].[Pricings]  WITH CHECK ADD  CONSTRAINT [FK_Pricings_Items_ItemId] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Pricings] CHECK CONSTRAINT [FK_Pricings_Items_ItemId]
GO
USE [master]
GO
ALTER DATABASE [QRMenuProjectBackendDb] SET  READ_WRITE 
GO
