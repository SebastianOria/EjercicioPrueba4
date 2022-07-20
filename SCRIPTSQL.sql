USE [master]
GO

/****** Object:  Database [MedidoresDB]    Script Date: 20-07-2022 13:39:42 ******/
CREATE DATABASE [MedidoresDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MedidoresDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MedidoresDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MedidoresDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MedidoresDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MedidoresDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [MedidoresDB] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [MedidoresDB] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [MedidoresDB] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [MedidoresDB] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [MedidoresDB] SET ARITHABORT OFF 
GO

ALTER DATABASE [MedidoresDB] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [MedidoresDB] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [MedidoresDB] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [MedidoresDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [MedidoresDB] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [MedidoresDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [MedidoresDB] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [MedidoresDB] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [MedidoresDB] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [MedidoresDB] SET  DISABLE_BROKER 
GO

ALTER DATABASE [MedidoresDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [MedidoresDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [MedidoresDB] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [MedidoresDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [MedidoresDB] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [MedidoresDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [MedidoresDB] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [MedidoresDB] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [MedidoresDB] SET  MULTI_USER 
GO

ALTER DATABASE [MedidoresDB] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [MedidoresDB] SET DB_CHAINING OFF 
GO

ALTER DATABASE [MedidoresDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [MedidoresDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [MedidoresDB] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [MedidoresDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [MedidoresDB] SET QUERY_STORE = OFF
GO

ALTER DATABASE [MedidoresDB] SET  READ_WRITE 
GO

USE [MedidoresDB]
GO

/****** Object:  Table [dbo].[Lecturas]    Script Date: 20-07-2022 13:40:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Lecturas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdMedidor] [int] NOT NULL,
	[Consumo] [varchar](10) NOT NULL,
	[Fecha] [smalldatetime] NOT NULL
) ON [PRIMARY]
GO

USE [MedidoresDB]
GO

/****** Object:  Table [dbo].[Medidor]    Script Date: 20-07-2022 13:40:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Medidor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdMedidor] [int] NULL,
	[Tipo] [varchar](10) NULL
) ON [PRIMARY]
GO

