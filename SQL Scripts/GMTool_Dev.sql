USE [master]
GO
/****** Object:  Database [GMTool_Dev]    Script Date: 29/05/2017 0:30:27 ******/
CREATE DATABASE [GMTool_Dev]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GMTool_Dev', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\GMTool_Dev.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GMTool_Dev_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\GMTool_Dev_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [GMTool_Dev] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GMTool_Dev].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GMTool_Dev] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GMTool_Dev] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GMTool_Dev] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GMTool_Dev] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GMTool_Dev] SET ARITHABORT OFF 
GO
ALTER DATABASE [GMTool_Dev] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GMTool_Dev] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GMTool_Dev] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GMTool_Dev] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GMTool_Dev] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GMTool_Dev] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GMTool_Dev] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GMTool_Dev] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GMTool_Dev] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GMTool_Dev] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GMTool_Dev] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GMTool_Dev] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GMTool_Dev] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GMTool_Dev] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GMTool_Dev] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GMTool_Dev] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GMTool_Dev] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GMTool_Dev] SET RECOVERY FULL 
GO
ALTER DATABASE [GMTool_Dev] SET  MULTI_USER 
GO
ALTER DATABASE [GMTool_Dev] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GMTool_Dev] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GMTool_Dev] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GMTool_Dev] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GMTool_Dev] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'GMTool_Dev', N'ON'
GO
ALTER DATABASE [GMTool_Dev] SET QUERY_STORE = OFF
GO
USE [GMTool_Dev]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [GMTool_Dev]
GO
/****** Object:  Table [dbo].[contacto]    Script Date: 29/05/2017 0:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contacto](
	[id_contacto] [numeric](18, 0) NOT NULL,
	[id_contacto_tipo] [numeric](18, 0) NOT NULL,
	[valor] [varchar](100) NOT NULL,
	[descripcion] [varchar](500) NULL,
 CONSTRAINT [PK_contacto] PRIMARY KEY CLUSTERED 
(
	[id_contacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[contacto_tipo]    Script Date: 29/05/2017 0:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contacto_tipo](
	[id_contacto_tipo] [numeric](18, 0) NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](500) NULL,
 CONSTRAINT [PK_contacto_tipo] PRIMARY KEY CLUSTERED 
(
	[id_contacto_tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[nota]    Script Date: 29/05/2017 0:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nota](
	[id_nota] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[id_nota_nota] [numeric](18, 0) NULL,
	[id_nota_tipo] [numeric](18, 0) NULL,
	[titulo] [varchar](50) NULL,
	[valor1] [varchar](500) NOT NULL,
	[valor2] [varchar](500) NULL,
	[valor3] [varchar](500) NULL,
	[estado] [char](1) NULL,
	[fecha_insert] [datetime] NULL,
	[fecha_modificacion] [datetime] NULL,
 CONSTRAINT [PK_nota] PRIMARY KEY CLUSTERED 
(
	[id_nota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[nota_historia]    Script Date: 29/05/2017 0:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nota_historia](
	[id_nota_historia] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[id_nota] [numeric](18, 0) NOT NULL,
	[id_usuario] [numeric](18, 0) NOT NULL,
	[fecha_modificacion] [datetime] NOT NULL,
 CONSTRAINT [PK_nota_historia] PRIMARY KEY CLUSTERED 
(
	[id_nota_historia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[nota_tipo]    Script Date: 29/05/2017 0:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nota_tipo](
	[id_nota_tipo] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[estado] [char](1) NULL,
 CONSTRAINT [PK_nota_tipo] PRIMARY KEY CLUSTERED 
(
	[id_nota_tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pais]    Script Date: 29/05/2017 0:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pais](
	[cod_pais_numerico] [numeric](5, 0) NOT NULL,
	[cod_pais_alfa_2] [char](2) NOT NULL,
	[cod_pais_alfa_3] [char](3) NOT NULL,
	[nombre_oficial] [varchar](100) NULL,
	[nombre_comun] [varchar](100) NULL,
	[observacion] [varchar](500) NULL,
 CONSTRAINT [PK_pais] PRIMARY KEY CLUSTERED 
(
	[cod_pais_alfa_3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[persona]    Script Date: 29/05/2017 0:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[persona](
	[id_persona] [numeric](18, 0) NOT NULL,
	[nombres] [varchar](50) NULL,
	[apellido_paterno] [varchar](50) NULL,
	[apellido_materno] [varchar](50) NULL,
	[cod_pais_alfa_3] [char](3) NULL,
 CONSTRAINT [PK_persona] PRIMARY KEY CLUSTERED 
(
	[id_persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[persona_alias]    Script Date: 29/05/2017 0:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[persona_alias](
	[id_persona_alias] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[id_persona] [numeric](18, 0) NOT NULL,
	[valor] [varchar](50) NOT NULL,
 CONSTRAINT [PK_persona_alias] PRIMARY KEY CLUSTERED 
(
	[id_persona_alias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[persona_rel_contacto]    Script Date: 29/05/2017 0:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[persona_rel_contacto](
	[id_persona] [numeric](18, 0) NOT NULL,
	[id_contacto] [numeric](18, 0) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[persona_rel_nota]    Script Date: 29/05/2017 0:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[persona_rel_nota](
	[id_persona] [numeric](18, 0) NOT NULL,
	[id_nota] [numeric](18, 0) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sis_usuario]    Script Date: 29/05/2017 0:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sis_usuario](
	[id_usuario] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[id_usuario_tipo] [numeric](18, 0) NOT NULL,
	[id_persona] [numeric](18, 0) NULL,
	[nombre_acceso] [varchar](50) NULL,
	[contraseña] [varchar](50) NULL,
 CONSTRAINT [PK_sis_usuario] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sis_usuario_tipo]    Script Date: 29/05/2017 0:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sis_usuario_tipo](
	[id_usuario_tipo] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[estado] [char](1) NULL,
 CONSTRAINT [PK_sis_usuario_tipo] PRIMARY KEY CLUSTERED 
(
	[id_usuario_tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[wow_hermandad]    Script Date: 29/05/2017 0:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wow_hermandad](
	[id_hermandad] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[id_reino] [numeric](18, 0) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[faccion] [char](1) NOT NULL,
	[estado] [char](1) NULL,
 CONSTRAINT [PK_wow_hermandad] PRIMARY KEY CLUSTERED 
(
	[id_hermandad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[wow_hermandad_rango]    Script Date: 29/05/2017 0:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wow_hermandad_rango](
	[id_hermandad] [numeric](18, 0) NOT NULL,
	[rango_hermandad] [numeric](18, 0) NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](150) NULL,
	[estado] [char](1) NULL,
 CONSTRAINT [PK_wow_hermandad_rango] PRIMARY KEY CLUSTERED 
(
	[id_hermandad] ASC,
	[rango_hermandad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[wow_personaje]    Script Date: 29/05/2017 0:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wow_personaje](
	[id_personaje] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[id_persona] [numeric](18, 0) NULL,
	[id_reino] [numeric](18, 0) NOT NULL,
	[id_hermandad] [numeric](18, 0) NULL,
	[rango_hermandad] [numeric](18, 0) NULL,
	[nombre] [varchar](50) NOT NULL,
	[genero] [numeric](1, 0) NULL,
	[nivel] [numeric](18, 0) NULL,
	[raza] [numeric](18, 0) NULL,
	[estado] [char](1) NULL,
 CONSTRAINT [PK_wow_personaje] PRIMARY KEY CLUSTERED 
(
	[id_personaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[wow_personaje_rel_nota]    Script Date: 29/05/2017 0:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wow_personaje_rel_nota](
	[id_personaje] [numeric](18, 0) NOT NULL,
	[id_nota] [numeric](18, 0) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[wow_reino]    Script Date: 29/05/2017 0:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wow_reino](
	[id_reino] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[zona] [varchar](3) NOT NULL,
	[estado] [char](1) NULL,
 CONSTRAINT [PK_wow_reino] PRIMARY KEY CLUSTERED 
(
	[id_reino] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(533 AS Numeric(5, 0)), N'AW', N'ABW', N'Aruba', N'Aruba', N'Forma parte del Reino de los Países Bajos.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(4 AS Numeric(5, 0)), N'AF', N'AFG', N'Afganistán', N'Afganistán', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(24 AS Numeric(5, 0)), N'AO', N'AGO', N'Angola', N'Angola', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(660 AS Numeric(5, 0)), N'AI', N'AIA', N'Anguila', N'Anguila', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(248 AS Numeric(5, 0)), N'AX', N'ALA', N'Åland, Islas', N'Åland', N'Es una provincia autónoma de Finlandia.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(8 AS Numeric(5, 0)), N'AL', N'ALB', N'Albania', N'Albania', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(20 AS Numeric(5, 0)), N'AD', N'AND', N'Andorra', N'Andorra', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(784 AS Numeric(5, 0)), N'AE', N'ARE', N'Emiratos Árabes Unidos (los)', N'Emiratos Árabes Unidos', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(32 AS Numeric(5, 0)), N'AR', N'ARG', N'Argentina', N'Argentina', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(51 AS Numeric(5, 0)), N'AM', N'ARM', N'Armenia', N'Armenia', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(16 AS Numeric(5, 0)), N'AS', N'ASM', N'Samoa Americana', N'Samoa Americana', N'Territorio no incorporado de los Estados Unidos.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(10 AS Numeric(5, 0)), N'AQ', N'ATA', N'Antártida', N'Antártida', N'Cubre el territorio al sur del paralelo 60º sur. /
Códigos obtenidos del nombre en francés: Antarctique')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(260 AS Numeric(5, 0)), N'TF', N'ATF', N'Tierras Australes Francesas (las)', N'Tierras Australes y Antárticas Francesas', N'Comprende las tierras australes y antárticas francesas excepto la parte incluida en la Antártida conocida como Tierra Adelia. /
Códigos obtenidos del nombre en francés: Terres australes françaises.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(28 AS Numeric(5, 0)), N'AG', N'ATG', N'Antigua y Barbuda', N'Antigua y Barbuda', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(36 AS Numeric(5, 0)), N'AU', N'AUS', N'Australia', N'Australia', N'Incluye las Islas Ashmore y Cartier y las Islas del Mar del Coral.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(40 AS Numeric(5, 0)), N'AT', N'AUT', N'Austria', N'Austria', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(31 AS Numeric(5, 0)), N'AZ', N'AZE', N'Azerbaiyán', N'Azerbaiyán', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(108 AS Numeric(5, 0)), N'BI', N'BDI', N'Burundi', N'Burundi', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(56 AS Numeric(5, 0)), N'BE', N'BEL', N'Bélgica', N'Bélgica', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(204 AS Numeric(5, 0)), N'BJ', N'BEN', N'Benin', N'Benín', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(535 AS Numeric(5, 0)), N'BQ', N'BES', N'Bonaire, San Eustaquio y Saba', N'Bonaire, San Eustaquio y Saba', N'Son tres municipios especiales que forman parte de los Países Bajos.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(854 AS Numeric(5, 0)), N'BF', N'BFA', N'Burkina Faso', N'Burkina Faso', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(50 AS Numeric(5, 0)), N'BD', N'BGD', N'Bangladesh', N'Bangladés', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(100 AS Numeric(5, 0)), N'BG', N'BGR', N'Bulgaria', N'Bulgaria', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(48 AS Numeric(5, 0)), N'BH', N'BHR', N'Bahrein', N'Baréin', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(44 AS Numeric(5, 0)), N'BS', N'BHS', N'Bahamas (las)', N'Bahamas', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(70 AS Numeric(5, 0)), N'BA', N'BIH', N'Bosnia y Herzegovina', N'Bosnia y Herzegovina', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(652 AS Numeric(5, 0)), N'BL', N'BLM', N'Saint Barthélemy', N'San Bartolomé', N'Colectividad de ultramar francesa. Nombre oficial en la ISO en francés.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(112 AS Numeric(5, 0)), N'BY', N'BLR', N'Belarús', N'Bielorrusia', N'El nombre oficial del país es Belarús, aunque tradicionalmente se le sigue denominando Bielorrusia.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(84 AS Numeric(5, 0)), N'BZ', N'BLZ', N'Belice', N'Belice', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(60 AS Numeric(5, 0)), N'BM', N'BMU', N'Bermudas', N'Bermudas', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(68 AS Numeric(5, 0)), N'BO', N'BOL', N'Bolivia (Estado Plurinacional de)', N'Bolivia', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(76 AS Numeric(5, 0)), N'BR', N'BRA', N'Brasil', N'Brasil', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(52 AS Numeric(5, 0)), N'BB', N'BRB', N'Barbados', N'Barbados', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(96 AS Numeric(5, 0)), N'BN', N'BRN', N'Brunei Darussalam', N'Brunéi', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(64 AS Numeric(5, 0)), N'BT', N'BTN', N'Bhután', N'Bután', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(74 AS Numeric(5, 0)), N'BV', N'BVT', N'Bouvet, Isla', N'Isla Bouvet', N'Pertenece a Noruega.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(72 AS Numeric(5, 0)), N'BW', N'BWA', N'Botswana', N'Botsuana', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(140 AS Numeric(5, 0)), N'CF', N'CAF', N'República Centroafricana (la)', N'República Centroafricana', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(124 AS Numeric(5, 0)), N'CA', N'CAN', N'Canadá', N'Canadá', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(166 AS Numeric(5, 0)), N'CC', N'CCK', N'Cocos / Keeling, (las) Islas', N'Islas Cocos', N'Pertenecen a Australia.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(756 AS Numeric(5, 0)), N'CH', N'CHE', N'Suiza', N'Suiza', N'Códigos obtenidos del nombre en latín: Confoederatio Helvetica')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(152 AS Numeric(5, 0)), N'CL', N'CHL', N'Chile', N'Chile', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(156 AS Numeric(5, 0)), N'CN', N'CHN', N'China', N'China', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(384 AS Numeric(5, 0)), N'CI', N'CIV', N'Côte d''Ivoire', N'Costa de Marfil', N'Nombre oficial en la ISO en francés.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(120 AS Numeric(5, 0)), N'CM', N'CMR', N'Camerún', N'Camerún', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(180 AS Numeric(5, 0)), N'CD', N'COD', N'Congo (la República Democrática del)', N'República Democrática del Congo', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(178 AS Numeric(5, 0)), N'CG', N'COG', N'Congo (el)', N'República del Congo', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(184 AS Numeric(5, 0)), N'CK', N'COK', N'Cook, (las) Islas', N'Islas Cook', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(170 AS Numeric(5, 0)), N'CO', N'COL', N'Colombia', N'Colombia', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(174 AS Numeric(5, 0)), N'KM', N'COM', N'Comoras (las)', N'Comoras', N'Códigos obtenidos del idioma nativo (comorense): Komori')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(132 AS Numeric(5, 0)), N'CV', N'CPV', N'Cabo Verde', N'Cabo Verde', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(188 AS Numeric(5, 0)), N'CR', N'CRI', N'Costa Rica', N'Costa Rica', N'Nombre oficial en la ISO en español.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(192 AS Numeric(5, 0)), N'CU', N'CUB', N'Cuba', N'Cuba', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(531 AS Numeric(5, 0)), N'CW', N'CUW', N'Curaçao', N'Curazao', N'Forma parte del Reino de los Países Bajos.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(162 AS Numeric(5, 0)), N'CX', N'CXR', N'Navidad, Isla de', N'Isla de Navidad', N'Pertenece a Australia.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(136 AS Numeric(5, 0)), N'KY', N'CYM', N'Caimán, (las) Islas', N'Islas Caimán', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(196 AS Numeric(5, 0)), N'CY', N'CYP', N'Chipre', N'Chipre', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(203 AS Numeric(5, 0)), N'CZ', N'CZE', N'Chequia', N'República Checa', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(276 AS Numeric(5, 0)), N'DE', N'DEU', N'Alemania', N'Alemania', N'Códigos obtenidos del idioma nativo (alemán): Deutschland /
Códigos alfa usados por Alemania Occidental antes de la reunificación alemana en 1990.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(262 AS Numeric(5, 0)), N'DJ', N'DJI', N'Djibouti', N'Yibuti', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(212 AS Numeric(5, 0)), N'DM', N'DMA', N'Dominica', N'Dominica', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(208 AS Numeric(5, 0)), N'DK', N'DNK', N'Dinamarca', N'Dinamarca', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(214 AS Numeric(5, 0)), N'DO', N'DOM', N'Dominicana, (la) República', N'República Dominicana', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(12 AS Numeric(5, 0)), N'DZ', N'DZA', N'Argelia', N'Argelia', N'Códigos obtenidos del idioma nativo (cabilio): Dzayer')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(218 AS Numeric(5, 0)), N'EC', N'ECU', N'Ecuador', N'Ecuador', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(818 AS Numeric(5, 0)), N'EG', N'EGY', N'Egipto', N'Egipto', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(232 AS Numeric(5, 0)), N'ER', N'ERI', N'Eritrea', N'Eritrea', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(732 AS Numeric(5, 0)), N'EH', N'ESH', N'Sahara Occidental', N'República Árabe Saharaui Democrática', N'Nombre provisional. Anterior nombre en la ISO: Sahara español /
Códigos obtenidos del anterior nombre en español')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(724 AS Numeric(5, 0)), N'ES', N'ESP', N'España', N'España', N'Códigos obtenidos del idioma nativo (español): España')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(233 AS Numeric(5, 0)), N'EE', N'EST', N'Estonia', N'Estonia', N'Códigos obtenidos del idioma nativo (estonio): Eesti')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(231 AS Numeric(5, 0)), N'ET', N'ETH', N'Etiopía', N'Etiopía', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(246 AS Numeric(5, 0)), N'FI', N'FIN', N'Finlandia', N'Finlandia', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(242 AS Numeric(5, 0)), N'FJ', N'FJI', N'Fiji', N'Fiyi', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(238 AS Numeric(5, 0)), N'FK', N'FLK', N'Malvinas [Falkland], (las) Islas', N'Islas Malvinas', N'Códigos obtenidos del nombre en (inglés): Falkland')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(250 AS Numeric(5, 0)), N'FR', N'FRA', N'Francia', N'Francia', N'Incluye la Isla Clipperton.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(234 AS Numeric(5, 0)), N'FO', N'FRO', N'Feroe, (las) Islas', N'Islas Feroe', N'Pertenecen al Reino de Dinamarca.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(583 AS Numeric(5, 0)), N'FM', N'FSM', N'Micronesia (Estados Federados de)', N'Micronesia', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(266 AS Numeric(5, 0)), N'GA', N'GAB', N'Gabón', N'Gabón', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(826 AS Numeric(5, 0)), N'GB', N'GBR', N'Reino Unido de Gran Bretaña e Irlanda del Norte (el)', N'Reino Unido', N'Debido a que para obtener los códigos ISO no se utilizan las palabras comunes de Reino y Unido, los códigos se han obtenido a partir del resto del nombre oficial.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(268 AS Numeric(5, 0)), N'GE', N'GEO', N'Georgia', N'Georgia', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(831 AS Numeric(5, 0)), N'GG', N'GGY', N'Guernsey', N'Guernsey', N'Una dependencia de la Corona británica.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(288 AS Numeric(5, 0)), N'GH', N'GHA', N'Ghana', N'Ghana', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(292 AS Numeric(5, 0)), N'GI', N'GIB', N'Gibraltar', N'Gibraltar', N'Pertenece al Reino Unido.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(324 AS Numeric(5, 0)), N'GN', N'GIN', N'Guinea', N'Guinea', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(312 AS Numeric(5, 0)), N'GP', N'GLP', N'Guadeloupe', N'Guadalupe', N'Departamento de ultramar francés. Nombre oficial en la ISO en francés.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(270 AS Numeric(5, 0)), N'GM', N'GMB', N'Gambia (la)', N'Gambia', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(624 AS Numeric(5, 0)), N'GW', N'GNB', N'Guinea Bissau', N'Guinea-Bisáu', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(226 AS Numeric(5, 0)), N'GQ', N'GNQ', N'Guinea Ecuatorial', N'Guinea Ecuatorial', N'Códigos obtenidos del nombre en francés: Guinée équatoriale')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(300 AS Numeric(5, 0)), N'GR', N'GRC', N'Grecia', N'Grecia', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(308 AS Numeric(5, 0)), N'GD', N'GRD', N'Granada', N'Granada', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(304 AS Numeric(5, 0)), N'GL', N'GRL', N'Groenlandia', N'Groenlandia', N'Pertenece al Reino de Dinamarca.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(320 AS Numeric(5, 0)), N'GT', N'GTM', N'Guatemala', N'Guatemala', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(254 AS Numeric(5, 0)), N'GF', N'GUF', N'Guayana Francesa', N'Guayana Francesa', N'Departamento de ultramar francés. /
Códigos obtenidos del nombre en francés: Guyane française')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(316 AS Numeric(5, 0)), N'GU', N'GUM', N'Guam', N'Guam', N'Territorio no incorporado de los Estados Unidos.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(328 AS Numeric(5, 0)), N'GY', N'GUY', N'Guyana', N'Guyana', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(344 AS Numeric(5, 0)), N'HK', N'HKG', N'Hong Kong', N'Hong Kong', N'Región administrativa especial de China.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(334 AS Numeric(5, 0)), N'HM', N'HMD', N'Heard (Isla) e Islas McDonald', N'Islas Heard y McDonald', N'Pertenecen a Australia.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(340 AS Numeric(5, 0)), N'HN', N'HND', N'Honduras', N'Honduras', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(191 AS Numeric(5, 0)), N'HR', N'HRV', N'Croacia', N'Croacia', N'Códigos obtenidos del idioma nativo (croata): Hrvatska')
GO
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(332 AS Numeric(5, 0)), N'HT', N'HTI', N'Haití', N'Haití', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(348 AS Numeric(5, 0)), N'HU', N'HUN', N'Hungría', N'Hungría', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(360 AS Numeric(5, 0)), N'ID', N'IDN', N'Indonesia', N'Indonesia', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(833 AS Numeric(5, 0)), N'IM', N'IMN', N'Isla de Man', N'Isla de Man', N'Una dependencia de la Corona británica.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(356 AS Numeric(5, 0)), N'IN', N'IND', N'India', N'India', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(86 AS Numeric(5, 0)), N'IO', N'IOT', N'Territorio Británico del Océano Índico (el)', N'Territorio Británico del Océano Índico', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(372 AS Numeric(5, 0)), N'IE', N'IRL', N'Irlanda', N'Irlanda', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(364 AS Numeric(5, 0)), N'IR', N'IRN', N'Irán (República Islámica de)', N'Irán', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(368 AS Numeric(5, 0)), N'IQ', N'IRQ', N'Iraq', N'Irak', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(352 AS Numeric(5, 0)), N'IS', N'ISL', N'Islandia', N'Islandia', N'Códigos obtenidos del idioma nativo (islandés): Ísland')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(376 AS Numeric(5, 0)), N'IL', N'ISR', N'Israel', N'Israel', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(380 AS Numeric(5, 0)), N'IT', N'ITA', N'Italia', N'Italia', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(388 AS Numeric(5, 0)), N'JM', N'JAM', N'Jamaica', N'Jamaica', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(832 AS Numeric(5, 0)), N'JE', N'JEY', N'Jersey', N'Jersey', N'Una dependencia de la Corona británica.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(400 AS Numeric(5, 0)), N'JO', N'JOR', N'Jordania', N'Jordania', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(392 AS Numeric(5, 0)), N'JP', N'JPN', N'Japón', N'Japón', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(398 AS Numeric(5, 0)), N'KZ', N'KAZ', N'Kazajstán', N'Kazajistán', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(404 AS Numeric(5, 0)), N'KE', N'KEN', N'Kenya', N'Kenia', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(417 AS Numeric(5, 0)), N'KG', N'KGZ', N'Kirguistán', N'Kirguistán', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(116 AS Numeric(5, 0)), N'KH', N'KHM', N'Camboya', N'Camboya', N'Códigos obtenidos del anterior nombre: Khmer Republic (República Jemer)')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(296 AS Numeric(5, 0)), N'KI', N'KIR', N'Kiribati', N'Kiribati', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(659 AS Numeric(5, 0)), N'KN', N'KNA', N'Saint Kitts y Nevis', N'San Cristóbal y Nieves', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(410 AS Numeric(5, 0)), N'KR', N'KOR', N'Corea (la República de)', N'Corea del Sur', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(414 AS Numeric(5, 0)), N'KW', N'KWT', N'Kuwait', N'Kuwait', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(418 AS Numeric(5, 0)), N'LA', N'LAO', N'Lao, (la) República Democrática Popular', N'Laos', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(422 AS Numeric(5, 0)), N'LB', N'LBN', N'Líbano', N'Líbano', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(430 AS Numeric(5, 0)), N'LR', N'LBR', N'Liberia', N'Liberia', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(434 AS Numeric(5, 0)), N'LY', N'LBY', N'Libia', N'Libia', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(662 AS Numeric(5, 0)), N'LC', N'LCA', N'Santa Lucía', N'Santa Lucía', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(438 AS Numeric(5, 0)), N'LI', N'LIE', N'Liechtenstein', N'Liechtenstein', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(144 AS Numeric(5, 0)), N'LK', N'LKA', N'Sri Lanka', N'Sri Lanka', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(426 AS Numeric(5, 0)), N'LS', N'LSO', N'Lesotho', N'Lesoto', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(440 AS Numeric(5, 0)), N'LT', N'LTU', N'Lituania', N'Lituania', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(442 AS Numeric(5, 0)), N'LU', N'LUX', N'Luxemburgo', N'Luxemburgo', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(428 AS Numeric(5, 0)), N'LV', N'LVA', N'Letonia', N'Letonia', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(446 AS Numeric(5, 0)), N'MO', N'MAC', N'Macao', N'Macao', N'Región administrativa especial de China.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(663 AS Numeric(5, 0)), N'MF', N'MAF', N'Saint Martin (parte francesa)', N'San Martín', N'Colectividad de ultramar francesa. Nombre oficial en la ISO en francés.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(504 AS Numeric(5, 0)), N'MA', N'MAR', N'Marruecos', N'Marruecos', N'Códigos obtenidos del nombre en francés: Maroc')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(492 AS Numeric(5, 0)), N'MC', N'MCO', N'Mónaco', N'Mónaco', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(498 AS Numeric(5, 0)), N'MD', N'MDA', N'Moldova (la República de)', N'Moldavia', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(450 AS Numeric(5, 0)), N'MG', N'MDG', N'Madagascar', N'Madagascar', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(462 AS Numeric(5, 0)), N'MV', N'MDV', N'Maldivas', N'Maldivas', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(484 AS Numeric(5, 0)), N'MX', N'MEX', N'México', N'México', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(584 AS Numeric(5, 0)), N'MH', N'MHL', N'Marshall, (las) Islas', N'Islas Marshall', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(807 AS Numeric(5, 0)), N'MK', N'MKD', N'Macedonia (la ex República Yugoslava de)', N'Macedonia', N'Ver: Disputa sobre el nombre de Macedonia /
Códigos obtenidos del idioma nativo (macedonio): Makedonija')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(466 AS Numeric(5, 0)), N'ML', N'MLI', N'Malí', N'Malí', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(470 AS Numeric(5, 0)), N'MT', N'MLT', N'Malta', N'Malta', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(104 AS Numeric(5, 0)), N'MM', N'MMR', N'Myanmar', N'Myanmar', N'Anteriormente conocida como Birmania.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(499 AS Numeric(5, 0)), N'ME', N'MNE', N'Montenegro', N'Montenegro', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(496 AS Numeric(5, 0)), N'MN', N'MNG', N'Mongolia', N'Mongolia', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(580 AS Numeric(5, 0)), N'MP', N'MNP', N'Marianas del Norte, (las) Islas', N'Islas Marianas del Norte', N'Territorio no incorporado de los Estados Unidos.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(508 AS Numeric(5, 0)), N'MZ', N'MOZ', N'Mozambique', N'Mozambique', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(478 AS Numeric(5, 0)), N'MR', N'MRT', N'Mauritania', N'Mauritania', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(500 AS Numeric(5, 0)), N'MS', N'MSR', N'Montserrat', N'Montserrat', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(474 AS Numeric(5, 0)), N'MQ', N'MTQ', N'Martinique', N'Martinica', N'Departamento de ultramar francés. Nombre oficial en la ISO en francés.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(480 AS Numeric(5, 0)), N'MU', N'MUS', N'Mauricio', N'Mauricio', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(454 AS Numeric(5, 0)), N'MW', N'MWI', N'Malawi', N'Malaui', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(458 AS Numeric(5, 0)), N'MY', N'MYS', N'Malasia', N'Malasia', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(175 AS Numeric(5, 0)), N'YT', N'MYT', N'Mayotte', N'Mayotte', N'Departamento de ultramar francés.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(516 AS Numeric(5, 0)), N'NA', N'NAM', N'Namibia', N'Namibia', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(540 AS Numeric(5, 0)), N'NC', N'NCL', N'Nueva Caledonia', N'Nueva Caledonia', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(562 AS Numeric(5, 0)), N'NE', N'NER', N'Níger (el)', N'Níger', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(574 AS Numeric(5, 0)), N'NF', N'NFK', N'Norfolk, Isla', N'Norfolk', N'Pertenece a Australia.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(566 AS Numeric(5, 0)), N'NG', N'NGA', N'Nigeria', N'Nigeria', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(558 AS Numeric(5, 0)), N'NI', N'NIC', N'Nicaragua', N'Nicaragua', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(570 AS Numeric(5, 0)), N'NU', N'NIU', N'Niue', N'Niue', N'Asociado a Nueva Zelanda.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(528 AS Numeric(5, 0)), N'NL', N'NLD', N'Países Bajos (los)', N'Países Bajos', N'Forma parte del Reino de los Países Bajos.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(578 AS Numeric(5, 0)), N'NO', N'NOR', N'Noruega', N'Noruega', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(524 AS Numeric(5, 0)), N'NP', N'NPL', N'Nepal', N'Nepal', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(520 AS Numeric(5, 0)), N'NR', N'NRU', N'Nauru', N'Nauru', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(554 AS Numeric(5, 0)), N'NZ', N'NZL', N'Nueva Zelandia', N'Nueva Zelanda', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(512 AS Numeric(5, 0)), N'OM', N'OMN', N'Omán', N'Omán', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(586 AS Numeric(5, 0)), N'PK', N'PAK', N'Pakistán', N'Pakistán', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(591 AS Numeric(5, 0)), N'PA', N'PAN', N'Panamá', N'Panamá', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(612 AS Numeric(5, 0)), N'PN', N'PCN', N'Pitcairn', N'Islas Pitcairn', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(604 AS Numeric(5, 0)), N'PE', N'PER', N'Perú', N'Perú', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(608 AS Numeric(5, 0)), N'PH', N'PHL', N'Filipinas (las)', N'Filipinas', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(585 AS Numeric(5, 0)), N'PW', N'PLW', N'Palau', N'Palaos', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(598 AS Numeric(5, 0)), N'PG', N'PNG', N'Papua Nueva Guinea', N'Papúa Nueva Guinea', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(616 AS Numeric(5, 0)), N'PL', N'POL', N'Polonia', N'Polonia', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(630 AS Numeric(5, 0)), N'PR', N'PRI', N'Puerto Rico', N'Puerto Rico', N'Territorio no incorporado de los Estados Unidos. Nombre oficial en la ISO en español.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(408 AS Numeric(5, 0)), N'KP', N'PRK', N'Corea (la República Popular Democrática de)', N'Corea del Norte', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(620 AS Numeric(5, 0)), N'PT', N'PRT', N'Portugal', N'Portugal', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(600 AS Numeric(5, 0)), N'PY', N'PRY', N'Paraguay', N'Paraguay', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(275 AS Numeric(5, 0)), N'PS', N'PSE', N'Palestina, Estado de', N'Palestina', N'Comprende los territorios de Cisjordania y Franja de Gaza.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(258 AS Numeric(5, 0)), N'PF', N'PYF', N'Polinesia Francesa', N'Polinesia Francesa', N'Códigos obtenidos del nombre en francés: Polynésie française')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(634 AS Numeric(5, 0)), N'QA', N'QAT', N'Qatar', N'Catar', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(638 AS Numeric(5, 0)), N'RE', N'REU', N'Reunión', N'Reunión', N'Departamento de ultramar francés.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(642 AS Numeric(5, 0)), N'RO', N'ROU', N'Rumania', N'Rumania', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(643 AS Numeric(5, 0)), N'RU', N'RUS', N'Rusia, (la) Federación de', N'Rusia', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(646 AS Numeric(5, 0)), N'RW', N'RWA', N'Rwanda', N'Ruanda', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(682 AS Numeric(5, 0)), N'SA', N'SAU', N'Arabia Saudita', N'Arabia Saudita', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(729 AS Numeric(5, 0)), N'SD', N'SDN', N'Sudán (el)', N'Sudán', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(686 AS Numeric(5, 0)), N'SN', N'SEN', N'Senegal', N'Senegal', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(702 AS Numeric(5, 0)), N'SG', N'SGP', N'Singapur', N'Singapur', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(239 AS Numeric(5, 0)), N'GS', N'SGS', N'Georgia del Sur (la) y las Islas Sandwich del Sur', N'Islas Georgias del Sur y Sandwich del Sur', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(654 AS Numeric(5, 0)), N'SH', N'SHN', N'Santa Helena, Ascensión y Tristán de Acuña', N'Santa Elena, Ascensión y Tristán de Acuña', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(744 AS Numeric(5, 0)), N'SJ', N'SJM', N'Svalbard y Jan Mayen', N'Svalbard y Jan Mayen', N'Comprende dos territorios árticos de Noruega: Svalbard y Jan Mayen.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(90 AS Numeric(5, 0)), N'SB', N'SLB', N'Salomón, Islas', N'Islas Salomón', N'Códigos obtenidos de su anterior nombre: British Solomon Islands')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(694 AS Numeric(5, 0)), N'SL', N'SLE', N'Sierra leona', N'Sierra Leona', N'')
GO
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(222 AS Numeric(5, 0)), N'SV', N'SLV', N'El Salvador', N'El Salvador', N'Nombre oficial en la ISO en español.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(674 AS Numeric(5, 0)), N'SM', N'SMR', N'San Marino', N'San Marino', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(706 AS Numeric(5, 0)), N'SO', N'SOM', N'Somalia', N'Somalia', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(666 AS Numeric(5, 0)), N'PM', N'SPM', N'San Pedro y Miquelón', N'San Pedro y Miquelón', N'Colectividad de ultramar francesa.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(688 AS Numeric(5, 0)), N'RS', N'SRB', N'Serbia', N'Serbia', N'Códigos obtenidos de su nombre oficial: República de Serbia, en inglés.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(728 AS Numeric(5, 0)), N'SS', N'SSD', N'Sudán del Sur', N'Sudán del Sur', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(678 AS Numeric(5, 0)), N'ST', N'STP', N'Santo Tomé y Príncipe', N'Santo Tomé y Príncipe', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(740 AS Numeric(5, 0)), N'SR', N'SUR', N'Suriname', N'Surinam', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(703 AS Numeric(5, 0)), N'SK', N'SVK', N'Eslovaquia', N'Eslovaquia', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(705 AS Numeric(5, 0)), N'SI', N'SVN', N'Eslovenia', N'Eslovenia', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(752 AS Numeric(5, 0)), N'SE', N'SWE', N'Suecia', N'Suecia', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(748 AS Numeric(5, 0)), N'SZ', N'SWZ', N'Swazilandia', N'Suazilandia', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(534 AS Numeric(5, 0)), N'SX', N'SXM', N'Sint Maarten (parte neerlandesa)', N'Sint Maarten', N'Forma parte del Reino de los Países Bajos. /
Nombre oficial en neerlandés.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(690 AS Numeric(5, 0)), N'SC', N'SYC', N'Seychelles', N'Seychelles', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(760 AS Numeric(5, 0)), N'SY', N'SYR', N'República Árabe Siria', N'Siria', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(796 AS Numeric(5, 0)), N'TC', N'TCA', N'Turcas y Caicos, (las) Islas', N'Islas Turcas y Caicos', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(148 AS Numeric(5, 0)), N'TD', N'TCD', N'Chad', N'Chad', N'Códigos obtenidos del nombre en francés: Tchad')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(768 AS Numeric(5, 0)), N'TG', N'TGO', N'Togo', N'Togo', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(764 AS Numeric(5, 0)), N'TH', N'THA', N'Tailandia', N'Tailandia', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(762 AS Numeric(5, 0)), N'TJ', N'TJK', N'Tayikistán', N'Tayikistán', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(772 AS Numeric(5, 0)), N'TK', N'TKL', N'Tokelau', N'Tokelau', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(795 AS Numeric(5, 0)), N'TM', N'TKM', N'Turkmenistán', N'Turkmenistán', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(626 AS Numeric(5, 0)), N'TL', N'TLS', N'Timor-Leste', N'Timor Oriental', N'Nombre oficial en la ISO en portugués.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(776 AS Numeric(5, 0)), N'TO', N'TON', N'Tonga', N'Tonga', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(780 AS Numeric(5, 0)), N'TT', N'TTO', N'Trinidad y Tabago', N'Trinidad y Tobago', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(788 AS Numeric(5, 0)), N'TN', N'TUN', N'Túnez', N'Túnez', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(792 AS Numeric(5, 0)), N'TR', N'TUR', N'Turquía', N'Turquía', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(798 AS Numeric(5, 0)), N'TV', N'TUV', N'Tuvalu', N'Tuvalu', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(158 AS Numeric(5, 0)), N'TW', N'TWN', N'Taiwán (Provincia de China)', N'Taiwán (República de China)', N'Cubre la jurisdicción actual de la República de China (Taiwán), excepto Kinmen e Islas Matsu. /
La ONU considera a Taiwán como una provincia de China, debido a su estatus político.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(834 AS Numeric(5, 0)), N'TZ', N'TZA', N'Tanzania, República Unida de', N'Tanzania', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(800 AS Numeric(5, 0)), N'UG', N'UGA', N'Uganda', N'Uganda', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(804 AS Numeric(5, 0)), N'UA', N'UKR', N'Ucrania', N'Ucrania', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(581 AS Numeric(5, 0)), N'UM', N'UMI', N'Islas Ultramarinas Menores de los Estados Unidos (las)', N'Islas ultramarinas de Estados Unidos', N'Comprende nueve áreas insulares menores de los Estados Unidos: Arrecife Kingman, Atolón Johnston, Atolón Palmyra, Isla Baker, Isla Howland, Isla Jarvis, Islas Midway, Isla de Navaza e Isla Wake.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(858 AS Numeric(5, 0)), N'UY', N'URY', N'Uruguay', N'Uruguay', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(840 AS Numeric(5, 0)), N'US', N'USA', N'Estados Unidos de América (los)', N'Estados Unidos', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(860 AS Numeric(5, 0)), N'UZ', N'UZB', N'Uzbekistán', N'Uzbekistán', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(336 AS Numeric(5, 0)), N'VA', N'VAT', N'Santa Sede (la)', N'Vaticano, Ciudad del', N'La Santa Sede es la representante diplomática del Estado de la Ciudad del Vaticano ante la ONU y otros países y organismos internacionales, aunque jurídicamente se trata de entes distintos. Los códigos ISO se asignan a la Santa Sede como representante de este Estado, pero se refieren al territorio del Estado de la Ciudad del Vaticano.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(670 AS Numeric(5, 0)), N'VC', N'VCT', N'San Vicente y las Granadinas', N'San Vicente y las Granadinas', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(862 AS Numeric(5, 0)), N'VE', N'VEN', N'Venezuela (República Bolivariana de)', N'Venezuela', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(92 AS Numeric(5, 0)), N'VG', N'VGB', N'Vírgenes británicas, Islas', N'Islas Vírgenes Británicas', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(850 AS Numeric(5, 0)), N'VI', N'VIR', N'Vírgenes de los Estados Unidos, Islas', N'Islas Vírgenes de los Estados Unidos', N'Territorio no incorporado de los Estados Unidos.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(704 AS Numeric(5, 0)), N'VN', N'VNM', N'Viet Nam', N'Vietnam', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(548 AS Numeric(5, 0)), N'VU', N'VUT', N'Vanuatu', N'Vanuatu', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(876 AS Numeric(5, 0)), N'WF', N'WLF', N'Wallis y Futuna', N'Wallis y Futuna', N'Colectividad de ultramar francesa.')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(882 AS Numeric(5, 0)), N'WS', N'WSM', N'Samoa', N'Samoa', N'Códigos obtenidos del anterior nombre: Western Samoa (Samoa Occidental)')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(887 AS Numeric(5, 0)), N'YE', N'YEM', N'Yemen', N'Yemen', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(710 AS Numeric(5, 0)), N'ZA', N'ZAF', N'Sudáfrica', N'Sudáfrica', N'Códigos obtenidos del nombre en neerlandés: Zuid-Afrika')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(894 AS Numeric(5, 0)), N'ZM', N'ZMB', N'Zambia', N'Zambia', N'')
INSERT [dbo].[pais] ([cod_pais_numerico], [cod_pais_alfa_2], [cod_pais_alfa_3], [nombre_oficial], [nombre_comun], [observacion]) VALUES (CAST(716 AS Numeric(5, 0)), N'ZW', N'ZWE', N'Zimbabwe', N'Zimbabue', N'')
SET IDENTITY_INSERT [dbo].[wow_hermandad] ON 

INSERT [dbo].[wow_hermandad] ([id_hermandad], [id_reino], [nombre], [faccion], [estado]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'La Orden del León', N'A', N'V')
SET IDENTITY_INSERT [dbo].[wow_hermandad] OFF
INSERT [dbo].[wow_hermandad_rango] ([id_hermandad], [rango_hermandad], [nombre], [descripcion], [estado]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), N'GM', NULL, NULL)
INSERT [dbo].[wow_hermandad_rango] ([id_hermandad], [rango_hermandad], [nombre], [descripcion], [estado]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'Mano del GM', NULL, NULL)
INSERT [dbo].[wow_hermandad_rango] ([id_hermandad], [rango_hermandad], [nombre], [descripcion], [estado]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), NULL, NULL, NULL)
INSERT [dbo].[wow_hermandad_rango] ([id_hermandad], [rango_hermandad], [nombre], [descripcion], [estado]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), NULL, NULL, NULL)
INSERT [dbo].[wow_hermandad_rango] ([id_hermandad], [rango_hermandad], [nombre], [descripcion], [estado]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL, NULL, NULL)
INSERT [dbo].[wow_hermandad_rango] ([id_hermandad], [rango_hermandad], [nombre], [descripcion], [estado]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), NULL, NULL, NULL)
INSERT [dbo].[wow_hermandad_rango] ([id_hermandad], [rango_hermandad], [nombre], [descripcion], [estado]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), NULL, NULL, NULL)
INSERT [dbo].[wow_hermandad_rango] ([id_hermandad], [rango_hermandad], [nombre], [descripcion], [estado]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), NULL, NULL, NULL)
INSERT [dbo].[wow_hermandad_rango] ([id_hermandad], [rango_hermandad], [nombre], [descripcion], [estado]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), NULL, NULL, NULL)
INSERT [dbo].[wow_hermandad_rango] ([id_hermandad], [rango_hermandad], [nombre], [descripcion], [estado]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), NULL, NULL, NULL)
INSERT [dbo].[wow_hermandad_rango] ([id_hermandad], [rango_hermandad], [nombre], [descripcion], [estado]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[wow_personaje] ON 

INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(4 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Kaimar', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(5 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Thugzlife', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(6 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Okays', CAST(0 AS Numeric(1, 0)), CAST(37 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(7 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Exi', CAST(1 AS Numeric(1, 0)), CAST(100 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(8 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Maguinha', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(9 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Eulinay', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(10 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Bläzër', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(11 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Jarvan', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(12 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Guachupe', CAST(0 AS Numeric(1, 0)), CAST(104 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(13 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Celestus', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(14 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Töny', CAST(0 AS Numeric(1, 0)), CAST(97 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(15 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Keepruning', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(16 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Wallk', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(17 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Djwill', CAST(0 AS Numeric(1, 0)), CAST(92 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(18 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Àbàrài', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(19 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Oskítar', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(20 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Djtiestom', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(21 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Novux', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(22 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Gothank', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(23 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Eomet', CAST(0 AS Numeric(1, 0)), CAST(71 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(24 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Claypool', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(25 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Srbank', CAST(0 AS Numeric(1, 0)), CAST(25 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(26 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Varhian', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(27 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'Kajii', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(28 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Akitsuki', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(29 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Aldek', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(30 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'Holloww', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(31 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Zego', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(32 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Blandel', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(33 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Certrax', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(25 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(34 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Lokux', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(35 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Golém', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(36 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Alatrîste', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(37 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Forsaken', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(38 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Apukk', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(39 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Alamun', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(40 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Artaras', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(41 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Misató', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(42 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Sumiree', CAST(1 AS Numeric(1, 0)), CAST(97 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(43 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Aurige', CAST(1 AS Numeric(1, 0)), CAST(43 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(44 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Aldes', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(45 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Rendis', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(46 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Darstan', CAST(0 AS Numeric(1, 0)), CAST(100 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(47 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'Zacros', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(48 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Jaranah', CAST(1 AS Numeric(1, 0)), CAST(105 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(49 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Feregus', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(50 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Danihella', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(51 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Morphotwo', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(25 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(52 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Bigtiolock', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(53 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Blackdao', CAST(0 AS Numeric(1, 0)), CAST(69 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(54 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Nightnill', CAST(0 AS Numeric(1, 0)), CAST(95 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(55 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Osolangeus', CAST(0 AS Numeric(1, 0)), CAST(100 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(56 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Carkasse', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(57 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Mhuram', CAST(1 AS Numeric(1, 0)), CAST(52 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(58 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Nunnallÿ', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(59 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Ímpact', CAST(0 AS Numeric(1, 0)), CAST(104 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(60 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Ryubrujo', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(61 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Angiolet', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(62 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Archos', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(63 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Celës', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(64 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Nänani', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(65 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Ryûnosuke', CAST(0 AS Numeric(1, 0)), CAST(100 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(66 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Stíng', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(67 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Blankitto', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(68 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Blackshadoww', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(69 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Blackpáw', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(70 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Sahen', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(71 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Bulkhan', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(72 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Herwin', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(73 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Weakfire', CAST(0 AS Numeric(1, 0)), CAST(93 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(74 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Artrider', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(75 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Cardos', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(76 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Blowli', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(77 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Backë', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(78 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Distone', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(79 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Emersón', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(80 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Newentré', CAST(0 AS Numeric(1, 0)), CAST(100 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(81 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Llawfen', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(82 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Mylordm', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(83 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Imperiöus', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(84 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Nostárck', CAST(0 AS Numeric(1, 0)), CAST(98 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(85 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Risepls', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(86 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Shówbiz', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(87 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Rö', CAST(1 AS Numeric(1, 0)), CAST(100 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(88 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Rekmano', CAST(0 AS Numeric(1, 0)), CAST(100 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(89 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Vexs', CAST(1 AS Numeric(1, 0)), CAST(71 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(90 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Arivale', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(91 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Ðöogerfull', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(92 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Luxirus', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(93 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Mayunía', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(94 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Flone', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(95 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Incubot', CAST(0 AS Numeric(1, 0)), CAST(66 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(96 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Tmillis', CAST(1 AS Numeric(1, 0)), CAST(100 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(97 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Cruelðað', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(98 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Mäp', CAST(1 AS Numeric(1, 0)), CAST(100 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(99 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Swampert', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(100 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Garnicius', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(101 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Gheltu', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(25 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(102 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Elprofex', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
GO
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(103 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Shalise', CAST(1 AS Numeric(1, 0)), CAST(102 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(104 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Adreme', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(105 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Skylifé', CAST(1 AS Numeric(1, 0)), CAST(20 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(106 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'Thutankecito', CAST(0 AS Numeric(1, 0)), CAST(58 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(107 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Mormol', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(25 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(108 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Gusbjorn', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(25 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(109 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Akaharu', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(110 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Angs', CAST(0 AS Numeric(1, 0)), CAST(100 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(111 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'Sparnato', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(112 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Lsiin', CAST(0 AS Numeric(1, 0)), CAST(55 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(113 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Soulryu', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(114 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'Firemage', CAST(0 AS Numeric(1, 0)), CAST(14 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(115 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Lenäya', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(116 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Radash', CAST(0 AS Numeric(1, 0)), CAST(101 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(117 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Zatti', CAST(1 AS Numeric(1, 0)), CAST(102 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(118 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Tonystyle', CAST(0 AS Numeric(1, 0)), CAST(102 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(119 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Kalizi', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(120 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Phym', CAST(1 AS Numeric(1, 0)), CAST(107 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(121 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Selone', CAST(1 AS Numeric(1, 0)), CAST(101 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(122 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Katherinedhl', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(123 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Growing', CAST(0 AS Numeric(1, 0)), CAST(100 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(124 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), N'Eikken', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(125 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Daellar', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(126 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Nachotz', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(127 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'Gatoviejo', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(128 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Darkloz', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(129 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'Marishnicof', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(130 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Naferet', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(131 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Ajaoel', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(132 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Anoniiymous', CAST(0 AS Numeric(1, 0)), CAST(66 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(133 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Tustronk', CAST(0 AS Numeric(1, 0)), CAST(101 AS Numeric(18, 0)), CAST(25 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(134 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Melisagreen', CAST(1 AS Numeric(1, 0)), CAST(100 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(135 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Fyrith', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(136 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Silex', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(137 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Saraby', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(138 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Hallrinach', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(139 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Regise', CAST(1 AS Numeric(1, 0)), CAST(100 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(140 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Tustronks', CAST(0 AS Numeric(1, 0)), CAST(101 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(141 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Zerveck', CAST(0 AS Numeric(1, 0)), CAST(100 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(142 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Alouquar', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(143 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Saitåma', CAST(0 AS Numeric(1, 0)), CAST(100 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(144 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Laparatuyá', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(145 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Edrity', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(146 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Fislinn', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(147 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Lycankïng', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(148 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Weedruid', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(149 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Maticiiru', CAST(0 AS Numeric(1, 0)), CAST(104 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(150 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Sagnus', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(151 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Matiiciiru', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(152 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'Gallardus', CAST(0 AS Numeric(1, 0)), CAST(100 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(153 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Mainsupp', CAST(1 AS Numeric(1, 0)), CAST(104 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(154 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Warthox', CAST(0 AS Numeric(1, 0)), CAST(105 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(155 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Guashin', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(156 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Jurel', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(157 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Monjesiita', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(158 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Záráki', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(159 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Itharu', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(160 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Mephístos', CAST(0 AS Numeric(1, 0)), CAST(70 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(161 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Rággnar', CAST(0 AS Numeric(1, 0)), CAST(96 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(162 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Mylordpand', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(25 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(163 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Sihnx', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(164 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Scaflow', CAST(0 AS Numeric(1, 0)), CAST(101 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(165 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Templo', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(166 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Alâstôr', CAST(0 AS Numeric(1, 0)), CAST(104 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(167 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Akochan', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(168 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Bahual', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(169 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Vorfahr', CAST(0 AS Numeric(1, 0)), CAST(58 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(170 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'Dhalius', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(171 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Dárrik', CAST(0 AS Numeric(1, 0)), CAST(76 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(172 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Yanisha', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(173 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Chibirous', CAST(1 AS Numeric(1, 0)), CAST(91 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(174 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Kyrittokun', CAST(0 AS Numeric(1, 0)), CAST(100 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(175 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Maticiru', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(176 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Rickh', CAST(0 AS Numeric(1, 0)), CAST(105 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(177 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'Daemona', CAST(1 AS Numeric(1, 0)), CAST(60 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(178 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'Klothilde', CAST(1 AS Numeric(1, 0)), CAST(100 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(179 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Marúlete', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(180 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Kazutokiriga', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(181 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'Marishka', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(182 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Dimitryy', CAST(0 AS Numeric(1, 0)), CAST(5 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(183 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Tysáele', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(184 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Dextroyx', CAST(0 AS Numeric(1, 0)), CAST(100 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(185 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Purificacion', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(186 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Tîriøn', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(187 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Angielee', CAST(1 AS Numeric(1, 0)), CAST(24 AS Numeric(18, 0)), CAST(25 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(188 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Flöne', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(189 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'Danzaviento', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(25 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(190 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Xiângmû', CAST(0 AS Numeric(1, 0)), CAST(100 AS Numeric(18, 0)), CAST(25 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(191 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Lianxd', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(192 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Pumbasama', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(193 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Mylordmage', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(194 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Goïdr', CAST(0 AS Numeric(1, 0)), CAST(16 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(195 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'Xluciani', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(196 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'Leothin', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(197 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'Sepuman', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(198 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Megaforz', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(199 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Asseylum', CAST(1 AS Numeric(1, 0)), CAST(100 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(200 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Grehtel', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(201 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Kindy', CAST(1 AS Numeric(1, 0)), CAST(59 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(202 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Ariänthel', CAST(1 AS Numeric(1, 0)), CAST(90 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
GO
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(203 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'Jësús', CAST(0 AS Numeric(1, 0)), CAST(60 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(204 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'Pensilvano', CAST(0 AS Numeric(1, 0)), CAST(45 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(205 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Rhövle', CAST(0 AS Numeric(1, 0)), CAST(8 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(206 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Tocko', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(207 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Ðinamit', CAST(1 AS Numeric(1, 0)), CAST(108 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(208 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Immerseus', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(209 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Mhay', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(210 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Luzcruz', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(211 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Dígítal', CAST(0 AS Numeric(1, 0)), CAST(108 AS Numeric(18, 0)), CAST(25 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(212 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'Yamille', CAST(1 AS Numeric(1, 0)), CAST(55 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(213 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Bönico', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(214 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Faratos', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(215 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Abelensimone', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(216 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Ryukdragneel', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(217 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Krazark', CAST(0 AS Numeric(1, 0)), CAST(26 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(218 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Tonyboni', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(25 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(219 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Onerise', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(220 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Koyuuki', CAST(1 AS Numeric(1, 0)), CAST(100 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(221 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Cazabrujos', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(222 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Psychoflame', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(223 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Fralsm', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(224 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Porquéno', CAST(0 AS Numeric(1, 0)), CAST(62 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(225 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Manyéstick', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(226 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Savÿch', CAST(0 AS Numeric(1, 0)), CAST(81 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(227 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'Néith', CAST(1 AS Numeric(1, 0)), CAST(15 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(228 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'Cierva', CAST(1 AS Numeric(1, 0)), CAST(19 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(229 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Hinahichigo', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(230 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Curantte', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(231 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Maleza', CAST(1 AS Numeric(1, 0)), CAST(43 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(232 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Muranox', CAST(0 AS Numeric(1, 0)), CAST(108 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(233 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Tintallé', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(234 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), N'Zaotai', CAST(0 AS Numeric(1, 0)), CAST(103 AS Numeric(18, 0)), CAST(25 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(235 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Lágrimas', CAST(1 AS Numeric(1, 0)), CAST(102 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(236 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Badcook', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(237 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Zorky', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(238 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Nergàl', CAST(0 AS Numeric(1, 0)), CAST(87 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(239 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'Althean', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(240 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'Bluekatt', CAST(1 AS Numeric(1, 0)), CAST(80 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(241 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Ediley', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(242 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Gjoll', CAST(0 AS Numeric(1, 0)), CAST(100 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(243 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Vmecatronico', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(244 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Luzbeell', CAST(0 AS Numeric(1, 0)), CAST(105 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(245 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Drmengecghe', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(246 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Aldiridan', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(247 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Llidaniidari', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(248 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Illindari', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(249 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Mylordh', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(250 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Galtak', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(251 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Askken', CAST(0 AS Numeric(1, 0)), CAST(100 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(252 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'Kaldorino', CAST(0 AS Numeric(1, 0)), CAST(102 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(253 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Exacrador', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(254 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Shazna', CAST(1 AS Numeric(1, 0)), CAST(100 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(255 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Frijólító', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(256 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'Negoro', CAST(0 AS Numeric(1, 0)), CAST(100 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(257 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'Kuchulú', CAST(0 AS Numeric(1, 0)), CAST(101 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(258 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Wardemo', CAST(1 AS Numeric(1, 0)), CAST(100 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(259 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Asturiann', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(260 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Isakaruss', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(261 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Lïlii', CAST(1 AS Numeric(1, 0)), CAST(102 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(262 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Jokerpg', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(263 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Kvhote', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(264 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Deuxreaper', CAST(0 AS Numeric(1, 0)), CAST(20 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(265 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Wiebke', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(266 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Silverss', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(267 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Inhm', CAST(0 AS Numeric(1, 0)), CAST(54 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(268 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'Jöhansen', CAST(0 AS Numeric(1, 0)), CAST(103 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(269 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Shlro', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(270 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Milenkaa', CAST(1 AS Numeric(1, 0)), CAST(92 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(271 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'Rhelar', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(272 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Coliranger', CAST(0 AS Numeric(1, 0)), CAST(99 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(273 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Silverstrax', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(274 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Chronøz', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(275 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Warldog', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(276 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Dilune', CAST(1 AS Numeric(1, 0)), CAST(10 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(277 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Rusgarz', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(278 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Gigahz', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(279 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Mystgün', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(280 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Lëviosä', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(281 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Slythërin', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(282 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Prototip', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(283 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Axaraak', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(284 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Deepdown', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(285 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Carliina', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(286 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Azazzael', CAST(0 AS Numeric(1, 0)), CAST(21 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(287 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Illune', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(288 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Sinnerbody', CAST(0 AS Numeric(1, 0)), CAST(43 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(289 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Cibercats', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(290 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Alfíl', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(291 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Rooxz', CAST(1 AS Numeric(1, 0)), CAST(100 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(292 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Persedus', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(293 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Yøru', CAST(0 AS Numeric(1, 0)), CAST(105 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(294 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Loreniz', CAST(1 AS Numeric(1, 0)), CAST(62 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(295 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'Neuara', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(296 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Sëiz', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(297 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Greyfiah', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(298 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Firehelmex', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(299 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Zettahz', CAST(0 AS Numeric(1, 0)), CAST(84 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(300 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'Abbzu', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(301 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Lenoix', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(302 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Fabiolaa', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
GO
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(303 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Byrön', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(304 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Darkskye', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(305 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Elowën', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(306 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Zilha', CAST(1 AS Numeric(1, 0)), CAST(35 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(307 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Rainshock', CAST(0 AS Numeric(1, 0)), CAST(101 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(308 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Mascatabaco', CAST(1 AS Numeric(1, 0)), CAST(26 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(309 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Ukanloz', CAST(0 AS Numeric(1, 0)), CAST(14 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(310 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'Sansito', CAST(0 AS Numeric(1, 0)), CAST(40 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(311 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Overkille', CAST(1 AS Numeric(1, 0)), CAST(27 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(312 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Astoret', CAST(1 AS Numeric(1, 0)), CAST(42 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(313 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'Changeador', CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(314 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'Gatoviejujo', CAST(0 AS Numeric(1, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(315 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Tadyel', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(316 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Alaxandra', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(317 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Alvaronotrap', CAST(0 AS Numeric(1, 0)), CAST(51 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(318 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Krumort', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(319 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Lognard', CAST(0 AS Numeric(1, 0)), CAST(60 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(320 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Jigulook', CAST(0 AS Numeric(1, 0)), CAST(8 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(321 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Bhellatris', CAST(1 AS Numeric(1, 0)), CAST(100 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(322 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Aimara', CAST(1 AS Numeric(1, 0)), CAST(86 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(323 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Juanmanuell', CAST(0 AS Numeric(1, 0)), CAST(17 AS Numeric(18, 0)), CAST(25 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(324 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'Miiru', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(325 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Johnnygold', CAST(0 AS Numeric(1, 0)), CAST(54 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(326 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Medivhgold', CAST(0 AS Numeric(1, 0)), CAST(54 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(327 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Amckirii', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(328 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Zabatth', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(329 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Smärt', CAST(0 AS Numeric(1, 0)), CAST(101 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(330 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Themani', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(331 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Manchadoo', CAST(0 AS Numeric(1, 0)), CAST(6 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(332 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Crissifrid', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(333 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Sbxt', CAST(0 AS Numeric(1, 0)), CAST(100 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(334 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Namzok', CAST(0 AS Numeric(1, 0)), CAST(76 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(335 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Blackwolffy', CAST(0 AS Numeric(1, 0)), CAST(102 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(336 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'Danzamuerte', CAST(1 AS Numeric(1, 0)), CAST(23 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(337 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Wolgnar', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(338 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Lingaman', CAST(0 AS Numeric(1, 0)), CAST(21 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(339 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Variskaya', CAST(1 AS Numeric(1, 0)), CAST(20 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(340 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Luzbelithor', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(341 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Oingo', CAST(0 AS Numeric(1, 0)), CAST(9 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(342 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Gothsoul', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(343 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'Aflicto', CAST(0 AS Numeric(1, 0)), CAST(40 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(344 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Doezz', CAST(0 AS Numeric(1, 0)), CAST(15 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(345 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Katashiro', CAST(0 AS Numeric(1, 0)), CAST(45 AS Numeric(18, 0)), CAST(25 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(346 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Morcansarff', CAST(1 AS Numeric(1, 0)), CAST(72 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(347 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Rikwar', CAST(0 AS Numeric(1, 0)), CAST(100 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(348 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Exahz', CAST(0 AS Numeric(1, 0)), CAST(32 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(349 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Wikies', CAST(1 AS Numeric(1, 0)), CAST(58 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(350 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Taijitsu', CAST(0 AS Numeric(1, 0)), CAST(33 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(351 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Nosstarck', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(352 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Khâmen', CAST(0 AS Numeric(1, 0)), CAST(58 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(353 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Manigcm', CAST(0 AS Numeric(1, 0)), CAST(107 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(354 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Raygard', CAST(0 AS Numeric(1, 0)), CAST(98 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(355 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Niightslayer', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(356 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Akhmed', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(357 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Ikaryus', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(358 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Ëlowën', CAST(0 AS Numeric(1, 0)), CAST(106 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(359 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Gnosein', CAST(0 AS Numeric(1, 0)), CAST(11 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(360 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Kenwaay', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(361 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Belmort', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(362 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Nazzx', CAST(0 AS Numeric(1, 0)), CAST(26 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(363 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Boridad', CAST(1 AS Numeric(1, 0)), CAST(11 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(364 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Maquinamatar', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(365 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Gothy', CAST(1 AS Numeric(1, 0)), CAST(66 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(366 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Pusydestru', CAST(0 AS Numeric(1, 0)), CAST(24 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(367 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Indäface', CAST(0 AS Numeric(1, 0)), CAST(41 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(368 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Özge', CAST(1 AS Numeric(1, 0)), CAST(47 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(369 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Sharmplus', CAST(1 AS Numeric(1, 0)), CAST(9 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(370 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Spicodelico', CAST(0 AS Numeric(1, 0)), CAST(33 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(371 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Donspartan', CAST(0 AS Numeric(1, 0)), CAST(71 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(372 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Acrostt', CAST(0 AS Numeric(1, 0)), CAST(12 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(373 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Azghhalor', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(374 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Korzax', CAST(0 AS Numeric(1, 0)), CAST(62 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(375 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Ârâ', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(376 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Níico', CAST(0 AS Numeric(1, 0)), CAST(61 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(377 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Trannavar', CAST(0 AS Numeric(1, 0)), CAST(91 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(378 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Intro', CAST(1 AS Numeric(1, 0)), CAST(37 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(379 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Vetrayer', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(380 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Alluzor', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(381 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Itachiuchiga', CAST(0 AS Numeric(1, 0)), CAST(104 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(382 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Kestar', CAST(0 AS Numeric(1, 0)), CAST(61 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(383 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Kalgormoth', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(384 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Ðráw', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(385 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Galarnis', CAST(1 AS Numeric(1, 0)), CAST(19 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(386 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Panshoonn', CAST(0 AS Numeric(1, 0)), CAST(44 AS Numeric(18, 0)), CAST(25 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(387 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Änder', CAST(0 AS Numeric(1, 0)), CAST(12 AS Numeric(18, 0)), CAST(25 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(388 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Stefxa', CAST(1 AS Numeric(1, 0)), CAST(103 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(389 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Imyourself', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(390 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Shrkan', CAST(0 AS Numeric(1, 0)), CAST(102 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(391 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Soulrage', CAST(0 AS Numeric(1, 0)), CAST(76 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(392 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Inrasha', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(393 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Idgrod', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(394 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Ullygan', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(395 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Aymxion', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(396 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Maatii', CAST(0 AS Numeric(1, 0)), CAST(56 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(397 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Sphirian', CAST(1 AS Numeric(1, 0)), CAST(53 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(398 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Suntribe', CAST(1 AS Numeric(1, 0)), CAST(13 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(399 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Canufla', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(400 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Zëkk', CAST(1 AS Numeric(1, 0)), CAST(70 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(401 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Zhanika', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(402 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Kiioo', CAST(0 AS Numeric(1, 0)), CAST(65 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
GO
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(403 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Nerpuz', CAST(1 AS Numeric(1, 0)), CAST(46 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(404 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'Darkmitsuki', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(405 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Priestìtuta', CAST(1 AS Numeric(1, 0)), CAST(101 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(406 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Pøpunovich', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(407 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Rayxo', CAST(0 AS Numeric(1, 0)), CAST(28 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(408 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Deathvarian', CAST(0 AS Numeric(1, 0)), CAST(65 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(409 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Chuperman', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(410 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Äinë', CAST(1 AS Numeric(1, 0)), CAST(88 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(411 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Carlittrox', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(412 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Rayxos', CAST(0 AS Numeric(1, 0)), CAST(68 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(413 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Valimorno', CAST(0 AS Numeric(1, 0)), CAST(29 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(414 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Reaperxx', CAST(0 AS Numeric(1, 0)), CAST(60 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(415 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Plushberry', CAST(1 AS Numeric(1, 0)), CAST(50 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(416 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Wuolan', CAST(1 AS Numeric(1, 0)), CAST(21 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(417 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Angrila', CAST(1 AS Numeric(1, 0)), CAST(38 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(418 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Phÿsicist', CAST(0 AS Numeric(1, 0)), CAST(24 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(419 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Valderroble', CAST(0 AS Numeric(1, 0)), CAST(20 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(420 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Fuört', CAST(0 AS Numeric(1, 0)), CAST(12 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(421 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Kaelú', CAST(0 AS Numeric(1, 0)), CAST(12 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(422 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Wyldeh', CAST(0 AS Numeric(1, 0)), CAST(10 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(423 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Leothan', CAST(0 AS Numeric(1, 0)), CAST(12 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(424 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Dfeq', CAST(1 AS Numeric(1, 0)), CAST(100 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(425 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Rtamal', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(426 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Mariscala', CAST(1 AS Numeric(1, 0)), CAST(20 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(427 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Trapciruh', CAST(1 AS Numeric(1, 0)), CAST(44 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(428 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Destructony', CAST(0 AS Numeric(1, 0)), CAST(108 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(429 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Varthaon', CAST(0 AS Numeric(1, 0)), CAST(105 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(430 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Kchorrax', CAST(1 AS Numeric(1, 0)), CAST(28 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(431 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Lylyn', CAST(1 AS Numeric(1, 0)), CAST(42 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(432 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Pory', CAST(1 AS Numeric(1, 0)), CAST(60 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(433 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Demostar', CAST(1 AS Numeric(1, 0)), CAST(41 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(434 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Khadgartp', CAST(0 AS Numeric(1, 0)), CAST(95 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(435 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Solers', CAST(0 AS Numeric(1, 0)), CAST(100 AS Numeric(18, 0)), CAST(25 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(436 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Grenyer', CAST(1 AS Numeric(1, 0)), CAST(38 AS Numeric(18, 0)), CAST(25 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(437 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Súprem', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(438 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Adriannie', CAST(1 AS Numeric(1, 0)), CAST(37 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(439 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Fadetoßlack', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(440 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Ulquihime', CAST(0 AS Numeric(1, 0)), CAST(33 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(441 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Trapcirudk', CAST(1 AS Numeric(1, 0)), CAST(69 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(442 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Trdal', CAST(0 AS Numeric(1, 0)), CAST(63 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(443 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Eluhro', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(444 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Kravehn', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(445 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Slotheir', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(446 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Manyknight', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(447 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'Daniice', CAST(1 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(448 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Ccbo', CAST(0 AS Numeric(1, 0)), CAST(110 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(449 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Krajtp', CAST(0 AS Numeric(1, 0)), CAST(16 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(450 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Eamen', CAST(0 AS Numeric(1, 0)), CAST(31 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(451 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Heighan', CAST(0 AS Numeric(1, 0)), CAST(13 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(452 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Jacrock', CAST(0 AS Numeric(1, 0)), CAST(109 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(453 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Xosë', CAST(0 AS Numeric(1, 0)), CAST(101 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(454 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Azrrel', CAST(0 AS Numeric(1, 0)), CAST(69 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(455 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Resha', CAST(1 AS Numeric(1, 0)), CAST(100 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(456 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Michotá', CAST(0 AS Numeric(1, 0)), CAST(22 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(457 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Ástharoth', CAST(0 AS Numeric(1, 0)), CAST(21 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [id_reino], [id_hermandad], [rango_hermandad], [nombre], [genero], [nivel], [raza], [estado]) VALUES (CAST(458 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Palkiris', CAST(1 AS Numeric(1, 0)), CAST(70 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), NULL)
SET IDENTITY_INSERT [dbo].[wow_personaje] OFF
SET IDENTITY_INSERT [dbo].[wow_reino] ON 

INSERT [dbo].[wow_reino] ([id_reino], [nombre], [zona], [estado]) VALUES (CAST(1 AS Numeric(18, 0)), N'Ragnaros', N'US', NULL)
SET IDENTITY_INSERT [dbo].[wow_reino] OFF
ALTER TABLE [dbo].[contacto]  WITH CHECK ADD  CONSTRAINT [FK_contacto_contacto_tipo] FOREIGN KEY([id_contacto_tipo])
REFERENCES [dbo].[contacto_tipo] ([id_contacto_tipo])
GO
ALTER TABLE [dbo].[contacto] CHECK CONSTRAINT [FK_contacto_contacto_tipo]
GO
ALTER TABLE [dbo].[nota]  WITH CHECK ADD  CONSTRAINT [FK_nota_nota] FOREIGN KEY([id_nota_nota])
REFERENCES [dbo].[nota] ([id_nota])
GO
ALTER TABLE [dbo].[nota] CHECK CONSTRAINT [FK_nota_nota]
GO
ALTER TABLE [dbo].[nota]  WITH CHECK ADD  CONSTRAINT [FK_nota_nota_tipo] FOREIGN KEY([id_nota_tipo])
REFERENCES [dbo].[nota_tipo] ([id_nota_tipo])
GO
ALTER TABLE [dbo].[nota] CHECK CONSTRAINT [FK_nota_nota_tipo]
GO
ALTER TABLE [dbo].[nota_historia]  WITH CHECK ADD  CONSTRAINT [FK_nota_historia_nota] FOREIGN KEY([id_nota])
REFERENCES [dbo].[nota] ([id_nota])
GO
ALTER TABLE [dbo].[nota_historia] CHECK CONSTRAINT [FK_nota_historia_nota]
GO
ALTER TABLE [dbo].[nota_historia]  WITH CHECK ADD  CONSTRAINT [FK_nota_historia_sis_usuario] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[sis_usuario] ([id_usuario])
GO
ALTER TABLE [dbo].[nota_historia] CHECK CONSTRAINT [FK_nota_historia_sis_usuario]
GO
ALTER TABLE [dbo].[persona]  WITH CHECK ADD  CONSTRAINT [FK_persona_pais] FOREIGN KEY([cod_pais_alfa_3])
REFERENCES [dbo].[pais] ([cod_pais_alfa_3])
GO
ALTER TABLE [dbo].[persona] CHECK CONSTRAINT [FK_persona_pais]
GO
ALTER TABLE [dbo].[persona_alias]  WITH CHECK ADD  CONSTRAINT [FK_persona_apodo_persona] FOREIGN KEY([id_persona])
REFERENCES [dbo].[persona] ([id_persona])
GO
ALTER TABLE [dbo].[persona_alias] CHECK CONSTRAINT [FK_persona_apodo_persona]
GO
ALTER TABLE [dbo].[persona_rel_contacto]  WITH CHECK ADD  CONSTRAINT [FK_persona_rel_contacto_contacto] FOREIGN KEY([id_contacto])
REFERENCES [dbo].[contacto] ([id_contacto])
GO
ALTER TABLE [dbo].[persona_rel_contacto] CHECK CONSTRAINT [FK_persona_rel_contacto_contacto]
GO
ALTER TABLE [dbo].[persona_rel_contacto]  WITH CHECK ADD  CONSTRAINT [FK_persona_rel_contacto_persona] FOREIGN KEY([id_persona])
REFERENCES [dbo].[persona] ([id_persona])
GO
ALTER TABLE [dbo].[persona_rel_contacto] CHECK CONSTRAINT [FK_persona_rel_contacto_persona]
GO
ALTER TABLE [dbo].[persona_rel_nota]  WITH CHECK ADD  CONSTRAINT [FK_persona_rel_nota_nota] FOREIGN KEY([id_nota])
REFERENCES [dbo].[nota] ([id_nota])
GO
ALTER TABLE [dbo].[persona_rel_nota] CHECK CONSTRAINT [FK_persona_rel_nota_nota]
GO
ALTER TABLE [dbo].[persona_rel_nota]  WITH CHECK ADD  CONSTRAINT [FK_persona_rel_nota_persona] FOREIGN KEY([id_persona])
REFERENCES [dbo].[persona] ([id_persona])
GO
ALTER TABLE [dbo].[persona_rel_nota] CHECK CONSTRAINT [FK_persona_rel_nota_persona]
GO
ALTER TABLE [dbo].[sis_usuario]  WITH CHECK ADD  CONSTRAINT [FK_sis_usuario_persona] FOREIGN KEY([id_persona])
REFERENCES [dbo].[persona] ([id_persona])
GO
ALTER TABLE [dbo].[sis_usuario] CHECK CONSTRAINT [FK_sis_usuario_persona]
GO
ALTER TABLE [dbo].[sis_usuario]  WITH CHECK ADD  CONSTRAINT [FK_sis_usuario_sis_usuario_tipo] FOREIGN KEY([id_usuario_tipo])
REFERENCES [dbo].[sis_usuario_tipo] ([id_usuario_tipo])
GO
ALTER TABLE [dbo].[sis_usuario] CHECK CONSTRAINT [FK_sis_usuario_sis_usuario_tipo]
GO
ALTER TABLE [dbo].[wow_hermandad]  WITH CHECK ADD  CONSTRAINT [FK_wow_hermandad_wow_reino] FOREIGN KEY([id_reino])
REFERENCES [dbo].[wow_reino] ([id_reino])
GO
ALTER TABLE [dbo].[wow_hermandad] CHECK CONSTRAINT [FK_wow_hermandad_wow_reino]
GO
ALTER TABLE [dbo].[wow_hermandad_rango]  WITH CHECK ADD  CONSTRAINT [FK_wow_hermandad_rango_wow_hermandad] FOREIGN KEY([id_hermandad])
REFERENCES [dbo].[wow_hermandad] ([id_hermandad])
GO
ALTER TABLE [dbo].[wow_hermandad_rango] CHECK CONSTRAINT [FK_wow_hermandad_rango_wow_hermandad]
GO
ALTER TABLE [dbo].[wow_personaje]  WITH CHECK ADD  CONSTRAINT [FK_wow_personaje_persona] FOREIGN KEY([id_persona])
REFERENCES [dbo].[persona] ([id_persona])
GO
ALTER TABLE [dbo].[wow_personaje] CHECK CONSTRAINT [FK_wow_personaje_persona]
GO
ALTER TABLE [dbo].[wow_personaje]  WITH CHECK ADD  CONSTRAINT [FK_wow_personaje_wow_hermandad] FOREIGN KEY([id_hermandad])
REFERENCES [dbo].[wow_hermandad] ([id_hermandad])
GO
ALTER TABLE [dbo].[wow_personaje] CHECK CONSTRAINT [FK_wow_personaje_wow_hermandad]
GO
ALTER TABLE [dbo].[wow_personaje]  WITH CHECK ADD  CONSTRAINT [FK_wow_personaje_wow_hermandad_rango1] FOREIGN KEY([id_hermandad], [rango_hermandad])
REFERENCES [dbo].[wow_hermandad_rango] ([id_hermandad], [rango_hermandad])
GO
ALTER TABLE [dbo].[wow_personaje] CHECK CONSTRAINT [FK_wow_personaje_wow_hermandad_rango1]
GO
ALTER TABLE [dbo].[wow_personaje]  WITH CHECK ADD  CONSTRAINT [FK_wow_personaje_wow_reino] FOREIGN KEY([id_reino])
REFERENCES [dbo].[wow_reino] ([id_reino])
GO
ALTER TABLE [dbo].[wow_personaje] CHECK CONSTRAINT [FK_wow_personaje_wow_reino]
GO
ALTER TABLE [dbo].[wow_personaje_rel_nota]  WITH CHECK ADD  CONSTRAINT [FK_wow_personaje_rel_nota_nota] FOREIGN KEY([id_nota])
REFERENCES [dbo].[nota] ([id_nota])
GO
ALTER TABLE [dbo].[wow_personaje_rel_nota] CHECK CONSTRAINT [FK_wow_personaje_rel_nota_nota]
GO
ALTER TABLE [dbo].[wow_personaje_rel_nota]  WITH CHECK ADD  CONSTRAINT [FK_wow_personaje_rel_nota_wow_personaje] FOREIGN KEY([id_personaje])
REFERENCES [dbo].[wow_personaje] ([id_personaje])
GO
ALTER TABLE [dbo].[wow_personaje_rel_nota] CHECK CONSTRAINT [FK_wow_personaje_rel_nota_wow_personaje]
GO
/****** Object:  StoredProcedure [dbo].[WoW_Personaje_Guardar]    Script Date: 29/05/2017 0:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[WoW_Personaje_Guardar]
	-- Add the parameters for the stored procedure here
	@p_id_personaje	numeric(18)=null,
	@p_id_persona	numeric(18)=null,
	@p_id_reino	numeric(18)=null,
	@p_id_hermandad	numeric(18)=null,
	@p_rango_hermandad	numeric(18)=null,
	@p_nombre	varchar(50),
	@p_genero	numeric(1),
	@p_nivel	numeric(18),
	@p_raza	numeric(18),
	@p_estado	char(1)=null--,
	--@p_resultado varchar(max) output

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    --begin try
	if exists(select 1 from wow_personaje where id_personaje=@p_id_personaje)
		begin
			update wow_personaje
			set id_persona=@p_id_persona,
				id_reino=@p_id_reino,
				id_hermandad=@p_id_hermandad,
				rango_hermandad=@p_rango_hermandad,
				nombre=@p_nombre,
				genero=@p_genero,
				nivel=@p_nivel,
				raza=@p_raza,
				estado=@p_estado
			where id_personaje=@p_id_personaje
		end
		else
		begin
			insert into wow_personaje(id_persona,
										id_reino,
										id_hermandad,
										rango_hermandad,
										nombre,
										genero,
										nivel,
										raza,
										estado)
			select @p_id_persona,
					@p_id_reino,
					@p_id_hermandad,
					@p_rango_hermandad,
					@p_nombre,
					@p_genero,
					@p_nivel,
					@p_raza,
					@p_estado
		end
		--set @p_resultado='ok'
	--end try
	--begin catch
	--	set @p_resultado='ERROR_LINE: ' + convert(varchar(20),ERROR_LINE())+ ' ERROR_MESSAGE: '+ERROR_MESSAGE()
	--end catch
END

GO
USE [master]
GO
ALTER DATABASE [GMTool_Dev] SET  READ_WRITE 
GO
