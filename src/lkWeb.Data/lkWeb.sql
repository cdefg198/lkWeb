USE [master]
GO
/****** Object:  Database [lkWeb]    Script Date: 2019/1/13 23:05:41 ******/
CREATE DATABASE [lkWeb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'lkWeb', FILENAME = N'D:\SqlServer\MSSQL12.MSSQLSERVER\MSSQL\DATA\lkWeb.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'lkWeb_log', FILENAME = N'D:\SqlServer\MSSQL12.MSSQLSERVER\MSSQL\DATA\lkWeb_log.ldf' , SIZE = 43968KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [lkWeb] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [lkWeb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [lkWeb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [lkWeb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [lkWeb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [lkWeb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [lkWeb] SET ARITHABORT OFF 
GO
ALTER DATABASE [lkWeb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [lkWeb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [lkWeb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [lkWeb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [lkWeb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [lkWeb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [lkWeb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [lkWeb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [lkWeb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [lkWeb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [lkWeb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [lkWeb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [lkWeb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [lkWeb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [lkWeb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [lkWeb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [lkWeb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [lkWeb] SET RECOVERY FULL 
GO
ALTER DATABASE [lkWeb] SET  MULTI_USER 
GO
ALTER DATABASE [lkWeb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [lkWeb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [lkWeb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [lkWeb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [lkWeb] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'lkWeb', N'ON'
GO
USE [lkWeb]
GO
/****** Object:  Schema [HangFire]    Script Date: 2019/1/13 23:05:42 ******/
CREATE SCHEMA [HangFire]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2019/1/13 23:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_Department]    Script Date: 2019/1/13 23:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Department](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreateDateTime] [datetime2](7) NOT NULL,
	[Description] [varchar](100) NOT NULL,
	[Leader] [varchar](20) NOT NULL,
	[Name] [varchar](20) NOT NULL,
	[ParentId] [int] NOT NULL,
 CONSTRAINT [PK_Sys_Department] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_LoginLog]    Script Date: 2019/1/13 23:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_LoginLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientIP] [varchar](15) NULL,
	[ClientMac] [varchar](40) NULL,
	[CreateDateTime] [datetime2](7) NOT NULL,
	[UserId] [int] NOT NULL,
	[UserName] [varchar](20) NOT NULL,
	[Description] [varchar](40) NULL,
 CONSTRAINT [PK_Sys_LoginLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_Menu]    Script Date: 2019/1/13 23:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Menu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreateDateTime] [datetime2](7) NOT NULL,
	[Name] [varchar](18) NOT NULL,
	[ListOrder] [int] NOT NULL,
	[ParentId] [int] NOT NULL,
	[Type] [tinyint] NOT NULL,
	[Url] [varchar](300) NOT NULL,
	[ModuleId] [int] NOT NULL DEFAULT ((0)),
	[Icon] [varchar](50) NOT NULL DEFAULT (N''),
 CONSTRAINT [PK_Sys_Menu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_Module]    Script Date: 2019/1/13 23:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Module](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreateDateTime] [datetime2](7) NOT NULL,
	[Description] [varchar](30) NOT NULL,
	[Name] [varchar](18) NOT NULL,
 CONSTRAINT [PK_Sys_Module] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_OperationLog]    Script Date: 2019/1/13 23:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_OperationLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientIP] [varchar](15) NOT NULL,
	[ClientMac] [varchar](40) NOT NULL,
	[CreateDateTime] [datetime2](7) NOT NULL,
	[OperationDescription] [varchar](100) NOT NULL,
	[OperationUrl] [varchar](300) NULL,
	[UserId] [int] NOT NULL,
	[UserName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Sys_OperationLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_Role]    Script Date: 2019/1/13 23:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Description] [varchar](30) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](100) NULL,
 CONSTRAINT [PK_Sys_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_RoleClaim]    Script Date: 2019/1/13 23:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_RoleClaim](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_Sys_RoleClaim] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_RoleMenu]    Script Date: 2019/1/13 23:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_RoleMenu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreateDateTime] [datetime2](7) NOT NULL,
	[MenuId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_Sys_RoleMenu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_SystemOption]    Script Date: 2019/1/13 23:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_SystemOption](
	[Code] [varchar](100) NULL,
	[CreateDateTime] [datetime2](7) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Value] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_Sys_SystemOption] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_TableColumn]    Script Date: 2019/1/13 23:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_TableColumn](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AddVisible] [tinyint] NOT NULL,
	[CreateDateTime] [datetime2](7) NOT NULL,
	[DataType] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[EditOrder] [int] NOT NULL,
	[EditVisible] [tinyint] NOT NULL,
	[EnumRange] [nvarchar](max) NULL,
	[ExportVisible] [tinyint] NOT NULL,
	[ImportVisible] [tinyint] NOT NULL,
	[ListOrder] [int] NOT NULL,
	[ListVisible] [tinyint] NOT NULL,
	[MaxLength] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[OutSql] [nvarchar](max) NULL,
	[PrimarKey] [tinyint] NOT NULL,
	[Required] [tinyint] NOT NULL,
	[SearchVisible] [tinyint] NOT NULL,
	[TableId] [int] NOT NULL,
	[ViewOrder] [int] NOT NULL,
	[ViewVisible] [tinyint] NOT NULL,
	[SelectRange] [nvarchar](max) NULL,
	[ForbiddenFileExtension] [nvarchar](max) NULL,
 CONSTRAINT [PK_Sys_TableColumn] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_TableList]    Script Date: 2019/1/13 23:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_TableList](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreateDateTime] [datetime2](7) NOT NULL,
	[DefaultFilter] [nvarchar](max) NULL,
	[DefaultSort] [nvarchar](max) NULL,
	[DeleteTableName] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[ExtendFunction] [nvarchar](max) NULL,
	[ForbiddenAddFilter] [nvarchar](max) NULL,
	[ForbiddenDeleteFilter] [nvarchar](max) NULL,
	[ForbiddenUpdateFilter] [nvarchar](max) NULL,
	[ImportType] [tinyint] NOT NULL,
	[IsView] [tinyint] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[AllowDelete] [tinyint] NOT NULL DEFAULT ((0)),
	[AllowEdit] [tinyint] NOT NULL DEFAULT ((0)),
	[AllowExport] [tinyint] NOT NULL DEFAULT ((0)),
	[AllowImport] [tinyint] NOT NULL DEFAULT ((0)),
	[AllowView] [tinyint] NOT NULL DEFAULT ((0)),
	[AllowAdd] [tinyint] NOT NULL DEFAULT ((0)),
	[TopExtendFunction] [nvarchar](max) NULL,
	[ColumnPerRow] [int] NOT NULL DEFAULT ((0)),
	[ViewEditWidthHeight] [nvarchar](max) NULL,
 CONSTRAINT [PK_Sys_TableList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_User]    Script Date: 2019/1/13 23:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](100) NULL,
	[NormalizedUserName] [nvarchar](100) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[RealName] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[Status] [tinyint] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_Sys_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_UserClaim]    Script Date: 2019/1/13 23:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_UserClaim](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_Sys_UserClaim] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_UserDepartment]    Script Date: 2019/1/13 23:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_UserDepartment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreateDateTime] [datetime2](7) NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_Sys_UserDepartment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_UserLogin]    Script Date: 2019/1/13 23:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_UserLogin](
	[LoginProvider] [nvarchar](100) NOT NULL,
	[ProviderKey] [nvarchar](100) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_UserRole]    Script Date: 2019/1/13 23:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_UserRole](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_Sys_UserRole] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_UserToken]    Script Date: 2019/1/13 23:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_UserToken](
	[UserId] [int] NOT NULL,
	[LoginProvider] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Test_Leader]    Script Date: 2019/1/13 23:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test_Leader](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreateDateTime] [datetime2](7) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ParentId] [int] NOT NULL,
	[Test] [nvarchar](max) NULL,
	[Test1] [nvarchar](max) NULL,
	[Test2] [nvarchar](max) NULL,
 CONSTRAINT [PK_Test_Leader] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [HangFire].[AggregatedCounter]    Script Date: 2019/1/13 23:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[AggregatedCounter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](100) NOT NULL,
	[Value] [bigint] NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_CounterAggregated] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [HangFire].[Counter]    Script Date: 2019/1/13 23:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Counter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](100) NOT NULL,
	[Value] [smallint] NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_Counter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [HangFire].[Hash]    Script Date: 2019/1/13 23:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Hash](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](100) NOT NULL,
	[Field] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[ExpireAt] [datetime2](7) NULL,
 CONSTRAINT [PK_HangFire_Hash] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [HangFire].[Job]    Script Date: 2019/1/13 23:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Job](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StateId] [int] NULL,
	[StateName] [nvarchar](20) NULL,
	[InvocationData] [nvarchar](max) NOT NULL,
	[Arguments] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_Job] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [HangFire].[JobParameter]    Script Date: 2019/1/13 23:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[JobParameter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobId] [int] NOT NULL,
	[Name] [nvarchar](40) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_HangFire_JobParameter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [HangFire].[JobQueue]    Script Date: 2019/1/13 23:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[JobQueue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobId] [int] NOT NULL,
	[Queue] [nvarchar](50) NOT NULL,
	[FetchedAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_JobQueue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [HangFire].[List]    Script Date: 2019/1/13 23:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[List](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_List] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [HangFire].[Schema]    Script Date: 2019/1/13 23:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Schema](
	[Version] [int] NOT NULL,
 CONSTRAINT [PK_HangFire_Schema] PRIMARY KEY CLUSTERED 
(
	[Version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [HangFire].[Server]    Script Date: 2019/1/13 23:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Server](
	[Id] [nvarchar](100) NOT NULL,
	[Data] [nvarchar](max) NULL,
	[LastHeartbeat] [datetime] NOT NULL,
 CONSTRAINT [PK_HangFire_Server] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [HangFire].[Set]    Script Date: 2019/1/13 23:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Set](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](100) NOT NULL,
	[Score] [float] NOT NULL,
	[Value] [nvarchar](256) NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_Set] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [HangFire].[State]    Script Date: 2019/1/13 23:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[State](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobId] [int] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Reason] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[Data] [nvarchar](max) NULL,
 CONSTRAINT [PK_HangFire_State] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  View [dbo].[v_TableInfo]    Script Date: 2019/1/13 23:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_TableInfo]
AS
SELECT  a.name AS tablename, b.name AS colName, c.name AS colType, c.length AS colLength
FROM      sys.sysobjects AS a INNER JOIN
                   sys.syscolumns AS b ON a.id = b.id AND a.xtype = 'U' INNER JOIN
                   sys.systypes AS c ON b.xtype = c.xusertype

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180202150340_init', N'2.0.1-rtm-125')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180205090822_addLogDesc', N'2.0.1-rtm-125')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180224122052_addModule', N'2.0.1-rtm-125')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180224122205_addModuleTable', N'2.0.1-rtm-125')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180224122642_modifyOrderToListOrder', N'2.0.1-rtm-125')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180225134558_addMenuIcon', N'2.0.1-rtm-125')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180310145732_201803102257', N'2.0.1-rtm-125')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180311120120_201803112001', N'2.0.1-rtm-125')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180312060840_201803121408', N'2.0.1-rtm-125')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180312144029_201803122240', N'2.0.1-rtm-125')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180312153035_lk201803122330', N'2.0.1-rtm-125')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180320144229_201803202242', N'2.0.1-rtm-125')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180327141825_201803272218', N'2.0.1-rtm-125')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180328131510_201803282115', N'2.0.1-rtm-125')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180401013511_201804010934', N'2.0.2-rtm-10011')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180412123353_201804122033', N'2.0.2-rtm-10011')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180412124729_201804122047', N'2.0.2-rtm-10011')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180502130533_201805022105', N'2.0.2-rtm-10011')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180504134322_1805042142', N'2.0.2-rtm-10011')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180506084441_201805061644', N'2.0.2-rtm-10011')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190104092001_lkWeb', N'2.0.3-rtm-10026')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190106133254_010162132AddSelect', N'2.0.3-rtm-10026')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190106141158_01062211', N'2.0.3-rtm-10026')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190108110911_modifyTableList1908', N'2.0.3-rtm-10026')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190113071730_addFile', N'2.0.3-rtm-10026')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190113144521_adjustDatatypeToString', N'2.0.3-rtm-10026')
SET IDENTITY_INSERT [dbo].[Sys_Department] ON 

INSERT [dbo].[Sys_Department] ([Id], [CreateDateTime], [Description], [Leader], [Name], [ParentId]) VALUES (5, CAST(N'2018-02-05 17:17:11.3077639' AS DateTime2), N'写代码哦', N'王杰', N'开发部', 5)
INSERT [dbo].[Sys_Department] ([Id], [CreateDateTime], [Description], [Leader], [Name], [ParentId]) VALUES (6, CAST(N'2018-02-05 17:17:34.2588781' AS DateTime2), N'运营哦', N'张杰', N'运营部', 0)
INSERT [dbo].[Sys_Department] ([Id], [CreateDateTime], [Description], [Leader], [Name], [ParentId]) VALUES (7, CAST(N'2018-02-05 20:26:58.7052012' AS DateTime2), N'管理', N'LoneKing', N'管理部', 0)
INSERT [dbo].[Sys_Department] ([Id], [CreateDateTime], [Description], [Leader], [Name], [ParentId]) VALUES (12, CAST(N'2018-02-13 23:27:57.2040073' AS DateTime2), N'test说明', N'test负责人', N'test名称', 6)
INSERT [dbo].[Sys_Department] ([Id], [CreateDateTime], [Description], [Leader], [Name], [ParentId]) VALUES (13, CAST(N'2018-02-22 15:00:11.5002483' AS DateTime2), N'的啊打算大时代', N'收到', N'啊啥的都是', 0)
INSERT [dbo].[Sys_Department] ([Id], [CreateDateTime], [Description], [Leader], [Name], [ParentId]) VALUES (14, CAST(N'2018-02-22 15:03:02.6252356' AS DateTime2), N'123123213', N'12321', N'123213', 0)
INSERT [dbo].[Sys_Department] ([Id], [CreateDateTime], [Description], [Leader], [Name], [ParentId]) VALUES (15, CAST(N'2018-02-22 15:05:59.8497039' AS DateTime2), N'213123123', N'213213', N'123213', 5)
INSERT [dbo].[Sys_Department] ([Id], [CreateDateTime], [Description], [Leader], [Name], [ParentId]) VALUES (16, CAST(N'2018-02-22 15:07:34.7431535' AS DateTime2), N'123123123', N'213213', N'123123213', 6)
INSERT [dbo].[Sys_Department] ([Id], [CreateDateTime], [Description], [Leader], [Name], [ParentId]) VALUES (17, CAST(N'2018-02-22 15:13:32.1926544' AS DateTime2), N'4444444444444444', N'444444444444', N'4544444', 13)
INSERT [dbo].[Sys_Department] ([Id], [CreateDateTime], [Description], [Leader], [Name], [ParentId]) VALUES (22, CAST(N'2018-03-27 23:35:15.0000000' AS DateTime2), N'123desc', N'张杰', N'name', 7)
INSERT [dbo].[Sys_Department] ([Id], [CreateDateTime], [Description], [Leader], [Name], [ParentId]) VALUES (24, CAST(N'2018-03-28 21:37:21.0000000' AS DateTime2), N'test', N'王杰哦', N'部门测试啊', 13)
INSERT [dbo].[Sys_Department] ([Id], [CreateDateTime], [Description], [Leader], [Name], [ParentId]) VALUES (27, CAST(N'2018-03-28 22:07:03.0000000' AS DateTime2), N'', N'', N'', 5)
INSERT [dbo].[Sys_Department] ([Id], [CreateDateTime], [Description], [Leader], [Name], [ParentId]) VALUES (28, CAST(N'2018-03-28 22:11:39.0000000' AS DateTime2), N'测试说明', N'测试负责人', N'测试部门啊', 6)
INSERT [dbo].[Sys_Department] ([Id], [CreateDateTime], [Description], [Leader], [Name], [ParentId]) VALUES (30, CAST(N'2018-03-28 22:12:49.0000000' AS DateTime2), N'啊实打实的', N'阿斯顿阿斯', N'阿三的撒旦阿三', 5)
INSERT [dbo].[Sys_Department] ([Id], [CreateDateTime], [Description], [Leader], [Name], [ParentId]) VALUES (39, CAST(N'2018-04-25 21:11:48.0000000' AS DateTime2), N'测试1', N'测试哦1', N'导入部1', 5)
INSERT [dbo].[Sys_Department] ([Id], [CreateDateTime], [Description], [Leader], [Name], [ParentId]) VALUES (40, CAST(N'2018-04-25 21:11:48.0000000' AS DateTime2), N'测试2', N'测试哦2', N'导入部2', 0)
SET IDENTITY_INSERT [dbo].[Sys_Department] OFF
SET IDENTITY_INSERT [dbo].[Sys_LoginLog] ON 

INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (4292, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:21:09.4501981' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (4293, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 18:03:16.5924079' AS DateTime2), 0, N'sa', N'登陆成功')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (4294, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 00:20:53.6414428' AS DateTime2), 0, N'sa', N'登陆成功')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (5286, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 21:26:47.0064847' AS DateTime2), 0, N'sa', N'登陆成功')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (5287, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 00:35:37.2121955' AS DateTime2), 0, N'sa', N'登陆成功')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (5288, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 11:30:53.9812217' AS DateTime2), 0, N'sa', N'登陆失败,请检查输入的信息')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (5289, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 11:30:56.3169827' AS DateTime2), 0, N'sa', N'登陆成功')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (5290, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 14:33:14.2138784' AS DateTime2), 0, N'sa', N'登陆成功')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (5291, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:13:20.3216632' AS DateTime2), 0, N'sa', N'登陆成功')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (5292, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 19:52:59.5228322' AS DateTime2), 0, N'sa', N'登陆成功')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (5293, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 20:40:59.8850354' AS DateTime2), 0, N'sa', N'登陆成功')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (5294, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 21:04:57.1414040' AS DateTime2), 0, N'sa', N'登陆成功')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (5295, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 09:02:20.6019846' AS DateTime2), 0, N'sa', N'登陆成功')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (5296, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 10:26:06.4161339' AS DateTime2), 0, N'sa', N'登陆成功')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (5297, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 21:17:37.5635743' AS DateTime2), 0, N'sa', N'登陆成功')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (5298, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 21:21:19.8956105' AS DateTime2), 0, N'sa', N'登陆成功')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (6297, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 13:39:32.0640194' AS DateTime2), 0, N'sa', N'登陆成功')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (6298, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 14:57:41.5696125' AS DateTime2), 0, N'sa', N'登陆成功')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (6299, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 15:02:31.3817284' AS DateTime2), 0, N'sa', N'登陆成功')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (6300, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 15:03:33.9576018' AS DateTime2), 0, N'sa', N'登陆成功')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (6301, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 15:21:56.6943536' AS DateTime2), 0, N'sa', N'登陆成功')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (6302, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 16:30:00.0100213' AS DateTime2), 0, N'sa', N'登陆成功')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (6303, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 16:31:39.8081684' AS DateTime2), 0, N'sa', N'登陆成功')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (6304, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 20:57:49.1635007' AS DateTime2), 0, N'sa', N'登陆成功')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (6305, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 20:58:25.1897828' AS DateTime2), 0, N'sa', N'登陆成功')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (6306, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:28:12.9561731' AS DateTime2), 0, N'sa', N'登陆成功')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (6307, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 22:05:13.7834444' AS DateTime2), 0, N'sa', N'登陆成功')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (6308, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 22:46:07.7958503' AS DateTime2), 0, N'sa', N'登陆成功')
SET IDENTITY_INSERT [dbo].[Sys_LoginLog] OFF
SET IDENTITY_INSERT [dbo].[Sys_Menu] ON 

INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (20, CAST(N'2018-02-25 22:40:15.3210915' AS DateTime2), N'登陆日志', 2, 55, 1, N'/admin/log/login', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (21, CAST(N'2018-02-25 21:42:20.3965368' AS DateTime2), N'操作日志', 1, 55, 1, N'/admin/log/operation', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (23, CAST(N'2018-02-26 00:47:17.0109391' AS DateTime2), N'添加', 1, 47, 2, N'/admin/role/add', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (25, CAST(N'2018-02-26 00:48:50.1465402' AS DateTime2), N'编辑', 2, 47, 2, N'/admin/role/edit', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (26, CAST(N'2018-02-26 00:49:46.3026481' AS DateTime2), N'删除', 3, 47, 2, N'/admin/role/delete', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (28, CAST(N'2018-03-05 20:26:41.7374827' AS DateTime2), N'添加', 1, 48, 2, N'/admin/department/add', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (29, CAST(N'2018-03-05 20:27:17.1070801' AS DateTime2), N'编辑', 2, 48, 2, N'/admin/department/edit', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (30, CAST(N'2018-03-05 20:27:47.1766801' AS DateTime2), N'删除', 3, 48, 2, N'/admin/department/delete', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (31, CAST(N'2018-03-05 20:30:34.5211505' AS DateTime2), N'保存', 1, 49, 2, N'/admin/role/AuthMenus', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (32, CAST(N'2018-03-05 20:32:06.4514524' AS DateTime2), N'添加', 1, 50, 2, N'/admin/user/add', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (33, CAST(N'2018-03-05 20:32:18.5702215' AS DateTime2), N'编辑', 2, 50, 2, N'/admin/user/edit', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (34, CAST(N'2018-03-05 20:32:33.2283930' AS DateTime2), N'删除', 3, 50, 2, N'/admin/user/delete', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (35, CAST(N'2018-03-05 20:33:09.8548616' AS DateTime2), N'角色授权', 4, 50, 2, N'/admin/user/authen', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (36, CAST(N'2018-03-05 20:34:49.4881171' AS DateTime2), N'添加', 1, 51, 2, N'/admin/user/selectUser', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (38, CAST(N'2018-03-05 20:39:16.2658323' AS DateTime2), N'添加', 1, 52, 2, N'/admin/module/add', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (39, CAST(N'2018-03-05 20:41:16.8744020' AS DateTime2), N'编辑', 2, 52, 2, N'/admin/module/edit', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (40, CAST(N'2018-03-05 20:41:32.5455574' AS DateTime2), N'删除', 3, 52, 2, N'/admin/module/delete', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (41, CAST(N'2018-03-05 20:43:09.7351631' AS DateTime2), N'添加', 1, 53, 2, N'/admin/menu/add', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (42, CAST(N'2018-03-05 21:28:08.1709715' AS DateTime2), N'删除', 2, 51, 2, N'/admin/User/DelUserDepartment', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (43, CAST(N'2018-03-05 21:28:41.2921323' AS DateTime2), N'编辑', 2, 53, 2, N'/admin/menu/edit', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (44, CAST(N'2018-03-05 21:28:56.0588430' AS DateTime2), N'删除', 3, 53, 2, N'/admin/menu/delete', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (46, CAST(N'2018-02-25 23:15:42.3859320' AS DateTime2), N'系统设置', 0, 0, 0, N'#', 1, N'fa fa-cog')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (47, CAST(N'2018-02-25 21:36:57.8745745' AS DateTime2), N'角色管理', 1, 46, 1, N'/admin/role', 1, N'fa fa-user-circle')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (48, CAST(N'2018-02-25 21:37:18.2776820' AS DateTime2), N'部门管理', 2, 46, 1, N'/admin/department', 1, N'fa fa-vcard-o')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (49, CAST(N'2018-02-25 21:38:02.9127007' AS DateTime2), N'角色授权', 3, 46, 1, N'/admin/role/authen', 1, N'fa fa-user-circle-o')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (50, CAST(N'2018-02-25 21:46:50.6451396' AS DateTime2), N'用户管理', 4, 46, 1, N'/admin/user', 1, N'fa fa-user-o')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (51, CAST(N'2018-02-25 21:39:27.8154553' AS DateTime2), N'用户部门', 5, 46, 1, N'/admin/user/department', 1, N'fa fa-vcard')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (52, CAST(N'2018-02-25 21:39:49.5024968' AS DateTime2), N'模块管理', 6, 46, 1, N'/admin/module', 1, N'')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (53, CAST(N'2018-02-25 21:40:18.5419110' AS DateTime2), N'菜单管理', 7, 46, 1, N'/admin/menu', 1, N'fa fa-list')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (54, CAST(N'2018-02-25 21:41:01.1950159' AS DateTime2), N'修改信息', 13, 46, 1, N'/admin/user/edit', 1, N'fa fa-info-circle')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (55, CAST(N'2018-02-25 21:41:26.1795987' AS DateTime2), N'系统日志', 1, 0, 0, N'#', 1, N'fa fa-sticky-note')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (57, CAST(N'2018-03-08 15:57:07.6196172' AS DateTime2), N'统计图表', 3, 55, 1, N'/admin/log/chart', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (1027, CAST(N'2018-02-25 21:41:01.1950159' AS DateTime2), N'后台任务', 12, 46, 1, N'/jobs', 1, N'fa fa-info-circle')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (1028, CAST(N'2018-03-12 14:40:26.1851601' AS DateTime2), N'表管理', 8, 46, 1, N'/admin/tablelist/index', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (1029, CAST(N'2018-03-12 14:40:53.2065422' AS DateTime2), N'表结构管理', 9, 46, 1, N'/admin/tablecolumn/index', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (1030, CAST(N'2018-03-05 20:39:16.2658323' AS DateTime2), N'添加', 1, 1028, 2, N'/admin/tablelist/add', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (1031, CAST(N'2018-03-05 20:41:16.8744020' AS DateTime2), N'编辑', 2, 1028, 2, N'/admin/tablelist/edit', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (1032, CAST(N'2018-03-05 20:41:32.5455574' AS DateTime2), N'删除', 3, 1028, 2, N'/admin/tablelist/delete', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (1033, CAST(N'2018-03-05 20:39:16.2658323' AS DateTime2), N'添加', 1, 1029, 2, N'/admin/tablecolumn/add', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (1034, CAST(N'2018-03-05 20:41:16.8744020' AS DateTime2), N'编辑', 2, 1029, 2, N'/admin/tablecolumn/edit', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (1035, CAST(N'2018-03-05 20:41:32.5455574' AS DateTime2), N'删除', 3, 1029, 2, N'/admin/tablecolumn/delete', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (2028, CAST(N'2018-03-20 22:29:22.2134309' AS DateTime2), N'系统参数', 11, 46, 1, N'/admin/systemoption/index', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (2029, CAST(N'2018-03-20 22:29:45.3538853' AS DateTime2), N'添加', 1, 2028, 2, N'/admin/systemoption/add', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (2030, CAST(N'2018-03-20 22:30:04.2380259' AS DateTime2), N'编辑', 2, 2028, 2, N'/admin/systemoption/edit', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (2031, CAST(N'2018-03-20 22:30:16.2512660' AS DateTime2), N'删除', 3, 2028, 2, N'/admin/systemoption/delete', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (2032, CAST(N'2018-03-23 23:36:32.6492257' AS DateTime2), N'设置属性', 5, 1029, 2, N'/admin/tablecolumn/setvalue', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (2033, CAST(N'2018-03-28 22:00:16.0416120' AS DateTime2), N'基础数据', 2, 0, 0, N'#', 1, N'fa fa-database')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (2034, CAST(N'2018-03-28 22:05:52.4014244' AS DateTime2), N'部门管理', 1, 2033, 1, N'/admin/viewlist/index/2', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (2035, CAST(N'2018-03-29 22:35:38.6117376' AS DateTime2), N'登录日志', 2, 2033, 1, N'/admin/viewlist/index/1009', 1, N'fa fa-history')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (2036, CAST(N'2018-03-31 23:00:25.9427920' AS DateTime2), N'添加', 1, 2039, 2, N'/admin/viewlist/add', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (2037, CAST(N'2018-03-31 22:59:52.6571289' AS DateTime2), N'编辑', 2, 2039, 2, N'/admin/viewlist/edit', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (2038, CAST(N'2018-03-31 22:59:43.5102640' AS DateTime2), N'删除', 3, 2039, 2, N'/admin/viewlist/delete', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (2039, CAST(N'2018-03-31 23:02:30.4059966' AS DateTime2), N'基础数据菜单权限', 99, 2033, 1, N'#', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (2041, CAST(N'2018-05-07 20:51:23.4942112' AS DateTime2), N'导入', 5, 2039, 2, N'/admin/viewlist/import', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (2042, CAST(N'2018-05-07 20:54:09.2408231' AS DateTime2), N'导出', 6, 2039, 2, N'/admin/viewlist/export', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (2043, CAST(N'2018-05-07 20:54:16.8067366' AS DateTime2), N'查看详情', 7, 2039, 2, N'/admin/viewlist/detail', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (2044, CAST(N'2019-01-06 22:15:22.5186765' AS DateTime2), N'测试领导管理', 3, 2033, 1, N'/admin/viewlist/index/1011', 1, N'fa')
SET IDENTITY_INSERT [dbo].[Sys_Menu] OFF
SET IDENTITY_INSERT [dbo].[Sys_Module] ON 

INSERT [dbo].[Sys_Module] ([Id], [CreateDateTime], [Description], [Name]) VALUES (1, CAST(N'2018-02-24 20:54:50.8667647' AS DateTime2), N'管理系统后台数据', N'系统管理')
INSERT [dbo].[Sys_Module] ([Id], [CreateDateTime], [Description], [Name]) VALUES (2, CAST(N'2018-02-24 20:56:01.6495884' AS DateTime2), N'1', N'测试模块')
SET IDENTITY_INSERT [dbo].[Sys_Module] OFF
SET IDENTITY_INSERT [dbo].[Sys_OperationLog] ON 

INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1482, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:12:00.4011858' AS DateTime2), N'访问', N'/admin', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1483, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:12:02.3572116' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1484, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:12:04.9403162' AS DateTime2), N'访问', N'/admin/role', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1485, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:12:08.2830150' AS DateTime2), N'访问', N'/admin/log/operation', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1486, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:12:08.9191299' AS DateTime2), N'访问', N'/admin/log/login', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1487, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:21:01.2572245' AS DateTime2), N'访问', N'/admin', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1488, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:21:01.7562043' AS DateTime2), N'访问', N'/admin/User/Login', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1489, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:21:10.7600347' AS DateTime2), N'访问', N'/admin/control/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1490, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:21:11.7298283' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1491, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:21:52.3767652' AS DateTime2), N'访问', N'/admin/viewlist/index/1009', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1492, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:21:53.9011041' AS DateTime2), N'访问', N'/admin/viewlist/index/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1493, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:21:54.8839518' AS DateTime2), N'访问', N'/admin/viewlist/index/1010', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1494, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:21:57.6131520' AS DateTime2), N'访问', N'/admin/control/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1495, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:21:57.7055551' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1496, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:21:59.5397035' AS DateTime2), N'访问', N'/admin/viewlist/index/1009', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1497, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:22:01.3220408' AS DateTime2), N'访问', N'/admin/viewlist/index/1009', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1498, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:22:02.0443964' AS DateTime2), N'访问', N'/admin/viewlist/index/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1499, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:22:02.6842456' AS DateTime2), N'访问', N'/admin/viewlist/index/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1500, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:22:03.5865629' AS DateTime2), N'访问', N'/admin/viewlist/index/1010', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1501, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:22:08.4452871' AS DateTime2), N'访问', N'/admin/menu', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1502, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:23:40.9390784' AS DateTime2), N'访问', N'/admin/control/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1503, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:23:41.3954332' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1504, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:23:45.3320357' AS DateTime2), N'访问', N'/admin/viewlist/index/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1505, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:23:50.8990923' AS DateTime2), N'访问', N'/admin/viewlist/index/1009', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1506, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:23:51.9009024' AS DateTime2), N'访问', N'/admin/viewlist/index/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1507, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:23:52.5688659' AS DateTime2), N'访问', N'/admin/viewlist/index/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1508, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:23:52.9715420' AS DateTime2), N'访问', N'/admin/viewlist/index/1009', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1509, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:23:53.4893647' AS DateTime2), N'访问', N'/admin/viewlist/index/1009', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1510, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:23:54.1955160' AS DateTime2), N'访问', N'/admin/viewlist/index/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1511, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:23:56.7245971' AS DateTime2), N'访问', N'/admin/tablelist/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1512, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:24:03.6603633' AS DateTime2), N'访问', N'/admin/tablelist/edit/1009', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1513, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:24:41.5493596' AS DateTime2), N'访问', N'/admin/log/operation', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1514, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:24:43.7019608' AS DateTime2), N'访问', N'/admin/viewlist/index/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1515, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:24:44.1423333' AS DateTime2), N'访问', N'/admin/viewlist/index/1009', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1516, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:24:44.8213097' AS DateTime2), N'访问', N'/admin/viewlist/index/1009', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1517, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:24:51.4918005' AS DateTime2), N'访问', N'/admin/log/operation', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1518, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:24:52.0117830' AS DateTime2), N'访问', N'/admin/log/login', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1519, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:24:52.7191327' AS DateTime2), N'访问', N'/admin/log/operation', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1520, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:24:53.4519897' AS DateTime2), N'访问', N'/admin/log/operation', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1521, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:24:53.9633980' AS DateTime2), N'访问', N'/admin/log/login', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1522, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:24:54.4844024' AS DateTime2), N'访问', N'/admin/log/login', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1523, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:24:55.1173420' AS DateTime2), N'访问', N'/admin/log/chart', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1524, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:24:55.6673163' AS DateTime2), N'访问', N'/admin/log/chart', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1525, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:27:29.7687239' AS DateTime2), N'访问', N'/admin/log/operation', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1526, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:27:31.6681871' AS DateTime2), N'访问', N'/admin/log/chart', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1527, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:28:31.4937690' AS DateTime2), N'访问', N'/admin/log/operation', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1528, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:28:33.5145669' AS DateTime2), N'访问', N'/admin/log/operation', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1529, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:28:47.9499477' AS DateTime2), N'访问', N'/admin/log/login', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1530, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:28:49.2742913' AS DateTime2), N'访问', N'/admin/log/login', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1531, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 17:28:51.1938036' AS DateTime2), N'访问', N'/admin/log/login', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1532, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 18:03:10.4186389' AS DateTime2), N'访问', N'/admin', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1533, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 18:03:10.9332839' AS DateTime2), N'访问', N'/admin/User/Login', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1534, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 18:03:17.9877093' AS DateTime2), N'访问', N'/admin/control/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1535, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-04 18:03:19.0647038' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1536, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 00:20:42.8331974' AS DateTime2), N'访问', N'/admin', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1537, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 00:20:43.9395299' AS DateTime2), N'访问', N'/admin/User/Login', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1538, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 00:20:47.6545158' AS DateTime2), N'访问', N'/admin/User/Login', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1539, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 00:20:55.0453825' AS DateTime2), N'访问', N'/admin/control/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1540, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 00:20:57.2345651' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1541, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 00:20:59.3930301' AS DateTime2), N'访问', N'/admin/control/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1542, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 00:20:59.7453165' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1543, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 00:21:01.8075756' AS DateTime2), N'访问', N'/admin/viewlist/index/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1544, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 00:21:05.9510683' AS DateTime2), N'访问', N'/admin/viewlist/edit/39/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1545, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 00:21:08.4799881' AS DateTime2), N'访问', N'/admin/User/Login', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1546, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 00:21:34.9158294' AS DateTime2), N'访问', N'/admin', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1547, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 00:21:35.2407639' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1548, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 00:21:36.9077958' AS DateTime2), N'访问', N'/admin/viewlist/index/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1549, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 00:21:39.5438306' AS DateTime2), N'访问', N'/admin/viewlist/edit/40/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1550, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 00:21:43.3581902' AS DateTime2), N'访问', N'/admin/viewlist/edit/39/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1551, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 00:21:49.5272141' AS DateTime2), N'访问', N'/admin/viewlist/edit/30/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1552, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 00:21:53.7295518' AS DateTime2), N'访问', N'/admin/viewlist/edit/28/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1553, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 00:21:56.9853470' AS DateTime2), N'访问', N'/admin/tablecolumn/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (1554, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 00:22:06.6683689' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/50', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2918, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 21:26:15.9489142' AS DateTime2), N'访问', N'/admin', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2919, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 21:26:16.4039377' AS DateTime2), N'访问', N'/admin/User/Login', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2920, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 21:26:48.3460749' AS DateTime2), N'访问', N'/admin/control/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2921, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 21:26:49.5238268' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2922, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 21:26:54.7866608' AS DateTime2), N'访问', N'/admin/tablelist/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2923, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 21:26:56.8359555' AS DateTime2), N'访问', N'/admin/tablecolumn/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2924, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 21:27:02.4502831' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/65', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2925, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 21:30:27.1802839' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/65', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2926, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 21:30:32.4350338' AS DateTime2), N'访问', N'/admin/tablecolumn/add', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2927, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 21:31:18.3386477' AS DateTime2), N'访问', N'/admin/tablecolumn/add', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2928, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 21:34:33.3178724' AS DateTime2), N'访问', N'/admin', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2929, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 21:34:35.2325912' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2930, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 21:34:51.1981241' AS DateTime2), N'访问', N'/admin/tablelist/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2931, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 21:34:52.3319279' AS DateTime2), N'访问', N'/admin/tablecolumn/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2932, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 21:35:03.1994683' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/60', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2933, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 21:35:11.6633744' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/60', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2934, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 21:35:23.2998675' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/60', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2935, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 21:39:02.3285142' AS DateTime2), N'访问', N'/admin/tablecolumn/add', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2936, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:12:49.3891359' AS DateTime2), N'访问', N'/admin/tablelist/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2937, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:12:55.0329239' AS DateTime2), N'访问', N'/admin', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2938, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:13:00.5813091' AS DateTime2), N'访问', N'/admin', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2939, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:13:07.4774843' AS DateTime2), N'访问', N'/admin', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2940, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:13:08.3690093' AS DateTime2), N'访问', N'/admin', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2941, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:13:08.9774295' AS DateTime2), N'访问', N'/admin', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2942, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:13:52.7227252' AS DateTime2), N'访问', N'/admin', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2943, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:13:53.2331865' AS DateTime2), N'访问', N'/admin/User/Login', 0, N'无')
GO
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2944, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:13:56.0535633' AS DateTime2), N'访问', N'/admin', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2945, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:13:57.5278810' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2946, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:14:04.0960184' AS DateTime2), N'访问', N'/admin/menu', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2947, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:14:09.2478696' AS DateTime2), N'访问', N'/admin/viewlist/index/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2948, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:14:17.4754168' AS DateTime2), N'访问', N'/admin/tablelist/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2949, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:14:19.8988947' AS DateTime2), N'访问', N'/admin/tablelist/add', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2950, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:14:47.8713919' AS DateTime2), N'访问', N'/admin/menu', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2951, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:14:49.0418652' AS DateTime2), N'访问', N'/admin/menu', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2952, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:14:58.9356831' AS DateTime2), N'访问', N'/admin/menu/add', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2953, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:15:31.8517670' AS DateTime2), N'访问', N'/admin/tablecolumn/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2954, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:15:53.0915705' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/70', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2955, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:16:33.6381599' AS DateTime2), N'访问', N'/admin/role/authen', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2956, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:16:43.3215870' AS DateTime2), N'访问', N'/admin', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2957, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:16:43.5854215' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2958, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:16:46.1156195' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2959, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:16:48.6766926' AS DateTime2), N'访问', N'/admin/tablecolumn/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2960, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:16:59.0276717' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/71', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2961, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:17:15.2138149' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/71', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2962, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:17:21.0473119' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/72', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2963, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:17:30.6803645' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/73', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2964, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:18:01.1095734' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/74', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2965, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:18:44.2123730' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/75', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2966, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:19:05.6100868' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/76', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2967, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:19:15.4724543' AS DateTime2), N'访问', N'/admin/viewlist/index/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2968, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:19:16.4712739' AS DateTime2), N'访问', N'/admin/viewlist/add/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2969, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:19:19.5143518' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2970, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:19:20.5660605' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2971, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:19:22.0797865' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2972, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:19:50.6232665' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2973, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:22:04.2604263' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2974, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:23:50.1929073' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2975, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:30:09.3810662' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/74', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2976, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:30:37.6603730' AS DateTime2), N'访问', N'/admin', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2977, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:30:40.3601017' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2978, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:30:42.4893627' AS DateTime2), N'访问', N'/admin/tablecolumn/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2979, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:30:47.3221996' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/74', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2980, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:30:52.3625587' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/75', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2981, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:30:57.4629756' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/75', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2982, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:31:04.1821534' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2983, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:31:05.4001266' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2984, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:33:19.5102619' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2985, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:44:06.9239738' AS DateTime2), N'访问', N'/admin/viewlist/index/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2986, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:44:11.5759691' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2987, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:44:12.6428627' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2988, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:44:17.2368337' AS DateTime2), N'访问', N'/admin/viewlist/index/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2989, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:44:17.8280250' AS DateTime2), N'访问', N'/admin/viewlist/index/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2990, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:44:26.4835805' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/76', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2991, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:44:44.2955514' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2992, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:44:47.3351244' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2993, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:45:59.5610511' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2994, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:46:20.1334019' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2995, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:46:36.0682761' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/71', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2996, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:46:50.5459018' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2997, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 22:46:57.8896670' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2998, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:03:57.5144756' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (2999, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:04:25.0398890' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3000, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:04:48.6791976' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3001, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:05:47.1957728' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3002, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:05:57.3471507' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3003, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:06:15.9839689' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3004, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:09:37.2832561' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3005, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:09:42.7639857' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3006, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:10:11.7186355' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3007, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:12:55.5660583' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3008, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:13:33.6489443' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3009, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:13:54.5181487' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3010, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:13:56.8602815' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3011, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:14:15.2988840' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3012, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:14:32.1146085' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3013, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:17:50.3223418' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3014, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:18:12.3998234' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3015, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:18:51.7853144' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3016, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:19:46.4395918' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3017, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:21:31.8374842' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3018, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:22:06.4399273' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3019, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:23:09.5735118' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3020, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:25:23.1687880' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3021, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:26:14.7067661' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3022, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:27:06.7235473' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3023, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:27:25.1491835' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3024, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:28:38.2026399' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3025, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:30:00.6786630' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3026, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:33:01.8245754' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3027, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:33:12.6933910' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3028, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:34:20.8270149' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3029, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:38:22.3810816' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3030, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:38:28.9745973' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3031, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:38:42.1249649' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3032, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:39:44.6771206' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3033, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:50:24.8712205' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3034, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:50:48.4890714' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3035, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:51:27.7076858' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3036, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:51:38.3761628' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3037, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:52:11.4088612' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3038, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:52:22.8778910' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3039, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:55:49.6752793' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3040, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:56:00.4571128' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3041, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:58:20.6454161' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3042, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:58:36.5351688' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3043, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-06 23:59:21.7284052' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
GO
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3044, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 00:00:32.6210403' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3045, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 00:02:06.8693435' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3046, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 00:04:42.1244394' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3047, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 00:08:36.5718355' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3048, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 00:08:42.8681689' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3049, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 00:09:00.1467945' AS DateTime2), N'访问', N'/admin/viewlist/edit/2/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3050, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 00:10:28.0843725' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3051, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 00:13:14.7721683' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3052, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 00:13:28.6842665' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3053, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 00:15:35.8495407' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3054, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 00:16:13.3626205' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3055, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 00:18:06.3577876' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3056, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 00:18:08.4284459' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3057, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 00:18:11.8779616' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3058, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 00:18:13.4913310' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3059, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 00:27:54.0512554' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3060, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 00:28:10.7868831' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3061, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 00:28:20.8124762' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3062, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 00:28:23.6037777' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3063, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 00:30:25.6425599' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3064, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 00:31:59.5176310' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3065, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 00:35:31.2850457' AS DateTime2), N'访问', N'/admin', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3066, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 00:35:31.8337659' AS DateTime2), N'访问', N'/admin/User/Login', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3067, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 00:35:38.5251974' AS DateTime2), N'访问', N'/admin/control/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3068, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 00:35:39.6210400' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3069, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 00:35:42.1912970' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3070, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 00:35:42.7325559' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3071, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 00:35:46.1364664' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3072, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 00:35:53.4811490' AS DateTime2), N'访问', N'/admin/viewlist/edit/2/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3073, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 11:30:49.1425378' AS DateTime2), N'访问', N'/admin', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3074, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 11:30:49.6850587' AS DateTime2), N'访问', N'/admin/User/Login', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3075, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 11:30:57.5581354' AS DateTime2), N'访问', N'/admin/control/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3076, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 11:30:58.6235169' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3077, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 11:31:04.2479859' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3078, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 11:31:06.5514385' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3079, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 11:31:20.2168582' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3080, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 11:32:07.6471928' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3081, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 11:32:13.1440239' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3082, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 11:32:52.2460148' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3083, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 11:33:15.3641656' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3084, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 11:33:19.9069029' AS DateTime2), N'访问', N'/admin/control/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3085, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 11:33:20.6118730' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3086, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 11:33:23.2388676' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3087, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 11:33:25.1225372' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3088, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 11:34:50.9399728' AS DateTime2), N'访问', N'/admin', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3089, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 11:34:53.1607636' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3090, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 11:34:54.8812105' AS DateTime2), N'访问', N'/admin/viewlist/index/1009', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3091, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 11:34:55.0236394' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3092, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 11:34:56.8205756' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3093, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 11:37:22.6056069' AS DateTime2), N'访问', N'/admin', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3094, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 11:37:24.8369441' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3095, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 11:37:27.2794826' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3096, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 11:37:29.2792527' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3097, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 11:37:43.9020461' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3098, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 11:38:26.7559781' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3099, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 11:39:11.7162372' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3100, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 11:39:35.6039696' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3101, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 11:39:43.4998714' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3102, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 14:33:08.3125373' AS DateTime2), N'访问', N'/admin', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3103, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 14:33:08.8123938' AS DateTime2), N'访问', N'/admin/User/Login', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3104, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 14:33:15.5077017' AS DateTime2), N'访问', N'/admin/control/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3105, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 14:33:16.5265832' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3106, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 14:33:18.7134468' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3107, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 14:33:20.5315393' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3108, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 14:33:56.7715658' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3109, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 14:34:12.1939008' AS DateTime2), N'访问', N'/admin/viewlist/edit/3/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3110, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 14:42:48.9939482' AS DateTime2), N'访问', N'/admin', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3111, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 14:42:51.0549481' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3112, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 14:42:52.9962095' AS DateTime2), N'访问', N'/admin/role', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3113, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 14:42:54.9292957' AS DateTime2), N'访问', N'/admin/role/authen', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3114, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 14:43:07.4167201' AS DateTime2), N'访问', N'/admin/tablecolumn/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3115, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 14:43:10.9522359' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3116, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 14:43:12.2871368' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3117, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 14:43:12.8889534' AS DateTime2), N'访问', N'/admin/viewlist/index/1009', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3118, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 14:43:13.4564265' AS DateTime2), N'访问', N'/admin/viewlist/index/1009', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3119, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 14:43:13.7610726' AS DateTime2), N'访问', N'/admin/viewlist/index/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3120, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 14:43:16.4017800' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3121, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 14:43:17.2331278' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3122, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 14:43:18.1800691' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3123, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-07 14:43:21.5039115' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3124, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:13:12.4590916' AS DateTime2), N'访问', N'/admin', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3125, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:13:13.1449853' AS DateTime2), N'访问', N'/admin/User/Login', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3126, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:13:21.6452063' AS DateTime2), N'访问', N'/admin/control/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3127, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:13:22.9066799' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3128, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:13:28.7671986' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3129, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:13:34.2835944' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3130, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:13:44.0424890' AS DateTime2), N'访问', N'/admin/control/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3131, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:13:44.1653574' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3132, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:13:46.7785876' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3133, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:14:03.7316145' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3134, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:14:14.6259542' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3135, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:14:23.7850940' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3136, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:14:26.5825155' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3137, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:16:08.8210012' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3138, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:21:35.2307169' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3139, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:21:40.2983393' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3140, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:21:45.4620717' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3141, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:24:27.5212746' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3142, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:26:37.2344557' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3143, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:26:40.0267828' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
GO
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3144, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:26:48.0867020' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3145, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:28:52.2881691' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3146, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:28:58.0938723' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3147, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:31:15.5241966' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3148, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:31:17.5005202' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3149, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:34:16.2333037' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3150, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:34:28.7651057' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3151, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:35:59.2553447' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3152, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:36:08.6217707' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3153, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:37:06.6295543' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3154, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:39:17.6237212' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3155, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:39:27.8391445' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3156, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:40:01.6616935' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3157, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:41:24.2630104' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3158, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:42:09.5807862' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3159, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:43:00.8129828' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3160, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:43:05.8190782' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3161, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:43:54.1684459' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3162, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:44:33.2770039' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3163, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:45:08.2269945' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3164, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:45:20.6996991' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3165, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:45:30.9002449' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3166, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:46:03.2850966' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3167, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:46:57.1148389' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3168, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:47:05.2579690' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3169, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:47:17.4197342' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3170, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:47:21.4668957' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3171, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:47:34.3714157' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3172, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:48:20.5374133' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3173, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:48:37.4346152' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3174, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:48:44.6170536' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3175, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:48:52.5216540' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3176, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:49:02.3080946' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3177, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:49:06.7705019' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3178, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:49:27.9793909' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3179, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:49:46.0063798' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3180, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:51:09.7640371' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3181, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 18:51:25.0655437' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3182, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 19:09:56.6421235' AS DateTime2), N'访问', N'/admin', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3183, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 19:09:58.8801984' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3184, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 19:10:02.4182345' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3185, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 19:13:30.0873511' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3186, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 19:13:39.5779818' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3187, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 19:13:43.0132803' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3188, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 19:13:49.6184125' AS DateTime2), N'访问', N'/admin/tablelist/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3189, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 19:13:53.3293174' AS DateTime2), N'访问', N'/admin/tablelist/edit/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3190, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 19:14:40.9165596' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3191, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 19:14:43.0426565' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3192, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 19:14:50.0049897' AS DateTime2), N'访问', N'/admin/viewlist/detail/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3193, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 19:14:59.6022681' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3194, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 19:15:12.0653905' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3195, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 19:15:16.2023801' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3196, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 19:15:43.7734443' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3197, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 19:15:46.6283029' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3198, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 19:15:49.8364242' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3199, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 19:15:56.5228048' AS DateTime2), N'访问', N'/admin/tablelist/edit/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3200, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 19:17:06.9182629' AS DateTime2), N'访问', N'/admin/tablelist/edit/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3201, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 19:19:10.0691224' AS DateTime2), N'访问', N'/admin/viewlist/detail/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3202, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 19:19:13.3132367' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3203, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 19:19:16.0098248' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3204, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 19:19:17.1961874' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3205, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 19:19:19.8452781' AS DateTime2), N'访问', N'/admin/viewlist/detail/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3206, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 19:52:53.4354113' AS DateTime2), N'访问', N'/admin', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3207, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 19:52:53.9962730' AS DateTime2), N'访问', N'/admin/User/Login', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3208, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 19:53:00.8364148' AS DateTime2), N'访问', N'/admin/control/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3209, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 19:53:01.9423432' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3210, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 19:53:17.7777262' AS DateTime2), N'访问', N'/admin/viewlist/index/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3211, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 19:53:19.1410670' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3212, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 19:53:20.7791148' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3213, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 19:53:22.5231422' AS DateTime2), N'访问', N'/admin/viewlist/detail/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3214, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 20:40:53.1488272' AS DateTime2), N'访问', N'/admin', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3215, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 20:40:53.7296472' AS DateTime2), N'访问', N'/admin/User/Login', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3216, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 20:41:01.3443553' AS DateTime2), N'访问', N'/admin/control/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3217, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 20:41:02.4978365' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3218, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 20:41:06.2565998' AS DateTime2), N'访问', N'/admin/log/chart', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3219, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 20:41:24.4977396' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3220, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 20:41:26.9725102' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3221, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 20:42:11.3542544' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3222, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 20:43:57.1357209' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3223, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 20:44:49.7198938' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3224, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 20:46:23.1310763' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3225, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 20:46:51.3611254' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3226, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 20:47:04.5053220' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3227, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 20:50:19.9851246' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3228, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 20:50:57.9455011' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3229, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 20:58:43.2045543' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3230, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 20:59:03.0764449' AS DateTime2), N'访问', N'/admin/tablecolumn/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3231, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 20:59:13.2932521' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3232, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 20:59:13.8119474' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3233, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 20:59:14.0935713' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3234, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 20:59:14.8212758' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3235, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 20:59:17.2349984' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3236, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 20:59:34.6777245' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/76', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3237, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 20:59:43.3486251' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3238, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 21:01:43.8105495' AS DateTime2), N'访问', N'/admin/viewlist/edit/4/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3239, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 21:01:58.0472674' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/75', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3240, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 21:02:13.1809331' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/75', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3241, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 21:02:24.7817139' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3242, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 21:03:04.7761125' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3243, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 21:03:27.0604944' AS DateTime2), N'访问', N'/admin/viewlist/edit/5/1011', 13, N'sa')
GO
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3244, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 21:04:51.2201379' AS DateTime2), N'访问', N'/admin', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3245, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 21:04:51.8114264' AS DateTime2), N'访问', N'/admin/User/Login', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3246, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 21:04:58.4541991' AS DateTime2), N'访问', N'/admin/control/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3247, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 21:04:59.6514192' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3248, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 21:05:03.4520072' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3249, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 21:05:13.1109185' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3250, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 21:06:28.7110630' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3251, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 21:06:47.5718466' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3252, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 21:06:56.3077341' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3253, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 21:07:14.2983294' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3254, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 21:07:22.4560372' AS DateTime2), N'访问', N'/admin/viewlist/edit/5/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3255, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 21:07:29.3872123' AS DateTime2), N'访问', N'/admin/viewlist/edit/5/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3256, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 21:07:37.1145958' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3257, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 21:08:04.7729676' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3258, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 21:08:10.0838754' AS DateTime2), N'访问', N'/admin/viewlist/edit/5/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3259, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-08 21:08:19.9231743' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3260, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 09:01:20.9511414' AS DateTime2), N'访问', N'/admin', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3261, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 09:01:21.3899640' AS DateTime2), N'访问', N'/admin/User/Login', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3262, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 09:02:21.8901518' AS DateTime2), N'访问', N'/admin/control/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3263, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 09:02:22.9176723' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3264, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 09:02:45.6078021' AS DateTime2), N'访问', N'/admin/tablelist/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3265, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 09:02:49.9506089' AS DateTime2), N'访问', N'/admin/tablelist/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3266, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 09:02:58.8567378' AS DateTime2), N'访问', N'/admin/user/department', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3267, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 09:03:02.9834283' AS DateTime2), N'访问', N'/admin/user/selectUser/17', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3268, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 09:07:38.9185645' AS DateTime2), N'访问', N'/admin/user/department', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3269, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 09:07:41.6493719' AS DateTime2), N'访问', N'/admin/user/selectUser', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3270, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 09:09:49.9872230' AS DateTime2), N'访问', N'/admin/user/selectUser/7', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3271, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 09:16:58.0036696' AS DateTime2), N'访问', N'/admin/control/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3272, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 09:16:58.2859015' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3273, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 09:17:13.7422573' AS DateTime2), N'访问', N'/admin/user/department', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3274, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 09:17:16.8442166' AS DateTime2), N'访问', N'/admin/user/selectUser', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3275, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 09:18:46.3687432' AS DateTime2), N'访问', N'/admin/user/department', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3276, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 09:18:49.3059140' AS DateTime2), N'访问', N'/admin/user/selectUser/6', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3277, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 09:18:57.7533170' AS DateTime2), N'访问', N'/admin/user/department', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3278, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 09:22:36.2245149' AS DateTime2), N'访问', N'/admin/user/selectUser/14', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3279, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 09:22:55.0496491' AS DateTime2), N'访问', N'/admin/user/selectUser/14', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3280, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 09:33:13.1847473' AS DateTime2), N'访问', N'/admin/user/department', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3281, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 09:33:15.7515977' AS DateTime2), N'访问', N'/admin/user/selectUser/13', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3282, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 10:25:58.6659063' AS DateTime2), N'访问', N'/admin', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3283, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 10:25:59.1308943' AS DateTime2), N'访问', N'/admin/User/Login', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3284, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 10:26:07.7899378' AS DateTime2), N'访问', N'/admin/control/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3285, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 10:26:08.7240733' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3286, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 10:26:20.3722148' AS DateTime2), N'访问', N'/admin/tablelist/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3287, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 10:26:36.3482278' AS DateTime2), N'访问', N'/admin/tablelist/edit/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3288, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 10:26:52.9999738' AS DateTime2), N'访问', N'/admin/viewlist/index/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3289, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 10:26:58.3924412' AS DateTime2), N'访问', N'/admin/viewlist/edit/40/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3290, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 10:27:07.6338451' AS DateTime2), N'访问', N'/admin/viewlist/index/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3291, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 10:27:28.2572326' AS DateTime2), N'访问', N'/admin/viewlist/edit/40/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3292, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 10:27:33.5939137' AS DateTime2), N'访问', N'/admin/viewlist/edit/40/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3293, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 10:35:14.7380820' AS DateTime2), N'访问', N'/admin', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3294, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 10:35:16.4838482' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3295, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 10:35:24.0627390' AS DateTime2), N'访问', N'/admin/viewlist/index/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3296, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 10:35:26.9540726' AS DateTime2), N'访问', N'/admin/viewlist/edit/40/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3297, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 10:35:39.6731471' AS DateTime2), N'访问', N'/admin/viewlist/index/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3298, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 10:36:25.4166478' AS DateTime2), N'访问', N'/admin', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3299, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 10:36:25.9244685' AS DateTime2), N'访问', N'/admin/User/Login', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3300, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 10:37:29.3085452' AS DateTime2), N'访问', N'/admin/tablelist/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3301, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 10:37:39.7861382' AS DateTime2), N'访问', N'/admin/tablelist/edit/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3302, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 10:39:24.2747568' AS DateTime2), N'访问', N'/admin/tablelist/edit/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3303, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 10:39:28.0353634' AS DateTime2), N'访问', N'/admin/viewlist/index/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3304, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 10:39:29.4561265' AS DateTime2), N'访问', N'/admin/viewlist/index/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3305, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 10:39:29.9436509' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3306, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 10:39:30.5134765' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3307, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 10:40:23.7532882' AS DateTime2), N'访问', N'/admin', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3308, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 10:40:24.9645667' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3309, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 10:40:36.1329220' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3310, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 10:40:42.3892607' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3311, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 21:17:31.4177473' AS DateTime2), N'访问', N'/admin', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3312, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 21:17:31.9497920' AS DateTime2), N'访问', N'/admin/User/Login', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3313, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 21:17:38.8643162' AS DateTime2), N'访问', N'/admin/control/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3314, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 21:17:39.9921254' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3315, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 21:17:48.0255094' AS DateTime2), N'访问', N'/admin/tablecolumn/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3316, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 21:17:57.0228675' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/72', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3317, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 21:18:03.1034458' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3318, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 21:18:03.9066563' AS DateTime2), N'访问', N'/admin/viewlist/index/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3319, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 21:18:04.6279364' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3320, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 21:18:05.0583182' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3321, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 21:18:07.5514861' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3322, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 21:18:14.2182445' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3323, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 21:20:18.8342581' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3324, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 21:20:35.9248073' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3325, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 21:21:15.9143232' AS DateTime2), N'访问', N'/admin', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3326, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 21:21:16.0132288' AS DateTime2), N'访问', N'/admin/User/Login', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3327, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 21:21:21.1815325' AS DateTime2), N'访问', N'/admin/control/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3328, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 21:21:21.9716737' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3329, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 21:21:24.1409849' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3330, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 21:21:25.5049141' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3331, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 21:21:29.0770358' AS DateTime2), N'访问', N'/admin/tablecolumn/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3332, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 21:21:30.4181091' AS DateTime2), N'访问', N'/admin/tablecolumn/add', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3333, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 21:21:35.3168971' AS DateTime2), N'访问', N'/admin/tablelist/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (3334, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-11 21:21:36.6193600' AS DateTime2), N'访问', N'/admin/tablelist/add', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4311, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 13:39:25.0943260' AS DateTime2), N'访问', N'/admin', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4312, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 13:39:25.5519462' AS DateTime2), N'访问', N'/admin/User/Login', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4313, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 13:39:33.3862194' AS DateTime2), N'访问', N'/admin/control/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4314, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 13:39:34.4151314' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4315, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 13:39:37.7969576' AS DateTime2), N'访问', N'/admin/viewlist/index/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4316, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 13:39:39.5670165' AS DateTime2), N'访问', N'/admin/tablecolumn/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4317, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 13:39:48.5798179' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/76', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4318, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 13:40:01.8608802' AS DateTime2), N'访问', N'/admin/viewlist/index/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4319, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 13:40:02.4411358' AS DateTime2), N'访问', N'/admin/viewlist/index/2', 13, N'sa')
GO
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4320, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 13:40:03.2005998' AS DateTime2), N'访问', N'/admin/viewlist/add/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4321, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 13:40:10.2436269' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4322, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 13:40:11.3791936' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4323, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 13:42:49.4855287' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4324, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 13:43:05.6752352' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4325, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 13:51:29.9761093' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4326, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 13:52:38.9550412' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4327, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 13:53:08.2596078' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4328, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 13:54:37.2487690' AS DateTime2), N'访问', N'/admin/control/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4329, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 13:54:37.8188701' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4330, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 13:54:39.6819751' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4331, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 13:54:40.6198002' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4332, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 14:04:11.2287026' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4333, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 14:04:29.4689052' AS DateTime2), N'访问', N'/admin/tablecolumn/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4334, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 14:05:39.8041474' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4335, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 14:09:30.0648909' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4336, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 14:21:03.1005404' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4337, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 14:21:57.9629152' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4338, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 14:22:57.9350299' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4339, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 14:28:48.2668687' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4340, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 14:30:33.6726730' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4341, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 14:30:38.8253165' AS DateTime2), N'访问', N'/admin/viewlist/edit/1006/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4342, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 14:30:52.5183060' AS DateTime2), N'访问', N'/admin/viewlist/edit/1008/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4343, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 14:32:20.9652520' AS DateTime2), N'访问', N'/admin/viewlist/edit/1008/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4344, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 14:32:41.9483026' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4345, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 14:32:46.5092661' AS DateTime2), N'访问', N'/admin/viewlist/edit/1008/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4346, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 14:37:22.9256251' AS DateTime2), N'访问', N'/admin/viewlist/edit/1008/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4347, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 14:44:37.0978366' AS DateTime2), N'访问', N'/admin/tablelist/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4348, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 14:44:43.1093417' AS DateTime2), N'访问', N'/admin/tablelist/edit/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4349, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 14:44:57.4519660' AS DateTime2), N'访问', N'/admin/viewlist/edit/1008/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4350, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 14:45:11.5385882' AS DateTime2), N'访问', N'/admin/viewlist/edit/1008/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4351, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 14:48:47.6952650' AS DateTime2), N'访问', N'/admin', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4352, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 14:48:49.7520547' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4353, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 14:48:51.4277556' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4354, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 14:57:36.1183783' AS DateTime2), N'访问', N'/admin', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4355, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 14:57:36.6424206' AS DateTime2), N'访问', N'/admin/User/Login', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4356, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 14:57:42.9777075' AS DateTime2), N'访问', N'/admin/control/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4357, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 14:57:44.1703515' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4358, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 14:57:46.6157785' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4359, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 15:02:21.2790230' AS DateTime2), N'访问', N'/admin', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4360, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 15:02:21.8187638' AS DateTime2), N'访问', N'/admin/User/Login', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4361, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 15:02:32.7749888' AS DateTime2), N'访问', N'/admin/control/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4362, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 15:02:33.9653641' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4363, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 15:02:37.4317761' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4364, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 15:03:28.5490215' AS DateTime2), N'访问', N'/admin', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4365, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 15:03:29.0099839' AS DateTime2), N'访问', N'/admin/User/Login', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4366, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 15:03:35.2769264' AS DateTime2), N'访问', N'/admin/control/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4367, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 15:03:36.2663917' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4368, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 15:03:39.3175837' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4369, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 15:03:50.1050367' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4370, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 15:04:12.8552511' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4371, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 15:04:19.9177688' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4372, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 15:04:25.1972933' AS DateTime2), N'访问', N'/admin/tablecolumn/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4373, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 15:04:30.4137617' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/75', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4374, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 15:05:35.9782733' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/75', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4375, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 15:06:11.6729218' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4376, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 15:06:42.2733394' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4377, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 15:07:43.1675960' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4378, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 15:17:01.2389409' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/76', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4379, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 15:17:56.7479752' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/76', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4380, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 15:18:17.9724948' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4381, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 15:21:48.1332537' AS DateTime2), N'访问', N'/admin', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4382, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 15:21:48.6769726' AS DateTime2), N'访问', N'/admin/User/Login', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4383, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 15:21:57.9854583' AS DateTime2), N'访问', N'/admin/control/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4384, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 15:21:59.0430437' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4385, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 15:22:01.1267538' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4386, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 15:22:02.4141554' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4387, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 16:29:52.7143160' AS DateTime2), N'访问', N'/admin', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4388, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 16:29:53.2134126' AS DateTime2), N'访问', N'/admin/User/Login', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4389, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 16:31:36.5971413' AS DateTime2), N'访问', N'/admin/User/Login', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4390, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 16:31:41.0453477' AS DateTime2), N'访问', N'/admin/control/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4391, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 16:31:42.2457600' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4392, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 16:31:47.3192180' AS DateTime2), N'访问', N'/admin/viewlist/index/1009', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4393, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 16:31:47.6426177' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4394, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 16:32:29.9161481' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4395, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 16:34:50.2574451' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4396, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 16:35:04.8381847' AS DateTime2), N'访问', N'/admin/control/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4397, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 16:35:06.3228399' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4398, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 16:35:08.3180192' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4399, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 20:57:42.4158588' AS DateTime2), N'访问', N'/admin', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4400, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 20:57:42.9690943' AS DateTime2), N'访问', N'/admin/User/Login', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4401, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 20:58:21.7890011' AS DateTime2), N'访问', N'/admin/User/Login', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4402, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 20:58:26.4144137' AS DateTime2), N'访问', N'/admin/control/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4403, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 20:58:27.5592371' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4404, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 20:58:29.1880342' AS DateTime2), N'访问', N'/admin/viewlist/index/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4405, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 20:58:30.4567867' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4406, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 20:58:34.5953451' AS DateTime2), N'访问', N'/admin/tablelist/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4407, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 20:58:39.0108403' AS DateTime2), N'访问', N'/admin/tablelist/edit/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4408, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 20:59:54.4087108' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4409, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:00:12.9610907' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4410, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:02:23.6229578' AS DateTime2), N'访问', N'/admin/tablelist/edit/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4411, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:03:42.6569199' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4412, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:05:07.5219072' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4413, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:07:10.9678524' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4414, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:07:52.6884421' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4415, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:09:45.9950688' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4416, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:10:16.7328153' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4417, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:12:37.6433628' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4418, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:17:10.3054233' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4419, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:17:42.0100037' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
GO
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4420, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:18:10.7508099' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4421, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:18:16.9579561' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4422, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:18:31.4221152' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4423, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:23:40.4728596' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4424, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:23:57.7973484' AS DateTime2), N'访问', N'/admin/tablelist/edit/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4425, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:24:29.1622682' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4426, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:25:38.4540159' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4427, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:28:07.0735174' AS DateTime2), N'访问', N'/admin', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4428, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:28:07.5542112' AS DateTime2), N'访问', N'/admin/User/Login', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4429, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:28:14.2825664' AS DateTime2), N'访问', N'/admin/control/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4430, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:28:15.2305788' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4431, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:28:18.1717503' AS DateTime2), N'访问', N'/admin/tablelist/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4432, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:28:20.3325670' AS DateTime2), N'访问', N'/admin/tablecolumn/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4433, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:28:40.4608782' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/74', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4434, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:28:59.4994270' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4435, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:29:02.2203004' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4436, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:29:11.0859332' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4437, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:29:13.3012591' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4438, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:29:24.8619398' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/74', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4439, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:29:58.3008197' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/73', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4440, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:30:03.0395298' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4441, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:30:04.0358678' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4442, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:30:48.7313664' AS DateTime2), N'访问', N'/admin/tablelist/edit/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4443, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:31:01.0136403' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4444, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:31:36.5496184' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4445, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:32:32.6954600' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4446, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:32:48.2910228' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4447, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:37:55.6722041' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4448, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:38:12.6861139' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4449, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:40:04.1748323' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4450, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:41:33.1463620' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4451, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:42:06.4792847' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4452, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:42:39.7737526' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4453, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:43:30.6872039' AS DateTime2), N'访问', N'/admin/tablelist/edit/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4454, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:43:36.1920732' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/73', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4455, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:43:44.0232368' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4456, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:43:53.3274820' AS DateTime2), N'访问', N'/admin/viewlist/edit/1016/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4457, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 21:43:58.5876622' AS DateTime2), N'访问', N'/admin/viewlist/edit/1015/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4458, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 22:05:07.5448396' AS DateTime2), N'访问', N'/admin', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4459, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 22:05:08.0061720' AS DateTime2), N'访问', N'/admin/User/Login', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4460, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 22:05:15.1419175' AS DateTime2), N'访问', N'/admin/control/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4461, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 22:05:16.0929157' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4462, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 22:05:17.3783484' AS DateTime2), N'访问', N'/admin/viewlist/index/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4463, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 22:05:18.0687530' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4464, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 22:05:20.8583257' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4465, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 22:06:24.7153617' AS DateTime2), N'访问', N'/admin/viewlist/index/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4466, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 22:06:27.7400327' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4467, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 22:06:38.2700221' AS DateTime2), N'访问', N'/admin/tablelist/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4468, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 22:06:42.8058624' AS DateTime2), N'访问', N'/admin/tablecolumn/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4469, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 22:06:46.9143346' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/74', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4470, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 22:07:03.8494443' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4471, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 22:07:11.0800603' AS DateTime2), N'访问', N'/admin/viewlist/edit/1/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4472, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 22:07:15.8269706' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4473, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 22:07:53.4775723' AS DateTime2), N'访问', N'/admin/viewlist/add/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4474, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 22:08:15.7329265' AS DateTime2), N'访问', N'/admin/viewlist/edit/1017/1011', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4475, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 22:45:59.5563112' AS DateTime2), N'访问', N'/admin', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4476, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 22:46:00.1126208' AS DateTime2), N'访问', N'/admin/User/Login', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4477, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 22:46:09.0988736' AS DateTime2), N'访问', N'/admin/control/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4478, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 22:46:10.1422611' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4479, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 22:46:21.4958975' AS DateTime2), N'访问', N'/admin/tablecolumn/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4480, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 22:46:23.6510765' AS DateTime2), N'访问', N'/admin/tablecolumn/add', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4481, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 22:46:31.9287448' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/76', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4482, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 22:50:11.4502007' AS DateTime2), N'访问', N'/admin/tablelist/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4483, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 22:56:07.7235603' AS DateTime2), N'访问', N'/admin/tablelist/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4484, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 22:56:17.6608706' AS DateTime2), N'访问', N'/admin/tablecolumn/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4485, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 22:56:18.8672719' AS DateTime2), N'访问', N'/admin/tablecolumn/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (4486, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2019-01-13 22:56:29.3876246' AS DateTime2), N'访问', N'/admin/tablecolumn/edit/83', 13, N'sa')
SET IDENTITY_INSERT [dbo].[Sys_OperationLog] OFF
SET IDENTITY_INSERT [dbo].[Sys_Role] ON 

INSERT [dbo].[Sys_Role] ([Id], [ConcurrencyStamp], [Description], [Name], [NormalizedName]) VALUES (1, N'0952bba9-5189-4aa4-939a-da31712697d5', N'最普通的', N'普通用户', N'普通用户')
INSERT [dbo].[Sys_Role] ([Id], [ConcurrencyStamp], [Description], [Name], [NormalizedName]) VALUES (2, N'672bfa5c-e1fe-43e2-b8ad-d1c5a225bc90', N'Very Importent Person', N'VIP会员', N'VIP会员')
INSERT [dbo].[Sys_Role] ([Id], [ConcurrencyStamp], [Description], [Name], [NormalizedName]) VALUES (5, N'c9aafe90-d289-40fc-aae7-8a1845444dcb', N'管理一切哦', N'管理员', N'管理员')
INSERT [dbo].[Sys_Role] ([Id], [ConcurrencyStamp], [Description], [Name], [NormalizedName]) VALUES (14, N'28ac071b-e87c-4b36-bf94-809d4f3a1a9a', N'最高权限拥有者', N'超级管理员', N'超级管理员')
INSERT [dbo].[Sys_Role] ([Id], [ConcurrencyStamp], [Description], [Name], [NormalizedName]) VALUES (18, N'd1457801-16b4-4cc1-9693-bce0ddb403be', N'啊啊啊', N'特特', N'特特')
INSERT [dbo].[Sys_Role] ([Id], [ConcurrencyStamp], [Description], [Name], [NormalizedName]) VALUES (1013, NULL, N'testDesc', N'test', NULL)
SET IDENTITY_INSERT [dbo].[Sys_Role] OFF
SET IDENTITY_INSERT [dbo].[Sys_RoleMenu] ON 

INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2204, CAST(N'2018-03-26 21:21:41.0635014' AS DateTime2), 46, 1)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2205, CAST(N'2018-03-26 21:21:41.0635027' AS DateTime2), 47, 1)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2206, CAST(N'2018-03-26 21:21:41.0635031' AS DateTime2), 48, 1)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2533, CAST(N'2018-03-31 23:02:54.0739799' AS DateTime2), 46, 5)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2534, CAST(N'2018-03-31 23:02:54.0739860' AS DateTime2), 2035, 5)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2535, CAST(N'2018-03-31 23:02:54.0739856' AS DateTime2), 2034, 5)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2536, CAST(N'2018-03-31 23:02:54.0739856' AS DateTime2), 2033, 5)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2537, CAST(N'2018-03-31 23:02:54.0739852' AS DateTime2), 57, 5)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2538, CAST(N'2018-03-31 23:02:54.0739852' AS DateTime2), 21, 5)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2539, CAST(N'2018-03-31 23:02:54.0739852' AS DateTime2), 20, 5)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2540, CAST(N'2018-03-31 23:02:54.0739848' AS DateTime2), 55, 5)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2541, CAST(N'2018-03-31 23:02:54.0739848' AS DateTime2), 2029, 5)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2542, CAST(N'2018-03-31 23:02:54.0739844' AS DateTime2), 2028, 5)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2543, CAST(N'2018-03-31 23:02:54.0739844' AS DateTime2), 1033, 5)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2544, CAST(N'2018-03-31 23:02:54.0739840' AS DateTime2), 1029, 5)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2545, CAST(N'2018-03-31 23:02:54.0739840' AS DateTime2), 1030, 5)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2546, CAST(N'2018-03-31 23:02:54.0739860' AS DateTime2), 2039, 5)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2547, CAST(N'2018-03-31 23:02:54.0739840' AS DateTime2), 1028, 5)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2548, CAST(N'2018-03-31 23:02:54.0739836' AS DateTime2), 53, 5)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2549, CAST(N'2018-03-31 23:02:54.0739832' AS DateTime2), 38, 5)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2550, CAST(N'2018-03-31 23:02:54.0739832' AS DateTime2), 52, 5)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2551, CAST(N'2018-03-31 23:02:54.0739827' AS DateTime2), 36, 5)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2552, CAST(N'2018-03-31 23:02:54.0739827' AS DateTime2), 51, 5)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2553, CAST(N'2018-03-31 23:02:54.0739827' AS DateTime2), 32, 5)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2554, CAST(N'2018-03-31 23:02:54.0739823' AS DateTime2), 50, 5)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2555, CAST(N'2018-03-31 23:02:54.0739823' AS DateTime2), 49, 5)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2556, CAST(N'2018-03-31 23:02:54.0739819' AS DateTime2), 28, 5)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2557, CAST(N'2018-03-31 23:02:54.0739819' AS DateTime2), 48, 5)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2558, CAST(N'2018-03-31 23:02:54.0739815' AS DateTime2), 23, 5)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2559, CAST(N'2018-03-31 23:02:54.0739815' AS DateTime2), 47, 5)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2560, CAST(N'2018-03-31 23:02:54.0739836' AS DateTime2), 1027, 5)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2561, CAST(N'2018-03-31 23:02:54.0739860' AS DateTime2), 2036, 5)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2616, CAST(N'2019-01-06 22:16:41.8970642' AS DateTime2), 46, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2617, CAST(N'2019-01-06 22:16:41.8970675' AS DateTime2), 1028, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2618, CAST(N'2019-01-06 22:16:41.8970675' AS DateTime2), 1030, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2619, CAST(N'2019-01-06 22:16:41.8970679' AS DateTime2), 1031, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2620, CAST(N'2019-01-06 22:16:41.8970679' AS DateTime2), 1032, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2621, CAST(N'2019-01-06 22:16:41.8970679' AS DateTime2), 1029, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2622, CAST(N'2019-01-06 22:16:41.8970679' AS DateTime2), 1033, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2623, CAST(N'2019-01-06 22:16:41.8970679' AS DateTime2), 1034, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2624, CAST(N'2019-01-06 22:16:41.8970679' AS DateTime2), 1035, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2625, CAST(N'2019-01-06 22:16:41.8970683' AS DateTime2), 2032, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2626, CAST(N'2019-01-06 22:16:41.8970683' AS DateTime2), 2028, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2627, CAST(N'2019-01-06 22:16:41.8970683' AS DateTime2), 2029, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2628, CAST(N'2019-01-06 22:16:41.8970683' AS DateTime2), 2030, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2629, CAST(N'2019-01-06 22:16:41.8970683' AS DateTime2), 2031, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2630, CAST(N'2019-01-06 22:16:41.8970687' AS DateTime2), 55, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2631, CAST(N'2019-01-06 22:16:41.8970687' AS DateTime2), 20, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2632, CAST(N'2019-01-06 22:16:41.8970687' AS DateTime2), 21, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2633, CAST(N'2019-01-06 22:16:41.8970687' AS DateTime2), 57, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2634, CAST(N'2019-01-06 22:16:41.8970687' AS DateTime2), 2033, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2635, CAST(N'2019-01-06 22:16:41.8970687' AS DateTime2), 2034, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2636, CAST(N'2019-01-06 22:16:41.8970691' AS DateTime2), 2035, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2637, CAST(N'2019-01-06 22:16:41.8970691' AS DateTime2), 2039, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2638, CAST(N'2019-01-06 22:16:41.8970691' AS DateTime2), 2036, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2639, CAST(N'2019-01-06 22:16:41.8970691' AS DateTime2), 2037, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2640, CAST(N'2019-01-06 22:16:41.8970675' AS DateTime2), 1027, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2641, CAST(N'2019-01-06 22:16:41.8970675' AS DateTime2), 54, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2642, CAST(N'2019-01-06 22:16:41.8970675' AS DateTime2), 44, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2643, CAST(N'2019-01-06 22:16:41.8970671' AS DateTime2), 43, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2644, CAST(N'2019-01-06 22:16:41.8970654' AS DateTime2), 47, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2645, CAST(N'2019-01-06 22:16:41.8970654' AS DateTime2), 23, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2646, CAST(N'2019-01-06 22:16:41.8970654' AS DateTime2), 25, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2647, CAST(N'2019-01-06 22:16:41.8970658' AS DateTime2), 26, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2648, CAST(N'2019-01-06 22:16:41.8970658' AS DateTime2), 48, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2649, CAST(N'2019-01-06 22:16:41.8970658' AS DateTime2), 28, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2650, CAST(N'2019-01-06 22:16:41.8970658' AS DateTime2), 29, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2651, CAST(N'2019-01-06 22:16:41.8970658' AS DateTime2), 30, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2652, CAST(N'2019-01-06 22:16:41.8970663' AS DateTime2), 49, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2653, CAST(N'2019-01-06 22:16:41.8970663' AS DateTime2), 31, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2654, CAST(N'2019-01-06 22:16:41.8970663' AS DateTime2), 50, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2655, CAST(N'2019-01-06 22:16:41.8970691' AS DateTime2), 2038, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2656, CAST(N'2019-01-06 22:16:41.8970663' AS DateTime2), 32, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2657, CAST(N'2019-01-06 22:16:41.8970667' AS DateTime2), 34, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2658, CAST(N'2019-01-06 22:16:41.8970667' AS DateTime2), 35, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2659, CAST(N'2019-01-06 22:16:41.8970667' AS DateTime2), 51, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2660, CAST(N'2019-01-06 22:16:41.8970667' AS DateTime2), 36, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2661, CAST(N'2019-01-06 22:16:41.8970667' AS DateTime2), 42, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2662, CAST(N'2019-01-06 22:16:41.8970667' AS DateTime2), 52, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2663, CAST(N'2019-01-06 22:16:41.8970671' AS DateTime2), 38, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2664, CAST(N'2019-01-06 22:16:41.8970671' AS DateTime2), 39, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2665, CAST(N'2019-01-06 22:16:41.8970671' AS DateTime2), 40, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2666, CAST(N'2019-01-06 22:16:41.8970671' AS DateTime2), 53, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2667, CAST(N'2019-01-06 22:16:41.8970671' AS DateTime2), 41, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2668, CAST(N'2019-01-06 22:16:41.8970663' AS DateTime2), 33, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2669, CAST(N'2019-01-06 22:16:41.8970691' AS DateTime2), 2044, 14)
SET IDENTITY_INSERT [dbo].[Sys_RoleMenu] OFF
SET IDENTITY_INSERT [dbo].[Sys_SystemOption] ON 

INSERT [dbo].[Sys_SystemOption] ([Code], [CreateDateTime], [Id], [Value]) VALUES (N'testCode', CAST(N'2018-03-20 22:43:08.4039973' AS DateTime2), 1, N'testValue s')
INSERT [dbo].[Sys_SystemOption] ([Code], [CreateDateTime], [Id], [Value]) VALUES (N'testCoded', CAST(N'2018-03-20 22:47:42.3060094' AS DateTime2), 4, N'asd')
SET IDENTITY_INSERT [dbo].[Sys_SystemOption] OFF
SET IDENTITY_INSERT [dbo].[Sys_TableColumn] ON 

INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible], [SelectRange], [ForbiddenFileExtension]) VALUES (45, 0, CAST(N'2018-03-26 22:34:42.8216115' AS DateTime2), N'3', N'Id', 0, 0, NULL, 0, 0, 0, 1, 4, N'Id', NULL, 0, 0, 0, 2, 0, 1, NULL, NULL)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible], [SelectRange], [ForbiddenFileExtension]) VALUES (46, 0, CAST(N'2018-04-25 20:57:47.8253840' AS DateTime2), N'6', N'创建时间', 0, 0, NULL, 1, 0, 0, 1, 8, N'CreateDateTime', NULL, 0, 0, 0, 2, 0, 1, NULL, NULL)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible], [SelectRange], [ForbiddenFileExtension]) VALUES (47, 1, CAST(N'2018-03-26 22:35:20.6118143' AS DateTime2), N'0', N'说明', 0, 1, NULL, 1, 1, 0, 1, 8000, N'Description', NULL, 0, 0, 1, 2, 0, 1, NULL, NULL)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible], [SelectRange], [ForbiddenFileExtension]) VALUES (48, 1, CAST(N'2018-03-26 22:35:29.7387448' AS DateTime2), N'0', N'负责人', 0, 1, NULL, 1, 1, 0, 1, 8000, N'Leader', NULL, 0, 0, 1, 2, 0, 1, NULL, NULL)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible], [SelectRange], [ForbiddenFileExtension]) VALUES (49, 1, CAST(N'2018-03-26 22:35:45.3368724' AS DateTime2), N'0', N'部门名称', 0, 1, NULL, 1, 1, 0, 1, 8000, N'Name', NULL, 0, 0, 1, 2, 0, 1, NULL, NULL)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible], [SelectRange], [ForbiddenFileExtension]) VALUES (50, 1, CAST(N'2018-05-05 21:45:30.3439584' AS DateTime2), N'5', N'上级部门', 0, 1, NULL, 1, 1, 0, 1, 4, N'ParentId', N'Id,Name|Sys_Department|ParentId=0', 0, 0, 0, 2, 0, 1, NULL, NULL)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible], [SelectRange], [ForbiddenFileExtension]) VALUES (59, 0, CAST(N'2018-04-24 21:53:50.4923920' AS DateTime2), N'3', N' id', 0, 0, NULL, 0, 1, 0, 1, 4, N'Id', NULL, 0, 0, 0, 1009, 0, 1, NULL, NULL)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible], [SelectRange], [ForbiddenFileExtension]) VALUES (60, 1, CAST(N'2019-01-06 21:35:15.0091930' AS DateTime2), N'0', N'客户端IP', 0, 1, NULL, 1, 1, 0, 1, 8000, N'ClientIP', NULL, 0, 0, 0, 1009, 0, 1, NULL, NULL)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible], [SelectRange], [ForbiddenFileExtension]) VALUES (61, 1, CAST(N'2018-04-22 23:08:28.1379545' AS DateTime2), N'0', N'客户端MAC地址', 0, 1, NULL, 1, 1, 0, 1, 8000, N'ClientMac', NULL, 0, 0, 0, 1009, 0, 1, NULL, NULL)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible], [SelectRange], [ForbiddenFileExtension]) VALUES (62, 1, CAST(N'2018-04-22 23:08:39.8528457' AS DateTime2), N'6', N'登陆日期', 0, 1, NULL, 1, 1, 0, 1, 8, N'CreateDateTime', NULL, 0, 0, 0, 1009, 0, 1, NULL, NULL)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible], [SelectRange], [ForbiddenFileExtension]) VALUES (63, 1, CAST(N'2018-04-22 23:08:51.8393514' AS DateTime2), N'3', N'用户Id', 0, 1, NULL, 1, 1, 0, 1, 4, N'UserId', NULL, 0, 0, 0, 1009, 0, 0, NULL, NULL)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible], [SelectRange], [ForbiddenFileExtension]) VALUES (64, 1, CAST(N'2018-04-22 23:09:02.1984798' AS DateTime2), N'0', N'登陆人', 0, 1, NULL, 1, 1, 0, 1, 8000, N'UserName', NULL, 0, 0, 0, 1009, 0, 0, NULL, NULL)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible], [SelectRange], [ForbiddenFileExtension]) VALUES (65, 1, CAST(N'2018-04-22 23:09:11.1207025' AS DateTime2), N'0', N'说明', 0, 1, NULL, 1, 1, 0, 1, 8000, N'Description', NULL, 0, 0, 0, 1009, 0, 0, NULL, NULL)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible], [SelectRange], [ForbiddenFileExtension]) VALUES (77, 0, CAST(N'2019-01-13 22:56:15.8812260' AS DateTime2), N'Int', NULL, 0, 0, NULL, 0, 0, 0, 0, 4, N'Id', NULL, 0, 0, 0, 1011, 0, 0, NULL, NULL)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible], [SelectRange], [ForbiddenFileExtension]) VALUES (78, 0, CAST(N'2019-01-13 22:56:15.8821514' AS DateTime2), N'Datetime', NULL, 0, 0, NULL, 0, 0, 0, 0, 8, N'CreateDateTime', NULL, 0, 0, 0, 1011, 0, 0, NULL, NULL)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible], [SelectRange], [ForbiddenFileExtension]) VALUES (79, 0, CAST(N'2019-01-13 22:56:15.8821539' AS DateTime2), N'String', NULL, 0, 0, NULL, 0, 0, 0, 0, 8000, N'Name', NULL, 0, 0, 0, 1011, 0, 0, NULL, NULL)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible], [SelectRange], [ForbiddenFileExtension]) VALUES (80, 0, CAST(N'2019-01-13 22:56:15.8821547' AS DateTime2), N'Int', NULL, 0, 0, NULL, 0, 0, 0, 0, 4, N'ParentId', NULL, 0, 0, 0, 1011, 0, 0, NULL, NULL)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible], [SelectRange], [ForbiddenFileExtension]) VALUES (81, 0, CAST(N'2019-01-13 22:56:15.8821555' AS DateTime2), N'String', NULL, 0, 0, NULL, 0, 0, 0, 0, 8000, N'Test', NULL, 0, 0, 0, 1011, 0, 0, NULL, NULL)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible], [SelectRange], [ForbiddenFileExtension]) VALUES (82, 0, CAST(N'2019-01-13 22:56:15.8821568' AS DateTime2), N'String', NULL, 0, 0, NULL, 0, 0, 0, 0, 8000, N'Test1', NULL, 0, 0, 0, 1011, 0, 0, NULL, NULL)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible], [SelectRange], [ForbiddenFileExtension]) VALUES (83, 0, CAST(N'2019-01-13 22:56:15.8821572' AS DateTime2), N'String', NULL, 0, 0, NULL, 0, 0, 0, 0, 8000, N'Test2', NULL, 0, 0, 0, 1011, 0, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Sys_TableColumn] OFF
SET IDENTITY_INSERT [dbo].[Sys_TableList] ON 

INSERT [dbo].[Sys_TableList] ([Id], [CreateDateTime], [DefaultFilter], [DefaultSort], [DeleteTableName], [Description], [ExtendFunction], [ForbiddenAddFilter], [ForbiddenDeleteFilter], [ForbiddenUpdateFilter], [ImportType], [IsView], [Name], [AllowDelete], [AllowEdit], [AllowExport], [AllowImport], [AllowView], [AllowAdd], [TopExtendFunction], [ColumnPerRow], [ViewEditWidthHeight]) VALUES (2, CAST(N'2018-04-12 20:52:20.1272314' AS DateTime2), N'Id > 0', N'Id desc', N'Sys_Department', N'说明哦', N'<button type="button" onclick="alert(''id:{Id}userid:{UserId}'')">test</button>', N'UserName != admin', N'ItemID < 0', N'Id < 0', 0, 0, N'Sys_Department', 1, 1, 0, 0, 1, 1, NULL, 0, NULL)
INSERT [dbo].[Sys_TableList] ([Id], [CreateDateTime], [DefaultFilter], [DefaultSort], [DeleteTableName], [Description], [ExtendFunction], [ForbiddenAddFilter], [ForbiddenDeleteFilter], [ForbiddenUpdateFilter], [ImportType], [IsView], [Name], [AllowDelete], [AllowEdit], [AllowExport], [AllowImport], [AllowView], [AllowAdd], [TopExtendFunction], [ColumnPerRow], [ViewEditWidthHeight]) VALUES (1009, CAST(N'2019-01-04 17:24:37.5605807' AS DateTime2), N'Id != 0', N'Id desc', N'Sys_LoginLog', N'登录日志', N'test', N'UserName != admin', N'Id < 0', N'Id > 100', 0, 0, N'Sys_LoginLog', 0, 0, 0, 0, 1, 0, N'<button type="button" class="btn btn-warning">清除</button>', 0, NULL)
INSERT [dbo].[Sys_TableList] ([Id], [CreateDateTime], [DefaultFilter], [DefaultSort], [DeleteTableName], [Description], [ExtendFunction], [ForbiddenAddFilter], [ForbiddenDeleteFilter], [ForbiddenUpdateFilter], [ImportType], [IsView], [Name], [AllowDelete], [AllowEdit], [AllowExport], [AllowImport], [AllowView], [AllowAdd], [TopExtendFunction], [ColumnPerRow], [ViewEditWidthHeight]) VALUES (1011, CAST(N'2019-01-13 21:24:02.4252422' AS DateTime2), NULL, NULL, N'Test_Leader', N'测试领导管理', NULL, NULL, NULL, NULL, 1, 0, N'Test_Leader', 1, 1, 1, 1, 1, 1, NULL, 2, N'300px,300')
SET IDENTITY_INSERT [dbo].[Sys_TableList] OFF
SET IDENTITY_INSERT [dbo].[Sys_User] ON 

INSERT [dbo].[Sys_User] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [RealName], [SecurityStamp], [Status], [TwoFactorEnabled], [UserName]) VALUES (1, 0, N'97b0af4c-525c-4fae-a50a-dc6a74975701', N'admin@admin.com', 0, 1, NULL, N'ADMIN@ADMIN.COM', N'ADMIN', N'AQAAAAEAACcQAAAAEJBn4LaCQBAMLUsFD8dwHVzxTCHe/+ikivrlAfxjVPxDScp9taeRhlJyQAM2HfeWfA==', NULL, 0, N'管理员呢', N'2b1632c6-e95e-4ae6-aaad-6ca0f18371a6', 2, 0, N'admin')
INSERT [dbo].[Sys_User] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [RealName], [SecurityStamp], [Status], [TwoFactorEnabled], [UserName]) VALUES (13, 0, N'16134615-6727-4a40-a854-1659e40425f2', N'sa@sa.com', 0, 1, NULL, N'SA@SA.COM', N'SA', N'AQAAAAEAACcQAAAAEDeChuSPhyePNZMXeXp9Goo6OBRFGQnAkuabdUbde20Fs7HskzhAiS4V++1txsxtGw==', NULL, 0, N'超级管理员', N'4be6e9c6-0739-4bb0-b066-94c2fc1a6c80', 2, 0, N'sa')
SET IDENTITY_INSERT [dbo].[Sys_User] OFF
SET IDENTITY_INSERT [dbo].[Sys_UserDepartment] ON 

INSERT [dbo].[Sys_UserDepartment] ([Id], [CreateDateTime], [DepartmentId], [UserId]) VALUES (2, CAST(N'2018-02-05 20:27:10.2430634' AS DateTime2), 7, 1)
INSERT [dbo].[Sys_UserDepartment] ([Id], [CreateDateTime], [DepartmentId], [UserId]) VALUES (5, CAST(N'2018-03-05 22:28:35.0229550' AS DateTime2), 5, 1)
INSERT [dbo].[Sys_UserDepartment] ([Id], [CreateDateTime], [DepartmentId], [UserId]) VALUES (1005, CAST(N'2019-01-11 09:09:51.9542849' AS DateTime2), 7, 13)
INSERT [dbo].[Sys_UserDepartment] ([Id], [CreateDateTime], [DepartmentId], [UserId]) VALUES (1006, CAST(N'2019-01-11 09:18:51.1068371' AS DateTime2), 6, 13)
INSERT [dbo].[Sys_UserDepartment] ([Id], [CreateDateTime], [DepartmentId], [UserId]) VALUES (1007, CAST(N'2019-01-11 09:18:51.1068387' AS DateTime2), 6, 1)
INSERT [dbo].[Sys_UserDepartment] ([Id], [CreateDateTime], [DepartmentId], [UserId]) VALUES (1008, CAST(N'2019-01-11 09:33:18.5516729' AS DateTime2), 13, 13)
INSERT [dbo].[Sys_UserDepartment] ([Id], [CreateDateTime], [DepartmentId], [UserId]) VALUES (1009, CAST(N'2019-01-11 09:33:18.5516746' AS DateTime2), 13, 1)
SET IDENTITY_INSERT [dbo].[Sys_UserDepartment] OFF
INSERT [dbo].[Sys_UserRole] ([UserId], [RoleId]) VALUES (1, 5)
INSERT [dbo].[Sys_UserRole] ([UserId], [RoleId]) VALUES (13, 14)
SET IDENTITY_INSERT [dbo].[Test_Leader] ON 

INSERT [dbo].[Test_Leader] ([Id], [CreateDateTime], [Name], [ParentId], [Test], [Test1], [Test2]) VALUES (1, CAST(N'2019-01-06 22:39:07.0000000' AS DateTime2), N'1233', 4, N'汉族', N'汉族', N'/Upload/2019/0113/a3be3465a74f4546e199d73dc2d78277_20190113030353.jpg')
INSERT [dbo].[Test_Leader] ([Id], [CreateDateTime], [Name], [ParentId], [Test], [Test1], [Test2]) VALUES (2, CAST(N'2019-01-07 00:08:54.0000000' AS DateTime2), N'43333', 4, N'回族,汉族', N'回族', N'2')
INSERT [dbo].[Test_Leader] ([Id], [CreateDateTime], [Name], [ParentId], [Test], [Test1], [Test2]) VALUES (3, CAST(N'2019-01-07 14:34:07.0000000' AS DateTime2), N'222', 4, N'回族,汉族', N'藏族', N'4')
INSERT [dbo].[Test_Leader] ([Id], [CreateDateTime], [Name], [ParentId], [Test], [Test1], [Test2]) VALUES (4, CAST(N'2019-01-08 20:59:53.0000000' AS DateTime2), N'ddddd', 4, N'回族,汉族', N'汉族', N'2019-01-03')
INSERT [dbo].[Test_Leader] ([Id], [CreateDateTime], [Name], [ParentId], [Test], [Test1], [Test2]) VALUES (5, CAST(N'2019-01-08 21:03:22.0000000' AS DateTime2), N'撒旦', 4, N'回族,汉族', N'2019-01-12 21:03', N'2019-01-01')
INSERT [dbo].[Test_Leader] ([Id], [CreateDateTime], [Name], [ParentId], [Test], [Test1], [Test2]) VALUES (1015, CAST(N'2019-01-13 21:23:50.0000000' AS DateTime2), N'bbbcD', 5, N'回族', N'6', N'/Upload/2019/0113/Debian_Python3.6_20190113094406.sh')
INSERT [dbo].[Test_Leader] ([Id], [CreateDateTime], [Name], [ParentId], [Test], [Test1], [Test2]) VALUES (1016, CAST(N'2019-01-13 21:23:50.0000000' AS DateTime2), N'bbbc', 5, N'回族,汉族', NULL, NULL)
INSERT [dbo].[Test_Leader] ([Id], [CreateDateTime], [Name], [ParentId], [Test], [Test1], [Test2]) VALUES (1017, CAST(N'2019-01-13 22:08:09.0000000' AS DateTime2), N'阿斯顿', 1, N'汉族,哈哈', N'的身份', N'/Upload/2019/0113/Debian_Python3.6_20190113100808.sh')
SET IDENTITY_INSERT [dbo].[Test_Leader] OFF
SET IDENTITY_INSERT [HangFire].[AggregatedCounter] ON 

INSERT [HangFire].[AggregatedCounter] ([Id], [Key], [Value], [ExpireAt]) VALUES (1, N'stats:deleted', 3, NULL)
SET IDENTITY_INSERT [HangFire].[AggregatedCounter] OFF
SET IDENTITY_INSERT [HangFire].[Job] ON 

INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (4, 13, N'Enqueued', N'{"Type":"System.Console, System.Console, Version=4.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a","Method":"WriteLine","ParameterTypes":"[\"System.String, System.Private.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e\"]","Arguments":"[\"\\\"Fire-and-forget!\\\"\"]"}', N'["\"Fire-and-forget!\""]', CAST(N'2018-03-11 09:26:00.957' AS DateTime), NULL)
SET IDENTITY_INSERT [HangFire].[Job] OFF
SET IDENTITY_INSERT [HangFire].[JobParameter] ON 

INSERT [HangFire].[JobParameter] ([Id], [JobId], [Name], [Value]) VALUES (7, 4, N'CurrentCulture', N'"zh-CN"')
INSERT [HangFire].[JobParameter] ([Id], [JobId], [Name], [Value]) VALUES (8, 4, N'CurrentUICulture', N'"zh-CN"')
SET IDENTITY_INSERT [HangFire].[JobParameter] OFF
SET IDENTITY_INSERT [HangFire].[JobQueue] ON 

INSERT [HangFire].[JobQueue] ([Id], [JobId], [Queue], [FetchedAt]) VALUES (1, 1, N'default', NULL)
INSERT [HangFire].[JobQueue] ([Id], [JobId], [Queue], [FetchedAt]) VALUES (2, 1, N'default', NULL)
INSERT [HangFire].[JobQueue] ([Id], [JobId], [Queue], [FetchedAt]) VALUES (3, 1, N'default', NULL)
INSERT [HangFire].[JobQueue] ([Id], [JobId], [Queue], [FetchedAt]) VALUES (4, 1, N'default', NULL)
INSERT [HangFire].[JobQueue] ([Id], [JobId], [Queue], [FetchedAt]) VALUES (5, 2, N'default', NULL)
INSERT [HangFire].[JobQueue] ([Id], [JobId], [Queue], [FetchedAt]) VALUES (6, 3, N'default', NULL)
INSERT [HangFire].[JobQueue] ([Id], [JobId], [Queue], [FetchedAt]) VALUES (7, 3, N'default', NULL)
INSERT [HangFire].[JobQueue] ([Id], [JobId], [Queue], [FetchedAt]) VALUES (8, 4, N'default', NULL)
SET IDENTITY_INSERT [HangFire].[JobQueue] OFF
INSERT [HangFire].[Schema] ([Version]) VALUES (5)
INSERT [HangFire].[Server] ([Id], [Data], [LastHeartbeat]) VALUES (N'lkjob:2961de57-3dcd-4161-822c-dcc7ed966a95', N'{"WorkerCount":40,"Queues":["Job"],"StartedAt":"2019-01-13T14:56:05.0927413Z"}', CAST(N'2019-01-13 15:03:05.413' AS DateTime))
SET IDENTITY_INSERT [HangFire].[State] ON 

INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (13, 4, N'Enqueued', NULL, CAST(N'2018-03-11 09:26:00.983' AS DateTime), N'{"EnqueuedAt":"2018-03-11T09:26:00.9319467Z","Queue":"default"}')
SET IDENTITY_INSERT [HangFire].[State] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2019/1/13 23:05:42 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[Sys_Role]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sys_RoleClaim_RoleId]    Script Date: 2019/1/13 23:05:42 ******/
CREATE NONCLUSTERED INDEX [IX_Sys_RoleClaim_RoleId] ON [dbo].[Sys_RoleClaim]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sys_RoleMenu_RoleId]    Script Date: 2019/1/13 23:05:42 ******/
CREATE NONCLUSTERED INDEX [IX_Sys_RoleMenu_RoleId] ON [dbo].[Sys_RoleMenu]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sys_TableColumn_TableId]    Script Date: 2019/1/13 23:05:42 ******/
CREATE NONCLUSTERED INDEX [IX_Sys_TableColumn_TableId] ON [dbo].[Sys_TableColumn]
(
	[TableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EmailIndex]    Script Date: 2019/1/13 23:05:42 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[Sys_User]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 2019/1/13 23:05:42 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[Sys_User]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sys_UserClaim_UserId]    Script Date: 2019/1/13 23:05:42 ******/
CREATE NONCLUSTERED INDEX [IX_Sys_UserClaim_UserId] ON [dbo].[Sys_UserClaim]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sys_UserDepartment_DepartmentId]    Script Date: 2019/1/13 23:05:42 ******/
CREATE NONCLUSTERED INDEX [IX_Sys_UserDepartment_DepartmentId] ON [dbo].[Sys_UserDepartment]
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sys_UserDepartment_UserId]    Script Date: 2019/1/13 23:05:42 ******/
CREATE NONCLUSTERED INDEX [IX_Sys_UserDepartment_UserId] ON [dbo].[Sys_UserDepartment]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sys_UserLogin_UserId]    Script Date: 2019/1/13 23:05:42 ******/
CREATE NONCLUSTERED INDEX [IX_Sys_UserLogin_UserId] ON [dbo].[Sys_UserLogin]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sys_UserRole_RoleId]    Script Date: 2019/1/13 23:05:42 ******/
CREATE NONCLUSTERED INDEX [IX_Sys_UserRole_RoleId] ON [dbo].[Sys_UserRole]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UX_HangFire_CounterAggregated_Key]    Script Date: 2019/1/13 23:05:42 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UX_HangFire_CounterAggregated_Key] ON [HangFire].[AggregatedCounter]
(
	[Key] ASC
)
INCLUDE ( 	[Value]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_HangFire_Counter_Key]    Script Date: 2019/1/13 23:05:42 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Counter_Key] ON [HangFire].[Counter]
(
	[Key] ASC
)
INCLUDE ( 	[Value]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_Hash_ExpireAt]    Script Date: 2019/1/13 23:05:42 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Hash_ExpireAt] ON [HangFire].[Hash]
(
	[ExpireAt] ASC
)
INCLUDE ( 	[Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_HangFire_Hash_Key]    Script Date: 2019/1/13 23:05:42 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Hash_Key] ON [HangFire].[Hash]
(
	[Key] ASC
)
INCLUDE ( 	[ExpireAt]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UX_HangFire_Hash_Key_Field]    Script Date: 2019/1/13 23:05:42 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UX_HangFire_Hash_Key_Field] ON [HangFire].[Hash]
(
	[Key] ASC,
	[Field] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_Job_ExpireAt]    Script Date: 2019/1/13 23:05:42 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Job_ExpireAt] ON [HangFire].[Job]
(
	[ExpireAt] ASC
)
INCLUDE ( 	[Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_HangFire_Job_StateName]    Script Date: 2019/1/13 23:05:42 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Job_StateName] ON [HangFire].[Job]
(
	[StateName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_HangFire_JobParameter_JobIdAndName]    Script Date: 2019/1/13 23:05:42 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_JobParameter_JobIdAndName] ON [HangFire].[JobParameter]
(
	[JobId] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_HangFire_JobQueue_QueueAndFetchedAt]    Script Date: 2019/1/13 23:05:42 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_JobQueue_QueueAndFetchedAt] ON [HangFire].[JobQueue]
(
	[Queue] ASC,
	[FetchedAt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_List_ExpireAt]    Script Date: 2019/1/13 23:05:42 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_List_ExpireAt] ON [HangFire].[List]
(
	[ExpireAt] ASC
)
INCLUDE ( 	[Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_HangFire_List_Key]    Script Date: 2019/1/13 23:05:42 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_List_Key] ON [HangFire].[List]
(
	[Key] ASC
)
INCLUDE ( 	[ExpireAt],
	[Value]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_Set_ExpireAt]    Script Date: 2019/1/13 23:05:42 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Set_ExpireAt] ON [HangFire].[Set]
(
	[ExpireAt] ASC
)
INCLUDE ( 	[Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_HangFire_Set_Key]    Script Date: 2019/1/13 23:05:42 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Set_Key] ON [HangFire].[Set]
(
	[Key] ASC
)
INCLUDE ( 	[ExpireAt],
	[Value]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UX_HangFire_Set_KeyAndValue]    Script Date: 2019/1/13 23:05:42 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UX_HangFire_Set_KeyAndValue] ON [HangFire].[Set]
(
	[Key] ASC,
	[Value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_State_JobId]    Script Date: 2019/1/13 23:05:42 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_State_JobId] ON [HangFire].[State]
(
	[JobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Sys_RoleClaim]  WITH CHECK ADD  CONSTRAINT [FK_Sys_RoleClaim_Sys_Role_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Sys_Role] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sys_RoleClaim] CHECK CONSTRAINT [FK_Sys_RoleClaim_Sys_Role_RoleId]
GO
ALTER TABLE [dbo].[Sys_RoleMenu]  WITH CHECK ADD  CONSTRAINT [FK_Sys_RoleMenu_Sys_Role_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Sys_Role] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sys_RoleMenu] CHECK CONSTRAINT [FK_Sys_RoleMenu_Sys_Role_RoleId]
GO
ALTER TABLE [dbo].[Sys_TableColumn]  WITH CHECK ADD  CONSTRAINT [FK_Sys_TableColumn_Sys_TableList_TableId] FOREIGN KEY([TableId])
REFERENCES [dbo].[Sys_TableList] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sys_TableColumn] CHECK CONSTRAINT [FK_Sys_TableColumn_Sys_TableList_TableId]
GO
ALTER TABLE [dbo].[Sys_UserClaim]  WITH CHECK ADD  CONSTRAINT [FK_Sys_UserClaim_Sys_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Sys_User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sys_UserClaim] CHECK CONSTRAINT [FK_Sys_UserClaim_Sys_User_UserId]
GO
ALTER TABLE [dbo].[Sys_UserDepartment]  WITH CHECK ADD  CONSTRAINT [FK_Sys_UserDepartment_Sys_Department_DepartmentId] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Sys_Department] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sys_UserDepartment] CHECK CONSTRAINT [FK_Sys_UserDepartment_Sys_Department_DepartmentId]
GO
ALTER TABLE [dbo].[Sys_UserDepartment]  WITH CHECK ADD  CONSTRAINT [FK_Sys_UserDepartment_Sys_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Sys_User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sys_UserDepartment] CHECK CONSTRAINT [FK_Sys_UserDepartment_Sys_User_UserId]
GO
ALTER TABLE [dbo].[Sys_UserLogin]  WITH CHECK ADD  CONSTRAINT [FK_Sys_UserLogin_Sys_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Sys_User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sys_UserLogin] CHECK CONSTRAINT [FK_Sys_UserLogin_Sys_User_UserId]
GO
ALTER TABLE [dbo].[Sys_UserRole]  WITH CHECK ADD  CONSTRAINT [FK_Sys_UserRole_Sys_Role_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Sys_Role] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sys_UserRole] CHECK CONSTRAINT [FK_Sys_UserRole_Sys_Role_RoleId]
GO
ALTER TABLE [dbo].[Sys_UserRole]  WITH CHECK ADD  CONSTRAINT [FK_Sys_UserRole_Sys_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Sys_User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sys_UserRole] CHECK CONSTRAINT [FK_Sys_UserRole_Sys_User_UserId]
GO
ALTER TABLE [dbo].[Sys_UserToken]  WITH CHECK ADD  CONSTRAINT [FK_Sys_UserToken_Sys_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Sys_User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sys_UserToken] CHECK CONSTRAINT [FK_Sys_UserToken_Sys_User_UserId]
GO
ALTER TABLE [HangFire].[JobParameter]  WITH CHECK ADD  CONSTRAINT [FK_HangFire_JobParameter_Job] FOREIGN KEY([JobId])
REFERENCES [HangFire].[Job] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [HangFire].[JobParameter] CHECK CONSTRAINT [FK_HangFire_JobParameter_Job]
GO
ALTER TABLE [HangFire].[State]  WITH CHECK ADD  CONSTRAINT [FK_HangFire_State_Job] FOREIGN KEY([JobId])
REFERENCES [HangFire].[Job] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [HangFire].[State] CHECK CONSTRAINT [FK_HangFire_State_Job]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[13] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "a"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 269
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "b"
            Begin Extent = 
               Top = 7
               Left = 317
               Bottom = 170
               Right = 499
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "c"
            Begin Extent = 
               Top = 7
               Left = 547
               Bottom = 170
               Right = 719
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TableInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TableInfo'
GO
USE [master]
GO
ALTER DATABASE [lkWeb] SET  READ_WRITE 
GO
