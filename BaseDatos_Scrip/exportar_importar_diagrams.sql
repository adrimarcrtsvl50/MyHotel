USE [master]
GO
/****** Object:  Database [myhotel]    Script Date: 3/02/2022 4:06:11 p. m. ******/
CREATE DATABASE [myhotel]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'myhotel', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\myhotel.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'myhotel_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\myhotel_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [myhotel] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [myhotel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [myhotel] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [myhotel] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [myhotel] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [myhotel] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [myhotel] SET ARITHABORT OFF 
GO
ALTER DATABASE [myhotel] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [myhotel] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [myhotel] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [myhotel] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [myhotel] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [myhotel] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [myhotel] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [myhotel] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [myhotel] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [myhotel] SET  DISABLE_BROKER 
GO
ALTER DATABASE [myhotel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [myhotel] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [myhotel] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [myhotel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [myhotel] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [myhotel] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [myhotel] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [myhotel] SET RECOVERY FULL 
GO
ALTER DATABASE [myhotel] SET  MULTI_USER 
GO
ALTER DATABASE [myhotel] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [myhotel] SET DB_CHAINING OFF 
GO
ALTER DATABASE [myhotel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [myhotel] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [myhotel] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [myhotel] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'myhotel', N'ON'
GO
ALTER DATABASE [myhotel] SET QUERY_STORE = OFF
GO
USE [myhotel]
GO
USE [myhotel]
GO
/****** Object:  Sequence [dbo].[card_id_seq]    Script Date: 3/02/2022 4:06:11 p. m. ******/
CREATE SEQUENCE [dbo].[card_id_seq] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE  1 
GO
USE [myhotel]
GO
/****** Object:  Sequence [dbo].[pos_id_seq]    Script Date: 3/02/2022 4:06:11 p. m. ******/
CREATE SEQUENCE [dbo].[pos_id_seq] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE  1 
GO
USE [myhotel]
GO
/****** Object:  Sequence [dbo].[servicios_extra_id_seq]    Script Date: 3/02/2022 4:06:11 p. m. ******/
CREATE SEQUENCE [dbo].[servicios_extra_id_seq] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE  1 
GO
/****** Object:  Table [dbo].[card]    Script Date: 3/02/2022 4:06:11 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[card](
	[id] [int] NOT NULL,
	[cvv] [int] NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[numero] [int] NOT NULL,
	[vencimiento] [date] NOT NULL,
 CONSTRAINT [PK_card] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hotel]    Script Date: 3/02/2022 4:06:11 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hotel](
	[id] [int] NOT NULL,
	[address] [varchar](255) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[namehotel] [varchar](255) NOT NULL,
	[stars] [int] NOT NULL,
 CONSTRAINT [PK_hotel] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pos]    Script Date: 3/02/2022 4:06:11 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pos](
	[id] [int] NOT NULL,
	[sub_total] [real] NOT NULL,
	[iva] [real] NOT NULL,
	[total] [real] NOT NULL,
 CONSTRAINT [PK_pos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[profile]    Script Date: 3/02/2022 4:06:11 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[profile](
	[id] [int] NOT NULL,
	[apellido] [varchar](255) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[numid] [varchar](255) NOT NULL,
	[tipo] [varchar](255) NOT NULL,
	[tipodedocumento] [varchar](255) NOT NULL,
 CONSTRAINT [PK_profile] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reservation]    Script Date: 3/02/2022 4:06:11 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reservation](
	[id] [int] NOT NULL,
	[pos_id] [int] NOT NULL,
	[card_id] [int] NOT NULL,
	[fecha_final] [date] NOT NULL,
	[fecha_inicial] [date] NOT NULL,
 CONSTRAINT [PK_reservation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reservation_general_extras]    Script Date: 3/02/2022 4:06:11 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reservation_general_extras](
	[reservation_id] [int] NOT NULL,
	[general_extra_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reservation_guests]    Script Date: 3/02/2022 4:06:11 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reservation_guests](
	[reservation_id] [int] NOT NULL,
	[guest_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[room]    Script Date: 3/02/2022 4:06:11 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[room](
	[id] [int] NOT NULL,
	[beds] [int] NOT NULL,
	[room_number] [varchar](255) NOT NULL,
	[room_type] [varchar](255) NOT NULL,
	[hotel_id] [int] NULL,
	[reservation_id] [int] NULL,
 CONSTRAINT [PK_room] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[servicios_extra]    Script Date: 3/02/2022 4:06:11 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[servicios_extra](
	[id] [int] NOT NULL,
	[name] [varchar](255) NOT NULL,
	[precie] [real] NOT NULL,
 CONSTRAINT [PK_servicios_extra] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_reservation]    Script Date: 3/02/2022 4:06:11 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_reservation] ON [dbo].[reservation]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[reservation]  WITH CHECK ADD  CONSTRAINT [FK_reservation_card] FOREIGN KEY([card_id])
REFERENCES [dbo].[card] ([id])
GO
ALTER TABLE [dbo].[reservation] CHECK CONSTRAINT [FK_reservation_card]
GO
ALTER TABLE [dbo].[reservation]  WITH CHECK ADD  CONSTRAINT [FK_reservation_pos] FOREIGN KEY([pos_id])
REFERENCES [dbo].[pos] ([id])
GO
ALTER TABLE [dbo].[reservation] CHECK CONSTRAINT [FK_reservation_pos]
GO
ALTER TABLE [dbo].[reservation_general_extras]  WITH CHECK ADD  CONSTRAINT [FK_reservation_general_extras_reservation] FOREIGN KEY([reservation_id])
REFERENCES [dbo].[reservation] ([id])
GO
ALTER TABLE [dbo].[reservation_general_extras] CHECK CONSTRAINT [FK_reservation_general_extras_reservation]
GO
ALTER TABLE [dbo].[reservation_general_extras]  WITH CHECK ADD  CONSTRAINT [FK_reservation_general_extras_servicios_extra] FOREIGN KEY([general_extra_id])
REFERENCES [dbo].[servicios_extra] ([id])
GO
ALTER TABLE [dbo].[reservation_general_extras] CHECK CONSTRAINT [FK_reservation_general_extras_servicios_extra]
GO
ALTER TABLE [dbo].[reservation_guests]  WITH CHECK ADD  CONSTRAINT [FK_reservation_guests_profile] FOREIGN KEY([guest_id])
REFERENCES [dbo].[profile] ([id])
GO
ALTER TABLE [dbo].[reservation_guests] CHECK CONSTRAINT [FK_reservation_guests_profile]
GO
ALTER TABLE [dbo].[reservation_guests]  WITH CHECK ADD  CONSTRAINT [FK_reservation_guests_reservation] FOREIGN KEY([reservation_id])
REFERENCES [dbo].[reservation] ([id])
GO
ALTER TABLE [dbo].[reservation_guests] CHECK CONSTRAINT [FK_reservation_guests_reservation]
GO
ALTER TABLE [dbo].[room]  WITH CHECK ADD  CONSTRAINT [FK_room_hotel] FOREIGN KEY([hotel_id])
REFERENCES [dbo].[hotel] ([id])
GO
ALTER TABLE [dbo].[room] CHECK CONSTRAINT [FK_room_hotel]
GO
ALTER TABLE [dbo].[room]  WITH CHECK ADD  CONSTRAINT [FK_room_reservation] FOREIGN KEY([reservation_id])
REFERENCES [dbo].[reservation] ([id])
GO
ALTER TABLE [dbo].[room] CHECK CONSTRAINT [FK_room_reservation]
GO
USE [master]
GO
ALTER DATABASE [myhotel] SET  READ_WRITE 
GO

--------------------------------------------------
-- Exportando e Importando um Diagrama
--------------------------------------------------
-- Exportar:
!!bcp myhotel.dbo.sysdiagrams out C:\Users\adrim\Documents\Proyectos\mihotel\diagrama.txt -c -T -S .
 
-- Importar:

!!bcp myhotel.dbo.sysdiagrams int C:\Users\adrim\Documents\Proyectos\mihotel\diagrama.txt -c -T -S .


