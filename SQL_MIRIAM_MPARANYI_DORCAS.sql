USE [master]
GO
/****** Object:  Database [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE]    Script Date: 21/05/2024 18:38:01 ******/
CREATE DATABASE [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE] SET ARITHABORT OFF 
GO
ALTER DATABASE [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE] SET RECOVERY FULL 
GO
ALTER DATABASE [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE] SET  MULTI_USER 
GO
ALTER DATABASE [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE', N'ON'
GO
USE [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE]
GO
/****** Object:  Table [dbo].[Achats]    Script Date: 21/05/2024 18:38:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Achats](
	[numAchat] [varchar](50) NOT NULL,
	[NumCli] [varchar](50) NULL,
	[NumArt] [varchar](50) NULL,
	[Date] [date] NULL,
	[Qté] [int] NULL,
	[PU] [int] NULL,
 CONSTRAINT [PK_Achats] PRIMARY KEY CLUSTERED 
(
	[numAchat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Articles]    Script Date: 21/05/2024 18:38:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Articles](
	[NumArt] [varchar](50) NOT NULL,
	[Désignation] [varchar](50) NOT NULL,
	[Catégorie] [varchar](50) NULL,
	[Prix] [int] NULL,
 CONSTRAINT [PK_Articles] PRIMARY KEY CLUSTERED 
(
	[NumArt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_Désignation] UNIQUE NONCLUSTERED 
(
	[Désignation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 21/05/2024 18:38:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clients](
	[NumCli] [varchar](50) NOT NULL,
	[Nom] [varchar](50) NOT NULL,
	[Postnom] [varchar](50) NOT NULL,
	[Prénom] [varchar](50) NOT NULL,
	[Adresse] [varchar](100) NULL,
	[Cp] [varchar](10) NULL,
	[Ville] [varchar](50) NULL,
	[Téléphone] [varchar](15) NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[NumCli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_NomPostnomPrenom] UNIQUE NONCLUSTERED 
(
	[Nom] ASC,
	[Postnom] ASC,
	[Prénom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[Vue_Prenom]    Script Date: 21/05/2024 18:38:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Vue_Prenom] AS
SELECT *FROM Clients
WHERE Prénom = 'DORCAS';
GO
ALTER TABLE [dbo].[Achats]  WITH CHECK ADD  CONSTRAINT [FK_Achats_Articles] FOREIGN KEY([NumArt])
REFERENCES [dbo].[Articles] ([NumArt])
GO
ALTER TABLE [dbo].[Achats] CHECK CONSTRAINT [FK_Achats_Articles]
GO
ALTER TABLE [dbo].[Achats]  WITH CHECK ADD  CONSTRAINT [FK_Achats_Clients] FOREIGN KEY([NumCli])
REFERENCES [dbo].[Clients] ([NumCli])
GO
ALTER TABLE [dbo].[Achats] CHECK CONSTRAINT [FK_Achats_Clients]
GO
USE [master]
GO
ALTER DATABASE [MIRIAM_MPARANYI_DORCAS_LIC2_LIAGE] SET  READ_WRITE 
GO
