USE [master]
GO
/****** Object:  Database [lkWeb]    Script Date: 2018/5/16 22:12:14 ******/
CREATE DATABASE [lkWeb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'lkWeb', FILENAME = N'D:\SqlServer\MSSQL12.MSSQLSERVER\MSSQL\DATA\lkWeb.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'lkWeb_log', FILENAME = N'D:\SqlServer\MSSQL12.MSSQLSERVER\MSSQL\DATA\lkWeb_log.ldf' , SIZE = 29952KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
/****** Object:  Schema [HangFire]    Script Date: 2018/5/16 22:12:15 ******/
CREATE SCHEMA [HangFire]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2018/5/16 22:12:15 ******/
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
/****** Object:  Table [dbo].[Sys_Department]    Script Date: 2018/5/16 22:12:15 ******/
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
/****** Object:  Table [dbo].[Sys_LoginLog]    Script Date: 2018/5/16 22:12:15 ******/
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
/****** Object:  Table [dbo].[Sys_Menu]    Script Date: 2018/5/16 22:12:15 ******/
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
/****** Object:  Table [dbo].[Sys_Module]    Script Date: 2018/5/16 22:12:15 ******/
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
/****** Object:  Table [dbo].[Sys_OperationLog]    Script Date: 2018/5/16 22:12:15 ******/
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
/****** Object:  Table [dbo].[Sys_Role]    Script Date: 2018/5/16 22:12:15 ******/
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
/****** Object:  Table [dbo].[Sys_RoleClaim]    Script Date: 2018/5/16 22:12:15 ******/
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
/****** Object:  Table [dbo].[Sys_RoleMenu]    Script Date: 2018/5/16 22:12:15 ******/
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
/****** Object:  Table [dbo].[Sys_SystemOption]    Script Date: 2018/5/16 22:12:15 ******/
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
/****** Object:  Table [dbo].[Sys_TableColumn]    Script Date: 2018/5/16 22:12:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_TableColumn](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AddVisible] [tinyint] NOT NULL,
	[CreateDateTime] [datetime2](7) NOT NULL,
	[DataType] [tinyint] NOT NULL,
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
 CONSTRAINT [PK_Sys_TableColumn] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_TableList]    Script Date: 2018/5/16 22:12:15 ******/
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
 CONSTRAINT [PK_Sys_TableList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_User]    Script Date: 2018/5/16 22:12:15 ******/
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
/****** Object:  Table [dbo].[Sys_UserClaim]    Script Date: 2018/5/16 22:12:15 ******/
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
/****** Object:  Table [dbo].[Sys_UserDepartment]    Script Date: 2018/5/16 22:12:15 ******/
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
/****** Object:  Table [dbo].[Sys_UserLogin]    Script Date: 2018/5/16 22:12:15 ******/
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
/****** Object:  Table [dbo].[Sys_UserRole]    Script Date: 2018/5/16 22:12:15 ******/
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
/****** Object:  Table [dbo].[Sys_UserToken]    Script Date: 2018/5/16 22:12:15 ******/
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
/****** Object:  Table [dbo].[Test_Leader]    Script Date: 2018/5/16 22:12:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Test_Leader](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreateDateTime] [datetime2](7) NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[ParentId] [int] NOT NULL,
	[Type] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Test_Leader] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [HangFire].[AggregatedCounter]    Script Date: 2018/5/16 22:12:15 ******/
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
/****** Object:  Table [HangFire].[Counter]    Script Date: 2018/5/16 22:12:15 ******/
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
/****** Object:  Table [HangFire].[Hash]    Script Date: 2018/5/16 22:12:15 ******/
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
/****** Object:  Table [HangFire].[Job]    Script Date: 2018/5/16 22:12:15 ******/
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
/****** Object:  Table [HangFire].[JobParameter]    Script Date: 2018/5/16 22:12:15 ******/
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
/****** Object:  Table [HangFire].[JobQueue]    Script Date: 2018/5/16 22:12:15 ******/
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
/****** Object:  Table [HangFire].[List]    Script Date: 2018/5/16 22:12:15 ******/
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
/****** Object:  Table [HangFire].[Schema]    Script Date: 2018/5/16 22:12:15 ******/
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
/****** Object:  Table [HangFire].[Server]    Script Date: 2018/5/16 22:12:15 ******/
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
/****** Object:  Table [HangFire].[Set]    Script Date: 2018/5/16 22:12:15 ******/
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
/****** Object:  Table [HangFire].[State]    Script Date: 2018/5/16 22:12:15 ******/
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
/****** Object:  View [dbo].[v_TableInfo]    Script Date: 2018/5/16 22:12:15 ******/
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

INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (5, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-05 17:15:39.8332899' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (7, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-05 20:24:03.2759789' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (8, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-05 20:25:46.9030782' AS DateTime2), 0, N'test123', N'登陆失败，账户已禁用')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (9, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-05 20:26:00.5187620' AS DateTime2), 0, N'test123', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (10, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-05 23:25:14.6411449' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (11, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-05 23:33:21.5111660' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (12, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-05 23:38:06.7549594' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (13, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-05 23:46:46.6283367' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (14, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-05 23:50:43.9143207' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (15, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-06 23:01:56.2431090' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (16, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-06 23:08:32.0785396' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (17, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 17:05:03.2327286' AS DateTime2), 0, N'asd', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (18, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 17:05:08.8665667' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (19, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 17:18:33.3256451' AS DateTime2), 0, N'1222', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (20, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 17:18:38.2512599' AS DateTime2), 0, N'1222', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (21, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 17:18:44.0324832' AS DateTime2), 0, N'1222', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (22, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 17:19:16.3688551' AS DateTime2), 0, N'123123', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (23, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 17:59:29.9424693' AS DateTime2), 0, N'ad', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (24, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 18:04:58.3481447' AS DateTime2), 0, N'admin', N'登陆失败,请检查输入的信息')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (25, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 18:05:42.2370189' AS DateTime2), 0, N'admin', N'登陆失败,请检查输入的信息')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (26, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 18:07:07.4046034' AS DateTime2), 0, N'asdasd', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (27, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 18:20:32.5625142' AS DateTime2), 0, N'12', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (28, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 18:20:56.3643411' AS DateTime2), 0, N'123', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (29, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 18:53:13.7258763' AS DateTime2), 0, N'123', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (30, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 18:54:21.8847309' AS DateTime2), 0, N'1312', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (31, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 18:55:05.2112600' AS DateTime2), 0, N'1223', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (32, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 18:57:02.7220175' AS DateTime2), 0, N'lhq', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (33, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 18:58:14.9610760' AS DateTime2), 0, N'adsasd', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (34, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 18:59:11.5626866' AS DateTime2), 0, N's12', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (35, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:00:05.0255659' AS DateTime2), 0, N'233', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (36, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:01:50.6792900' AS DateTime2), 0, N'233', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (37, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:01:58.6008916' AS DateTime2), 0, N'12323', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (38, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:02:12.3701693' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (39, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:02:26.4240936' AS DateTime2), 0, N'123213', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (40, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:04:48.5047233' AS DateTime2), 0, N'21`213', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (41, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:06:28.7153104' AS DateTime2), 0, N'12312', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (42, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:06:31.9978527' AS DateTime2), 0, N'12312', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (43, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:06:35.1795773' AS DateTime2), 0, N'12312', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (44, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:07:09.7154279' AS DateTime2), 0, N'123213', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (45, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:07:43.4522005' AS DateTime2), 0, N'123213', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (46, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:08:39.4463067' AS DateTime2), 0, N'asdasd', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (47, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:09:06.3447351' AS DateTime2), 0, N'1233123', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (48, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:13:08.7093600' AS DateTime2), 0, N'1233', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (49, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:14:11.0595434' AS DateTime2), 0, N'123213', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (50, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:17:06.2001790' AS DateTime2), 0, N'123213', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (51, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:17:08.4816436' AS DateTime2), 0, N'123213', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (52, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:18:07.5181958' AS DateTime2), 0, N'123', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (53, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:26:46.6013375' AS DateTime2), 0, N'12121', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (54, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:26:59.8881500' AS DateTime2), 0, N'a''s阿斯顿 ', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (55, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:27:18.4138271' AS DateTime2), 0, N'admin', N'登陆失败,请检查输入的信息')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (56, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:27:57.2080445' AS DateTime2), 0, N'admin', N'登陆失败,请检查输入的信息')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (57, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:28:00.4093432' AS DateTime2), 0, N'admin', N'登陆失败,请检查输入的信息')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (58, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:28:36.7729158' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (59, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:28:47.6030754' AS DateTime2), 0, N'1', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (60, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:28:53.1477706' AS DateTime2), 0, N'1', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (61, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:29:46.1358648' AS DateTime2), 0, N'asda', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (62, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:30:00.0854847' AS DateTime2), 0, N'asda', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (63, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:30:01.6351176' AS DateTime2), 0, N'asda', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (64, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:30:06.2487412' AS DateTime2), 0, N'1233', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (65, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:31:39.1402860' AS DateTime2), 0, N'12', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (66, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:31:43.7493895' AS DateTime2), 0, N'12', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (67, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:32:13.1552319' AS DateTime2), 0, N'1221', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (68, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:32:31.2799341' AS DateTime2), 0, N'12', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (69, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:32:33.7599122' AS DateTime2), 0, N'12', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (70, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:32:34.8034695' AS DateTime2), 0, N'12', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (71, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:32:36.0326605' AS DateTime2), 0, N'12', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (72, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:32:37.0469398' AS DateTime2), 0, N'12', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (73, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:34:14.0002340' AS DateTime2), 0, N'123', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (74, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:34:17.4138904' AS DateTime2), 0, N'123123', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (75, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:34:34.9313328' AS DateTime2), 0, N'asd12312', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (76, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:34:44.4153248' AS DateTime2), 0, N'123213', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (77, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:34:49.5468231' AS DateTime2), 0, N'admin', N'登陆失败,请检查输入的信息')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (78, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:34:52.1048658' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (79, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:38:24.2720520' AS DateTime2), 0, N'123213', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (80, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:38:25.9945393' AS DateTime2), 0, N'123213', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (81, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:38:26.9502105' AS DateTime2), 0, N'123213', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (82, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:39:48.4352503' AS DateTime2), 0, N'adsd', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (83, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:39:50.5359946' AS DateTime2), 0, N'adsd', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (84, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 19:40:01.0808858' AS DateTime2), 0, N'12', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (85, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 20:17:08.4743992' AS DateTime2), 0, N'asda', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (86, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 20:17:13.2741770' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (87, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 20:26:31.6176916' AS DateTime2), 0, N'asd asd', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (88, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 20:26:37.8456157' AS DateTime2), 0, N'1222222222222', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (89, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 20:26:42.7511840' AS DateTime2), 0, N'1122', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (90, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 20:26:46.2406859' AS DateTime2), 0, N'admin', N'登陆失败,请检查输入的信息')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (91, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 20:27:06.5730706' AS DateTime2), 0, N'123213', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (92, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 20:27:11.1928379' AS DateTime2), 0, N'123213', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (93, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 20:27:23.2321761' AS DateTime2), 0, N'123', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (94, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 20:27:26.5639084' AS DateTime2), 0, N'admin', N'登陆失败,请检查输入的信息')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (95, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-13 23:22:53.1028947' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (96, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-14 00:11:10.6398361' AS DateTime2), 0, N'123123123', N'用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (97, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-14 00:11:17.7822602' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (98, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-14 00:11:28.4533635' AS DateTime2), 0, N'123123213', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (99, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-14 00:11:31.8098350' AS DateTime2), 0, N'123123213', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (100, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-14 00:15:20.6800922' AS DateTime2), 0, N'123123213', N'登陆失败，账户状态未知')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (101, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-17 17:20:15.1994721' AS DateTime2), 0, N'阿斯顿', N'登陆失败,用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (102, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-17 17:21:31.9744663' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (103, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-17 17:21:31.9744634' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (104, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-17 17:21:31.9744609' AS DateTime2), 0, N'admin', N'')
GO
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (105, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-22 14:59:39.5240029' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (106, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-22 15:02:52.6463212' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (107, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-24 20:11:33.4842350' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (108, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-24 20:14:29.8942626' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (109, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-24 20:49:19.2704248' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (110, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-24 21:14:29.8011901' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (111, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-24 21:29:29.6821526' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (112, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-24 21:54:04.2283659' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (113, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-25 16:05:32.7701963' AS DateTime2), 0, N'admin', N'登陆失败,请检查输入的信息')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (114, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-25 16:05:35.9655968' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (115, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-25 16:52:56.2436629' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (116, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-25 21:27:10.5934793' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (117, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-25 22:26:26.6671634' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (118, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-25 22:28:45.7661150' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (119, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-25 22:32:42.9437799' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (120, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-25 22:39:28.0829166' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (121, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-25 23:11:03.5730222' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (122, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-25 23:32:08.2467715' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (123, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-25 23:48:49.6468870' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (124, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-25 23:49:53.3341247' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (125, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-25 23:51:04.5989794' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (126, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-26 00:00:56.0421103' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (127, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-26 00:16:19.9620426' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (128, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-26 00:44:41.9371110' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (129, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-26 00:46:23.1267420' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (130, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-26 00:52:03.1025288' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (131, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-26 00:53:42.0150508' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (132, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-26 00:58:36.9902878' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (133, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-26 01:05:34.0505881' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (134, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-26 01:14:05.5969226' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (135, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-26 01:14:50.6152740' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (136, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-26 01:17:06.0908947' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (137, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-26 14:47:48.4437750' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (138, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-26 15:00:59.2476138' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (139, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-26 15:03:19.4153348' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (140, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-26 15:07:19.5659664' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (141, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-26 15:07:56.0141158' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (142, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-26 15:20:11.1421090' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (143, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-26 15:20:41.2043196' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (144, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-26 15:21:20.0106139' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (145, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-26 15:50:01.2065029' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (146, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-26 15:52:49.5939016' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (147, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-26 15:53:13.6150580' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (148, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-26 16:02:13.1405359' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (149, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-26 16:06:12.5505393' AS DateTime2), 0, N'阿德飒飒', N'登陆失败,用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (150, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-26 16:06:13.7066004' AS DateTime2), 0, N'阿德飒飒', N'登陆失败,用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (151, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-26 16:06:14.4557396' AS DateTime2), 0, N'阿德飒飒', N'登陆失败,用户不存在')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (152, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-26 16:06:19.1163617' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (153, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-26 17:51:43.7160622' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (154, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-26 18:36:03.7541450' AS DateTime2), 0, N'admin', N'登陆失败,请检查输入的信息')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (155, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-26 18:36:05.9759400' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (156, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-02-26 18:59:25.2626838' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (157, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-04 15:44:05.5975928' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (158, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-04 16:04:00.7582006' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (159, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-04 19:08:49.2224841' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (160, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-04 19:09:47.7123393' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (161, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-04 19:13:02.2771981' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (162, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-04 19:16:44.5148385' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (163, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-04 19:25:07.9499120' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (164, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-04 19:25:42.6188895' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (165, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-04 19:26:45.4508729' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (166, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-04 19:31:05.7423906' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (167, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-04 19:35:43.1735269' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (168, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-04 19:36:31.6113605' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (169, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-04 19:46:59.3377841' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (170, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-04 19:50:31.8105286' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (171, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-04 19:58:26.0986219' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (172, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-04 20:32:06.2539365' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (173, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-04 20:50:54.7409314' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (174, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-04 20:55:05.5736821' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (175, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-04 21:01:03.2624890' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (176, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-04 21:04:47.2570571' AS DateTime2), 0, N'ADMIN', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (177, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-04 21:29:59.7420137' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (178, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-04 22:05:44.7585533' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (179, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-05 19:00:48.1592052' AS DateTime2), 0, N'admin', N'登陆失败,请检查输入的信息')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (180, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-05 19:00:51.7064687' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (181, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-05 19:03:55.8322401' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (182, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-05 19:12:58.1308549' AS DateTime2), 0, N'admin', N'登陆失败,请检查输入的信息')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (183, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-05 19:13:01.2034703' AS DateTime2), 0, N'admin', N'登陆失败,请检查输入的信息')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (184, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-05 19:13:04.6827991' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (185, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-05 19:15:59.7006838' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (186, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-05 19:33:28.1130655' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (187, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-05 20:07:27.0206018' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (188, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-05 20:18:01.5070478' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (189, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-05 20:25:35.6650824' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (190, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-05 21:24:37.8296911' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (191, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-05 21:26:18.5459047' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (192, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-05 21:35:16.6489565' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (193, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-05 21:37:43.9713604' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (194, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-05 21:52:31.8568569' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (195, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-05 22:09:30.8648663' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (196, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-05 22:17:22.2276289' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (197, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-05 22:26:55.3378008' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (198, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-05 22:27:09.4916149' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (199, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-05 22:29:57.9075558' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (200, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-06 19:10:26.1361055' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (201, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-07 21:49:58.6800268' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (202, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-07 21:50:39.7872242' AS DateTime2), 0, N'sa', N'登陆失败,请检查输入的信息')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (203, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-07 21:50:40.4585175' AS DateTime2), 0, N'sa', N'登陆失败,请检查输入的信息')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (204, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-07 21:50:41.2506442' AS DateTime2), 0, N'sa', N'登陆失败,请检查输入的信息')
GO
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (205, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-07 21:50:43.8193301' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (206, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-07 23:00:19.1009278' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (207, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-08 13:58:41.1531106' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (208, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-08 15:03:43.5991724' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (209, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-08 15:46:18.9158577' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (1153, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-08 20:51:20.9582078' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (1154, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-08 20:51:48.9889651' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (1155, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-08 20:53:33.7374609' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (1156, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-08 20:54:37.1198843' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (1157, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-08 21:03:44.3633360' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (1158, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-08 21:03:44.4648502' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (1159, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-08 21:08:26.7346734' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (1160, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-08 21:09:46.0824958' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (1161, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-08 21:10:49.4246301' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (1162, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-08 21:15:16.5207515' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (1163, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-08 21:18:49.4557767' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (1164, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-10 22:48:27.5404467' AS DateTime2), 0, N'admin', N'登陆失败,请检查输入的信息')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (1165, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-10 22:48:30.3136139' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (1166, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-11 15:52:02.2524120' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (1167, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-11 16:32:11.3579562' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (2167, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-12 14:39:40.4523032' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (2168, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-12 21:45:12.7611363' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3167, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-20 20:57:53.3516330' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3168, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-20 21:26:06.5383924' AS DateTime2), 0, N'admin', N'登陆失败,请检查输入的信息')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3169, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-20 21:26:09.7770957' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3170, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-20 22:27:02.2922561' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3171, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-20 22:33:46.5050704' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3172, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-21 21:22:54.0168810' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3173, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-21 22:47:08.5300351' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3174, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-21 23:18:38.6724809' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3175, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-21 23:20:03.8770084' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3176, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-21 23:21:21.0627586' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3177, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-21 23:21:21.4972197' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3178, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-21 23:27:40.4856436' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3179, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-21 23:27:41.0069593' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3180, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-22 21:53:18.4944875' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3181, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-22 23:22:00.6561474' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3182, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-23 22:00:52.5921335' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3183, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-23 22:04:05.6085316' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3184, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-23 22:14:40.6139343' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3185, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-23 23:18:00.5819397' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3186, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-23 23:30:48.4994126' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3187, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-23 23:34:44.6405073' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3188, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-23 23:37:07.2427400' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3189, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-26 20:30:42.2240646' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3190, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-26 21:05:41.9472503' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3191, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-26 22:08:34.1243324' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3192, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-26 22:29:52.0644572' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3193, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-26 22:32:32.2035595' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3194, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-27 22:05:26.4350419' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3195, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-28 20:40:57.2175913' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3196, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-28 23:12:44.6524616' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3197, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-28 23:14:06.3146868' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3198, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-28 23:15:54.6266932' AS DateTime2), 0, N'sa', N'登陆失败,请检查输入的信息')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3199, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-28 23:15:57.7126410' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3200, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-28 23:39:36.6831716' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3201, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-28 23:40:49.8445252' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3202, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-28 23:44:43.6885653' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3203, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-28 23:46:42.9665872' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3204, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-28 23:48:51.2119468' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3205, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-29 19:58:25.3839110' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3206, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-29 20:30:05.4758668' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3207, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-30 21:48:39.6960074' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3208, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-30 21:57:10.6437358' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3209, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-31 22:44:15.1422403' AS DateTime2), 0, N'sa', N'登陆失败,请检查输入的信息')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3210, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-31 22:44:18.0874478' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3211, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-31 22:44:33.2400424' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3212, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-31 22:51:06.5873577' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3213, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-31 22:53:35.9374606' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3214, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-31 23:01:35.7676112' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3215, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-31 23:01:52.7865103' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3216, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-03-31 23:03:32.0339963' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3217, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-04-01 10:02:44.4559508' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3218, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-04-01 11:03:21.4330866' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3219, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-04-11 19:37:52.8014770' AS DateTime2), 0, N'sa', N'登陆失败,请检查输入的信息')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3220, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-04-11 19:37:57.0821991' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3221, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-04-12 12:04:36.8959320' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3222, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-04-12 19:57:58.7400310' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3223, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-04-12 20:05:48.1528652' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3224, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-04-16 22:21:23.1170003' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3225, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-04-16 22:35:44.1179991' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3226, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-04-16 22:38:52.4245923' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3227, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-04-22 22:08:58.7730593' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3228, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-04-22 22:13:29.7770411' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3229, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-04-22 22:17:50.0849699' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3230, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-04-22 22:30:34.7051442' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3231, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-04-22 22:38:06.6204624' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3232, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-04-22 22:51:20.0070415' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3233, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-04-22 23:15:33.9251639' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3234, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-04-23 20:11:25.6553153' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3235, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-04-23 20:13:09.4979040' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3236, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-04-24 20:09:10.4819946' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3237, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-04-24 21:35:56.1937637' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3238, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-04-24 17:15:40.0000000' AS DateTime2), 0, N'admin', N'阿斯顿')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3239, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-04-25 20:24:03.0000000' AS DateTime2), 0, N'admin', N'阿斯顿')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3240, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-04-24 17:15:40.0000000' AS DateTime2), 0, N'admin', N'的发个')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3241, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-04-25 20:24:03.0000000' AS DateTime2), 0, N'admin', N'去我额')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3242, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-04-24 17:15:40.0000000' AS DateTime2), 0, N'admin', N'的发个')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3243, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-04-25 20:24:03.0000000' AS DateTime2), 0, N'admin', N'去我额')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3244, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-04-25 18:38:26.5681187' AS DateTime2), 0, N'sa', N'')
GO
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3245, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-02 16:25:48.0901203' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3246, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-02 16:25:48.0901219' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3247, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-02 20:51:50.2767646' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3248, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-02 21:04:52.2885745' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3249, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-03 21:57:55.0224991' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3250, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-05 21:09:07.0452298' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3251, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-05 21:09:21.8634689' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3252, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-05 21:09:47.4550660' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3253, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-05 21:16:22.2293218' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3254, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-06 16:47:35.8307837' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3255, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-07 20:44:22.9961038' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3256, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-07 20:49:24.8282166' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3257, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-07 20:55:19.1876029' AS DateTime2), 0, N'admin', N'登陆失败,请检查输入的信息')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3258, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-07 20:55:21.1234325' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3259, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-07 20:55:45.8888698' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3260, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-07 22:20:28.7350644' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3261, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-07 22:36:57.3171827' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3262, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-09 21:35:41.1882343' AS DateTime2), 0, N'admin', N'登陆失败,请检查输入的信息')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3263, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-09 21:35:44.5223345' AS DateTime2), 0, N'admin', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3264, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-13 20:26:13.0832312' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3265, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-13 20:43:09.8178274' AS DateTime2), 0, N'sa', N'')
INSERT [dbo].[Sys_LoginLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [UserId], [UserName], [Description]) VALUES (3266, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 21:53:04.3558998' AS DateTime2), 0, N'sa', N'')
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
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (2040, CAST(N'2018-04-25 21:49:04.4439895' AS DateTime2), N'领导管理', 3, 2033, 1, N'/admin/viewlist/index/1010', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (2041, CAST(N'2018-05-07 20:51:23.4942112' AS DateTime2), N'导入', 5, 2039, 2, N'/admin/viewlist/import', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (2042, CAST(N'2018-05-07 20:54:09.2408231' AS DateTime2), N'导出', 6, 2039, 2, N'/admin/viewlist/export', 1, N'fa')
INSERT [dbo].[Sys_Menu] ([Id], [CreateDateTime], [Name], [ListOrder], [ParentId], [Type], [Url], [ModuleId], [Icon]) VALUES (2043, CAST(N'2018-05-07 20:54:16.8067366' AS DateTime2), N'查看详情', 7, 2039, 2, N'/admin/viewlist/detail', 1, N'fa')
SET IDENTITY_INSERT [dbo].[Sys_Menu] OFF
SET IDENTITY_INSERT [dbo].[Sys_Module] ON 

INSERT [dbo].[Sys_Module] ([Id], [CreateDateTime], [Description], [Name]) VALUES (1, CAST(N'2018-02-24 20:54:50.8667647' AS DateTime2), N'管理系统后台数据', N'系统管理')
INSERT [dbo].[Sys_Module] ([Id], [CreateDateTime], [Description], [Name]) VALUES (2, CAST(N'2018-02-24 20:56:01.6495884' AS DateTime2), N'1', N'测试模块')
SET IDENTITY_INSERT [dbo].[Sys_Module] OFF
SET IDENTITY_INSERT [dbo].[Sys_OperationLog] ON 

INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (208, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-13 20:50:49.4945857' AS DateTime2), N'访问', N'/admin', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (209, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-13 20:50:51.3034603' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (210, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-13 20:50:55.1029493' AS DateTime2), N'访问', N'/admin/log/operation', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (211, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-13 20:50:58.3889208' AS DateTime2), N'访问', N'/admin/log/operation', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (212, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-13 20:51:00.6104698' AS DateTime2), N'访问', N'/admin/log/operation', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (213, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-13 20:51:02.3237663' AS DateTime2), N'访问', N'/admin/log/chart', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (214, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-13 20:57:36.3940576' AS DateTime2), N'访问', N'/admin', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (215, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-13 20:57:37.8278390' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (216, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-13 20:57:40.9408320' AS DateTime2), N'访问', N'/admin/log/chart', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (217, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-13 20:58:22.9818953' AS DateTime2), N'访问', N'/admin/log/chart', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (218, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-13 20:59:11.5233305' AS DateTime2), N'访问', N'/admin/log/chart', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (219, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-13 20:59:22.6342823' AS DateTime2), N'访问', N'/admin/log/operation', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (220, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 21:52:57.0073627' AS DateTime2), N'访问', N'/admin', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (221, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 21:52:57.5885778' AS DateTime2), N'访问', N'/admin/User/Login', 0, N'无')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (222, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 21:53:05.6807086' AS DateTime2), N'访问', N'/admin/control/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (223, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 21:53:07.2217805' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (224, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 21:53:09.8209820' AS DateTime2), N'访问', N'/admin/log/chart', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (225, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 21:53:29.2180239' AS DateTime2), N'访问', N'/admin/log/chart', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (226, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 21:53:42.0857664' AS DateTime2), N'访问', N'/admin/log/chart', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (227, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 21:53:52.5524793' AS DateTime2), N'访问', N'/admin/log/chart', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (228, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 22:00:52.6163148' AS DateTime2), N'访问', N'/admin/department', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (229, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 22:00:54.2281628' AS DateTime2), N'访问', N'/admin/user/department', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (230, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 22:00:54.5228551' AS DateTime2), N'访问', N'/admin/module', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (231, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 22:00:55.5702428' AS DateTime2), N'访问', N'/admin/module', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (232, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 22:00:56.1856844' AS DateTime2), N'访问', N'/admin/module/add', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (233, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 22:01:13.0078899' AS DateTime2), N'访问', N'/admin/module/add', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (234, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 22:01:36.3602651' AS DateTime2), N'访问', N'/admin/module/add', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (235, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 22:01:54.1611415' AS DateTime2), N'访问', N'/admin/module/add', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (236, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 22:04:05.7077660' AS DateTime2), N'访问', N'/admin', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (237, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 22:04:07.7737133' AS DateTime2), N'访问', N'/admin/Control/Welcome', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (238, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 22:04:11.7433752' AS DateTime2), N'访问', N'/admin/tablecolumn/index', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (239, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 22:04:28.1802747' AS DateTime2), N'访问', N'/admin/viewlist/index/1010', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (240, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 22:04:31.2083748' AS DateTime2), N'访问', N'/admin/viewlist/index/1009', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (241, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 22:04:31.8077924' AS DateTime2), N'访问', N'/admin/viewlist/index/2', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (242, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 22:04:33.0100330' AS DateTime2), N'访问', N'/admin/viewlist/index/1010', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (243, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 22:04:34.5413999' AS DateTime2), N'访问', N'/admin/viewlist/index/1010', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (244, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 22:04:36.2776665' AS DateTime2), N'访问', N'/admin/viewlist/add/1010', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (245, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 22:04:39.3797871' AS DateTime2), N'访问', N'/admin/viewlist/add/1010', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (246, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 22:05:17.1989643' AS DateTime2), N'访问', N'/admin/viewlist/add/1010', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (247, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 22:08:13.6713436' AS DateTime2), N'访问', N'/admin/viewlist/add/1010', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (248, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 22:08:18.7601001' AS DateTime2), N'访问', N'/admin/viewlist/index/1010', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (249, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 22:08:20.8888569' AS DateTime2), N'访问', N'/admin/viewlist/edit/2/1010', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (250, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 22:08:43.7671988' AS DateTime2), N'访问', N'/admin/viewlist/edit/2/1010', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (251, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 22:08:49.3915147' AS DateTime2), N'访问', N'/admin/viewlist/index/1010', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (252, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 22:08:53.1538461' AS DateTime2), N'访问', N'/admin/viewlist/add/1010', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (253, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 22:08:58.9865645' AS DateTime2), N'访问', N'/admin/viewlist/index/1010', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (254, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 22:09:01.0965375' AS DateTime2), N'访问', N'/admin/viewlist/add/1010', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (255, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 22:09:06.0186211' AS DateTime2), N'访问', N'/admin/viewlist/index/1010', 13, N'sa')
INSERT [dbo].[Sys_OperationLog] ([Id], [ClientIP], [ClientMac], [CreateDateTime], [OperationDescription], [OperationUrl], [UserId], [UserName]) VALUES (256, N'127.0.0.1', N'00-00-00-00-00-00', CAST(N'2018-05-16 22:09:10.4249546' AS DateTime2), N'访问', N'/admin/viewlist/index/1009', 13, N'sa')
SET IDENTITY_INSERT [dbo].[Sys_OperationLog] OFF
SET IDENTITY_INSERT [dbo].[Sys_Role] ON 

INSERT [dbo].[Sys_Role] ([Id], [ConcurrencyStamp], [Description], [Name], [NormalizedName]) VALUES (1, N'0952bba9-5189-4aa4-939a-da31712697d5', N'最普通的', N'普通用户', N'普通用户')
INSERT [dbo].[Sys_Role] ([Id], [ConcurrencyStamp], [Description], [Name], [NormalizedName]) VALUES (2, N'672bfa5c-e1fe-43e2-b8ad-d1c5a225bc90', N'Very Importent Person', N'VIP会员', N'VIP会员')
INSERT [dbo].[Sys_Role] ([Id], [ConcurrencyStamp], [Description], [Name], [NormalizedName]) VALUES (5, N'c9aafe90-d289-40fc-aae7-8a1845444dcb', N'管理一切哦', N'管理员', N'管理员')
INSERT [dbo].[Sys_Role] ([Id], [ConcurrencyStamp], [Description], [Name], [NormalizedName]) VALUES (14, N'28ac071b-e87c-4b36-bf94-809d4f3a1a9a', N'最高权限拥有者', N'超级管理员', N'超级管理员')
INSERT [dbo].[Sys_Role] ([Id], [ConcurrencyStamp], [Description], [Name], [NormalizedName]) VALUES (18, N'd1457801-16b4-4cc1-9693-bce0ddb403be', N'啊啊啊', N'特特', N'特特')
INSERT [dbo].[Sys_Role] ([Id], [ConcurrencyStamp], [Description], [Name], [NormalizedName]) VALUES (1013, NULL, N'testDesc', N'test', NULL)
INSERT [dbo].[Sys_Role] ([Id], [ConcurrencyStamp], [Description], [Name], [NormalizedName]) VALUES (1014, N'fd0ef69b-8568-4544-8673-dd4fc95a9f57', N'123', N'test', N'TEST')
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
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2562, CAST(N'2018-04-25 21:48:16.9356010' AS DateTime2), 46, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2563, CAST(N'2018-04-25 21:48:16.9356059' AS DateTime2), 1028, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2564, CAST(N'2018-04-25 21:48:16.9356059' AS DateTime2), 1030, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2565, CAST(N'2018-04-25 21:48:16.9356059' AS DateTime2), 1031, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2566, CAST(N'2018-04-25 21:48:16.9356059' AS DateTime2), 1032, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2567, CAST(N'2018-04-25 21:48:16.9356059' AS DateTime2), 1029, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2568, CAST(N'2018-04-25 21:48:16.9356063' AS DateTime2), 1033, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2569, CAST(N'2018-04-25 21:48:16.9356063' AS DateTime2), 1034, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2570, CAST(N'2018-04-25 21:48:16.9356063' AS DateTime2), 1035, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2571, CAST(N'2018-04-25 21:48:16.9356063' AS DateTime2), 2032, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2572, CAST(N'2018-04-25 21:48:16.9356063' AS DateTime2), 2028, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2573, CAST(N'2018-04-25 21:48:16.9356068' AS DateTime2), 2029, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2574, CAST(N'2018-04-25 21:48:16.9356068' AS DateTime2), 2030, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2575, CAST(N'2018-04-25 21:48:16.9356068' AS DateTime2), 2031, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2576, CAST(N'2018-04-25 21:48:16.9356068' AS DateTime2), 55, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2577, CAST(N'2018-04-25 21:48:16.9356068' AS DateTime2), 20, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2578, CAST(N'2018-04-25 21:48:16.9356068' AS DateTime2), 21, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2579, CAST(N'2018-04-25 21:48:16.9356072' AS DateTime2), 57, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2580, CAST(N'2018-04-25 21:48:16.9356072' AS DateTime2), 2033, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2581, CAST(N'2018-04-25 21:48:16.9356072' AS DateTime2), 2034, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2582, CAST(N'2018-04-25 21:48:16.9356072' AS DateTime2), 2035, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2583, CAST(N'2018-04-25 21:48:16.9356072' AS DateTime2), 2039, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2584, CAST(N'2018-04-25 21:48:16.9356072' AS DateTime2), 2036, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2585, CAST(N'2018-04-25 21:48:16.9356076' AS DateTime2), 2037, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2586, CAST(N'2018-04-25 21:48:16.9356059' AS DateTime2), 1027, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2587, CAST(N'2018-04-25 21:48:16.9356055' AS DateTime2), 54, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2588, CAST(N'2018-04-25 21:48:16.9356055' AS DateTime2), 44, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2589, CAST(N'2018-04-25 21:48:16.9356055' AS DateTime2), 43, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2590, CAST(N'2018-04-25 21:48:16.9356035' AS DateTime2), 47, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2591, CAST(N'2018-04-25 21:48:16.9356035' AS DateTime2), 23, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2592, CAST(N'2018-04-25 21:48:16.9356035' AS DateTime2), 25, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2593, CAST(N'2018-04-25 21:48:16.9356039' AS DateTime2), 26, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2594, CAST(N'2018-04-25 21:48:16.9356039' AS DateTime2), 48, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2595, CAST(N'2018-04-25 21:48:16.9356039' AS DateTime2), 28, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2596, CAST(N'2018-04-25 21:48:16.9356039' AS DateTime2), 29, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2597, CAST(N'2018-04-25 21:48:16.9356039' AS DateTime2), 30, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2598, CAST(N'2018-04-25 21:48:16.9356043' AS DateTime2), 49, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2599, CAST(N'2018-04-25 21:48:16.9356043' AS DateTime2), 31, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2600, CAST(N'2018-04-25 21:48:16.9356043' AS DateTime2), 50, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2601, CAST(N'2018-04-25 21:48:16.9356076' AS DateTime2), 2038, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2602, CAST(N'2018-04-25 21:48:16.9356047' AS DateTime2), 32, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2603, CAST(N'2018-04-25 21:48:16.9356047' AS DateTime2), 34, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2604, CAST(N'2018-04-25 21:48:16.9356047' AS DateTime2), 35, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2605, CAST(N'2018-04-25 21:48:16.9356047' AS DateTime2), 51, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2606, CAST(N'2018-04-25 21:48:16.9356051' AS DateTime2), 36, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2607, CAST(N'2018-04-25 21:48:16.9356051' AS DateTime2), 42, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2608, CAST(N'2018-04-25 21:48:16.9356051' AS DateTime2), 52, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2609, CAST(N'2018-04-25 21:48:16.9356051' AS DateTime2), 38, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2610, CAST(N'2018-04-25 21:48:16.9356051' AS DateTime2), 39, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2611, CAST(N'2018-04-25 21:48:16.9356051' AS DateTime2), 40, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2612, CAST(N'2018-04-25 21:48:16.9356055' AS DateTime2), 53, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2613, CAST(N'2018-04-25 21:48:16.9356055' AS DateTime2), 41, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2614, CAST(N'2018-04-25 21:48:16.9356047' AS DateTime2), 33, 14)
INSERT [dbo].[Sys_RoleMenu] ([Id], [CreateDateTime], [MenuId], [RoleId]) VALUES (2615, CAST(N'2018-04-25 21:48:16.9356076' AS DateTime2), 2040, 14)
SET IDENTITY_INSERT [dbo].[Sys_RoleMenu] OFF
SET IDENTITY_INSERT [dbo].[Sys_SystemOption] ON 

INSERT [dbo].[Sys_SystemOption] ([Code], [CreateDateTime], [Id], [Value]) VALUES (N'testCode', CAST(N'2018-03-20 22:43:08.4039973' AS DateTime2), 1, N'testValue s')
INSERT [dbo].[Sys_SystemOption] ([Code], [CreateDateTime], [Id], [Value]) VALUES (N'testCoded', CAST(N'2018-03-20 22:47:42.3060094' AS DateTime2), 4, N'asd')
SET IDENTITY_INSERT [dbo].[Sys_SystemOption] OFF
SET IDENTITY_INSERT [dbo].[Sys_TableColumn] ON 

INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible]) VALUES (45, 0, CAST(N'2018-03-26 22:34:42.8216115' AS DateTime2), 3, N'Id', 0, 0, NULL, 0, 0, 0, 1, 4, N'Id', NULL, 0, 0, 0, 2, 0, 1)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible]) VALUES (46, 0, CAST(N'2018-04-25 20:57:47.8253840' AS DateTime2), 6, N'创建时间', 0, 0, NULL, 1, 0, 0, 1, 8, N'CreateDateTime', NULL, 0, 0, 0, 2, 0, 1)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible]) VALUES (47, 1, CAST(N'2018-03-26 22:35:20.6118143' AS DateTime2), 0, N'说明', 0, 1, NULL, 1, 1, 0, 1, 8000, N'Description', NULL, 0, 0, 1, 2, 0, 1)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible]) VALUES (48, 1, CAST(N'2018-03-26 22:35:29.7387448' AS DateTime2), 0, N'负责人', 0, 1, NULL, 1, 1, 0, 1, 8000, N'Leader', NULL, 0, 0, 1, 2, 0, 1)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible]) VALUES (49, 1, CAST(N'2018-03-26 22:35:45.3368724' AS DateTime2), 0, N'部门名称', 0, 1, NULL, 1, 1, 0, 1, 8000, N'Name', NULL, 0, 0, 1, 2, 0, 1)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible]) VALUES (50, 1, CAST(N'2018-05-05 21:45:30.3439584' AS DateTime2), 5, N'上级部门', 0, 1, NULL, 1, 1, 0, 1, 4, N'ParentId', N'Id,Name|Sys_Department|ParentId=0', 0, 0, 0, 2, 0, 1)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible]) VALUES (59, 0, CAST(N'2018-04-24 21:53:50.4923920' AS DateTime2), 3, N' id', 0, 0, NULL, 0, 1, 0, 1, 4, N'Id', NULL, 0, 0, 0, 1009, 0, 1)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible]) VALUES (60, 1, CAST(N'2018-04-22 23:08:11.5433187' AS DateTime2), 0, N'客户端IP', 0, 1, NULL, 1, 1, 0, 1, 8000, N'ClientIP', NULL, 0, 0, 0, 1009, 0, 1)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible]) VALUES (61, 1, CAST(N'2018-04-22 23:08:28.1379545' AS DateTime2), 0, N'客户端MAC地址', 0, 1, NULL, 1, 1, 0, 1, 8000, N'ClientMac', NULL, 0, 0, 0, 1009, 0, 1)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible]) VALUES (62, 1, CAST(N'2018-04-22 23:08:39.8528457' AS DateTime2), 6, N'登陆日期', 0, 1, NULL, 1, 1, 0, 1, 8, N'CreateDateTime', NULL, 0, 0, 0, 1009, 0, 1)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible]) VALUES (63, 1, CAST(N'2018-04-22 23:08:51.8393514' AS DateTime2), 3, N'用户Id', 0, 1, NULL, 1, 1, 0, 1, 4, N'UserId', NULL, 0, 0, 0, 1009, 0, 0)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible]) VALUES (64, 1, CAST(N'2018-04-22 23:09:02.1984798' AS DateTime2), 0, N'登陆人', 0, 1, NULL, 1, 1, 0, 1, 8000, N'UserName', NULL, 0, 0, 0, 1009, 0, 0)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible]) VALUES (65, 1, CAST(N'2018-04-22 23:09:11.1207025' AS DateTime2), 0, N'说明', 0, 1, NULL, 1, 1, 0, 1, 8000, N'Description', NULL, 0, 0, 0, 1009, 0, 0)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible]) VALUES (66, 0, CAST(N'2018-05-02 21:18:38.8069161' AS DateTime2), 3, N'Id', 0, 0, NULL, 1, 0, 0, 1, 4, N'Id', NULL, 1, 0, 0, 1010, 0, 1)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible]) VALUES (67, 1, CAST(N'2018-05-05 21:17:29.4667547' AS DateTime2), 0, N'姓名', 5, 1, NULL, 1, 1, 5, 1, 8000, N'Name', NULL, 0, 1, 0, 1010, 0, 1)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible]) VALUES (68, 1, CAST(N'2018-04-25 21:40:05.5871840' AS DateTime2), 5, N'上级领导', 0, 1, NULL, 1, 1, 0, 1, 4, N'ParentId', N'Id,Name|Test_Leader|ParentId=0 or ParentId is null', 0, 0, 0, 1010, 0, 1)
INSERT [dbo].[Sys_TableColumn] ([Id], [AddVisible], [CreateDateTime], [DataType], [Description], [EditOrder], [EditVisible], [EnumRange], [ExportVisible], [ImportVisible], [ListOrder], [ListVisible], [MaxLength], [Name], [OutSql], [PrimarKey], [Required], [SearchVisible], [TableId], [ViewOrder], [ViewVisible]) VALUES (69, 1, CAST(N'2018-05-03 23:03:53.0644965' AS DateTime2), 10, N'类型', 6, 1, N'大领导,中领导,小领导', 1, 1, 1, 1, 8000, N'Type', NULL, 0, 0, 0, 1010, 0, 1)
SET IDENTITY_INSERT [dbo].[Sys_TableColumn] OFF
SET IDENTITY_INSERT [dbo].[Sys_TableList] ON 

INSERT [dbo].[Sys_TableList] ([Id], [CreateDateTime], [DefaultFilter], [DefaultSort], [DeleteTableName], [Description], [ExtendFunction], [ForbiddenAddFilter], [ForbiddenDeleteFilter], [ForbiddenUpdateFilter], [ImportType], [IsView], [Name], [AllowDelete], [AllowEdit], [AllowExport], [AllowImport], [AllowView], [AllowAdd]) VALUES (2, CAST(N'2018-04-12 20:52:20.1272314' AS DateTime2), N'Id > 0', N'Id desc', N'Sys_Department', N'说明哦', N'<button type="button" onclick="alert(''id:{Id}userid:{UserId}'')">test</button>', N'UserName != admin', N'ItemID < 0', N'Id < 0', 0, 0, N'Sys_Department', 1, 1, 0, 0, 1, 1)
INSERT [dbo].[Sys_TableList] ([Id], [CreateDateTime], [DefaultFilter], [DefaultSort], [DeleteTableName], [Description], [ExtendFunction], [ForbiddenAddFilter], [ForbiddenDeleteFilter], [ForbiddenUpdateFilter], [ImportType], [IsView], [Name], [AllowDelete], [AllowEdit], [AllowExport], [AllowImport], [AllowView], [AllowAdd]) VALUES (1009, CAST(N'2018-04-16 22:29:36.0054852' AS DateTime2), N'Id != 0', N'Id desc', N'Sys_LoginLog', N'登录日志', N'test', N'UserName != admin', N'Id < 0', N'Id > 100', 0, 0, N'Sys_LoginLog', 0, 0, 0, 0, 1, 0)
INSERT [dbo].[Sys_TableList] ([Id], [CreateDateTime], [DefaultFilter], [DefaultSort], [DeleteTableName], [Description], [ExtendFunction], [ForbiddenAddFilter], [ForbiddenDeleteFilter], [ForbiddenUpdateFilter], [ImportType], [IsView], [Name], [AllowDelete], [AllowEdit], [AllowExport], [AllowImport], [AllowView], [AllowAdd]) VALUES (1010, CAST(N'2018-05-02 21:43:44.2252790' AS DateTime2), NULL, N'Id desc', N'Test_Leader', N'测试领导表', NULL, NULL, NULL, NULL, 0, 0, N'Test_Leader', 1, 1, 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Sys_TableList] OFF
SET IDENTITY_INSERT [dbo].[Sys_User] ON 

INSERT [dbo].[Sys_User] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [RealName], [SecurityStamp], [Status], [TwoFactorEnabled], [UserName]) VALUES (1, 0, N'97b0af4c-525c-4fae-a50a-dc6a74975701', N'admin@admin.com', 0, 1, NULL, N'ADMIN@ADMIN.COM', N'ADMIN', N'AQAAAAEAACcQAAAAEJBn4LaCQBAMLUsFD8dwHVzxTCHe/+ikivrlAfxjVPxDScp9taeRhlJyQAM2HfeWfA==', NULL, 0, N'管理员呢', N'2b1632c6-e95e-4ae6-aaad-6ca0f18371a6', 2, 0, N'admin')
INSERT [dbo].[Sys_User] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [RealName], [SecurityStamp], [Status], [TwoFactorEnabled], [UserName]) VALUES (3, 0, N'7f9e45f2-db58-4d5c-935b-167ebf46d1b2', N'test123@test123.com', 0, 1, NULL, N'TEST123@TEST123.COM', N'TEST123', N'AQAAAAEAACcQAAAAEDMuUkjEjFRD8fJTjOXl0VygQ7Wk4WTdgu0HF6S+skP7udmmMKLHDUy2nFazmfhxCg==', NULL, 0, N'测试', N'8a922c7f-4283-4496-a67b-6d7f7dba5e83', 2, 0, N'test123')
INSERT [dbo].[Sys_User] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [RealName], [SecurityStamp], [Status], [TwoFactorEnabled], [UserName]) VALUES (13, 0, N'16134615-6727-4a40-a854-1659e40425f2', N'sa@sa.com', 0, 1, NULL, N'SA@SA.COM', N'SA', N'AQAAAAEAACcQAAAAEDeChuSPhyePNZMXeXp9Goo6OBRFGQnAkuabdUbde20Fs7HskzhAiS4V++1txsxtGw==', NULL, 0, N'超级管理员', N'4be6e9c6-0739-4bb0-b066-94c2fc1a6c80', 2, 0, N'sa')
SET IDENTITY_INSERT [dbo].[Sys_User] OFF
SET IDENTITY_INSERT [dbo].[Sys_UserDepartment] ON 

INSERT [dbo].[Sys_UserDepartment] ([Id], [CreateDateTime], [DepartmentId], [UserId]) VALUES (2, CAST(N'2018-02-05 20:27:10.2430634' AS DateTime2), 7, 1)
INSERT [dbo].[Sys_UserDepartment] ([Id], [CreateDateTime], [DepartmentId], [UserId]) VALUES (5, CAST(N'2018-03-05 22:28:35.0229550' AS DateTime2), 5, 1)
SET IDENTITY_INSERT [dbo].[Sys_UserDepartment] OFF
INSERT [dbo].[Sys_UserRole] ([UserId], [RoleId]) VALUES (3, 1)
INSERT [dbo].[Sys_UserRole] ([UserId], [RoleId]) VALUES (1, 5)
INSERT [dbo].[Sys_UserRole] ([UserId], [RoleId]) VALUES (13, 14)
SET IDENTITY_INSERT [dbo].[Test_Leader] ON 

INSERT [dbo].[Test_Leader] ([Id], [CreateDateTime], [Name], [ParentId], [Type]) VALUES (1, CAST(N'2018-05-02 21:43:51.0000000' AS DateTime2), N'王兆洋', 0, N'大领导')
INSERT [dbo].[Test_Leader] ([Id], [CreateDateTime], [Name], [ParentId], [Type]) VALUES (2, CAST(N'2018-05-02 21:43:51.0000000' AS DateTime2), N'王子祥', 0, N'大领导')
INSERT [dbo].[Test_Leader] ([Id], [CreateDateTime], [Name], [ParentId], [Type]) VALUES (12, CAST(N'2018-05-16 22:08:57.0000000' AS DateTime2), N'对对对', 1, N'中领导')
INSERT [dbo].[Test_Leader] ([Id], [CreateDateTime], [Name], [ParentId], [Type]) VALUES (13, CAST(N'2018-05-16 22:09:04.0000000' AS DateTime2), N'打的顺丰到付', 0, N'小领导')
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
INSERT [HangFire].[Server] ([Id], [Data], [LastHeartbeat]) VALUES (N'lkjob:6a585c12-6aa8-4452-888a-4f7eab6b6849', N'{"WorkerCount":40,"Queues":["Job"],"StartedAt":"2018-05-16T14:03:40.3542658Z"}', CAST(N'2018-05-16 14:10:10.803' AS DateTime))
SET IDENTITY_INSERT [HangFire].[State] ON 

INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (13, 4, N'Enqueued', NULL, CAST(N'2018-03-11 09:26:00.983' AS DateTime), N'{"EnqueuedAt":"2018-03-11T09:26:00.9319467Z","Queue":"default"}')
SET IDENTITY_INSERT [HangFire].[State] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2018/5/16 22:12:15 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[Sys_Role]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sys_RoleClaim_RoleId]    Script Date: 2018/5/16 22:12:15 ******/
CREATE NONCLUSTERED INDEX [IX_Sys_RoleClaim_RoleId] ON [dbo].[Sys_RoleClaim]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sys_RoleMenu_RoleId]    Script Date: 2018/5/16 22:12:15 ******/
CREATE NONCLUSTERED INDEX [IX_Sys_RoleMenu_RoleId] ON [dbo].[Sys_RoleMenu]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sys_TableColumn_TableId]    Script Date: 2018/5/16 22:12:15 ******/
CREATE NONCLUSTERED INDEX [IX_Sys_TableColumn_TableId] ON [dbo].[Sys_TableColumn]
(
	[TableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EmailIndex]    Script Date: 2018/5/16 22:12:15 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[Sys_User]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 2018/5/16 22:12:15 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[Sys_User]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sys_UserClaim_UserId]    Script Date: 2018/5/16 22:12:15 ******/
CREATE NONCLUSTERED INDEX [IX_Sys_UserClaim_UserId] ON [dbo].[Sys_UserClaim]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sys_UserDepartment_DepartmentId]    Script Date: 2018/5/16 22:12:15 ******/
CREATE NONCLUSTERED INDEX [IX_Sys_UserDepartment_DepartmentId] ON [dbo].[Sys_UserDepartment]
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sys_UserDepartment_UserId]    Script Date: 2018/5/16 22:12:15 ******/
CREATE NONCLUSTERED INDEX [IX_Sys_UserDepartment_UserId] ON [dbo].[Sys_UserDepartment]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sys_UserLogin_UserId]    Script Date: 2018/5/16 22:12:15 ******/
CREATE NONCLUSTERED INDEX [IX_Sys_UserLogin_UserId] ON [dbo].[Sys_UserLogin]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sys_UserRole_RoleId]    Script Date: 2018/5/16 22:12:15 ******/
CREATE NONCLUSTERED INDEX [IX_Sys_UserRole_RoleId] ON [dbo].[Sys_UserRole]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UX_HangFire_CounterAggregated_Key]    Script Date: 2018/5/16 22:12:15 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UX_HangFire_CounterAggregated_Key] ON [HangFire].[AggregatedCounter]
(
	[Key] ASC
)
INCLUDE ( 	[Value]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_HangFire_Counter_Key]    Script Date: 2018/5/16 22:12:15 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Counter_Key] ON [HangFire].[Counter]
(
	[Key] ASC
)
INCLUDE ( 	[Value]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_Hash_ExpireAt]    Script Date: 2018/5/16 22:12:15 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Hash_ExpireAt] ON [HangFire].[Hash]
(
	[ExpireAt] ASC
)
INCLUDE ( 	[Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_HangFire_Hash_Key]    Script Date: 2018/5/16 22:12:15 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Hash_Key] ON [HangFire].[Hash]
(
	[Key] ASC
)
INCLUDE ( 	[ExpireAt]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UX_HangFire_Hash_Key_Field]    Script Date: 2018/5/16 22:12:15 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UX_HangFire_Hash_Key_Field] ON [HangFire].[Hash]
(
	[Key] ASC,
	[Field] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_Job_ExpireAt]    Script Date: 2018/5/16 22:12:15 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Job_ExpireAt] ON [HangFire].[Job]
(
	[ExpireAt] ASC
)
INCLUDE ( 	[Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_HangFire_Job_StateName]    Script Date: 2018/5/16 22:12:15 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Job_StateName] ON [HangFire].[Job]
(
	[StateName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_HangFire_JobParameter_JobIdAndName]    Script Date: 2018/5/16 22:12:15 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_JobParameter_JobIdAndName] ON [HangFire].[JobParameter]
(
	[JobId] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_HangFire_JobQueue_QueueAndFetchedAt]    Script Date: 2018/5/16 22:12:15 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_JobQueue_QueueAndFetchedAt] ON [HangFire].[JobQueue]
(
	[Queue] ASC,
	[FetchedAt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_List_ExpireAt]    Script Date: 2018/5/16 22:12:15 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_List_ExpireAt] ON [HangFire].[List]
(
	[ExpireAt] ASC
)
INCLUDE ( 	[Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_HangFire_List_Key]    Script Date: 2018/5/16 22:12:15 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_List_Key] ON [HangFire].[List]
(
	[Key] ASC
)
INCLUDE ( 	[ExpireAt],
	[Value]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_Set_ExpireAt]    Script Date: 2018/5/16 22:12:15 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Set_ExpireAt] ON [HangFire].[Set]
(
	[ExpireAt] ASC
)
INCLUDE ( 	[Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_HangFire_Set_Key]    Script Date: 2018/5/16 22:12:15 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Set_Key] ON [HangFire].[Set]
(
	[Key] ASC
)
INCLUDE ( 	[ExpireAt],
	[Value]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UX_HangFire_Set_KeyAndValue]    Script Date: 2018/5/16 22:12:15 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UX_HangFire_Set_KeyAndValue] ON [HangFire].[Set]
(
	[Key] ASC,
	[Value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_State_JobId]    Script Date: 2018/5/16 22:12:15 ******/
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
