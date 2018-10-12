USE [master]
GO
/****** Object:  Database [FarmaciaV2]    Script Date: 12/10/2018 04:17:12 p. m. ******/
CREATE DATABASE [FarmaciaV2] ON  PRIMARY 
( NAME = N'FarmaciaV2', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\FarmaciaV2.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FarmaciaV2_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\FarmaciaV2_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FarmaciaV2] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FarmaciaV2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FarmaciaV2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FarmaciaV2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FarmaciaV2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FarmaciaV2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FarmaciaV2] SET ARITHABORT OFF 
GO
ALTER DATABASE [FarmaciaV2] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [FarmaciaV2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FarmaciaV2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FarmaciaV2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FarmaciaV2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FarmaciaV2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FarmaciaV2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FarmaciaV2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FarmaciaV2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FarmaciaV2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FarmaciaV2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FarmaciaV2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FarmaciaV2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FarmaciaV2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FarmaciaV2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FarmaciaV2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FarmaciaV2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FarmaciaV2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FarmaciaV2] SET  MULTI_USER 
GO
ALTER DATABASE [FarmaciaV2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FarmaciaV2] SET DB_CHAINING OFF 
GO
USE [FarmaciaV2]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 12/10/2018 04:17:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[cod_cate] [varchar](8) NOT NULL,
	[nom_des] [varchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_cate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 12/10/2018 04:17:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[cod_cli] [varchar](8) NOT NULL,
	[nom_cli] [varchar](40) NOT NULL,
	[dir_cli] [varchar](40) NULL,
	[cod_dis] [varchar](8) NULL,
	[sexo] [varchar](1) NOT NULL,
	[DNI] [int] NULL,
	[RUC] [int] NULL,
	[Telefono] [int] NULL,
	[Celular] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_cli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Distrito]    Script Date: 12/10/2018 04:17:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Distrito](
	[cod_dis] [varchar](8) NOT NULL,
	[nom_dis] [varchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_dis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdenPedido]    Script Date: 12/10/2018 04:17:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdenPedido](
	[num_ordenPedido] [varchar](8) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[cod_cli] [varchar](8) NULL,
	[nom_cli] [varchar](40) NULL,
	[cod_emp] [varchar](8) NULL,
	[cod_tipoPago] [varchar](8) NULL,
	[total] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[num_ordenPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 12/10/2018 04:17:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[cod_usu] [varchar](8) NOT NULL,
	[cod_emp] [varchar](8) NOT NULL,
	[nivel_usu] [varchar](2) NOT NULL,
	[nom_usu] [varchar](30) NOT NULL,
	[password] [varchar](10) NOT NULL,
	[activo] [varchar](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_usu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Categoria]  WITH CHECK ADD  CONSTRAINT [FK_Categoria_OrdenPedido] FOREIGN KEY([cod_cate])
REFERENCES [dbo].[OrdenPedido] ([num_ordenPedido])
GO
ALTER TABLE [dbo].[Categoria] CHECK CONSTRAINT [FK_Categoria_OrdenPedido]
GO
ALTER TABLE [dbo].[Distrito]  WITH CHECK ADD  CONSTRAINT [FK_Distrito_Clientes] FOREIGN KEY([cod_dis])
REFERENCES [dbo].[Clientes] ([cod_cli])
GO
ALTER TABLE [dbo].[Distrito] CHECK CONSTRAINT [FK_Distrito_Clientes]
GO
ALTER TABLE [dbo].[OrdenPedido]  WITH CHECK ADD  CONSTRAINT [FK_OrdenPedido_Categoria] FOREIGN KEY([cod_cli])
REFERENCES [dbo].[Categoria] ([cod_cate])
GO
ALTER TABLE [dbo].[OrdenPedido] CHECK CONSTRAINT [FK_OrdenPedido_Categoria]
GO
ALTER TABLE [dbo].[OrdenPedido]  WITH CHECK ADD  CONSTRAINT [FK_OrdenPedido_Clientes] FOREIGN KEY([cod_tipoPago])
REFERENCES [dbo].[Clientes] ([cod_cli])
GO
ALTER TABLE [dbo].[OrdenPedido] CHECK CONSTRAINT [FK_OrdenPedido_Clientes]
GO
ALTER TABLE [dbo].[OrdenPedido]  WITH CHECK ADD  CONSTRAINT [FK_OrdenPedido_Distrito] FOREIGN KEY([num_ordenPedido])
REFERENCES [dbo].[Distrito] ([cod_dis])
GO
ALTER TABLE [dbo].[OrdenPedido] CHECK CONSTRAINT [FK_OrdenPedido_Distrito]
GO
ALTER TABLE [dbo].[OrdenPedido]  WITH CHECK ADD  CONSTRAINT [FK_OrdenPedido_Usuario] FOREIGN KEY([cod_tipoPago])
REFERENCES [dbo].[Usuario] ([cod_usu])
GO
ALTER TABLE [dbo].[OrdenPedido] CHECK CONSTRAINT [FK_OrdenPedido_Usuario]
GO
USE [master]
GO
ALTER DATABASE [FarmaciaV2] SET  READ_WRITE 
GO
