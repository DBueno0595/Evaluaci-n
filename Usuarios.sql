USE [master]
GO
/****** Object:  Database [USUARIOS]    Script Date: 04/03/2020 8:51:39 a. m. ******/
CREATE DATABASE [USUARIOS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'USUARIOS', FILENAME = N'C:\Users\EQ-142\USUARIOS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'USUARIOS_log', FILENAME = N'C:\Users\EQ-142\USUARIOS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [USUARIOS] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [USUARIOS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [USUARIOS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [USUARIOS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [USUARIOS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [USUARIOS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [USUARIOS] SET ARITHABORT OFF 
GO
ALTER DATABASE [USUARIOS] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [USUARIOS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [USUARIOS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [USUARIOS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [USUARIOS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [USUARIOS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [USUARIOS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [USUARIOS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [USUARIOS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [USUARIOS] SET  ENABLE_BROKER 
GO
ALTER DATABASE [USUARIOS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [USUARIOS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [USUARIOS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [USUARIOS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [USUARIOS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [USUARIOS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [USUARIOS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [USUARIOS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [USUARIOS] SET  MULTI_USER 
GO
ALTER DATABASE [USUARIOS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [USUARIOS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [USUARIOS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [USUARIOS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [USUARIOS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [USUARIOS] SET QUERY_STORE = OFF
GO
USE [USUARIOS]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [USUARIOS]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 04/03/2020 8:51:39 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERS]    Script Date: 04/03/2020 8:51:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS](
	[IdUser] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [varchar](30) NULL,
	[Email] [varchar](30) NULL,
	[Contraseña] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[USERS] ON 

INSERT [dbo].[USERS] ([IdUser], [Usuario], [Email], [Contraseña]) VALUES (1, N'Diego Bueno', N'Dbueno@cdtdegas.com', N'1234')
INSERT [dbo].[USERS] ([IdUser], [Usuario], [Email], [Contraseña]) VALUES (2, N'Manuel Torres', N'Mtorres@cdtdegas.com', N'1234')
INSERT [dbo].[USERS] ([IdUser], [Usuario], [Email], [Contraseña]) VALUES (3, N'Edson Barreto', N'Ebarreto@cdtdegas.com', N'1234')
SET IDENTITY_INSERT [dbo].[USERS] OFF
USE [master]
GO
ALTER DATABASE [USUARIOS] SET  READ_WRITE 
GO
