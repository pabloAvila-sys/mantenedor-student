USE [master]
GO
/****** Object:  Database [Estudiante]    Script Date: 14/05/2023 23:25:39 ******/
CREATE DATABASE [Estudiante]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Estudiante', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Estudiante.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Estudiante_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Estudiante_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Estudiante] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Estudiante].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Estudiante] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Estudiante] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Estudiante] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Estudiante] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Estudiante] SET ARITHABORT OFF 
GO
ALTER DATABASE [Estudiante] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Estudiante] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Estudiante] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Estudiante] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Estudiante] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Estudiante] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Estudiante] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Estudiante] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Estudiante] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Estudiante] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Estudiante] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Estudiante] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Estudiante] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Estudiante] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Estudiante] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Estudiante] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Estudiante] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Estudiante] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Estudiante] SET  MULTI_USER 
GO
ALTER DATABASE [Estudiante] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Estudiante] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Estudiante] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Estudiante] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Estudiante] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Estudiante] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Estudiante] SET QUERY_STORE = ON
GO
ALTER DATABASE [Estudiante] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Estudiante]
GO
/****** Object:  Table [dbo].[tblEstudiantes]    Script Date: 14/05/2023 23:25:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEstudiantes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Apellido] [nvarchar](50) NULL,
	[Fecha_Nacimiento] [date] NULL,
	[Carrera] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblEstudiantes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblEstudiantes] ON 
GO
INSERT [dbo].[tblEstudiantes] ([ID], [Nombre], [Apellido], [Fecha_Nacimiento], [Carrera]) VALUES (1, N'Pablo', N'Avila', CAST(N'1987-09-19' AS Date), N'Pedagogía en Música')
GO
INSERT [dbo].[tblEstudiantes] ([ID], [Nombre], [Apellido], [Fecha_Nacimiento], [Carrera]) VALUES (2, N'Matias', N'Garcia', CAST(N'2000-07-24' AS Date), N'Sociología')
GO
INSERT [dbo].[tblEstudiantes] ([ID], [Nombre], [Apellido], [Fecha_Nacimiento], [Carrera]) VALUES (3, N'Nidia', N'Garcia', CAST(N'1987-07-17' AS Date), N'Pedagogía en Filosofía')
GO
INSERT [dbo].[tblEstudiantes] ([ID], [Nombre], [Apellido], [Fecha_Nacimiento], [Carrera]) VALUES (4, N'Hector', N'Cornejo', CAST(N'1984-06-15' AS Date), N'Psicología')
GO
INSERT [dbo].[tblEstudiantes] ([ID], [Nombre], [Apellido], [Fecha_Nacimiento], [Carrera]) VALUES (5, N'Cristian', N'Avila', CAST(N'1991-02-14' AS Date), N'Pedagogía en Ingles')
GO
INSERT [dbo].[tblEstudiantes] ([ID], [Nombre], [Apellido], [Fecha_Nacimiento], [Carrera]) VALUES (6, N'Diego', N'fernandez', CAST(N'1989-02-28' AS Date), N'Periodismo')
GO
INSERT [dbo].[tblEstudiantes] ([ID], [Nombre], [Apellido], [Fecha_Nacimiento], [Carrera]) VALUES (7, N'Constanza', N'Aliaga', CAST(N'1992-08-20' AS Date), N'Educación Parvularia')
GO
INSERT [dbo].[tblEstudiantes] ([ID], [Nombre], [Apellido], [Fecha_Nacimiento], [Carrera]) VALUES (8, N'Pedro', N'Hernandez', CAST(N'1985-01-12' AS Date), N'Antropología')
GO
INSERT [dbo].[tblEstudiantes] ([ID], [Nombre], [Apellido], [Fecha_Nacimiento], [Carrera]) VALUES (9, N'Camilo', N'San Martin', CAST(N'1994-10-26' AS Date), N'Trabajo Social')
GO
INSERT [dbo].[tblEstudiantes] ([ID], [Nombre], [Apellido], [Fecha_Nacimiento], [Carrera]) VALUES (10, N'Catalina', N'Huencho', CAST(N'1995-04-20' AS Date), N'Derecho')
GO
SET IDENTITY_INSERT [dbo].[tblEstudiantes] OFF
GO
USE [master]
GO
ALTER DATABASE [Estudiante] SET  READ_WRITE 
GO
