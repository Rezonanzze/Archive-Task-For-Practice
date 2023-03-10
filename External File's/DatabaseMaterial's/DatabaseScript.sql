USE [master]
GO
/****** Object:  Database [ArchiveTask17]    Script Date: 02.03.2023 9:23:13 ******/
CREATE DATABASE [ArchiveTask17]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ArchiveTask17', FILENAME = N'D:\SSMS\Express\MSSQL16.SQLEXPRESS\MSSQL\DATA\ArchiveTask17.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ArchiveTask17_log', FILENAME = N'D:\SSMS\Express\MSSQL16.SQLEXPRESS\MSSQL\DATA\ArchiveTask17_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ArchiveTask17] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ArchiveTask17].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ArchiveTask17] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ArchiveTask17] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ArchiveTask17] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ArchiveTask17] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ArchiveTask17] SET ARITHABORT OFF 
GO
ALTER DATABASE [ArchiveTask17] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ArchiveTask17] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ArchiveTask17] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ArchiveTask17] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ArchiveTask17] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ArchiveTask17] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ArchiveTask17] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ArchiveTask17] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ArchiveTask17] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ArchiveTask17] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ArchiveTask17] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ArchiveTask17] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ArchiveTask17] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ArchiveTask17] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ArchiveTask17] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ArchiveTask17] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ArchiveTask17] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ArchiveTask17] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ArchiveTask17] SET  MULTI_USER 
GO
ALTER DATABASE [ArchiveTask17] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ArchiveTask17] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ArchiveTask17] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ArchiveTask17] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ArchiveTask17] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ArchiveTask17] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ArchiveTask17] SET QUERY_STORE = ON
GO
ALTER DATABASE [ArchiveTask17] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ArchiveTask17]
GO
/****** Object:  Table [dbo].[CellCode]    Script Date: 02.03.2023 9:23:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CellCode](
	[Id] [int] NOT NULL,
	[CellCodeName] [nvarchar](50) NOT NULL,
	[Rack] [nvarchar](50) NOT NULL,
	[Shelf] [nvarchar](50) NOT NULL,
	[Cell] [nvarchar](50) NOT NULL,
	[FillTypeId] [int] NOT NULL,
 CONSTRAINT [PK_CellCode] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 02.03.2023 9:23:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Document]    Script Date: 02.03.2023 9:23:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Document](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DocumentName] [nvarchar](50) NOT NULL,
	[InventoryNumberId] [int] NOT NULL,
 CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fill]    Script Date: 02.03.2023 9:23:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fill](
	[Id] [int] NOT NULL,
	[FillType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Fill] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryNumber]    Script Date: 02.03.2023 9:23:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryNumber](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InventoryNumberName] [nvarchar](50) NOT NULL,
	[Theme] [nvarchar](50) NOT NULL,
	[Count] [nvarchar](50) NOT NULL,
	[DateOfReceipt] [nvarchar](50) NOT NULL,
	[CellCodeId] [int] NOT NULL,
 CONSTRAINT [PK_InventoryNumber] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IssuanceOfADocument]    Script Date: 02.03.2023 9:23:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IssuanceOfADocument](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[DocumentId] [int] NOT NULL,
	[DateOfIssue] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_IssuanceOfADocument] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CellCode] ([Id], [CellCodeName], [Rack], [Shelf], [Cell], [FillTypeId]) VALUES (1, N'007392069', N'1 Стеллаж', N'1 Полка', N'1 Ячейка', 1)
INSERT [dbo].[CellCode] ([Id], [CellCodeName], [Rack], [Shelf], [Cell], [FillTypeId]) VALUES (4, N'307055491', N'2 Стеллаж', N'2 Полка', N'2 Ячейка', 2)
INSERT [dbo].[CellCode] ([Id], [CellCodeName], [Rack], [Shelf], [Cell], [FillTypeId]) VALUES (5, N'327647492', N'3 Стеллаж', N'3 Полка', N'2 Ячейка', 4)
INSERT [dbo].[CellCode] ([Id], [CellCodeName], [Rack], [Shelf], [Cell], [FillTypeId]) VALUES (6, N'419275406', N'4 Стеллаж', N'4 Полка', N'4 Ячейка', 4)
INSERT [dbo].[CellCode] ([Id], [CellCodeName], [Rack], [Shelf], [Cell], [FillTypeId]) VALUES (7, N'726886160', N'5 Стеллаж', N'5 Полка', N'5 Ячейка', 5)
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Id], [FullName], [PhoneNumber]) VALUES (1, N'Дидиченко Ратибор Романович', N'+7 (993) 847-42-44')
INSERT [dbo].[Customer] ([Id], [FullName], [PhoneNumber]) VALUES (2, N'Даров Федор Тимофеевич', N'+7 (979) 334-58-90')
INSERT [dbo].[Customer] ([Id], [FullName], [PhoneNumber]) VALUES (3, N'Анисимов Мартьян Михайлович', N'+7 (917) 618-69-48')
INSERT [dbo].[Customer] ([Id], [FullName], [PhoneNumber]) VALUES (4, N'Быстров Януарий Аркадьевич', N'+7 (946) 745-65-42')
INSERT [dbo].[Customer] ([Id], [FullName], [PhoneNumber]) VALUES (5, N'Беляков Автандил Данилович', N'+7 (993) 949-43-12')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Document] ON 

INSERT [dbo].[Document] ([Id], [DocumentName], [InventoryNumberId]) VALUES (1, N'Условный документ 1', 1)
INSERT [dbo].[Document] ([Id], [DocumentName], [InventoryNumberId]) VALUES (2, N'Условный документ 2', 2)
INSERT [dbo].[Document] ([Id], [DocumentName], [InventoryNumberId]) VALUES (3, N'Условный документ 3', 3)
INSERT [dbo].[Document] ([Id], [DocumentName], [InventoryNumberId]) VALUES (4, N'Условный документ 4', 5)
INSERT [dbo].[Document] ([Id], [DocumentName], [InventoryNumberId]) VALUES (5, N'Условный документ 5', 5)
INSERT [dbo].[Document] ([Id], [DocumentName], [InventoryNumberId]) VALUES (7, N'Условный документ 6', 8)
SET IDENTITY_INSERT [dbo].[Document] OFF
GO
INSERT [dbo].[Fill] ([Id], [FillType]) VALUES (1, N'Пусто')
INSERT [dbo].[Fill] ([Id], [FillType]) VALUES (2, N'Низкая')
INSERT [dbo].[Fill] ([Id], [FillType]) VALUES (3, N'Средняя')
INSERT [dbo].[Fill] ([Id], [FillType]) VALUES (4, N'Высокая')
INSERT [dbo].[Fill] ([Id], [FillType]) VALUES (5, N'Переполнено')
GO
SET IDENTITY_INSERT [dbo].[InventoryNumber] ON 

INSERT [dbo].[InventoryNumber] ([Id], [InventoryNumberName], [Theme], [Count], [DateOfReceipt], [CellCodeId]) VALUES (1, N'№11231', N'Продажа', N'1', N'01.01.2023', 1)
INSERT [dbo].[InventoryNumber] ([Id], [InventoryNumberName], [Theme], [Count], [DateOfReceipt], [CellCodeId]) VALUES (2, N'№22123', N'Бизнес', N'2', N'02.01.2023', 4)
INSERT [dbo].[InventoryNumber] ([Id], [InventoryNumberName], [Theme], [Count], [DateOfReceipt], [CellCodeId]) VALUES (3, N'№3111123', N'Связи с общественностью', N'3', N'03.01.2023', 5)
INSERT [dbo].[InventoryNumber] ([Id], [InventoryNumberName], [Theme], [Count], [DateOfReceipt], [CellCodeId]) VALUES (4, N'№4312', N'Реклама', N'4', N'04.01.2023', 6)
INSERT [dbo].[InventoryNumber] ([Id], [InventoryNumberName], [Theme], [Count], [DateOfReceipt], [CellCodeId]) VALUES (5, N'№53123', N'Статистика', N'5', N'05.01.2023', 7)
INSERT [dbo].[InventoryNumber] ([Id], [InventoryNumberName], [Theme], [Count], [DateOfReceipt], [CellCodeId]) VALUES (8, N'№32234', N'Реклама', N'2', N'05.06.2023', 7)
SET IDENTITY_INSERT [dbo].[InventoryNumber] OFF
GO
ALTER TABLE [dbo].[CellCode]  WITH CHECK ADD  CONSTRAINT [FK_CellCode_Fill] FOREIGN KEY([FillTypeId])
REFERENCES [dbo].[Fill] ([Id])
GO
ALTER TABLE [dbo].[CellCode] CHECK CONSTRAINT [FK_CellCode_Fill]
GO
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Document_InventoryNumber] FOREIGN KEY([InventoryNumberId])
REFERENCES [dbo].[InventoryNumber] ([Id])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_Document_InventoryNumber]
GO
ALTER TABLE [dbo].[InventoryNumber]  WITH CHECK ADD  CONSTRAINT [FK_InventoryNumber_CellCode1] FOREIGN KEY([CellCodeId])
REFERENCES [dbo].[CellCode] ([Id])
GO
ALTER TABLE [dbo].[InventoryNumber] CHECK CONSTRAINT [FK_InventoryNumber_CellCode1]
GO
ALTER TABLE [dbo].[IssuanceOfADocument]  WITH CHECK ADD  CONSTRAINT [FK_IssuanceOfADocument_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[IssuanceOfADocument] CHECK CONSTRAINT [FK_IssuanceOfADocument_Customer]
GO
ALTER TABLE [dbo].[IssuanceOfADocument]  WITH CHECK ADD  CONSTRAINT [FK_IssuanceOfADocument_Document] FOREIGN KEY([DocumentId])
REFERENCES [dbo].[Document] ([Id])
GO
ALTER TABLE [dbo].[IssuanceOfADocument] CHECK CONSTRAINT [FK_IssuanceOfADocument_Document]
GO
USE [master]
GO
ALTER DATABASE [ArchiveTask17] SET  READ_WRITE 
GO
