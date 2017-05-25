USE [GMTool_Dev]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wow_personaje_rel_nota]') AND type in (N'U'))
ALTER TABLE [dbo].[wow_personaje_rel_nota] DROP CONSTRAINT IF EXISTS [FK_wow_personaje_rel_nota_wow_personaje]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wow_personaje_rel_nota]') AND type in (N'U'))
ALTER TABLE [dbo].[wow_personaje_rel_nota] DROP CONSTRAINT IF EXISTS [FK_wow_personaje_rel_nota_nota]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wow_personaje]') AND type in (N'U'))
ALTER TABLE [dbo].[wow_personaje] DROP CONSTRAINT IF EXISTS [FK_wow_personaje_wow_reino]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wow_personaje]') AND type in (N'U'))
ALTER TABLE [dbo].[wow_personaje] DROP CONSTRAINT IF EXISTS [FK_wow_personaje_wow_hermandad_rango]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wow_personaje]') AND type in (N'U'))
ALTER TABLE [dbo].[wow_personaje] DROP CONSTRAINT IF EXISTS [FK_wow_personaje_wow_hermandad]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wow_personaje]') AND type in (N'U'))
ALTER TABLE [dbo].[wow_personaje] DROP CONSTRAINT IF EXISTS [FK_wow_personaje_persona]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wow_hermandad_rango]') AND type in (N'U'))
ALTER TABLE [dbo].[wow_hermandad_rango] DROP CONSTRAINT IF EXISTS [FK_wow_hermandad_rango_wow_hermandad]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wow_hermandad]') AND type in (N'U'))
ALTER TABLE [dbo].[wow_hermandad] DROP CONSTRAINT IF EXISTS [FK_wow_hermandad_wow_reino]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sis_usuario]') AND type in (N'U'))
ALTER TABLE [dbo].[sis_usuario] DROP CONSTRAINT IF EXISTS [FK_sis_usuario_sis_usuario_tipo]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sis_usuario]') AND type in (N'U'))
ALTER TABLE [dbo].[sis_usuario] DROP CONSTRAINT IF EXISTS [FK_sis_usuario_persona]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[persona_rel_nota]') AND type in (N'U'))
ALTER TABLE [dbo].[persona_rel_nota] DROP CONSTRAINT IF EXISTS [FK_persona_rel_nota_persona]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[persona_rel_nota]') AND type in (N'U'))
ALTER TABLE [dbo].[persona_rel_nota] DROP CONSTRAINT IF EXISTS [FK_persona_rel_nota_nota]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[persona_rel_contacto]') AND type in (N'U'))
ALTER TABLE [dbo].[persona_rel_contacto] DROP CONSTRAINT IF EXISTS [FK_persona_rel_contacto_persona]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[persona_rel_contacto]') AND type in (N'U'))
ALTER TABLE [dbo].[persona_rel_contacto] DROP CONSTRAINT IF EXISTS [FK_persona_rel_contacto_contacto]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[persona_alias]') AND type in (N'U'))
ALTER TABLE [dbo].[persona_alias] DROP CONSTRAINT IF EXISTS [FK_persona_apodo_persona]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[persona]') AND type in (N'U'))
ALTER TABLE [dbo].[persona] DROP CONSTRAINT IF EXISTS [FK_persona_pais]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nota_historia]') AND type in (N'U'))
ALTER TABLE [dbo].[nota_historia] DROP CONSTRAINT IF EXISTS [FK_nota_historia_sis_usuario]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nota_historia]') AND type in (N'U'))
ALTER TABLE [dbo].[nota_historia] DROP CONSTRAINT IF EXISTS [FK_nota_historia_nota]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nota]') AND type in (N'U'))
ALTER TABLE [dbo].[nota] DROP CONSTRAINT IF EXISTS [FK_nota_nota_tipo]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nota]') AND type in (N'U'))
ALTER TABLE [dbo].[nota] DROP CONSTRAINT IF EXISTS [FK_nota_nota]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[contacto]') AND type in (N'U'))
ALTER TABLE [dbo].[contacto] DROP CONSTRAINT IF EXISTS [FK_contacto_contacto_tipo]
GO
/****** Object:  Table [dbo].[wow_reino]    Script Date: 25/05/2017 3:37:33 ******/
DROP TABLE IF EXISTS [dbo].[wow_reino]
GO
/****** Object:  Table [dbo].[wow_personaje_rel_nota]    Script Date: 25/05/2017 3:37:33 ******/
DROP TABLE IF EXISTS [dbo].[wow_personaje_rel_nota]
GO
/****** Object:  Table [dbo].[wow_personaje]    Script Date: 25/05/2017 3:37:33 ******/
DROP TABLE IF EXISTS [dbo].[wow_personaje]
GO
/****** Object:  Table [dbo].[wow_hermandad_rango]    Script Date: 25/05/2017 3:37:33 ******/
DROP TABLE IF EXISTS [dbo].[wow_hermandad_rango]
GO
/****** Object:  Table [dbo].[wow_hermandad]    Script Date: 25/05/2017 3:37:33 ******/
DROP TABLE IF EXISTS [dbo].[wow_hermandad]
GO
/****** Object:  Table [dbo].[sis_usuario_tipo]    Script Date: 25/05/2017 3:37:33 ******/
DROP TABLE IF EXISTS [dbo].[sis_usuario_tipo]
GO
/****** Object:  Table [dbo].[sis_usuario]    Script Date: 25/05/2017 3:37:33 ******/
DROP TABLE IF EXISTS [dbo].[sis_usuario]
GO
/****** Object:  Table [dbo].[persona_rel_nota]    Script Date: 25/05/2017 3:37:33 ******/
DROP TABLE IF EXISTS [dbo].[persona_rel_nota]
GO
/****** Object:  Table [dbo].[persona_rel_contacto]    Script Date: 25/05/2017 3:37:33 ******/
DROP TABLE IF EXISTS [dbo].[persona_rel_contacto]
GO
/****** Object:  Table [dbo].[persona_alias]    Script Date: 25/05/2017 3:37:33 ******/
DROP TABLE IF EXISTS [dbo].[persona_alias]
GO
/****** Object:  Table [dbo].[persona]    Script Date: 25/05/2017 3:37:33 ******/
DROP TABLE IF EXISTS [dbo].[persona]
GO
/****** Object:  Table [dbo].[pais]    Script Date: 25/05/2017 3:37:33 ******/
DROP TABLE IF EXISTS [dbo].[pais]
GO
/****** Object:  Table [dbo].[nota_tipo]    Script Date: 25/05/2017 3:37:33 ******/
DROP TABLE IF EXISTS [dbo].[nota_tipo]
GO
/****** Object:  Table [dbo].[nota_historia]    Script Date: 25/05/2017 3:37:33 ******/
DROP TABLE IF EXISTS [dbo].[nota_historia]
GO
/****** Object:  Table [dbo].[nota]    Script Date: 25/05/2017 3:37:33 ******/
DROP TABLE IF EXISTS [dbo].[nota]
GO
/****** Object:  Table [dbo].[contacto_tipo]    Script Date: 25/05/2017 3:37:33 ******/
DROP TABLE IF EXISTS [dbo].[contacto_tipo]
GO
/****** Object:  Table [dbo].[contacto]    Script Date: 25/05/2017 3:37:33 ******/
DROP TABLE IF EXISTS [dbo].[contacto]
GO
USE [master]
GO
/****** Object:  Database [GMTool_Dev]    Script Date: 25/05/2017 3:37:33 ******/
DROP DATABASE IF EXISTS [GMTool_Dev]
GO
/****** Object:  Database [GMTool_Dev]    Script Date: 25/05/2017 3:37:33 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'GMTool_Dev')
BEGIN
CREATE DATABASE [GMTool_Dev]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GMTool_Dev', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\GMTool_Dev.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GMTool_Dev_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\GMTool_Dev_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
END

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
/****** Object:  Table [dbo].[contacto]    Script Date: 25/05/2017 3:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[contacto]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[contacto_tipo]    Script Date: 25/05/2017 3:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[contacto_tipo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[contacto_tipo](
	[id_contacto_tipo] [numeric](18, 0) NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](500) NULL,
 CONSTRAINT [PK_contacto_tipo] PRIMARY KEY CLUSTERED 
(
	[id_contacto_tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[nota]    Script Date: 25/05/2017 3:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nota]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[nota_historia]    Script Date: 25/05/2017 3:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nota_historia]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[nota_tipo]    Script Date: 25/05/2017 3:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nota_tipo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[nota_tipo](
	[id_nota_tipo] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[estado] [char](1) NULL,
 CONSTRAINT [PK_nota_tipo] PRIMARY KEY CLUSTERED 
(
	[id_nota_tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[pais]    Script Date: 25/05/2017 3:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pais]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[persona]    Script Date: 25/05/2017 3:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[persona]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[persona_alias]    Script Date: 25/05/2017 3:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[persona_alias]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[persona_alias](
	[id_persona_alias] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[id_persona] [numeric](18, 0) NOT NULL,
	[valor] [varchar](50) NOT NULL,
 CONSTRAINT [PK_persona_alias] PRIMARY KEY CLUSTERED 
(
	[id_persona_alias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[persona_rel_contacto]    Script Date: 25/05/2017 3:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[persona_rel_contacto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[persona_rel_contacto](
	[id_persona] [numeric](18, 0) NOT NULL,
	[id_contacto] [numeric](18, 0) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[persona_rel_nota]    Script Date: 25/05/2017 3:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[persona_rel_nota]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[persona_rel_nota](
	[id_persona] [numeric](18, 0) NOT NULL,
	[id_nota] [numeric](18, 0) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sis_usuario]    Script Date: 25/05/2017 3:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sis_usuario]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[sis_usuario_tipo]    Script Date: 25/05/2017 3:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sis_usuario_tipo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sis_usuario_tipo](
	[id_usuario_tipo] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[estado] [char](1) NULL,
 CONSTRAINT [PK_sis_usuario_tipo] PRIMARY KEY CLUSTERED 
(
	[id_usuario_tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[wow_hermandad]    Script Date: 25/05/2017 3:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wow_hermandad]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[wow_hermandad](
	[id_hermandad] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[id_reino] [numeric](18, 0) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[estado] [char](1) NULL,
 CONSTRAINT [PK_wow_hermandad] PRIMARY KEY CLUSTERED 
(
	[id_hermandad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[wow_hermandad_rango]    Script Date: 25/05/2017 3:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wow_hermandad_rango]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[wow_hermandad_rango](
	[id_hermandad_rango] [numeric](18, 0) NOT NULL,
	[id_hermandad] [numeric](18, 0) NOT NULL,
	[numero] [numeric](18, 0) NOT NULL,
	[nombre] [nchar](10) NOT NULL,
	[descripcion] [nchar](10) NULL,
	[estado] [nchar](10) NULL,
 CONSTRAINT [PK_wow_hermandad_rango_1] PRIMARY KEY CLUSTERED 
(
	[id_hermandad_rango] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[wow_personaje]    Script Date: 25/05/2017 3:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wow_personaje]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[wow_personaje](
	[id_personaje] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[id_persona] [numeric](18, 0) NULL,
	[nombre] [varchar](50) NOT NULL,
	[id_reino] [numeric](18, 0) NOT NULL,
	[id_hermandad] [numeric](18, 0) NULL,
	[id_hermandad_rango] [numeric](18, 0) NULL,
	[estado] [char](1) NULL,
 CONSTRAINT [PK_wow_personaje] PRIMARY KEY CLUSTERED 
(
	[id_personaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[wow_personaje_rel_nota]    Script Date: 25/05/2017 3:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wow_personaje_rel_nota]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[wow_personaje_rel_nota](
	[id_personaje] [numeric](18, 0) NOT NULL,
	[id_nota] [numeric](18, 0) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[wow_reino]    Script Date: 25/05/2017 3:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wow_reino]') AND type in (N'U'))
BEGIN
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
END
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

INSERT [dbo].[wow_hermandad] ([id_hermandad], [id_reino], [nombre], [estado]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'La Orden del León', NULL)
SET IDENTITY_INSERT [dbo].[wow_hermandad] OFF
SET IDENTITY_INSERT [dbo].[wow_personaje] ON 

INSERT [dbo].[wow_personaje] ([id_personaje], [id_persona], [nombre], [id_reino], [id_hermandad], [id_hermandad_rango], [estado]) VALUES (CAST(1 AS Numeric(18, 0)), NULL, N'Gatoviejo', CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[wow_personaje] OFF
SET IDENTITY_INSERT [dbo].[wow_reino] ON 

INSERT [dbo].[wow_reino] ([id_reino], [nombre], [zona], [estado]) VALUES (CAST(1 AS Numeric(18, 0)), N'Ragnaros', N'US', NULL)
SET IDENTITY_INSERT [dbo].[wow_reino] OFF
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_contacto_contacto_tipo]') AND parent_object_id = OBJECT_ID(N'[dbo].[contacto]'))
ALTER TABLE [dbo].[contacto]  WITH CHECK ADD  CONSTRAINT [FK_contacto_contacto_tipo] FOREIGN KEY([id_contacto_tipo])
REFERENCES [dbo].[contacto_tipo] ([id_contacto_tipo])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_contacto_contacto_tipo]') AND parent_object_id = OBJECT_ID(N'[dbo].[contacto]'))
ALTER TABLE [dbo].[contacto] CHECK CONSTRAINT [FK_contacto_contacto_tipo]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_nota_nota]') AND parent_object_id = OBJECT_ID(N'[dbo].[nota]'))
ALTER TABLE [dbo].[nota]  WITH CHECK ADD  CONSTRAINT [FK_nota_nota] FOREIGN KEY([id_nota_nota])
REFERENCES [dbo].[nota] ([id_nota])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_nota_nota]') AND parent_object_id = OBJECT_ID(N'[dbo].[nota]'))
ALTER TABLE [dbo].[nota] CHECK CONSTRAINT [FK_nota_nota]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_nota_nota_tipo]') AND parent_object_id = OBJECT_ID(N'[dbo].[nota]'))
ALTER TABLE [dbo].[nota]  WITH CHECK ADD  CONSTRAINT [FK_nota_nota_tipo] FOREIGN KEY([id_nota_tipo])
REFERENCES [dbo].[nota_tipo] ([id_nota_tipo])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_nota_nota_tipo]') AND parent_object_id = OBJECT_ID(N'[dbo].[nota]'))
ALTER TABLE [dbo].[nota] CHECK CONSTRAINT [FK_nota_nota_tipo]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_nota_historia_nota]') AND parent_object_id = OBJECT_ID(N'[dbo].[nota_historia]'))
ALTER TABLE [dbo].[nota_historia]  WITH CHECK ADD  CONSTRAINT [FK_nota_historia_nota] FOREIGN KEY([id_nota])
REFERENCES [dbo].[nota] ([id_nota])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_nota_historia_nota]') AND parent_object_id = OBJECT_ID(N'[dbo].[nota_historia]'))
ALTER TABLE [dbo].[nota_historia] CHECK CONSTRAINT [FK_nota_historia_nota]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_nota_historia_sis_usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[nota_historia]'))
ALTER TABLE [dbo].[nota_historia]  WITH CHECK ADD  CONSTRAINT [FK_nota_historia_sis_usuario] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[sis_usuario] ([id_usuario])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_nota_historia_sis_usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[nota_historia]'))
ALTER TABLE [dbo].[nota_historia] CHECK CONSTRAINT [FK_nota_historia_sis_usuario]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_persona_pais]') AND parent_object_id = OBJECT_ID(N'[dbo].[persona]'))
ALTER TABLE [dbo].[persona]  WITH CHECK ADD  CONSTRAINT [FK_persona_pais] FOREIGN KEY([cod_pais_alfa_3])
REFERENCES [dbo].[pais] ([cod_pais_alfa_3])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_persona_pais]') AND parent_object_id = OBJECT_ID(N'[dbo].[persona]'))
ALTER TABLE [dbo].[persona] CHECK CONSTRAINT [FK_persona_pais]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_persona_apodo_persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[persona_alias]'))
ALTER TABLE [dbo].[persona_alias]  WITH CHECK ADD  CONSTRAINT [FK_persona_apodo_persona] FOREIGN KEY([id_persona])
REFERENCES [dbo].[persona] ([id_persona])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_persona_apodo_persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[persona_alias]'))
ALTER TABLE [dbo].[persona_alias] CHECK CONSTRAINT [FK_persona_apodo_persona]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_persona_rel_contacto_contacto]') AND parent_object_id = OBJECT_ID(N'[dbo].[persona_rel_contacto]'))
ALTER TABLE [dbo].[persona_rel_contacto]  WITH CHECK ADD  CONSTRAINT [FK_persona_rel_contacto_contacto] FOREIGN KEY([id_contacto])
REFERENCES [dbo].[contacto] ([id_contacto])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_persona_rel_contacto_contacto]') AND parent_object_id = OBJECT_ID(N'[dbo].[persona_rel_contacto]'))
ALTER TABLE [dbo].[persona_rel_contacto] CHECK CONSTRAINT [FK_persona_rel_contacto_contacto]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_persona_rel_contacto_persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[persona_rel_contacto]'))
ALTER TABLE [dbo].[persona_rel_contacto]  WITH CHECK ADD  CONSTRAINT [FK_persona_rel_contacto_persona] FOREIGN KEY([id_persona])
REFERENCES [dbo].[persona] ([id_persona])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_persona_rel_contacto_persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[persona_rel_contacto]'))
ALTER TABLE [dbo].[persona_rel_contacto] CHECK CONSTRAINT [FK_persona_rel_contacto_persona]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_persona_rel_nota_nota]') AND parent_object_id = OBJECT_ID(N'[dbo].[persona_rel_nota]'))
ALTER TABLE [dbo].[persona_rel_nota]  WITH CHECK ADD  CONSTRAINT [FK_persona_rel_nota_nota] FOREIGN KEY([id_nota])
REFERENCES [dbo].[nota] ([id_nota])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_persona_rel_nota_nota]') AND parent_object_id = OBJECT_ID(N'[dbo].[persona_rel_nota]'))
ALTER TABLE [dbo].[persona_rel_nota] CHECK CONSTRAINT [FK_persona_rel_nota_nota]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_persona_rel_nota_persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[persona_rel_nota]'))
ALTER TABLE [dbo].[persona_rel_nota]  WITH CHECK ADD  CONSTRAINT [FK_persona_rel_nota_persona] FOREIGN KEY([id_persona])
REFERENCES [dbo].[persona] ([id_persona])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_persona_rel_nota_persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[persona_rel_nota]'))
ALTER TABLE [dbo].[persona_rel_nota] CHECK CONSTRAINT [FK_persona_rel_nota_persona]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_sis_usuario_persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[sis_usuario]'))
ALTER TABLE [dbo].[sis_usuario]  WITH CHECK ADD  CONSTRAINT [FK_sis_usuario_persona] FOREIGN KEY([id_persona])
REFERENCES [dbo].[persona] ([id_persona])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_sis_usuario_persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[sis_usuario]'))
ALTER TABLE [dbo].[sis_usuario] CHECK CONSTRAINT [FK_sis_usuario_persona]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_sis_usuario_sis_usuario_tipo]') AND parent_object_id = OBJECT_ID(N'[dbo].[sis_usuario]'))
ALTER TABLE [dbo].[sis_usuario]  WITH CHECK ADD  CONSTRAINT [FK_sis_usuario_sis_usuario_tipo] FOREIGN KEY([id_usuario_tipo])
REFERENCES [dbo].[sis_usuario_tipo] ([id_usuario_tipo])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_sis_usuario_sis_usuario_tipo]') AND parent_object_id = OBJECT_ID(N'[dbo].[sis_usuario]'))
ALTER TABLE [dbo].[sis_usuario] CHECK CONSTRAINT [FK_sis_usuario_sis_usuario_tipo]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_wow_hermandad_wow_reino]') AND parent_object_id = OBJECT_ID(N'[dbo].[wow_hermandad]'))
ALTER TABLE [dbo].[wow_hermandad]  WITH CHECK ADD  CONSTRAINT [FK_wow_hermandad_wow_reino] FOREIGN KEY([id_reino])
REFERENCES [dbo].[wow_reino] ([id_reino])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_wow_hermandad_wow_reino]') AND parent_object_id = OBJECT_ID(N'[dbo].[wow_hermandad]'))
ALTER TABLE [dbo].[wow_hermandad] CHECK CONSTRAINT [FK_wow_hermandad_wow_reino]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_wow_hermandad_rango_wow_hermandad]') AND parent_object_id = OBJECT_ID(N'[dbo].[wow_hermandad_rango]'))
ALTER TABLE [dbo].[wow_hermandad_rango]  WITH CHECK ADD  CONSTRAINT [FK_wow_hermandad_rango_wow_hermandad] FOREIGN KEY([id_hermandad])
REFERENCES [dbo].[wow_hermandad] ([id_hermandad])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_wow_hermandad_rango_wow_hermandad]') AND parent_object_id = OBJECT_ID(N'[dbo].[wow_hermandad_rango]'))
ALTER TABLE [dbo].[wow_hermandad_rango] CHECK CONSTRAINT [FK_wow_hermandad_rango_wow_hermandad]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_wow_personaje_persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[wow_personaje]'))
ALTER TABLE [dbo].[wow_personaje]  WITH CHECK ADD  CONSTRAINT [FK_wow_personaje_persona] FOREIGN KEY([id_persona])
REFERENCES [dbo].[persona] ([id_persona])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_wow_personaje_persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[wow_personaje]'))
ALTER TABLE [dbo].[wow_personaje] CHECK CONSTRAINT [FK_wow_personaje_persona]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_wow_personaje_wow_hermandad]') AND parent_object_id = OBJECT_ID(N'[dbo].[wow_personaje]'))
ALTER TABLE [dbo].[wow_personaje]  WITH CHECK ADD  CONSTRAINT [FK_wow_personaje_wow_hermandad] FOREIGN KEY([id_hermandad])
REFERENCES [dbo].[wow_hermandad] ([id_hermandad])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_wow_personaje_wow_hermandad]') AND parent_object_id = OBJECT_ID(N'[dbo].[wow_personaje]'))
ALTER TABLE [dbo].[wow_personaje] CHECK CONSTRAINT [FK_wow_personaje_wow_hermandad]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_wow_personaje_wow_hermandad_rango]') AND parent_object_id = OBJECT_ID(N'[dbo].[wow_personaje]'))
ALTER TABLE [dbo].[wow_personaje]  WITH CHECK ADD  CONSTRAINT [FK_wow_personaje_wow_hermandad_rango] FOREIGN KEY([id_hermandad_rango])
REFERENCES [dbo].[wow_hermandad_rango] ([id_hermandad_rango])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_wow_personaje_wow_hermandad_rango]') AND parent_object_id = OBJECT_ID(N'[dbo].[wow_personaje]'))
ALTER TABLE [dbo].[wow_personaje] CHECK CONSTRAINT [FK_wow_personaje_wow_hermandad_rango]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_wow_personaje_wow_reino]') AND parent_object_id = OBJECT_ID(N'[dbo].[wow_personaje]'))
ALTER TABLE [dbo].[wow_personaje]  WITH CHECK ADD  CONSTRAINT [FK_wow_personaje_wow_reino] FOREIGN KEY([id_reino])
REFERENCES [dbo].[wow_reino] ([id_reino])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_wow_personaje_wow_reino]') AND parent_object_id = OBJECT_ID(N'[dbo].[wow_personaje]'))
ALTER TABLE [dbo].[wow_personaje] CHECK CONSTRAINT [FK_wow_personaje_wow_reino]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_wow_personaje_rel_nota_nota]') AND parent_object_id = OBJECT_ID(N'[dbo].[wow_personaje_rel_nota]'))
ALTER TABLE [dbo].[wow_personaje_rel_nota]  WITH CHECK ADD  CONSTRAINT [FK_wow_personaje_rel_nota_nota] FOREIGN KEY([id_nota])
REFERENCES [dbo].[nota] ([id_nota])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_wow_personaje_rel_nota_nota]') AND parent_object_id = OBJECT_ID(N'[dbo].[wow_personaje_rel_nota]'))
ALTER TABLE [dbo].[wow_personaje_rel_nota] CHECK CONSTRAINT [FK_wow_personaje_rel_nota_nota]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_wow_personaje_rel_nota_wow_personaje]') AND parent_object_id = OBJECT_ID(N'[dbo].[wow_personaje_rel_nota]'))
ALTER TABLE [dbo].[wow_personaje_rel_nota]  WITH CHECK ADD  CONSTRAINT [FK_wow_personaje_rel_nota_wow_personaje] FOREIGN KEY([id_personaje])
REFERENCES [dbo].[wow_personaje] ([id_personaje])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_wow_personaje_rel_nota_wow_personaje]') AND parent_object_id = OBJECT_ID(N'[dbo].[wow_personaje_rel_nota]'))
ALTER TABLE [dbo].[wow_personaje_rel_nota] CHECK CONSTRAINT [FK_wow_personaje_rel_nota_wow_personaje]
GO
USE [master]
GO
ALTER DATABASE [GMTool_Dev] SET  READ_WRITE 
GO
