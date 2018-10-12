USE [FarmaciaV2]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 07/09/2018 02:37:28 p. m. ******/
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
/****** Object:  Table [dbo].[Clientes]    Script Date: 07/09/2018 02:37:28 p. m. ******/
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
/****** Object:  Table [dbo].[Distrito]    Script Date: 07/09/2018 02:37:28 p. m. ******/
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
/****** Object:  Table [dbo].[OrdenPedido]    Script Date: 07/09/2018 02:37:28 p. m. ******/
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
/****** Object:  Table [dbo].[Usuario]    Script Date: 07/09/2018 02:37:28 p. m. ******/
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

