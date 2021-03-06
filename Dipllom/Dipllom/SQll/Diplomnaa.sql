USE [master]
GO
/****** Object:  Database [newShamil]    Script Date: 25.05.2021 13:36:59 ******/
CREATE DATABASE [newShamil]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'newShamil', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\newShamil.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'newShamil_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\newShamil_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [newShamil] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [newShamil].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [newShamil] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [newShamil] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [newShamil] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [newShamil] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [newShamil] SET ARITHABORT OFF 
GO
ALTER DATABASE [newShamil] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [newShamil] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [newShamil] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [newShamil] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [newShamil] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [newShamil] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [newShamil] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [newShamil] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [newShamil] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [newShamil] SET  DISABLE_BROKER 
GO
ALTER DATABASE [newShamil] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [newShamil] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [newShamil] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [newShamil] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [newShamil] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [newShamil] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [newShamil] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [newShamil] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [newShamil] SET  MULTI_USER 
GO
ALTER DATABASE [newShamil] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [newShamil] SET DB_CHAINING OFF 
GO
ALTER DATABASE [newShamil] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [newShamil] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [newShamil] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [newShamil] SET QUERY_STORE = OFF
GO
USE [newShamil]
GO
/****** Object:  Table [dbo].[Prod]    Script Date: 25.05.2021 13:36:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prod](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Tipe] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[Kolich] [nvarchar](50) NOT NULL,
	[Itogo] [int] NOT NULL,
	[Otvet] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Prod_2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prod2]    Script Date: 25.05.2021 13:36:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prod2](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Tipe] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[Kolich] [nvarchar](50) NOT NULL,
	[Itogo] [int] NOT NULL,
 CONSTRAINT [PK_Prod] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prod3]    Script Date: 25.05.2021 13:36:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prod3](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Tipe] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[Kolich] [nvarchar](50) NOT NULL,
	[Itogo] [int] NOT NULL,
	[Otvet] [nvarchar](50) NULL,
 CONSTRAINT [PK_Prod_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Realiz]    Script Date: 25.05.2021 13:36:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Realiz](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Tipe] [int] NOT NULL,
	[Price] [nchar](10) NOT NULL,
	[Kolich] [nchar](10) NOT NULL,
	[Itogo] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sotrudniki]    Script Date: 25.05.2021 13:36:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sotrudniki](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](50) NOT NULL,
	[Tel] [nvarchar](50) NOT NULL,
	[IdSpecial] [int] NOT NULL,
 CONSTRAINT [PK_Sotrudniki] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Special]    Script Date: 25.05.2021 13:36:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Special](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Special] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 25.05.2021 13:36:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type2]    Script Date: 25.05.2021 13:36:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type2](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Type2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 25.05.2021 13:36:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usluga]    Script Date: 25.05.2021 13:36:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usluga](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IdType] [int] NOT NULL,
	[Price] [int] NOT NULL,
 CONSTRAINT [PK_Usluga] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zakazi]    Script Date: 25.05.2021 13:36:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zakazi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Tipe] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[Kolich] [nvarchar](50) NOT NULL,
	[Itogo] [int] NOT NULL,
	[Otvet] [nvarchar](50) NOT NULL,
	[Zakazchik] [nvarchar](50) NOT NULL,
	[Telefon] [nvarchar](50) NOT NULL,
	[Data] [date] NOT NULL,
 CONSTRAINT [PK_Zakazi] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Prod] ON 

INSERT [dbo].[Prod] ([Id], [Name], [Tipe], [Price], [Kolich], [Itogo], [Otvet]) VALUES (24, N'Разработка сайтов', 2, 70000, N'1', 70000, N'Мирзабеков Магомед Султонович')
SET IDENTITY_INSERT [dbo].[Prod] OFF
GO
SET IDENTITY_INSERT [dbo].[Prod2] ON 

INSERT [dbo].[Prod2] ([Id], [Name], [Tipe], [Price], [Kolich], [Itogo]) VALUES (15, N'Разработка блога', 4, 30000, N'2', 60000)
INSERT [dbo].[Prod2] ([Id], [Name], [Tipe], [Price], [Kolich], [Itogo]) VALUES (16, N'Разработка сайтов', 2, 70000, N'3', 210000)
SET IDENTITY_INSERT [dbo].[Prod2] OFF
GO
SET IDENTITY_INSERT [dbo].[Prod3] ON 

INSERT [dbo].[Prod3] ([Id], [Name], [Tipe], [Price], [Kolich], [Itogo], [Otvet]) VALUES (3, N'Разработка блога', 4, 30000, N'1', 30000, NULL)
INSERT [dbo].[Prod3] ([Id], [Name], [Tipe], [Price], [Kolich], [Itogo], [Otvet]) VALUES (4, N'Доработка готового сайта', 2, 5000, N'1', 5000, NULL)
INSERT [dbo].[Prod3] ([Id], [Name], [Tipe], [Price], [Kolich], [Itogo], [Otvet]) VALUES (5, N'Дополнительные услуги', 5, 5000, N'3', 15000, NULL)
SET IDENTITY_INSERT [dbo].[Prod3] OFF
GO
SET IDENTITY_INSERT [dbo].[Realiz] ON 

INSERT [dbo].[Realiz] ([Id], [Name], [Tipe], [Price], [Kolich], [Itogo]) VALUES (1, N'Разработка сайта визитки', 0, N'          ', N'          ', N'          ')
INSERT [dbo].[Realiz] ([Id], [Name], [Tipe], [Price], [Kolich], [Itogo]) VALUES (2, N'Разработка сайтов', 11, N'11        ', N'11        ', N'11        ')
INSERT [dbo].[Realiz] ([Id], [Name], [Tipe], [Price], [Kolich], [Itogo]) VALUES (3, N'Доработка готового сайта', 24, N'24        ', N'24        ', N'24        ')
INSERT [dbo].[Realiz] ([Id], [Name], [Tipe], [Price], [Kolich], [Itogo]) VALUES (4, N'Разработка сайтов', 0, N'15        ', N'15        ', N'15        ')
INSERT [dbo].[Realiz] ([Id], [Name], [Tipe], [Price], [Kolich], [Itogo]) VALUES (5, N'Разработка сайтов', 0, N'11        ', N'11        ', N'11        ')
INSERT [dbo].[Realiz] ([Id], [Name], [Tipe], [Price], [Kolich], [Itogo]) VALUES (6, N'Разработка интернет-магазина', 0, N'          ', N'          ', N'          ')
INSERT [dbo].[Realiz] ([Id], [Name], [Tipe], [Price], [Kolich], [Itogo]) VALUES (7, N'Разработка сайта визитки', 2, N'12        ', N'12        ', N'12        ')
INSERT [dbo].[Realiz] ([Id], [Name], [Tipe], [Price], [Kolich], [Itogo]) VALUES (8, N'Разработка блога', 4, N'15        ', N'15        ', N'15        ')
INSERT [dbo].[Realiz] ([Id], [Name], [Tipe], [Price], [Kolich], [Itogo]) VALUES (9, N'Дополнительные услуги', 5, N'5         ', N'5         ', N'5         ')
SET IDENTITY_INSERT [dbo].[Realiz] OFF
GO
SET IDENTITY_INSERT [dbo].[Sotrudniki] ON 

INSERT [dbo].[Sotrudniki] ([Id], [FIO], [Tel], [IdSpecial]) VALUES (2, N'Магомедов Магомед Рамазанович', N'+7(988) 522 32 12', 1)
INSERT [dbo].[Sotrudniki] ([Id], [FIO], [Tel], [IdSpecial]) VALUES (3, N'Иванов Сергей Петрович', N'+7(982) 555 98 75', 2)
INSERT [dbo].[Sotrudniki] ([Id], [FIO], [Tel], [IdSpecial]) VALUES (4, N'Ханбулатов Шамиль Мурадович', N'+7(988) 795 39 97', 9)
INSERT [dbo].[Sotrudniki] ([Id], [FIO], [Tel], [IdSpecial]) VALUES (5, N'Сулейманов Марат Магомедович', N'+7(923) 666 82 22', 3)
INSERT [dbo].[Sotrudniki] ([Id], [FIO], [Tel], [IdSpecial]) VALUES (6, N'Магомедов Рамазан Арсланович', N'+7(932) 357 89 54', 4)
INSERT [dbo].[Sotrudniki] ([Id], [FIO], [Tel], [IdSpecial]) VALUES (7, N'Бурдасов Михаил Анатольевич', N'+7(912) 999 75 55', 5)
INSERT [dbo].[Sotrudniki] ([Id], [FIO], [Tel], [IdSpecial]) VALUES (8, N'Шихов Олег Сергеевич', N'+7(965) 785 85 98', 6)
INSERT [dbo].[Sotrudniki] ([Id], [FIO], [Tel], [IdSpecial]) VALUES (10, N'Турабов Юсуф Мухтарович', N'+7(989) 795 95 67', 7)
INSERT [dbo].[Sotrudniki] ([Id], [FIO], [Tel], [IdSpecial]) VALUES (11, N'Муртазалиев Махач Артурович', N'+7(988) 344 51 11', 8)
INSERT [dbo].[Sotrudniki] ([Id], [FIO], [Tel], [IdSpecial]) VALUES (12, N'Мирзабеков Магомед Султонович', N'+7(944) 798 77 77', 10)
INSERT [dbo].[Sotrudniki] ([Id], [FIO], [Tel], [IdSpecial]) VALUES (13, N'Фараджев Мурад Тофикович', N'+7(988) 123 75 44', 10)
INSERT [dbo].[Sotrudniki] ([Id], [FIO], [Tel], [IdSpecial]) VALUES (14, N'Джанатлиев Султан Ахмедович', N'+7(922) 357 95 24', 2)
INSERT [dbo].[Sotrudniki] ([Id], [FIO], [Tel], [IdSpecial]) VALUES (15, N'Койчуев Расул Гимбатович', N'+7(655) 877 42 19', 1)
INSERT [dbo].[Sotrudniki] ([Id], [FIO], [Tel], [IdSpecial]) VALUES (18, N'Магомедов Рамазан Агарзаевич', N'+7(988) 530 12 12', 10)
SET IDENTITY_INSERT [dbo].[Sotrudniki] OFF
GO
SET IDENTITY_INSERT [dbo].[Special] ON 

INSERT [dbo].[Special] ([Id], [Name]) VALUES (1, N'Программист')
INSERT [dbo].[Special] ([Id], [Name]) VALUES (2, N'Верстальщик')
INSERT [dbo].[Special] ([Id], [Name]) VALUES (3, N'Дизайнер')
INSERT [dbo].[Special] ([Id], [Name]) VALUES (4, N'Менеджер')
INSERT [dbo].[Special] ([Id], [Name]) VALUES (5, N'Маркетолог')
INSERT [dbo].[Special] ([Id], [Name]) VALUES (6, N'Проектировщик Интерфейсов')
INSERT [dbo].[Special] ([Id], [Name]) VALUES (7, N'Разработчик')
INSERT [dbo].[Special] ([Id], [Name]) VALUES (8, N'Seo Специалист')
INSERT [dbo].[Special] ([Id], [Name]) VALUES (9, N'Директолог')
INSERT [dbo].[Special] ([Id], [Name]) VALUES (10, N'Тех.Поддержка')
INSERT [dbo].[Special] ([Id], [Name]) VALUES (11, N'Копирайтер')
SET IDENTITY_INSERT [dbo].[Special] OFF
GO
SET IDENTITY_INSERT [dbo].[Type] ON 

INSERT [dbo].[Type] ([Id], [Name]) VALUES (1, N'Дизайнер')
INSERT [dbo].[Type] ([Id], [Name]) VALUES (2, N'Верстальщик')
INSERT [dbo].[Type] ([Id], [Name]) VALUES (3, N'Копирайтер')
INSERT [dbo].[Type] ([Id], [Name]) VALUES (4, N'Программист')
INSERT [dbo].[Type] ([Id], [Name]) VALUES (5, N'Тех.Поддержка')
SET IDENTITY_INSERT [dbo].[Type] OFF
GO
INSERT [dbo].[Type2] ([Id], [Name]) VALUES (1, N'Дизайнер')
INSERT [dbo].[Type2] ([Id], [Name]) VALUES (2, N'Верстальщик')
INSERT [dbo].[Type2] ([Id], [Name]) VALUES (3, N'Копирайтер')
INSERT [dbo].[Type2] ([Id], [Name]) VALUES (4, N'Программист')
INSERT [dbo].[Type2] ([Id], [Name]) VALUES (5, N'Тех.Поддержка')
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Login], [Password]) VALUES (1, N'shamil', N'shamil')
INSERT [dbo].[User] ([Id], [Login], [Password]) VALUES (2, N'1', N'1')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[Usluga] ON 

INSERT [dbo].[Usluga] ([Id], [Name], [IdType], [Price]) VALUES (1, N'Разработка блога', 4, 30000)
INSERT [dbo].[Usluga] ([Id], [Name], [IdType], [Price]) VALUES (3, N'Разработка сайтов', 2, 70000)
INSERT [dbo].[Usluga] ([Id], [Name], [IdType], [Price]) VALUES (4, N'Разработка сайта визитки', 1, 50000)
INSERT [dbo].[Usluga] ([Id], [Name], [IdType], [Price]) VALUES (6, N'Разработка интернет-магазина', 4, 200000)
INSERT [dbo].[Usluga] ([Id], [Name], [IdType], [Price]) VALUES (7, N'Доработка готового сайта', 2, 5000)
INSERT [dbo].[Usluga] ([Id], [Name], [IdType], [Price]) VALUES (8, N'Дополнительные услуги', 5, 5000)
SET IDENTITY_INSERT [dbo].[Usluga] OFF
GO
SET IDENTITY_INSERT [dbo].[Zakazi] ON 

INSERT [dbo].[Zakazi] ([Id], [Name], [Tipe], [Price], [Kolich], [Itogo], [Otvet], [Zakazchik], [Telefon], [Data]) VALUES (4, N'Разработка сайта визитки', 1, 50000, N'2', 100000, N'Ханбулатов Шамиль Мурадович', N'', N'', CAST(N'0001-01-01' AS Date))
INSERT [dbo].[Zakazi] ([Id], [Name], [Tipe], [Price], [Kolich], [Itogo], [Otvet], [Zakazchik], [Telefon], [Data]) VALUES (5, N'Разработка сайта визитки', 1, 50000, N'1', 50000, N'Иванов Сергей Петрович', N'Fg ', N'46565565', CAST(N'0001-01-01' AS Date))
INSERT [dbo].[Zakazi] ([Id], [Name], [Tipe], [Price], [Kolich], [Itogo], [Otvet], [Zakazchik], [Telefon], [Data]) VALUES (6, N'Разработка сайта визитки', 1, 50000, N'2', 100000, N'Ханбулатов Шамиль Мурадович', N'sda', N'231', CAST(N'0001-01-01' AS Date))
INSERT [dbo].[Zakazi] ([Id], [Name], [Tipe], [Price], [Kolich], [Itogo], [Otvet], [Zakazchik], [Telefon], [Data]) VALUES (7, N'Разработка сайтов', 2, 70000, N'1', 70000, N'Мирзабеков Магомед Султонович', N'qwe', N'12213', CAST(N'2021-05-25' AS Date))
SET IDENTITY_INSERT [dbo].[Zakazi] OFF
GO
ALTER TABLE [dbo].[Sotrudniki]  WITH CHECK ADD  CONSTRAINT [FK_Sotrudniki_Special] FOREIGN KEY([IdSpecial])
REFERENCES [dbo].[Special] ([Id])
GO
ALTER TABLE [dbo].[Sotrudniki] CHECK CONSTRAINT [FK_Sotrudniki_Special]
GO
ALTER TABLE [dbo].[Usluga]  WITH CHECK ADD  CONSTRAINT [FK_Usluga_Type] FOREIGN KEY([IdType])
REFERENCES [dbo].[Type] ([Id])
GO
ALTER TABLE [dbo].[Usluga] CHECK CONSTRAINT [FK_Usluga_Type]
GO
USE [master]
GO
ALTER DATABASE [newShamil] SET  READ_WRITE 
GO
