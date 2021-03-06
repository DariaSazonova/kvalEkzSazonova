USE [master]
GO
/****** Object:  Database [kvalEkzSazonova304]    Script Date: 29.06.2021 12:07:51 ******/
CREATE DATABASE [kvalEkzSazonova304]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'kvalEkzSazonova304', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\kvalEkzSazonova304.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'kvalEkzSazonova304_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\kvalEkzSazonova304_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [kvalEkzSazonova304] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [kvalEkzSazonova304].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [kvalEkzSazonova304] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [kvalEkzSazonova304] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [kvalEkzSazonova304] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [kvalEkzSazonova304] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [kvalEkzSazonova304] SET ARITHABORT OFF 
GO
ALTER DATABASE [kvalEkzSazonova304] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [kvalEkzSazonova304] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [kvalEkzSazonova304] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [kvalEkzSazonova304] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [kvalEkzSazonova304] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [kvalEkzSazonova304] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [kvalEkzSazonova304] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [kvalEkzSazonova304] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [kvalEkzSazonova304] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [kvalEkzSazonova304] SET  DISABLE_BROKER 
GO
ALTER DATABASE [kvalEkzSazonova304] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [kvalEkzSazonova304] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [kvalEkzSazonova304] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [kvalEkzSazonova304] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [kvalEkzSazonova304] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [kvalEkzSazonova304] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [kvalEkzSazonova304] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [kvalEkzSazonova304] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [kvalEkzSazonova304] SET  MULTI_USER 
GO
ALTER DATABASE [kvalEkzSazonova304] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [kvalEkzSazonova304] SET DB_CHAINING OFF 
GO
ALTER DATABASE [kvalEkzSazonova304] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [kvalEkzSazonova304] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [kvalEkzSazonova304] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [kvalEkzSazonova304] SET QUERY_STORE = OFF
GO
USE [kvalEkzSazonova304]
GO
/****** Object:  Table [dbo].[Marks]    Script Date: 29.06.2021 12:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marks](
	[MarkNum] [int] IDENTITY(1,1) NOT NULL,
	[IdStudent] [int] NOT NULL,
	[Mark] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[Subject] [int] NOT NULL,
 CONSTRAINT [PK_Marks] PRIMARY KEY CLUSTERED 
(
	[MarkNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReportingType]    Script Date: 29.06.2021 12:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportingType](
	[Num] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_ReportingType] PRIMARY KEY CLUSTERED 
(
	[Num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 29.06.2021 12:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[IdStudent] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[Gender] [char](1) NOT NULL,
	[Age] [int] NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[IdStudent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 29.06.2021 12:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[idSubject] [int] IDENTITY(1,1) NOT NULL,
	[SubjectName] [nvarchar](50) NOT NULL,
	[Hours] [int] NOT NULL,
	[ReportingType] [int] NOT NULL,
 CONSTRAINT [PK_Subjects] PRIMARY KEY CLUSTERED 
(
	[idSubject] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Marks] ON 

INSERT [dbo].[Marks] ([MarkNum], [IdStudent], [Mark], [Date], [Description], [Subject]) VALUES (1, 1, 5, CAST(N'2021-05-31' AS Date), N'отлично', 1)
INSERT [dbo].[Marks] ([MarkNum], [IdStudent], [Mark], [Date], [Description], [Subject]) VALUES (2, 1, 4, CAST(N'2021-05-29' AS Date), N'хорошо', 2)
INSERT [dbo].[Marks] ([MarkNum], [IdStudent], [Mark], [Date], [Description], [Subject]) VALUES (3, 3, 3, CAST(N'2021-05-29' AS Date), N'удовлетворительно', 2)
SET IDENTITY_INSERT [dbo].[Marks] OFF
GO
SET IDENTITY_INSERT [dbo].[ReportingType] ON 

INSERT [dbo].[ReportingType] ([Num], [Type]) VALUES (1, N'зачет')
INSERT [dbo].[ReportingType] ([Num], [Type]) VALUES (2, N'экзамен')
INSERT [dbo].[ReportingType] ([Num], [Type]) VALUES (3, N'контрольная работа')
SET IDENTITY_INSERT [dbo].[ReportingType] OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([IdStudent], [Surname], [Name], [Patronymic], [Gender], [Age]) VALUES (1, N'Иванов', N'Иван', N'Иванович', N'М', 19)
INSERT [dbo].[Students] ([IdStudent], [Surname], [Name], [Patronymic], [Gender], [Age]) VALUES (2, N'Волкова', N'Вероника', N'Владимировна', N'Ж', 17)
INSERT [dbo].[Students] ([IdStudent], [Surname], [Name], [Patronymic], [Gender], [Age]) VALUES (3, N'Смирнова', N'Александра', N'Алексеевна', N'Ж', 19)
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
SET IDENTITY_INSERT [dbo].[Subjects] ON 

INSERT [dbo].[Subjects] ([idSubject], [SubjectName], [Hours], [ReportingType]) VALUES (1, N'Математика', 120, 2)
INSERT [dbo].[Subjects] ([idSubject], [SubjectName], [Hours], [ReportingType]) VALUES (2, N'Основы программирования', 180, 2)
INSERT [dbo].[Subjects] ([idSubject], [SubjectName], [Hours], [ReportingType]) VALUES (3, N'Философия', 90, 3)
SET IDENTITY_INSERT [dbo].[Subjects] OFF
GO
ALTER TABLE [dbo].[Marks]  WITH CHECK ADD  CONSTRAINT [FK_Marks_Students] FOREIGN KEY([IdStudent])
REFERENCES [dbo].[Students] ([IdStudent])
GO
ALTER TABLE [dbo].[Marks] CHECK CONSTRAINT [FK_Marks_Students]
GO
ALTER TABLE [dbo].[Marks]  WITH CHECK ADD  CONSTRAINT [FK_Marks_Subjects] FOREIGN KEY([Subject])
REFERENCES [dbo].[Subjects] ([idSubject])
GO
ALTER TABLE [dbo].[Marks] CHECK CONSTRAINT [FK_Marks_Subjects]
GO
ALTER TABLE [dbo].[Subjects]  WITH CHECK ADD  CONSTRAINT [FK_Subjects_ReportingType] FOREIGN KEY([ReportingType])
REFERENCES [dbo].[ReportingType] ([Num])
GO
ALTER TABLE [dbo].[Subjects] CHECK CONSTRAINT [FK_Subjects_ReportingType]
GO
ALTER TABLE [dbo].[Marks]  WITH CHECK ADD  CONSTRAINT [CK_Marks] CHECK  (([Mark]>=(1) AND [Mark]<=(5)))
GO
ALTER TABLE [dbo].[Marks] CHECK CONSTRAINT [CK_Marks]
GO
/****** Object:  StoredProcedure [dbo].[viewMarks]    Script Date: 29.06.2021 12:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[viewMarks]
AS
BEGIN
select MarkNum, Subjects.SubjectName, Surname, Name, Patronymic, Mark, Date, Description
From marks
join students on students.idStudent = marks.idStudent
join Subjects on Subjects.idSubject=marks.Subject
END
GO
/****** Object:  StoredProcedure [dbo].[viewSearchMarks]    Script Date: 29.06.2021 12:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[viewSearchMarks]
@seachString nvarchar(50)
AS
BEGIN
select Subjects.SubjectName, Surname, Name, Patronymic, Mark, Date, Description
From marks
join students on students.idStudent = marks.idStudent
join Subjects on Subjects.idSubject=marks.Subject
where SubjectName like '%'+@seachString+'%' or Surname like '%'+@seachString+'%' or name like '%'+@seachString+'%' or patronymic like '%'+@seachString+'%' or Mark like '%'+@seachString+'%' or Description like '%'+@seachString+'%' or Date like '%'+@seachString+'%'
END
GO
/****** Object:  StoredProcedure [dbo].[viewSearchStudents]    Script Date: 29.06.2021 12:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[viewSearchStudents]
@seachString nvarchar(50)
AS
BEGIN
select *
From Students
where surname like '%'+@seachString+'%' or name like '%'+@seachString+'%' or patronymic like '%'+@seachString+'%'
END
GO
/****** Object:  StoredProcedure [dbo].[viewSearcSubjects]    Script Date: 29.06.2021 12:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[viewSearcSubjects]
@seachString nvarchar(50)
AS
BEGIN
select SubjectName, Hours, type
From subjects
join ReportingType on subjects.ReportingType=ReportingType.Num
where SubjectName like '%'+@seachString+'%' or Hours like '%'+@seachString+'%' or type like '%'+@seachString+'%' 
END
GO
/****** Object:  StoredProcedure [dbo].[viewSubjects]    Script Date: 29.06.2021 12:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[viewSubjects]
AS
BEGIN
select SubjectName, Hours, type
From subjects
join ReportingType on subjects.ReportingType=ReportingType.Num
END
GO
USE [master]
GO
ALTER DATABASE [kvalEkzSazonova304] SET  READ_WRITE 
GO
