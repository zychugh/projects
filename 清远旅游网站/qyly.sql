USE [master]
GO
/****** Object:  Database [qyly]    Script Date: 2018/12/9 10:38:39 ******/
CREATE DATABASE [qyly] ON  PRIMARY 
( NAME = N'qyly', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\qyly.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'qyly_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\qyly_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [qyly] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [qyly].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [qyly] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [qyly] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [qyly] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [qyly] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [qyly] SET ARITHABORT OFF 
GO
ALTER DATABASE [qyly] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [qyly] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [qyly] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [qyly] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [qyly] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [qyly] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [qyly] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [qyly] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [qyly] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [qyly] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [qyly] SET  DISABLE_BROKER 
GO
ALTER DATABASE [qyly] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [qyly] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [qyly] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [qyly] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [qyly] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [qyly] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [qyly] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [qyly] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [qyly] SET  MULTI_USER 
GO
ALTER DATABASE [qyly] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [qyly] SET DB_CHAINING OFF 
GO
USE [qyly]
GO
/****** Object:  Table [dbo].[administrator]    Script Date: 2018/12/9 10:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[administrator](
	[adminName] [nchar](10) NOT NULL,
	[password] [nchar](10) NOT NULL,
 CONSTRAINT [PK_administrator] PRIMARY KEY CLUSTERED 
(
	[adminName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[feedback]    Script Date: 2018/12/9 10:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feedback](
	[userName] [nchar](10) NOT NULL,
	[feedback] [text] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[indexPics]    Script Date: 2018/12/9 10:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[indexPics](
	[category] [nchar](10) NOT NULL,
	[picName] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[news]    Script Date: 2018/12/9 10:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[news](
	[type] [nchar](10) NOT NULL,
	[newsHead] [text] NOT NULL,
	[newsCon] [text] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[user]    Script Date: 2018/12/9 10:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[userName] [nchar](10) NOT NULL,
	[password] [nchar](10) NOT NULL,
	[gender] [nchar](10) NULL
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [qyly] SET  READ_WRITE 
GO
