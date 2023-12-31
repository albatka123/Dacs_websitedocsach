USE [master]
GO
/****** Object:  Database [DACS_LibraryWeb]    Script Date: 05/25/2023 6:44:48 PM ******/
CREATE DATABASE [DACS_LibraryWeb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DACS_LibraryWeb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DACS_LibraryWeb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DACS_LibraryWeb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DACS_LibraryWeb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DACS_LibraryWeb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DACS_LibraryWeb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DACS_LibraryWeb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DACS_LibraryWeb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DACS_LibraryWeb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DACS_LibraryWeb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DACS_LibraryWeb] SET ARITHABORT OFF 
GO
ALTER DATABASE [DACS_LibraryWeb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DACS_LibraryWeb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DACS_LibraryWeb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DACS_LibraryWeb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DACS_LibraryWeb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DACS_LibraryWeb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DACS_LibraryWeb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DACS_LibraryWeb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DACS_LibraryWeb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DACS_LibraryWeb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DACS_LibraryWeb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DACS_LibraryWeb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DACS_LibraryWeb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DACS_LibraryWeb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DACS_LibraryWeb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DACS_LibraryWeb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [DACS_LibraryWeb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DACS_LibraryWeb] SET RECOVERY FULL 
GO
ALTER DATABASE [DACS_LibraryWeb] SET  MULTI_USER 
GO
ALTER DATABASE [DACS_LibraryWeb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DACS_LibraryWeb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DACS_LibraryWeb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DACS_LibraryWeb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DACS_LibraryWeb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DACS_LibraryWeb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DACS_LibraryWeb', N'ON'
GO
ALTER DATABASE [DACS_LibraryWeb] SET QUERY_STORE = OFF
GO
USE [DACS_LibraryWeb]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 05/25/2023 6:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 05/25/2023 6:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 05/25/2023 6:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 05/25/2023 6:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 05/25/2023 6:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 05/25/2023 6:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 05/25/2023 6:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[AuthorId] [int] IDENTITY(1,1) NOT NULL,
	[AuthorName] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Authors] PRIMARY KEY CLUSTERED 
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 05/25/2023 6:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[BookId] [int] IDENTITY(1,1) NOT NULL,
	[BookName] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[AnhBia] [nvarchar](50) NULL,
	[Noidung] [nvarchar](max) NULL,
	[DateUpdate] [datetime] NULL,
	[PublisherId] [int] NULL,
	[AuthorId] [int] NULL,
	[CategoryId] [int] NULL,
 CONSTRAINT [PK_dbo.Books] PRIMARY KEY CLUSTERED 
(
	[BookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 05/25/2023 6:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publishers]    Script Date: 05/25/2023 6:44:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publishers](
	[PublisherId] [int] IDENTITY(1,1) NOT NULL,
	[PublisherName] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Publishers] PRIMARY KEY CLUSTERED 
(
	[PublisherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'1', N'leminhbaost@gmail.com', 0, N'AHeRODNLxIFk036YbcM9OMvKvOjwy1pQApFFy5GkCEFGwOCW058Iyv7Nttm6bzAlgA==', N'b65e687d-85e3-419d-9546-5899ecfad51b', NULL, 0, 0, NULL, 1, 0, N'leminhbaost@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[Authors] ON 

INSERT [dbo].[Authors] ([AuthorId], [AuthorName]) VALUES (1, N'Nguyễn Nhật Ánh
')
INSERT [dbo].[Authors] ([AuthorId], [AuthorName]) VALUES (2, N'
Tô Hoài')
INSERT [dbo].[Authors] ([AuthorId], [AuthorName]) VALUES (3, N'Thùy Trang')
INSERT [dbo].[Authors] ([AuthorId], [AuthorName]) VALUES (4, N'Josef Škvorecký')
SET IDENTITY_INSERT [dbo].[Authors] OFF
GO
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([BookId], [BookName], [Description], [AnhBia], [Noidung], [DateUpdate], [PublisherId], [AuthorId], [CategoryId]) VALUES (3, N'Kính Vạn Hoa', N'Kính vạn hoa là một bộ truyện dài nhiều tập của nhà văn Nguyễn Nhật Ánh. Bộ truyện gồm 54 tập truyện mang tính hài hước kể về những chuyện vui buồn trong giới học trò, những trò nghịch ngợm, những trò chơi thú vị, những bài học cuộc sống sâu sắc và đầy ý nghĩa. Những nhân vật chính là Quý ròm, nhỏ Hạnh, Tiểu Long cùng các nhân vật khác. Mỗi tập là một câu chuyện khác nhau xung quanh ba bạn nhỏ này. Những tập Kính vạn hoa có thể coi là những cuốn sách tâm lý của tuổi học trò.', N'KinhVanHoa.jpg', N'KVH.pdf', CAST(N'2023-03-01T00:00:00.000' AS DateTime), 2, 1, 9)
INSERT [dbo].[Books] ([BookId], [BookName], [Description], [AnhBia], [Noidung], [DateUpdate], [PublisherId], [AuthorId], [CategoryId]) VALUES (4, N'Dế Mèn phiêu lưu ký', N'Truyện kể về những cuộc phiêu liêu, trải nghiệm của chú Dế Mèn và những bài học đường đời được rút ra. Qua đó giáo dục các em về thái độ sống, bài học ứng xử, kỹ năng sống cho các em.', N'DMPLK.jpg', N'DemenPLK.pdf', CAST(N'2023-03-01T00:00:00.000' AS DateTime), 2, 2, 9)
INSERT [dbo].[Books] ([BookId], [BookName], [Description], [AnhBia], [Noidung], [DateUpdate], [PublisherId], [AuthorId], [CategoryId]) VALUES (5, N'Cho Tôi Xin Một Vé Đi Tuổi Thơ', N'Tác phẩm gồm những câu chuyện nhỏ xoay xung quanh 4 đứa trẻ trong cùng một khu xóm là con Tủn, con Tí sún, thằng Hải cò và thằng cu Mùi. Trong đó, người kể chuyện là cu Mùi dưới hình thức kể của "thằng cu Mùi" lúc bé và nhận xét, đánh giá của "ông Mùi" khi đã gần 50 tuổi. Song song đó còn có sự xuất hiện của các phụ huynh và những câu chuyện dở khóc dở cười khiến chúng như đang sống lại tuổi thơ tươi đẹp.', N'CTX1VDTT.jpg', N'X1VVTT.pdf', CAST(N'2023-03-01T00:00:00.000' AS DateTime), 1, 1, 7)
INSERT [dbo].[Books] ([BookId], [BookName], [Description], [AnhBia], [Noidung], [DateUpdate], [PublisherId], [AuthorId], [CategoryId]) VALUES (6, N'Không sợ sống dám yêu đời mà sống', N'Không sợ sống – Dám yêu đời mà sống là tự truyện của nhà báo Thùy Trang. Chị mắc căn bệnh ung thư quái ác khi tuổi đời mới 40 – vừa chạm đến giai đoạn chín muồi của nghề báo. Điều đáng ghi nhận đầu tiên ở cuốn sách này chính là khát vọng sống và ý chí kiên cường chống chọi với bệnh tật để được sống. Cuốn sách này, như tác giả tâm sự, được "viết với mục đích chia sẻ cách đối mặt với những khoảnh khắc nghiệt ngã mà bệnh nhân ung thư nào cũng trải qua, xem như là một liệu trình điều trị tự thân, đó là cách xây dựng nên tinh thần quật cường để chiến đấu với bệnh và cả với sự nhiễu loạn thông tin về bệnh K hiện nay".', N'KSS.jpg', N'TextBook.pdf', CAST(N'2023-03-01T00:00:00.000' AS DateTime), 3, 3, 9)
INSERT [dbo].[Books] ([BookId], [BookName], [Description], [AnhBia], [Noidung], [DateUpdate], [PublisherId], [AuthorId], [CategoryId]) VALUES (7, N'Những kẻ hèn nhát', N'Gần như một cuốn tự truyện, Những kẻ hèn nhát của Josef Škvorecký viết về tám ngày cuối cùng (từ 4/5 đến 11/5/1945) của Đại chiến Thế giới II tại thị trấn nhỏ gần biên giới Séc – Đức mà tác giả đặt tên là Kostelec. Đầu tháng 5/1945, thủ đô Berlin bị Hồng quân Liên Xô đánh chiếm, Hitler đã tự sát nhưng tại Tiệp Khắc, quân Đức vẫn không chịu hạ vũ khí. Những người yêu nước Tiệp Khắc phát động cuộc khởi nghĩa nhưng bị quân Đức đàn áp nên đã kêu gọi Hồng quân giúp đỡ. Cả thị trấn xôn xao về tình hình chiến sự nhưng chàng sinh viên Danny chỉ có hai mối quan tâm thực sự, đó là phụ nữ và nhạc jazz', N'NhungKHN.jpg', N'SachText.pdf', CAST(N'2023-03-01T00:00:00.000' AS DateTime), 4, 4, 7)
INSERT [dbo].[Books] ([BookId], [BookName], [Description], [AnhBia], [Noidung], [DateUpdate], [PublisherId], [AuthorId], [CategoryId]) VALUES (9, N'De men phieu luu ki', N'motatest', N'demen.jpg', N'TextBook.pdf', CAST(N'2023-05-22T00:00:00.000' AS DateTime), 2, 1, 6)
SET IDENTITY_INSERT [dbo].[Books] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (1, N'Lãng mạn')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (2, N'Thần bí')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (3, N'Giả tưởng')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (4, N'Khoa Học')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (5, N'Kinh dị')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (6, N'Nấu Ăn')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (7, N'Cổ tích')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (8, N'Lịch sử')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (9, N'Tự truyện')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Publishers] ON 

INSERT [dbo].[Publishers] ([PublisherId], [PublisherName]) VALUES (1, N'Măng non')
INSERT [dbo].[Publishers] ([PublisherId], [PublisherName]) VALUES (2, N'Kim Đồng')
INSERT [dbo].[Publishers] ([PublisherId], [PublisherName]) VALUES (3, N'Tổng hợp TP HCM')
INSERT [dbo].[Publishers] ([PublisherId], [PublisherName]) VALUES (4, N'Phụ nữ Việt Nam')
SET IDENTITY_INSERT [dbo].[Publishers] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 05/25/2023 6:44:48 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 05/25/2023 6:44:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 05/25/2023 6:44:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 05/25/2023 6:44:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 05/25/2023 6:44:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 05/25/2023 6:44:48 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AuthorId]    Script Date: 05/25/2023 6:44:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_AuthorId] ON [dbo].[Books]
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CategoryId]    Script Date: 05/25/2023 6:44:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_CategoryId] ON [dbo].[Books]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PublisherId]    Script Date: 05/25/2023 6:44:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_PublisherId] ON [dbo].[Books]
(
	[PublisherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Books_dbo.Authors_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([AuthorId])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_dbo.Books_dbo.Authors_AuthorId]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Books_dbo.Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_dbo.Books_dbo.Categories_CategoryId]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Books_dbo.Publishers_PublisherId] FOREIGN KEY([PublisherId])
REFERENCES [dbo].[Publishers] ([PublisherId])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_dbo.Books_dbo.Publishers_PublisherId]
GO
USE [master]
GO
ALTER DATABASE [DACS_LibraryWeb] SET  READ_WRITE 
GO
