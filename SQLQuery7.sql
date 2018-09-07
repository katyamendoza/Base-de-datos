USE [master]
GO

/****** Object:  Database [Farmacia]    Script Date: 07/09/2018 02:37:28 p. m. ******/
CREATE DATABASE [Farmacia] ON  PRIMARY 
( NAME = N'Farmacia', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\Farmacia.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Farmacia_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\Farmacia_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [Farmacia] SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Farmacia].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Farmacia] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Farmacia] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Farmacia] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Farmacia] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Farmacia] SET ARITHABORT OFF 
GO

ALTER DATABASE [Farmacia] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Farmacia] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Farmacia] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Farmacia] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Farmacia] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Farmacia] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Farmacia] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Farmacia] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Farmacia] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Farmacia] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Farmacia] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Farmacia] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Farmacia] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Farmacia] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Farmacia] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Farmacia] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Farmacia] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Farmacia] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [Farmacia] SET  MULTI_USER 
GO

ALTER DATABASE [Farmacia] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Farmacia] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Farmacia] SET  READ_WRITE 
GO

