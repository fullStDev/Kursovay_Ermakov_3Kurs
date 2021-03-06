USE [master]
GO
/****** Object:  Database [ProjectKurs3]    Script Date: 26.06.22 2:58:55 ******/
CREATE DATABASE [ProjectKurs3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjectKurs3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ProjectKurs3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProjectKurs3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ProjectKurs3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ProjectKurs3] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjectKurs3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjectKurs3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProjectKurs3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProjectKurs3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProjectKurs3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProjectKurs3] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProjectKurs3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProjectKurs3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjectKurs3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjectKurs3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjectKurs3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProjectKurs3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProjectKurs3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjectKurs3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProjectKurs3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjectKurs3] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProjectKurs3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjectKurs3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProjectKurs3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProjectKurs3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjectKurs3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjectKurs3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProjectKurs3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProjectKurs3] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProjectKurs3] SET  MULTI_USER 
GO
ALTER DATABASE [ProjectKurs3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProjectKurs3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProjectKurs3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProjectKurs3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProjectKurs3] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProjectKurs3] SET QUERY_STORE = OFF
GO
USE [ProjectKurs3]
GO
/****** Object:  Table [dbo].[doctors]    Script Date: 26.06.22 2:58:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[doctors](
	[id_Doctor] [int] IDENTITY(1,1) NOT NULL,
	[DoctorFIO] [nvarchar](max) NULL,
	[DoctorPosition] [nvarchar](max) NULL,
	[DoctorCabinet] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[patients]    Script Date: 26.06.22 2:58:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[patients](
	[id_Patient] [int] IDENTITY(1,1) NOT NULL,
	[PatientFIO] [nvarchar](max) NULL,
	[PatientPol] [nvarchar](max) NULL,
	[PatientDateOfBirth] [date] NULL,
	[PatientAge] [nvarchar](max) NULL,
	[PatientTelephoneNumber] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[schedule]    Script Date: 26.06.22 2:58:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schedule](
	[id_Visit] [int] IDENTITY(1,1) NOT NULL,
	[DateVisit] [date] NULL,
	[DoctorCabinet] [nvarchar](max) NULL,
	[PatientFio] [nvarchar](max) NULL,
	[DoctorFio] [nvarchar](max) NULL,
	[DoctorPosition] [nvarchar](max) NULL,
	[Service] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[services]    Script Date: 26.06.22 2:58:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[services](
	[id_Servise] [int] IDENTITY(1,1) NOT NULL,
	[JobTitle] [nvarchar](max) NULL,
	[ServiceTitle] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 26.06.22 2:58:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id_user] [int] IDENTITY(1,1) NOT NULL,
	[login] [nvarchar](max) NULL,
	[password] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[doctors] ON 

INSERT [dbo].[doctors] ([id_Doctor], [DoctorFIO], [DoctorPosition], [DoctorCabinet]) VALUES (3, N'ФИОдоктор1', N'ДолжностьДоктор1', N'1')
INSERT [dbo].[doctors] ([id_Doctor], [DoctorFIO], [DoctorPosition], [DoctorCabinet]) VALUES (4, N'ФИОдоктор2', N'ДолжностьДоктор2', N'2')
INSERT [dbo].[doctors] ([id_Doctor], [DoctorFIO], [DoctorPosition], [DoctorCabinet]) VALUES (5, N'ФИОдоктор3', N'ДолжностьДоктор3', N'3')
SET IDENTITY_INSERT [dbo].[doctors] OFF
GO
SET IDENTITY_INSERT [dbo].[patients] ON 

INSERT [dbo].[patients] ([id_Patient], [PatientFIO], [PatientPol], [PatientDateOfBirth], [PatientAge], [PatientTelephoneNumber]) VALUES (1, N'ФИОпациент1', N'м', CAST(N'2001-01-01' AS Date), N'45', N'893838383833')
INSERT [dbo].[patients] ([id_Patient], [PatientFIO], [PatientPol], [PatientDateOfBirth], [PatientAge], [PatientTelephoneNumber]) VALUES (2, N'ФИОпациент2', N'м', CAST(N'2001-01-01' AS Date), N'22', N'893898765789')
INSERT [dbo].[patients] ([id_Patient], [PatientFIO], [PatientPol], [PatientDateOfBirth], [PatientAge], [PatientTelephoneNumber]) VALUES (3, N'ФИОпациент3', N'ж', CAST(N'2002-02-02' AS Date), N'55', N'893737373737')
INSERT [dbo].[patients] ([id_Patient], [PatientFIO], [PatientPol], [PatientDateOfBirth], [PatientAge], [PatientTelephoneNumber]) VALUES (6, N'ФИО пациента1', N'ж', CAST(N'1985-07-05' AS Date), N'35', N'89275584629')
INSERT [dbo].[patients] ([id_Patient], [PatientFIO], [PatientPol], [PatientDateOfBirth], [PatientAge], [PatientTelephoneNumber]) VALUES (7, N'ФИО пациента1', N'ж', CAST(N'1985-07-25' AS Date), N'35', N'89275584629')
SET IDENTITY_INSERT [dbo].[patients] OFF
GO
SET IDENTITY_INSERT [dbo].[schedule] ON 

INSERT [dbo].[schedule] ([id_Visit], [DateVisit], [DoctorCabinet], [PatientFio], [DoctorFio], [DoctorPosition], [Service]) VALUES (2, CAST(N'2001-02-02' AS Date), N'2', N'ФИОпациент2', N'ФИОдоктор2', N'ДолжностьДоктор2', N'НазваниеУслуги2')
INSERT [dbo].[schedule] ([id_Visit], [DateVisit], [DoctorCabinet], [PatientFio], [DoctorFio], [DoctorPosition], [Service]) VALUES (22, CAST(N'2022-04-30' AS Date), N'3', N'ФИОпациент2', N'ФИОдоктор2', N'ДолжностьДоктор3', N'НазваниеУслуги3')
SET IDENTITY_INSERT [dbo].[schedule] OFF
GO
SET IDENTITY_INSERT [dbo].[services] ON 

INSERT [dbo].[services] ([id_Servise], [JobTitle], [ServiceTitle]) VALUES (1, N'ДолжностьВрача1', N'НазваниеУслугиВрача1')
INSERT [dbo].[services] ([id_Servise], [JobTitle], [ServiceTitle]) VALUES (2, N'ДолжностьВрача2', N'НазваниеУслугиВрача2')
INSERT [dbo].[services] ([id_Servise], [JobTitle], [ServiceTitle]) VALUES (3, N'ДолжностьВрача3', N'НазваниеУслугиВрача3')
INSERT [dbo].[services] ([id_Servise], [JobTitle], [ServiceTitle]) VALUES (4, N'ДолжностьВрача4', N'НазваниеУслугиВрача4')
SET IDENTITY_INSERT [dbo].[services] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id_user], [login], [password], [Name]) VALUES (1, N'root', N'toor', N'Ермаков Вадим Сергеевич')
INSERT [dbo].[users] ([id_user], [login], [password], [Name]) VALUES (2, N'admin', N'admin', N'Гусев Сергей Викторович')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
USE [master]
GO
ALTER DATABASE [ProjectKurs3] SET  READ_WRITE 
GO
