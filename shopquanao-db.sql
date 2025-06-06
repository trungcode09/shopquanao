USE [master]
GO
/****** Object:  Database [shopquanao]    Script Date: 10/30/2020 10:27:37 AM ******/
CREATE DATABASE [shopquanao]


ALTER DATABASE [shopquanao] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [shopquanao].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [shopquanao] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [shopquanao] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [shopquanao] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [shopquanao] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [shopquanao] SET ARITHABORT OFF 
GO
ALTER DATABASE [shopquanao] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [shopquanao] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [shopquanao] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [shopquanao] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [shopquanao] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [shopquanao] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [shopquanao] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [shopquanao] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [shopquanao] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [shopquanao] SET  DISABLE_BROKER 
GO
ALTER DATABASE [shopquanao] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [shopquanao] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [shopquanao] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [shopquanao] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [shopquanao] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [shopquanao] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [shopquanao] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [shopquanao] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [shopquanao] SET  MULTI_USER 
GO
ALTER DATABASE [shopquanao] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [shopquanao] SET DB_CHAINING OFF 
GO
ALTER DATABASE [shopquanao] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [shopquanao] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [shopquanao] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [shopquanao] SET QUERY_STORE = OFF
GO
USE [shopquanao]
GO
/****** Object:  Table [dbo].[db_ChatLieu]    Script Date: 10/30/2020 10:27:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_ChatLieu](
	[ChatLieuID] [int] IDENTITY(1,1) NOT NULL,
	[TenChatLieu] [nvarchar](50) NULL,
 CONSTRAINT [PK_db_ChatLieu] PRIMARY KEY CLUSTERED 
(
	[ChatLieuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_ChiTietDonDatHang]    Script Date: 10/30/2020 10:27:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_ChiTietDonDatHang](
	[MaSP] [int] NOT NULL,
	[MaDonDatHang] [int] NOT NULL,
	[SoLuongDat] [int] NULL,
	[DonGiaDat] [float] NULL,
 CONSTRAINT [PK_db_ChiTietDonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[MaDonDatHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_ChiTietDonHang]    Script Date: 10/30/2020 10:27:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_ChiTietDonHang](
	[MaHD] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [float] NULL,
 CONSTRAINT [PK_db_ChiTietDonHang_1] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_DangKy]    Script Date: 10/30/2020 10:27:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_DangKy](
	[TenDangNhap] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NULL,
	[EmailDK] [varchar](50) NULL,
	[DiaChiDK] [nvarchar](100) NULL,
	[TenDayDu] [nvarchar](50) NULL,
	[CauHoiBaoMat] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinhDK] [nchar](10) NULL,
	[MaQuyen] [int] NULL,
 CONSTRAINT [PK_db_DangKy] PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_DanhMuc]    Script Date: 10/30/2020 10:27:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_DanhMuc](
	[MaDM] [int] IDENTITY(1,1) NOT NULL,
	[TenDM] [nvarchar](50) NULL,
	[AnhDaiDien] [nvarchar](100) NULL,
	[ThuTu] [int] NULL,
	[MaDMCha] [int] NULL,
 CONSTRAINT [PK_db_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_DanhMucTin]    Script Date: 10/30/2020 10:27:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_DanhMucTin](
	[MaDM] [int] IDENTITY(1,1) NOT NULL,
	[TenDM] [nvarchar](100) NULL,
	[AnhDaiDien] [nvarchar](100) NULL,
	[ThuTu] [int] NULL,
	[MaDMCha] [int] NOT NULL,
 CONSTRAINT [PK_DanhMucTin] PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_DonDatHang]    Script Date: 10/30/2020 10:27:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_DonDatHang](
	[MaDonDatHang] [int] IDENTITY(1,1) NOT NULL,
	[NgayTao] [datetime] NULL,
	[ThanhTienDH] [float] NULL,
	[TinhTrangDonHang] [nvarchar](300) NULL,
	[MaKH] [int] NULL,
	[TenKH] [nvarchar](50) NULL,
	[sdtKH] [varchar](15) NULL,
	[EmailKH] [varchar](50) NULL,
 CONSTRAINT [PK_db_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDonDatHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_HoaDon]    Script Date: 10/30/2020 10:27:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[NgayLap] [datetime] NULL,
	[ThanhTien] [float] NULL,
	[MaNV] [int] NULL,
	[TenNV] [nvarchar](70) NULL,
	[MaKH] [int] NULL,
	[TenKH] [nvarchar](50) NULL,
 CONSTRAINT [PK_db_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_KhachHang]    Script Date: 10/30/2020 10:27:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKh] [nvarchar](50) NULL,
	[DiaChiKH] [nvarchar](100) NULL,
	[sdtKH] [varchar](15) NULL,
	[EmailKH] [varchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_db_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_Mau]    Script Date: 10/30/2020 10:27:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_Mau](
	[MauID] [int] IDENTITY(1,1) NOT NULL,
	[TenMau] [nvarchar](50) NULL,
 CONSTRAINT [PK_db_Mau] PRIMARY KEY CLUSTERED 
(
	[MauID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_Menu]    Script Date: 10/30/2020 10:27:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_Menu](
	[MaMenu] [int] IDENTITY(1,1) NOT NULL,
	[TenMenu] [nvarchar](50) NULL,
	[LienKet] [varchar](200) NULL,
	[MaMenuCha] [int] NULL,
	[ThuTuMenu] [int] NULL,
 CONSTRAINT [PK_db_Menu] PRIMARY KEY CLUSTERED 
(
	[MaMenu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_NhanVien]    Script Date: 10/30/2020 10:27:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](70) NULL,
	[GioiTinhNV] [nvarchar](10) NULL,
	[DiaChiNV] [nvarchar](100) NULL,
	[sdtNV] [varchar](15) NULL,
	[NgayVaoLam] [datetime] NULL,
 CONSTRAINT [PK_db_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_NhomQuangCao]    Script Date: 10/30/2020 10:27:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_NhomQuangCao](
	[NhomQuangCaoID] [int] IDENTITY(1,1) NOT NULL,
	[TenNhomQuangCao] [nvarchar](50) NULL,
	[ViTriQC] [nvarchar](30) NULL,
	[ThuTuNhomQC] [int] NULL,
	[AnhDaiDienQC] [nvarchar](100) NULL,
 CONSTRAINT [PK_db_NhomQuangCao] PRIMARY KEY CLUSTERED 
(
	[NhomQuangCaoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_NhomSanPham]    Script Date: 10/30/2020 10:27:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_NhomSanPham](
	[NhomID] [int] IDENTITY(1,1) NOT NULL,
	[TenNhom] [nvarchar](100) NULL,
	[AnhDaiDien] [nvarchar](100) NULL,
	[ThuTu] [int] NULL,
	[SoSPHienThi] [int] NULL,
 CONSTRAINT [PK_db_NhomSanPham] PRIMARY KEY CLUSTERED 
(
	[NhomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_QuangCao]    Script Date: 10/30/2020 10:27:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_QuangCao](
	[QuangCaoID] [int] IDENTITY(1,1) NOT NULL,
	[TenQC] [nvarchar](50) NULL,
	[LoaiQC] [nvarchar](20) NULL,
	[AnhQC] [nvarchar](100) NULL,
	[LienKet] [nchar](100) NULL,
	[ThuTuQC] [int] NULL,
	[NhomQuangCaoID] [int] NULL,
 CONSTRAINT [PK_db_QuangCao] PRIMARY KEY CLUSTERED 
(
	[QuangCaoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_QuyenDangNhap]    Script Date: 10/30/2020 10:27:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_QuyenDangNhap](
	[MaQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [varchar](10) NULL,
 CONSTRAINT [PK_db_QuyenDangNhap] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_SanPham]    Script Date: 10/30/2020 10:27:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](100) NULL,
	[MauID] [int] NULL,
	[SizeID] [int] NULL,
	[ChatLieuID] [int] NULL,
	[AnhSP] [nvarchar](100) NULL,
	[SoLuongSP] [int] NULL,
	[GiaSP] [float] NULL,
	[MotaSP] [nvarchar](max) NULL,
	[NgayTao] [datetime] NULL,
	[NgayHuy] [datetime] NULL,
	[MaDM] [int] NULL,
	[NhomID] [int] NULL,
 CONSTRAINT [PK_db_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_Size]    Script Date: 10/30/2020 10:27:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_Size](
	[SizeID] [int] IDENTITY(1,1) NOT NULL,
	[TenSize] [varchar](10) NULL,
 CONSTRAINT [PK_db_Size] PRIMARY KEY CLUSTERED 
(
	[SizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_TinTuc]    Script Date: 10/30/2020 10:27:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_TinTuc](
	[TinTucID] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](200) NULL,
	[AnhDaiDien] [nvarchar](200) NULL,
	[MoTa] [nvarchar](200) NULL,
	[NgayDang] [datetime] NULL,
	[LuotXem] [int] NULL,
	[ChiTiet] [nvarchar](max) NULL,
	[ThuTu] [int] NULL,
	[MaDM] [int] NULL,
 CONSTRAINT [PK_TinTuc] PRIMARY KEY CLUSTERED 
(
	[TinTucID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[db_ChatLieu] ON 

INSERT [dbo].[db_ChatLieu] ([ChatLieuID], [TenChatLieu]) VALUES (1, N'Cotton')
INSERT [dbo].[db_ChatLieu] ([ChatLieuID], [TenChatLieu]) VALUES (2, N'Da')
INSERT [dbo].[db_ChatLieu] ([ChatLieuID], [TenChatLieu]) VALUES (3, N'Nỉ')
INSERT [dbo].[db_ChatLieu] ([ChatLieuID], [TenChatLieu]) VALUES (4, N'Vải dù')
INSERT [dbo].[db_ChatLieu] ([ChatLieuID], [TenChatLieu]) VALUES (5, N'Vải tuyết mưa')
INSERT [dbo].[db_ChatLieu] ([ChatLieuID], [TenChatLieu]) VALUES (6, N'Vải lụa thái')
INSERT [dbo].[db_ChatLieu] ([ChatLieuID], [TenChatLieu]) VALUES (7, N'Kate nỉ')
INSERT [dbo].[db_ChatLieu] ([ChatLieuID], [TenChatLieu]) VALUES (8, N'Nỉ bông')
INSERT [dbo].[db_ChatLieu] ([ChatLieuID], [TenChatLieu]) VALUES (9, N'Thun umi')
INSERT [dbo].[db_ChatLieu] ([ChatLieuID], [TenChatLieu]) VALUES (10, N'Kaki lót lông')
INSERT [dbo].[db_ChatLieu] ([ChatLieuID], [TenChatLieu]) VALUES (11, N'Dạ')
SET IDENTITY_INSERT [dbo].[db_ChatLieu] OFF
GO
INSERT [dbo].[db_DangKy] ([TenDangNhap], [MatKhau], [EmailDK], [DiaChiDK], [TenDayDu], [CauHoiBaoMat], [NgaySinh], [GioiTinhDK], [MaQuyen]) VALUES (N'admin', N'21232f297a57a5a743894a0e4a801fc3', N'quangseven.love@gmail.com', N'Ha Noi', N'Tran Van Quang', NULL, CAST(N'2000-04-19' AS Date), N'Nam       ', 1)
INSERT [dbo].[db_DangKy] ([TenDangNhap], [MatKhau], [EmailDK], [DiaChiDK], [TenDayDu], [CauHoiBaoMat], [NgaySinh], [GioiTinhDK], [MaQuyen]) VALUES (N'Quang', N'dd0a8ceaa483144b02f8021190c8924b', N'Quangseven.love@gmail.com', N'Hà Nội', N'Trần Văn Quang', N'', CAST(N'2000-04-19' AS Date), N'Nam       ', 1)
GO
SET IDENTITY_INSERT [dbo].[db_DanhMuc] ON 

INSERT [dbo].[db_DanhMuc] ([MaDM], [TenDM], [AnhDaiDien], [ThuTu], [MaDMCha]) VALUES (7, N'Quần âu nam', N'', 1, 0)
INSERT [dbo].[db_DanhMuc] ([MaDM], [TenDM], [AnhDaiDien], [ThuTu], [MaDMCha]) VALUES (8, N'Bộ thể thao nam', N'', 2, 0)
INSERT [dbo].[db_DanhMuc] ([MaDM], [TenDM], [AnhDaiDien], [ThuTu], [MaDMCha]) VALUES (9, N'Áo thun nam', N'', 3, 0)
INSERT [dbo].[db_DanhMuc] ([MaDM], [TenDM], [AnhDaiDien], [ThuTu], [MaDMCha]) VALUES (10, N'Áo sơ mi nam', N'', 4, 0)
INSERT [dbo].[db_DanhMuc] ([MaDM], [TenDM], [AnhDaiDien], [ThuTu], [MaDMCha]) VALUES (11, N'Quần Jean', N'', 5, 0)
INSERT [dbo].[db_DanhMuc] ([MaDM], [TenDM], [AnhDaiDien], [ThuTu], [MaDMCha]) VALUES (12, N'Áo Hoodie', N'', 6, 0)
INSERT [dbo].[db_DanhMuc] ([MaDM], [TenDM], [AnhDaiDien], [ThuTu], [MaDMCha]) VALUES (13, N'Áo khoác nam', N'', 7, 0)
SET IDENTITY_INSERT [dbo].[db_DanhMuc] OFF
GO
SET IDENTITY_INSERT [dbo].[db_DanhMucTin] ON 

INSERT [dbo].[db_DanhMucTin] ([MaDM], [TenDM], [AnhDaiDien], [ThuTu], [MaDMCha]) VALUES (3, N'Thời trang công sở', N'', 1, 0)
INSERT [dbo].[db_DanhMucTin] ([MaDM], [TenDM], [AnhDaiDien], [ThuTu], [MaDMCha]) VALUES (4, N'Bí quyết mặc đẹp', N'', 2, 0)
INSERT [dbo].[db_DanhMucTin] ([MaDM], [TenDM], [AnhDaiDien], [ThuTu], [MaDMCha]) VALUES (5, N'Xu hướng thời trang', N'', 3, 0)
INSERT [dbo].[db_DanhMucTin] ([MaDM], [TenDM], [AnhDaiDien], [ThuTu], [MaDMCha]) VALUES (6, N'Thời trang nam', N'', 4, 0)
INSERT [dbo].[db_DanhMucTin] ([MaDM], [TenDM], [AnhDaiDien], [ThuTu], [MaDMCha]) VALUES (7, N'Người mẫu nữ', N'', 5, 0)
INSERT [dbo].[db_DanhMucTin] ([MaDM], [TenDM], [AnhDaiDien], [ThuTu], [MaDMCha]) VALUES (8, N'Hoa hậu Việt Nam', N'', 6, 0)
INSERT [dbo].[db_DanhMucTin] ([MaDM], [TenDM], [AnhDaiDien], [ThuTu], [MaDMCha]) VALUES (9, N'Thời trang thế giới', N'', 7, 0)
SET IDENTITY_INSERT [dbo].[db_DanhMucTin] OFF
GO
SET IDENTITY_INSERT [dbo].[db_KhachHang] ON 

INSERT [dbo].[db_KhachHang] ([MaKH], [TenKh], [DiaChiKH], [sdtKH], [EmailKH], [MatKhau]) VALUES (1, N'Trần Quang', N'Hà Nam', N'0329807206', N'quangseven.love@gmail.com', N'67e0d7f649ecebfb4a5e285407a164f6')
SET IDENTITY_INSERT [dbo].[db_KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[db_Mau] ON 

INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (1, N'Xanh')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (2, N'Đỏ')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (3, N'Vàng')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (4, N'Tím')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (5, N'Nâu')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (6, N'Đen')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (7, N'Xám')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (8, N'Xanh đen')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (9, N'Trắng')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (10, N'Xanh lục')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (11, N'Ghi xám')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (12, N'Vàng nâu ')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (13, N'Trắng sữa')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (14, N'Xanh đậm ')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (15, N'Xanh nhạt')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (16, N'Đen Trắng')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (17, N'Xanh rêu')
SET IDENTITY_INSERT [dbo].[db_Mau] OFF
GO
SET IDENTITY_INSERT [dbo].[db_Menu] ON 

INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (1, N'Trang chủ', N'/', 0, 1)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (2, N'Sản phẩm', N'/?modul=SanPham', 0, 2)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (3, N'Tin tức', N'/?modul=TinTuc', 0, 3)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (4, N'Liên hệ', N'/Default.aspx/?modul=TinTuc&modulphu=DanhSachTinTuc&id=', 0, 4)
SET IDENTITY_INSERT [dbo].[db_Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[db_NhomQuangCao] ON 

INSERT [dbo].[db_NhomQuangCao] ([NhomQuangCaoID], [TenNhomQuangCao], [ViTriQC], [ThuTuNhomQC], [AnhDaiDienQC]) VALUES (1, N'Logo', N'logo', 1, N'')
INSERT [dbo].[db_NhomQuangCao] ([NhomQuangCaoID], [TenNhomQuangCao], [ViTriQC], [ThuTuNhomQC], [AnhDaiDienQC]) VALUES (2, N'Banner', N'banner', 2, N'')
INSERT [dbo].[db_NhomQuangCao] ([NhomQuangCaoID], [TenNhomQuangCao], [ViTriQC], [ThuTuNhomQC], [AnhDaiDienQC]) VALUES (3, N'Slide trang chủ', N'slide', 3, N'')
SET IDENTITY_INSERT [dbo].[db_NhomQuangCao] OFF
GO
SET IDENTITY_INSERT [dbo].[db_NhomSanPham] ON 

INSERT [dbo].[db_NhomSanPham] ([NhomID], [TenNhom], [AnhDaiDien], [ThuTu], [SoSPHienThi]) VALUES (4, N'Hàng mới về', N'download (1).jfif', 1, 5)
INSERT [dbo].[db_NhomSanPham] ([NhomID], [TenNhom], [AnhDaiDien], [ThuTu], [SoSPHienThi]) VALUES (5, N'Sản phẩm hot tháng 10', N'', 2, 5)
INSERT [dbo].[db_NhomSanPham] ([NhomID], [TenNhom], [AnhDaiDien], [ThuTu], [SoSPHienThi]) VALUES (6, N'Hàng Hot trend', N'', 3, 5)
SET IDENTITY_INSERT [dbo].[db_NhomSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[db_QuangCao] ON 

INSERT [dbo].[db_QuangCao] ([QuangCaoID], [TenQC], [LoaiQC], [AnhQC], [LienKet], [ThuTuQC], [NhomQuangCaoID]) VALUES (4, N'Banner web', N'', N'', N'                                                                                                    ', 2, 2)
INSERT [dbo].[db_QuangCao] ([QuangCaoID], [TenQC], [LoaiQC], [AnhQC], [LienKet], [ThuTuQC], [NhomQuangCaoID]) VALUES (5, N'Logo web', N'', N'', N'                                                                                                    ', 1, 1)
SET IDENTITY_INSERT [dbo].[db_QuangCao] OFF
GO
SET IDENTITY_INSERT [dbo].[db_QuyenDangNhap] ON 

INSERT [dbo].[db_QuyenDangNhap] ([MaQuyen], [TenQuyen]) VALUES (1, N'quan tri')
SET IDENTITY_INSERT [dbo].[db_QuyenDangNhap] OFF
GO
SET IDENTITY_INSERT [dbo].[db_SanPham] ON 

INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (12, N'Quần âu nam dáng cộc ZZN', 5, 3, 1, N'images (5).jfif', 10, 199000, N'', CAST(N'2020-10-08T08:42:44.000' AS DateTime), CAST(N'2020-10-08T08:42:44.000' AS DateTime), 7, 4)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (13, N'Áo thun body nam', 5, 3, 1, N'Áo thun nam.jpg', 5, 99000, N'', CAST(N'2020-10-08T09:29:19.000' AS DateTime), CAST(N'2020-10-08T09:29:19.000' AS DateTime), 9, 4)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (15, N'Áo sơ mi nam dáng rộng', 7, 4, 1, N'download (3).jfif', 5, 150000, N'', CAST(N'2020-10-08T09:31:33.000' AS DateTime), CAST(N'2020-10-08T09:31:33.000' AS DateTime), 10, 4)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (16, N'Quần tây nam ống côn dáng body Style ahsgd ahggs\ sss', 1, 2, 1, N'images (3).jfif', 5, 399000, N'', CAST(N'2020-10-12T20:47:05.000' AS DateTime), CAST(N'2020-10-12T20:47:05.000' AS DateTime), 7, 4)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (17, N'Quần tây nam ống côn dáng body', 6, 3, 1, N'images.jfif', 10, 250000, N'', CAST(N'2020-10-13T00:38:38.000' AS DateTime), CAST(N'2020-10-13T00:38:38.000' AS DateTime), 7, 4)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (19, N'Quần âu nam Hàn Quốc dáng ôm công sở', 8, 4, 1, N'quan-tay-nam-au.jpg', 5, 250000, N'<span style="color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14.875px; white-space: pre-wrap;">QUẦN &Acirc;U TCE Shop chuy&ecirc;n cung cấp c&aacute;c mặt h&agrave;ng thời trang nam: quần t&acirc;y, &aacute;o sơ mi, &aacute;o thun, quần short.. chất liệu cao cấp, gi&aacute; th&agrave;nh hợp l&yacute;, sỉ lẻ gi&aacute; tốt. L&agrave; địa chỉ mua h&agrave;ng đ&aacute;ng tin cậy của bạn ! - Quần &acirc;u nam kiểu d&aacute;ng h&agrave;n quốc - M&agrave;u: Ghi s&aacute;ng, Đen, xanh đen - Ống: C&ocirc;n. - Chất vải: cotton co gi&atilde;n tốt, kh&ocirc;ng bay m&agrave;u, giữ d&aacute;ng quần kh&ocirc;ng bị bai. 👖Xin qu&yacute; kh&aacute;ch lưu &yacute;: Size sản phẩm qu&yacute; kh&aacute;ch tham khảo trong ảnh sản phẩm hoặc Size 28: 45-48kg 1m45- 1m55 Size 29: 49-55kg 1m5-1m65 Size 30: 56-60kg 1m6-1m7 Size 31: 60-64kg 1m65-1m72 Size 32: 65-70kg 1m69-1m75 Size 33: 72-74kg 1m72-1m76 Size 34: 74-77kg 1m74-1m79 ---------------------------------------- Sản phẩm v&agrave; Ch&iacute;nh s&aacute;ch b&aacute;n h&agrave;ng: 👍 Cam kết h&agrave;ng chất lượng tốt 👍 Nếu h&agrave;ng c&oacute; lỗi đừng vội cho 1* m&agrave; h&atilde;y inbox shop để đc giải quyết thoả đ&aacute;ng.</span>', CAST(N'2020-10-14T20:54:59.000' AS DateTime), CAST(N'2020-10-14T20:54:59.000' AS DateTime), 7, 5)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (20, N'Quần Âu Nam Ikemen Côn Ống Dáng Ôm', 11, 2, 1, N'gx.jpg', 10, 150000, N'1. GIỚI THIỆU SẢN PHẨM Quần &Acirc;u Nam ống c&ocirc;n , chất vải tuyết mưa cao cấp ch&iacute;nh l&agrave; gợi &yacute; tuyệt vời cho nam giới mỗi khi lựa chọn trang phục mỗi ng&agrave;y. Với những mẫu quần &acirc;u nam thiết kế đơn giản v&agrave; to&aacute;t l&ecirc;n vẻ lịch l&atilde;m tinh tế, mang đến phong c&aacute;ch thời trang trẻ trung, năng động chắc chắn sẽ l&agrave; lựa chọn ho&agrave;n hảo cho ch&agrave;ng trai hiện đại, nam t&iacute;nh. Những chiếc quần &acirc;u nam ống c&ocirc;n , d&aacute;ng &ocirc;m body d&ugrave; kết hợp với &aacute;o sơ mi, &aacute;o ph&ocirc;ng đều NỔI BẬT, THOẢI M&Aacute;I v&agrave; PHONG C&Aacute;CH. Với form d&aacute;ng vừa vặn c&aacute;c ch&agrave;ng c&oacute; thể tự tin khoe d&aacute;ng cực chuẩn của m&igrave;nh. H&atilde;y bổ sung ngay v&agrave;o tủ đồ item n&agrave;y để diện thật chất nh&eacute;! 2. TH&Ocirc;NG TIN CHI TIẾT - M&agrave;u sắc : ĐEN , XANH THAN , X&Aacute;M ĐẬM , GHI S&Aacute;NG - Chất liệu : Tuyết mưa cao cấp , thấm h&uacute;t mồ h&ocirc;i - Chất vải sờ mịn kh&ocirc;ng bai, kh&ocirc;ng nhăn, kh&ocirc;ng x&ugrave; - Quy c&aacute;ch, ti&ecirc;u chuẩn đường may tinh tế, tỉ mỉ trong từng chi tiết - Kiểu d&aacute;ng: Thiết kế đơn giản, dễ mặc, dễ phối đồ - Form body H&agrave;n Quốc mang lại phong c&aacute;ch trẻ trung, lịch l&atilde;m - Chất lượng sản phẩm tốt, gi&aacute; cả hợp l&yacute; 3. CH&Iacute;NH S&Aacute;CH B&Aacute;N H&Agrave;NG: - Cam kết chất lượng v&agrave; mẫu m&atilde; sản phẩm giống với h&igrave;nh ảnh. - Ho&agrave;n tiền nếu sản phẩm kh&ocirc;ng giống với m&ocirc; tả. - Ngo&agrave;i ra IKEMEN SHOP tặng voucher hoặc ho&agrave;n xu cho c&aacute;c đơn h&agrave;ng tương ứng đủ điều kiện. - Rất mong nhận được &yacute; kiến đ&oacute;ng g&oacute;p của Qu&yacute; kh&aacute;ch h&agrave;ng để ch&uacute;ng t&ocirc;i cải thiện chất lượng dịch vụ tốt hơn. 4. HƯỚNG DẪN C&Aacute;CH ĐẶT H&Agrave;NG - Bước 1: C&aacute;ch chọn size, shop c&oacute; bảng size mẫu. Bạn N&Ecirc;N INBOX, cung cấp chiều cao, c&acirc;n nặng để SHOP TƯ VẤN SIZE - Bước 2: C&aacute;ch đặt h&agrave;ng: Nếu bạn muốn mua 2 sản phẩm kh&aacute;c nhau hoặc 2 size kh&aacute;c nhau, để được freeship - Bạn chọn từng sản phẩm rồi th&ecirc;m v&agrave;o giỏ h&agrave;ng - Khi giỏ h&agrave;ng đ&atilde; c&oacute; đầy đủ c&aacute;c sản phẩm cần mua, bạn mới tiến h&agrave;nh ấn n&uacute;t &ldquo; Thanh to&aacute;n&rdquo; - Shop lu&ocirc;n sẵn s&agrave;ng trả lời inbox để tư vấn 5. HƯỚNG DẪN CHỌN SIZE QUẦN &Acirc;U : (Size quần &acirc;u nam phụ thuộc v&agrave;o chiều cao c&acirc;n nặng v&agrave; c&aacute;c yếu tố kh&aacute;c như v&ograve;ng bụng,đ&ugrave;i, h&ocirc;ng, bắp ch&acirc;n,... Do đ&oacute; qu&yacute; kh&aacute;ch c&ograve;n ph&acirc;n v&acirc;n xin vui l&ograve;ng nhắn tin trực tiếp để được hỗ trợ tốt nhất) - Size 28 : C&acirc;n nặng 45-51kg, cao 1m50 - 1m60 - Size 29 : C&acirc;n nặng 51-55kg, cao 1m60 - 1m68 - Size 30 : C&acirc;n nặng 55-59kg, cao 1m60 - 1m72 - Size 31 : C&acirc;n nặng 60-65kg, cao 1m70 - 1m75 - Size 32 : C&acirc;n nặng 65-69kg, cao 1m70 - 1m76 - Size 33 : C&acirc;n nặng 70-73kg, cao 1m72 - 1m76 - Size 34 : C&acirc;n nặng 73-79kg, cao 1m75- 1m80 ', CAST(N'2020-10-14T21:06:45.000' AS DateTime), CAST(N'2020-10-14T21:06:45.000' AS DateTime), 7, 4)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (21, N'Quần âu nam dáng slimfit', 9, 4, 1, N'ac.png', 5, 180000, N'1. GIỚI THIỆU SẢN PHẨM<br />
&nbsp; &nbsp; &nbsp;Quần &Acirc;u Nam ống c&ocirc;n , chất vải tuyết mưa cao cấp ch&iacute;nh l&agrave; gợi &yacute; tuyệt vời cho nam giới mỗi khi lựa chọn trang phục mỗi ng&agrave;y. Với những mẫu quần &acirc;u nam thiết kế đơn giản v&agrave; to&aacute;t l&ecirc;n vẻ lịch l&atilde;m tinh tế, mang đến phong c&aacute;ch thời trang trẻ trung, năng động chắc chắn sẽ l&agrave; lựa chọn ho&agrave;n hảo cho ch&agrave;ng trai hiện đại, nam t&iacute;nh. Những chiếc quần &acirc;u nam ống c&ocirc;n , d&aacute;ng &ocirc;m body d&ugrave; kết hợp với &aacute;o sơ mi, &aacute;o ph&ocirc;ng đều NỔI BẬT, THOẢI M&Aacute;I v&agrave; PHONG C&Aacute;CH. Với form d&aacute;ng vừa vặn c&aacute;c ch&agrave;ng c&oacute; thể tự tin khoe d&aacute;ng cực chuẩn của m&igrave;nh. H&atilde;y bổ sung ngay v&agrave;o tủ đồ item n&agrave;y để diện thật chất nh&eacute;!<br />
2. TH&Ocirc;NG TIN CHI TIẾT<br />
- M&agrave;u sắc : ĐEN , XANH THAN , X&Aacute;M ĐẬM , GHI S&Aacute;NG<br />
- Chất liệu : Tuyết mưa cao cấp , thấm h&uacute;t mồ h&ocirc;i<br />
- Chất vải sờ mịn kh&ocirc;ng bai, kh&ocirc;ng nhăn, kh&ocirc;ng x&ugrave;<br />
- Quy c&aacute;ch, ti&ecirc;u chuẩn đường may tinh tế, tỉ mỉ trong từng chi tiết<br />
- Kiểu d&aacute;ng: Thiết kế đơn giản, dễ mặc, dễ phối đồ<br />
- Form body H&agrave;n Quốc mang lại phong c&aacute;ch trẻ trung, lịch l&atilde;m<br />
- Chất lượng sản phẩm tốt, gi&aacute; cả hợp l&yacute; 3. CH&Iacute;NH S&Aacute;CH B&Aacute;N H&Agrave;NG:<br />
- Cam kết chất lượng v&agrave; mẫu m&atilde; sản phẩm giống với h&igrave;nh ảnh.<br />
- Ho&agrave;n tiền nếu sản phẩm kh&ocirc;ng giống với m&ocirc; tả.<br />
- Ngo&agrave;i ra IKEMEN SHOP tặng voucher hoặc ho&agrave;n xu cho c&aacute;c đơn h&agrave;ng tương ứng đủ điều kiện.<br />
- Rất mong nhận được &yacute; kiến đ&oacute;ng g&oacute;p của Qu&yacute; kh&aacute;ch h&agrave;ng để ch&uacute;ng t&ocirc;i cải thiện chất lượng dịch vụ tốt hơn.<br />
4. HƯỚNG DẪN C&Aacute;CH ĐẶT H&Agrave;NG<br />
- Bước 1: C&aacute;ch chọn size, shop c&oacute; bảng size mẫu. Bạn N&Ecirc;N INBOX, cung cấp chiều cao, c&acirc;n nặng để SHOP TƯ VẤN SIZE<br />
- Bước 2: C&aacute;ch đặt h&agrave;ng: Nếu bạn muốn mua 2 sản phẩm kh&aacute;c nhau hoặc 2 size kh&aacute;c nhau, để được freeship<br />
- Bạn chọn từng sản phẩm rồi th&ecirc;m v&agrave;o giỏ h&agrave;ng<br />
- Khi giỏ h&agrave;ng đ&atilde; c&oacute; đầy đủ c&aacute;c sản phẩm cần mua, bạn mới tiến h&agrave;nh ấn n&uacute;t &ldquo; Thanh to&aacute;n&rdquo;<br />
- Shop lu&ocirc;n sẵn s&agrave;ng trả lời inbox để tư vấn<br />
5. HƯỚNG DẪN CHỌN SIZE<br />
QUẦN &Acirc;U : (Size quần &acirc;u nam phụ thuộc v&agrave;o chiều cao c&acirc;n nặng v&agrave; c&aacute;c yếu tố kh&aacute;c như v&ograve;ng bụng,đ&ugrave;i, h&ocirc;ng, bắp ch&acirc;n,... Do đ&oacute; qu&yacute; kh&aacute;ch c&ograve;n ph&acirc;n v&acirc;n xin vui l&ograve;ng nhắn tin trực tiếp để được hỗ trợ tốt nhất)<br />
- Size 28 : C&acirc;n nặng 45-51kg, cao 1m50 - 1m60<br />
- Size 29 : C&acirc;n nặng 51-55kg, cao 1m60 - 1m68<br />
- Size 30 : C&acirc;n nặng 55-59kg, cao 1m60 - 1m72<br />
- Size 31 : C&acirc;n nặng 60-65kg, cao 1m70 - 1m75<br />
- Size 32 : C&acirc;n nặng 65-69kg, cao 1m70 - 1m76<br />
- Size 33 : C&acirc;n nặng 67-72kg, cao 1m72 - 1m76<br />
- Size 34 : C&acirc;n nặng 73-79kg, cao 1m75- 1m80 ', CAST(N'2020-10-14T21:11:40.000' AS DateTime), CAST(N'2020-10-14T21:11:40.000' AS DateTime), 7, 5)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (22, N'Áo sơ mi trắng nam', 9, 2, 1, N'ao-so-mi-nam-mau-trang-cach-dieu_ekc-a4345.jpg', 5, 145000, N'<span style="color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14.875px; white-space: pre-wrap;">🖍 Xin qu&yacute; kh&aacute;ch lưu &yacute;: - Shop ch&uacute;ng t&ocirc;i b&aacute;n ở nhiều k&ecirc;nh kh&aacute;c nhau n&ecirc;n c&oacute; nhiều m&aacute;c kh&aacute;c nhau được gắn v&agrave;o &aacute;o tuy nhi&ecirc;n &aacute;o th&igrave; vẫn chỉ l&agrave; 1 loại th&ocirc;i nh&eacute;, c&aacute;c bạn cứ y&ecirc;n t&acirc;m. - &Aacute;o sơ mi của Shop ch&uacute;ng t&ocirc;i tất cả đều kh&ocirc;ng c&oacute; t&uacute;i nh&eacute; c&aacute;c bạn, bạn n&agrave;o thấy ảnh c&oacute; t&uacute;i thực ra l&agrave; tay &aacute;o gấp ra ph&iacute;a trước th&ocirc;i ^^ 👔 Đ&atilde; kh&ocirc;ng l&agrave;m th&igrave; th&ocirc;i, nhưng đ&atilde; l&agrave;m th&igrave; phải l&agrave;m tốt nhất! Shop xin mang đến d&ograve;ng sơ mi trắng cho c&aacute;c qu&yacute; &ocirc;ng trẻ tuổi. Lịch l&atilde;m v&agrave; sang trọng. 👔 C&aacute;c bạn h&atilde;y ch&uacute; &yacute; đường may tr&ecirc;n cổ tay v&agrave; phần viền trước ngực của &aacute;o, rất thẳng v&agrave; đều, kh&ocirc;ng bị lỗi đ&egrave; chỉ hay xi&ecirc;u vẹo tr&ecirc;n đường may. Đ&acirc;y ch&iacute;nh l&agrave; c&aacute;ch nhận biết h&agrave;ng được may rất cẩn thận v&agrave; cũng l&agrave; điều d&ugrave;ng để ph&acirc;n biệt với h&agrave;ng sơ mi trắng k&eacute;m chất lượng, h&agrave;ng chợ. - M&agrave;u: trắng sữa (trắng hơi v&agrave;ng, trắng ng&agrave;) v&agrave; trắng s&aacute;ng ( trắng ch&uacute; rể, trắng tinh), Xanh nhạt, Xanh đậm - Chất liệu : Nến cottong cao cấp, sờ cực sang, xịn, mịn m&aacute;t Kiểu d&aacute;ng: Body, Slimfit - Gi&aacute;: #145k gi&aacute; gốc tại xưởng lu&ocirc;n ạ. - Kết hợp với m&agrave;u quần: Tất cả c&aacute;c m&agrave;u quần trừ quần trắng. Bảng tham khảo size &aacute;o tại shop: Size M: 43-51kg Size L: 52-58kg Size XL: 59-65kg Size XXL: 66-72kg</span>', CAST(N'2020-10-14T21:21:44.000' AS DateTime), CAST(N'2020-10-14T21:21:44.000' AS DateTime), 10, 4)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (23, N'Áo sơ mi nam dài tay kiểu dáng Hàn Quốc , vải lụa thái mềm mịn , chống nhăn cao cấp', 15, 3, 6, N'f0607492dd6c06f7e5b31adc175603ba.jpg', 5, 99000, N'<span style="color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14.875px; white-space: pre-wrap;">&Aacute;o sơ mi nam d&agrave;i tay, vải đẹp cao cấp loại 1 tr&ecirc;n thị trường &Aacute;o sơ mi nam cổ bẻ d&agrave;i tay (sơ mi nam) được thiết kế với form d&aacute;ng trẻ trung với form &aacute;o &ocirc;m, rất chuẩn như h&igrave;nh. Ch&uacute;ng t&ocirc;i hiện nay cung cấp &aacute;o sơ mi nam với gi&aacute; b&aacute;n lẻ tốt nhất tr&ecirc;n thị trường. --Gi&aacute; cạnh tranh nhất do ch&iacute;nh nh&agrave; m&aacute;y sản xuất với số lượng lớn. --Ch&uacute;ng t&ocirc;i kh&ocirc;ng n&oacute;i sản phẩm của m&igrave;nh c&oacute; chất lượng cao nhưng phải khẳng định chất lượng sản phẩm vượt trội so với gi&aacute; tiền. --Uy t&iacute;n b&aacute;n h&agrave;ng được đặt l&ecirc;n h&agrave;ng đầu, kh&ocirc;ng kinh doanh chộp giật. --V&igrave; sản phẩm được sản xuất với số lượng lớn để c&oacute; gi&aacute; cạnh tranh n&ecirc;n kh&ocirc;ng thể tr&aacute;nh được sai s&oacute;t. Nếu qu&yacute; kh&aacute;ch h&agrave;ng kh&ocirc;ng h&agrave;i l&ograve;ng ch&uacute;ng t&ocirc;i sẵn s&agrave;ng hỗ trợ đổi trả. --Rất mong nhận được &yacute; kiến đ&oacute;ng g&oacute;p của Qu&yacute; kh&aacute;ch h&agrave;ng để ch&uacute;ng t&ocirc;i cải thiện chất lượng dịch vụ tốt hơn. Hướng dẫn chọn size &aacute;o sơ mi nam: - Qu&yacute; kh&aacute;ch kiểm tra số đo chiều cao c&acirc;n nặng theo bảng size ở phần h&igrave;nh ảnh ph&iacute;a tr&ecirc;n hoặc li&ecirc;n hệ ch&aacute;t với shop để được tư vấn r&otilde; r&agrave;ng hơn nha. Th&ocirc;ng tin chi tiết sản phẩm: &Aacute;o sơ mi nam cổ bẻ d&agrave;i tay --Chất vải sờ mịn kh&ocirc;ng bai, kh&ocirc;ng nhăn, kh&ocirc;ng x&ugrave;. --Mếch cổ v&agrave; tay l&agrave;m bằng chất liệu cao cấp, kh&ocirc;ng sợ bong tr&oacute;c. --Fom Body cực chuẩn, &ocirc;m trọn bờ vai mặc cực trẻ trung v&agrave; phong c&aacute;ch, ph&ugrave; hợp mọi ho&agrave;n cảnh kể cả đi chơi v&agrave; đi l&agrave;m. &Aacute;o sơ mi nam d&agrave;i tay c&oacute; sẵn đủ c&aacute;c size : M, L, XL, XXL, 3XL NHẬN ĐẶT H&Agrave;NG MUA BU&Ocirc;N/MUA SỈ SỐ LƯỢNG LỚN C&Aacute;C LOẠI &Aacute;O SƠ MI NAM, QUẦN T&Acirc;Y &Acirc;U NAM, &Aacute;O THUN NAM CAO C&Acirc;P</span><span style="color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14.875px; white-space: pre-wrap;">&Aacute;o sơ mi nam d&agrave;i tay, vải đẹp cao cấp loại 1 tr&ecirc;n thị trường &Aacute;o sơ mi nam cổ bẻ d&agrave;i tay (sơ mi nam) được thiết kế với form d&aacute;ng trẻ trung với form &aacute;o &ocirc;m, rất chuẩn như h&igrave;nh. Ch&uacute;ng t&ocirc;i hiện nay cung cấp &aacute;o sơ mi nam với gi&aacute; b&aacute;n lẻ tốt nhất tr&ecirc;n thị trường. --Gi&aacute; cạnh tranh nhất do ch&iacute;nh nh&agrave; m&aacute;y sản xuất với số lượng lớn. --Ch&uacute;ng t&ocirc;i kh&ocirc;ng n&oacute;i sản phẩm của m&igrave;nh c&oacute; chất lượng cao nhưng phải khẳng định chất lượng sản phẩm vượt trội so với gi&aacute; tiền. --Uy t&iacute;n b&aacute;n h&agrave;ng được đặt l&ecirc;n h&agrave;ng đầu, kh&ocirc;ng kinh doanh chộp giật. --V&igrave; sản phẩm được sản xuất với số lượng lớn để c&oacute; gi&aacute; cạnh tranh n&ecirc;n kh&ocirc;ng thể tr&aacute;nh được sai s&oacute;t. Nếu qu&yacute; kh&aacute;ch h&agrave;ng kh&ocirc;ng h&agrave;i l&ograve;ng ch&uacute;ng t&ocirc;i sẵn s&agrave;ng hỗ trợ đổi trả. --Rất mong nhận được &yacute; kiến đ&oacute;ng g&oacute;p của Qu&yacute; kh&aacute;ch h&agrave;ng để ch&uacute;ng t&ocirc;i cải thiện chất lượng dịch vụ tốt hơn. Hướng dẫn chọn size &aacute;o sơ mi nam: - Qu&yacute; kh&aacute;ch kiểm tra số đo chiều cao c&acirc;n nặng theo bảng size ở phần h&igrave;nh ảnh ph&iacute;a tr&ecirc;n hoặc li&ecirc;n hệ ch&aacute;t với shop để được tư vấn r&otilde; r&agrave;ng hơn nha. Th&ocirc;ng tin chi tiết sản phẩm: &Aacute;o sơ mi nam cổ bẻ d&agrave;i tay --Chất vải sờ mịn kh&ocirc;ng bai, kh&ocirc;ng nhăn, kh&ocirc;ng x&ugrave;. --Mếch cổ v&agrave; tay l&agrave;m bằng chất liệu cao cấp, kh&ocirc;ng sợ bong tr&oacute;c. --Fom Body cực chuẩn, &ocirc;m trọn bờ vai mặc cực trẻ trung v&agrave; phong c&aacute;ch, ph&ugrave; hợp mọi ho&agrave;n cảnh kể cả đi chơi v&agrave; đi l&agrave;m. &Aacute;o sơ mi nam d&agrave;i tay c&oacute; sẵn đủ c&aacute;c size : M, L, XL, XXL, 3XL</span><span style="color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14.875px; white-space: pre-wrap;">&Aacute;o sơ mi nam d&agrave;i tay, vải đẹp cao cấp loại 1 tr&ecirc;n thị trường &Aacute;o sơ mi nam cổ bẻ d&agrave;i tay (sơ mi nam) được thiết kế với form d&aacute;ng trẻ trung với form &aacute;o &ocirc;m, rất chuẩn như h&igrave;nh. Ch&uacute;ng t&ocirc;i hiện nay cung cấp &aacute;o sơ mi nam với gi&aacute; b&aacute;n lẻ tốt nhất tr&ecirc;n thị trường. --Gi&aacute; cạnh tranh nhất do ch&iacute;nh nh&agrave; m&aacute;y sản xuất với số lượng lớn. --Ch&uacute;ng t&ocirc;i kh&ocirc;ng n&oacute;i sản phẩm của m&igrave;nh c&oacute; chất lượng cao nhưng phải khẳng định chất lượng sản phẩm vượt trội so với gi&aacute; tiền. --Uy t&iacute;n b&aacute;n h&agrave;ng được đặt l&ecirc;n h&agrave;ng đầu, kh&ocirc;ng kinh doanh chộp giật. --V&igrave; sản phẩm được sản xuất với số lượng lớn để c&oacute; gi&aacute; cạnh tranh n&ecirc;n kh&ocirc;ng thể tr&aacute;nh được sai s&oacute;t. Nếu qu&yacute; kh&aacute;ch h&agrave;ng kh&ocirc;ng h&agrave;i l&ograve;ng ch&uacute;ng t&ocirc;i sẵn s&agrave;ng hỗ trợ đổi trả. --Rất mong nhận được &yacute; kiến đ&oacute;ng g&oacute;p của Qu&yacute; kh&aacute;ch h&agrave;ng để ch&uacute;ng t&ocirc;i cải thiện chất lượng dịch vụ tốt hơn. Hướng dẫn chọn size &aacute;o sơ mi nam: - Qu&yacute; kh&aacute;ch kiểm tra số đo chiều cao c&acirc;n nặng theo bảng size ở phần h&igrave;nh ảnh ph&iacute;a tr&ecirc;n hoặc li&ecirc;n hệ ch&aacute;t với shop để được tư vấn r&otilde; r&agrave;ng hơn nha. Th&ocirc;ng tin chi tiết sản phẩm: &Aacute;o sơ mi nam cổ bẻ d&agrave;i tay --Chất vải sờ mịn kh&ocirc;ng bai, kh&ocirc;ng nhăn, kh&ocirc;ng x&ugrave;. --Mếch cổ v&agrave; tay l&agrave;m bằng chất liệu cao cấp, kh&ocirc;ng sợ bong tr&oacute;c. --Fom Body cực chuẩn, &ocirc;m trọn bờ vai mặc cực trẻ trung v&agrave; phong c&aacute;ch, ph&ugrave; hợp mọi ho&agrave;n cảnh kể cả đi chơi v&agrave; đi l&agrave;m. &Aacute;o sơ mi nam d&agrave;i tay c&oacute; sẵn đủ c&aacute;c size : M, L, XL, XXL, 3XL</span><span style="color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14.875px; white-space: pre-wrap;">&Aacute;o sơ mi nam d&agrave;i tay, vải đẹp cao cấp loại 1 tr&ecirc;n thị trường &Aacute;o sơ mi nam cổ bẻ d&agrave;i tay (sơ mi nam) được thiết kế với form d&aacute;ng trẻ trung với form &aacute;o &ocirc;m, rất chuẩn như h&igrave;nh. Ch&uacute;ng t&ocirc;i hiện nay cung cấp &aacute;o sơ mi nam với gi&aacute; b&aacute;n lẻ tốt nhất tr&ecirc;n thị trường. --Gi&aacute; cạnh tranh nhất do ch&iacute;nh nh&agrave; m&aacute;y sản xuất với số lượng lớn. --Ch&uacute;ng t&ocirc;i kh&ocirc;ng n&oacute;i sản phẩm của m&igrave;nh c&oacute; chất lượng cao nhưng phải khẳng định chất lượng sản phẩm vượt trội so với gi&aacute; tiền. --Uy t&iacute;n b&aacute;n h&agrave;ng được đặt l&ecirc;n h&agrave;ng đầu, kh&ocirc;ng kinh doanh chộp giật. --V&igrave; sản phẩm được sản xuất với số lượng lớn để c&oacute; gi&aacute; cạnh tranh n&ecirc;n kh&ocirc;ng thể tr&aacute;nh được sai s&oacute;t. Nếu qu&yacute; kh&aacute;ch h&agrave;ng kh&ocirc;ng h&agrave;i l&ograve;ng ch&uacute;ng t&ocirc;i sẵn s&agrave;ng hỗ trợ đổi trả. --Rất mong nhận được &yacute; kiến đ&oacute;ng g&oacute;p của Qu&yacute; kh&aacute;ch h&agrave;ng để ch&uacute;ng t&ocirc;i cải thiện chất lượng dịch vụ tốt hơn. Hướng dẫn chọn size &aacute;o sơ mi nam: - Qu&yacute; kh&aacute;ch kiểm tra số đo chiều cao c&acirc;n nặng theo bảng size ở phần h&igrave;nh ảnh ph&iacute;a tr&ecirc;n hoặc li&ecirc;n hệ ch&aacute;t với shop để được tư vấn r&otilde; r&agrave;ng hơn nha. Th&ocirc;ng tin chi tiết sản phẩm: &Aacute;o sơ mi nam cổ bẻ d&agrave;i tay --Chất vải sờ mịn kh&ocirc;ng bai, kh&ocirc;ng nhăn, kh&ocirc;ng x&ugrave;. --Mếch cổ v&agrave; tay l&agrave;m bằng chất liệu cao cấp, kh&ocirc;ng sợ bong tr&oacute;c. --Fom Body cực chuẩn, &ocirc;m trọn bờ vai mặc cực trẻ trung v&agrave; phong c&aacute;ch, ph&ugrave; hợp mọi ho&agrave;n cảnh kể cả đi chơi v&agrave; đi l&agrave;m. &Aacute;o sơ mi nam d&agrave;i tay c&oacute; sẵn đủ c&aacute;c size : M, L, XL, XXL, 3XL</span><span style="color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14.875px; white-space: pre-wrap;">&Aacute;o sơ mi nam d&agrave;i tay, vải đẹp cao cấp loại 1 tr&ecirc;n thị trường &Aacute;o sơ mi nam cổ bẻ d&agrave;i tay (sơ mi nam) được thiết kế với form d&aacute;ng trẻ trung với form &aacute;o &ocirc;m, rất chuẩn như h&igrave;nh. Ch&uacute;ng t&ocirc;i hiện nay cung cấp &aacute;o sơ mi nam với gi&aacute; b&aacute;n lẻ tốt nhất tr&ecirc;n thị trường. --Gi&aacute; cạnh tranh nhất do ch&iacute;nh nh&agrave; m&aacute;y sản xuất với số lượng lớn. --Ch&uacute;ng t&ocirc;i kh&ocirc;ng n&oacute;i sản phẩm của m&igrave;nh c&oacute; chất lượng cao nhưng phải khẳng định chất lượng sản phẩm vượt trội so với gi&aacute; tiền. --Uy t&iacute;n b&aacute;n h&agrave;ng được đặt l&ecirc;n h&agrave;ng đầu, kh&ocirc;ng kinh doanh chộp giật. --V&igrave; sản phẩm được sản xuất với số lượng lớn để c&oacute; gi&aacute; cạnh tranh n&ecirc;n kh&ocirc;ng thể tr&aacute;nh được sai s&oacute;t. Nếu qu&yacute; kh&aacute;ch h&agrave;ng kh&ocirc;ng h&agrave;i l&ograve;ng ch&uacute;ng t&ocirc;i sẵn s&agrave;ng hỗ trợ đổi trả. --Rất mong nhận được &yacute; kiến đ&oacute;ng g&oacute;p của Qu&yacute; kh&aacute;ch h&agrave;ng để ch&uacute;ng t&ocirc;i cải thiện chất lượng dịch vụ tốt hơn. Hướng dẫn chọn size &aacute;o sơ mi nam: - Qu&yacute; kh&aacute;ch kiểm tra số đo chiều cao c&acirc;n nặng theo bảng size ở phần h&igrave;nh ảnh ph&iacute;a tr&ecirc;n hoặc li&ecirc;n hệ ch&aacute;t với shop để được tư vấn r&otilde; r&agrave;ng hơn nha. Th&ocirc;ng tin chi tiết sản phẩm: &Aacute;o sơ mi nam cổ bẻ d&agrave;i tay --Chất vải sờ mịn kh&ocirc;ng bai, kh&ocirc;ng nhăn, kh&ocirc;ng x&ugrave;. --Mếch cổ v&agrave; tay l&agrave;m bằng chất liệu cao cấp, kh&ocirc;ng sợ bong tr&oacute;c. --Fom Body cực chuẩn, &ocirc;m trọn bờ vai mặc cực trẻ trung v&agrave; phong c&aacute;ch, ph&ugrave; hợp mọi ho&agrave;n cảnh kể cả đi chơi v&agrave; đi l&agrave;m. &Aacute;o sơ mi nam d&agrave;i tay c&oacute; sẵn đủ c&aacute;c size : M, L, XL, XXL, 3XL</span><span style="color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14.875px; white-space: pre-wrap;">&Aacute;o sơ mi nam d&agrave;i tay, vải đẹp cao cấp loại 1 tr&ecirc;n thị trường &Aacute;o sơ mi nam cổ bẻ d&agrave;i tay (sơ mi nam) được thiết kế với form d&aacute;ng trẻ trung với form &aacute;o &ocirc;m, rất chuẩn như h&igrave;nh. Ch&uacute;ng t&ocirc;i hiện nay cung cấp &aacute;o sơ mi nam với gi&aacute; b&aacute;n lẻ tốt nhất tr&ecirc;n thị trường. --Gi&aacute; cạnh tranh nhất do ch&iacute;nh nh&agrave; m&aacute;y sản xuất với số lượng lớn. --Ch&uacute;ng t&ocirc;i kh&ocirc;ng n&oacute;i sản phẩm của m&igrave;nh c&oacute; chất lượng cao nhưng phải khẳng định chất lượng sản phẩm vượt trội so với gi&aacute; tiền. --Uy t&iacute;n b&aacute;n h&agrave;ng được đặt l&ecirc;n h&agrave;ng đầu, kh&ocirc;ng kinh doanh chộp giật. --V&igrave; sản phẩm được sản xuất với số lượng lớn để c&oacute; gi&aacute; cạnh tranh n&ecirc;n kh&ocirc;ng thể tr&aacute;nh được sai s&oacute;t. Nếu qu&yacute; kh&aacute;ch h&agrave;ng kh&ocirc;ng h&agrave;i l&ograve;ng ch&uacute;ng t&ocirc;i sẵn s&agrave;ng hỗ trợ đổi trả. --Rất mong nhận được &yacute; kiến đ&oacute;ng g&oacute;p của Qu&yacute; kh&aacute;ch h&agrave;ng để ch&uacute;ng t&ocirc;i cải thiện chất lượng dịch vụ tốt hơn. Hướng dẫn chọn size &aacute;o sơ mi nam: - Qu&yacute; kh&aacute;ch kiểm tra số đo chiều cao c&acirc;n nặng theo bảng size ở phần h&igrave;nh ảnh ph&iacute;a tr&ecirc;n hoặc li&ecirc;n hệ ch&aacute;t với shop để được tư vấn r&otilde; r&agrave;ng hơn nha. Th&ocirc;ng tin chi tiết sản phẩm: &Aacute;o sơ mi nam cổ bẻ d&agrave;i tay --Chất vải sờ mịn kh&ocirc;ng bai, kh&ocirc;ng nhăn, kh&ocirc;ng x&ugrave;. --Mếch cổ v&agrave; tay l&agrave;m bằng chất liệu cao cấp, kh&ocirc;ng sợ bong tr&oacute;c. --Fom Body cực chuẩn, &ocirc;m trọn bờ vai mặc cực trẻ trung v&agrave; phong c&aacute;ch, ph&ugrave; hợp mọi ho&agrave;n cảnh kể cả đi chơi v&agrave; đi l&agrave;m. &Aacute;o sơ mi nam d&agrave;i tay c&oacute; sẵn đủ c&aacute;c size : M, L, XL, XXL, 3XL</span><span style="color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14.875px; white-space: pre-wrap;">&Aacute;o sơ mi nam d&agrave;i</span><span style="color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14.875px; white-space: pre-wrap;">&Aacute;o sơ mi nam d&agrave;i tay, vải đẹp cao cấp loại 1 tr&ecirc;n thị trường &Aacute;o sơ mi nam cổ bẻ d&agrave;i tay (sơ mi nam) được thiết kế với form d&aacute;ng trẻ trung với form &aacute;o &ocirc;m, rất chuẩn như h&igrave;nh. Ch&uacute;ng t&ocirc;i hiện nay cung cấp &aacute;o sơ mi nam với gi&aacute; b&aacute;n lẻ tốt nhất tr&ecirc;n thị trường. --Gi&aacute; cạnh tranh nhất do ch&iacute;nh nh&agrave; m&aacute;y sản xuất với số lượng lớn. --Ch&uacute;ng t&ocirc;i kh&ocirc;ng n&oacute;i sản phẩm của m&igrave;nh c&oacute; chất lượng cao nhưng phải khẳng định chất lượng sản phẩm vượt trội so với gi&aacute; tiền. --Uy t&iacute;n b&aacute;n h&agrave;ng được đặt l&ecirc;n h&agrave;ng đầu, kh&ocirc;ng kinh doanh chộp giật. --V&igrave; sản phẩm được sản xuất với số lượng lớn để c&oacute; gi&aacute; cạnh tranh n&ecirc;n kh&ocirc;ng thể tr&aacute;nh được sai s&oacute;t. Nếu qu&yacute; kh&aacute;ch h&agrave;ng kh&ocirc;ng h&agrave;i l&ograve;ng ch&uacute;ng t&ocirc;i sẵn s&agrave;ng hỗ trợ đổi trả. --Rất mong nhận được &yacute; kiến đ&oacute;ng g&oacute;p của Qu&yacute; kh&aacute;ch h&agrave;ng để ch&uacute;ng t&ocirc;i cải thiện chất lượng dịch vụ tốt hơn. Hướng dẫn chọn size &aacute;o sơ mi nam: - Qu&yacute; kh&aacute;ch kiểm tra số đo chiều cao c&acirc;n nặng theo bảng size ở phần h&igrave;nh ảnh ph&iacute;a tr&ecirc;n hoặc li&ecirc;n hệ ch&aacute;t với shop để được tư vấn r&otilde; r&agrave;ng hơn nha. Th&ocirc;ng tin chi tiết sản phẩm: &Aacute;o sơ mi nam cổ bẻ d&agrave;i tay --Chất vải sờ mịn kh&ocirc;ng bai, kh&ocirc;ng nhăn, kh&ocirc;ng x&ugrave;. --Mếch cổ v&agrave; tay l&agrave;m bằng chất liệu cao cấp, kh&ocirc;ng sợ bong tr&oacute;c. --Fom Body cực chuẩn, &ocirc;m trọn bờ vai mặc cực trẻ trung v&agrave; phong c&aacute;ch, ph&ugrave; hợp mọi ho&agrave;n cảnh kể cả đi chơi v&agrave; đi l&agrave;m. &Aacute;o sơ mi nam d&agrave;i tay c&oacute; sẵn đủ c&aacute;c size : M, L, XL, XXL, 3XL</span><span style="color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14.875px; white-space: pre-wrap;">&Aacute;o sơ mi nam d&agrave;i tay, vải đẹp cao cấp loại 1 tr&ecirc;n thị trường &Aacute;o sơ mi nam cổ bẻ d&agrave;i tay (sơ mi nam) được thiết kế với form d&aacute;ng trẻ trung với form &aacute;o &ocirc;m, rất chuẩn như h&igrave;nh. Ch&uacute;ng t&ocirc;i hiện nay cung cấp &aacute;o sơ mi nam với gi&aacute; b&aacute;n lẻ tốt nhất tr&ecirc;n thị trường. --Gi&aacute; cạnh tranh nhất do ch&iacute;nh nh&agrave; m&aacute;y sản xuất với số lượng lớn. --Ch&uacute;ng t&ocirc;i kh&ocirc;ng n&oacute;i sản phẩm của m&igrave;nh c&oacute; chất lượng cao nhưng phải khẳng định chất lượng sản phẩm vượt trội so với gi&aacute; tiền. --Uy t&iacute;n b&aacute;n h&agrave;ng được đặt l&ecirc;n h&agrave;ng đầu, kh&ocirc;ng kinh doanh chộp giật. --V&igrave; sản phẩm được sản xuất với số lượng lớn để c&oacute; gi&aacute; cạnh tranh n&ecirc;n kh&ocirc;ng thể tr&aacute;nh được sai s&oacute;t. Nếu qu&yacute; kh&aacute;ch h&agrave;ng kh&ocirc;ng h&agrave;i l&ograve;ng ch&uacute;ng t&ocirc;i sẵn s&agrave;ng hỗ trợ đổi trả. --Rất mong nhận được &yacute; kiến đ&oacute;ng g&oacute;p của Qu&yacute; kh&aacute;ch h&agrave;ng để ch&uacute;ng t&ocirc;i cải thiện chất lượng dịch vụ tốt hơn. Hướng dẫn chọn size &aacute;o sơ mi nam: - Qu&yacute; kh&aacute;ch kiểm tra số đo chiều cao c&acirc;n nặng theo bảng size ở phần h&igrave;nh ảnh ph&iacute;a tr&ecirc;n hoặc li&ecirc;n hệ ch&aacute;t với shop để được tư vấn r&otilde; r&agrave;ng hơn nha. Th&ocirc;ng tin chi tiết sản phẩm: &Aacute;o sơ mi nam cổ bẻ d&agrave;i tay --Chất vải sờ mịn kh&ocirc;ng bai, kh&ocirc;ng nhăn, kh&ocirc;ng x&ugrave;. --Mếch cổ v&agrave; tay l&agrave;m bằng chất liệu cao cấp, kh&ocirc;ng sợ bong tr&oacute;c. --Fom Body cực chuẩn, &ocirc;m trọn bờ vai mặc cực trẻ trung v&agrave; phong c&aacute;ch, ph&ugrave; hợp mọi ho&agrave;n cảnh kể cả đi chơi v&agrave; đi l&agrave;m. &Aacute;o sơ mi nam d&agrave;i tay c&oacute; sẵn đủ c&aacute;c size : M, L, XL, XXL, 3XL</span><span style="color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14.875px; white-space: pre-wrap;"> tay, vải đẹp cao cấp loại 1 tr&ecirc;n thị trường &Aacute;o sơ mi nam cổ bẻ d&agrave;i tay (sơ mi nam) được thiết kế với form d&aacute;ng trẻ trung với form &aacute;o &ocirc;m, rất chuẩn như h&igrave;nh. Ch&uacute;ng t&ocirc;i hiện nay cung cấp &aacute;o sơ mi nam với gi&aacute; b&aacute;n lẻ tốt nhất tr&ecirc;n thị trường. --Gi&aacute; cạnh tranh nhất do ch&iacute;nh nh&agrave; m&aacute;y sản xuất với số lượng lớn. --Ch&uacute;ng t&ocirc;i kh&ocirc;ng n&oacute;i sản phẩm của m&igrave;nh c&oacute; chất lượng cao nhưng phải khẳng định chất lượng sản phẩm vượt trội so với gi&aacute; tiền. --Uy t&iacute;n b&aacute;n h&agrave;ng được đặt l&ecirc;n h&agrave;ng đầu, kh&ocirc;ng kinh doanh chộp giật. --V&igrave; sản phẩm được sản xuất với số lượng lớn để c&oacute; gi&aacute; cạnh tranh n&ecirc;n kh&ocirc;ng thể tr&aacute;nh được sai s&oacute;t. Nếu qu&yacute; kh&aacute;ch h&agrave;ng kh&ocirc;ng h&agrave;i l&ograve;ng ch&uacute;ng t&ocirc;i sẵn s&agrave;ng hỗ trợ đổi trả. --Rất mong nhận được &yacute; kiến đ&oacute;ng g&oacute;p của Qu&yacute; kh&aacute;ch h&agrave;ng để ch&uacute;ng t&ocirc;i cải thiện chất lượng dịch vụ tốt hơn. Hướng dẫn chọn size &aacute;o sơ mi nam: - Qu&yacute; kh&aacute;ch kiểm tra số đo chiều cao c&acirc;n nặng theo bảng size ở phần h&igrave;nh ảnh ph&iacute;a tr&ecirc;n hoặc li&ecirc;n hệ ch&aacute;t với shop để được tư vấn r&otilde; r&agrave;ng hơn nha. Th&ocirc;ng tin chi tiết sản phẩm: &Aacute;o sơ mi nam cổ bẻ d&agrave;i tay --Chất vải sờ mịn kh&ocirc;ng bai, kh&ocirc;ng nhăn, kh&ocirc;ng x&ugrave;. --Mếch cổ v&agrave; tay l&agrave;m bằng chất liệu cao cấp, kh&ocirc;ng sợ bong tr&oacute;c. --Fom Body cực chuẩn, &ocirc;m trọn bờ vai mặc cực trẻ trung v&agrave; phong c&aacute;ch, ph&ugrave; hợp mọi ho&agrave;n cảnh kể cả đi chơi v&agrave; đi l&agrave;m. &Aacute;o sơ mi nam d&agrave;i tay c&oacute; sẵn đủ c&aacute;c size : M, L, XL, XXL, 3XL</span><span style="color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14.875px; white-space: pre-wrap;">&Aacute;o sơ mi nam d&agrave;i tay, vải đẹp cao cấp loại 1 tr&ecirc;n thị trường &Aacute;o sơ mi nam cổ bẻ d&agrave;i tay (sơ mi nam) được thiết kế với form d&aacute;ng trẻ trung với form &aacute;o &ocirc;m, rất chuẩn như h&igrave;nh. Ch&uacute;ng t&ocirc;i hiện nay cung cấp &aacute;o sơ mi nam với gi&aacute; b&aacute;n lẻ tốt nhất tr&ecirc;n thị trường. --Gi&aacute; cạnh tranh nhất do ch&iacute;nh nh&agrave; m&aacute;y sản xuất với số lượng lớn. --Ch&uacute;ng t&ocirc;i kh&ocirc;ng n&oacute;i sản phẩm của m&igrave;nh c&oacute; chất lượng cao nhưng phải khẳng định chất lượng sản phẩm vượt trội so với gi&aacute; tiền. --Uy t&iacute;n b&aacute;n h&agrave;ng được đặt l&ecirc;n h&agrave;ng đầu, kh&ocirc;ng kinh doanh chộp giật. --V&igrave; sản phẩm được sản xuất với số lượng lớn để c&oacute; gi&aacute; cạnh tranh n&ecirc;n kh&ocirc;ng thể tr&aacute;nh được sai s&oacute;t. Nếu qu&yacute; kh&aacute;ch h&agrave;ng kh&ocirc;ng h&agrave;i l&ograve;ng ch&uacute;ng t&ocirc;i sẵn s&agrave;ng hỗ trợ đổi trả. --Rất mong nhận được &yacute; kiến đ&oacute;ng g&oacute;p của Qu&yacute; kh&aacute;ch h&agrave;ng để ch&uacute;ng t&ocirc;i cải thiện chất lượng dịch vụ tốt hơn. Hướng dẫn chọn size &aacute;o sơ mi nam: - Qu&yacute; kh&aacute;ch kiểm tra số đo chiều cao c&acirc;n nặng theo bảng size ở phần h&igrave;nh ảnh ph&iacute;a tr&ecirc;n hoặc li&ecirc;n hệ ch&aacute;t với shop để được tư vấn r&otilde; r&agrave;ng hơn nha. Th&ocirc;ng tin chi tiết sản phẩm: &Aacute;o sơ mi nam cổ bẻ d&agrave;i tay --Chất vải sờ mịn kh&ocirc;ng bai, kh&ocirc;ng nhăn, kh&ocirc;ng x&ugrave;. --Mếch cổ v&agrave; tay l&agrave;m bằng chất liệu cao cấp, kh&ocirc;ng sợ bong tr&oacute;c. --Fom Body cực chuẩn, &ocirc;m trọn bờ vai mặc cực trẻ trung v&agrave; phong c&aacute;ch, ph&ugrave; hợp mọi ho&agrave;n cảnh kể cả đi chơi v&agrave; đi l&agrave;m. &Aacute;o sơ mi nam d&agrave;i tay c&oacute; sẵn đủ c&aacute;c size : M, L, XL, XXL, 3XL</span><span style="color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14.875px; white-space: pre-wrap;">&Aacute;o sơ mi nam d&agrave;i tay, vải đẹp cao cấp loại 1 tr&ecirc;n thị trường &Aacute;o sơ mi nam cổ bẻ d&agrave;i tay (sơ mi nam) được thiết kế với form d&aacute;ng trẻ trung với form &aacute;o &ocirc;m, rất chuẩn như h&igrave;nh. Ch&uacute;ng t&ocirc;i hiện nay cung cấp &aacute;o sơ mi nam với gi&aacute; b&aacute;n lẻ tốt nhất tr&ecirc;n thị trường. --Gi&aacute; cạnh tranh nhất do ch&iacute;nh nh&agrave; m&aacute;y sản xuất với số lượng lớn. --Ch&uacute;ng t&ocirc;i kh&ocirc;ng n&oacute;i sản phẩm của m&igrave;nh c&oacute; chất lượng cao nhưng phải khẳng định chất lượng sản phẩm vượt trội so với gi&aacute; tiền. --Uy t&iacute;n b&aacute;n h&agrave;ng được đặt l&ecirc;n h&agrave;ng đầu, kh&ocirc;ng kinh doanh chộp giật. --V&igrave; sản phẩm được sản xuất với số lượng lớn để c&oacute; gi&aacute; cạnh tranh n&ecirc;n kh&ocirc;ng thể tr&aacute;nh được sai s&oacute;t. Nếu qu&yacute; kh&aacute;ch h&agrave;ng kh&ocirc;ng h&agrave;i l&ograve;ng ch&uacute;ng t&ocirc;i sẵn s&agrave;ng hỗ trợ đổi trả. --Rất mong nhận được &yacute; kiến đ&oacute;ng g&oacute;p của Qu&yacute; kh&aacute;ch h&agrave;ng để ch&uacute;ng t&ocirc;i cải thiện chất lượng dịch vụ tốt hơn. Hướng dẫn chọn size &aacute;o sơ mi nam: - Qu&yacute; kh&aacute;ch kiểm tra số đo chiều cao c&acirc;n nặng theo bảng size ở phần h&igrave;nh ảnh ph&iacute;a tr&ecirc;n hoặc li&ecirc;n hệ ch&aacute;t với shop để được tư vấn r&otilde; r&agrave;ng hơn nha. Th&ocirc;ng tin chi tiết sản phẩm: &Aacute;o sơ mi nam cổ bẻ d&agrave;i tay --Chất vải sờ mịn kh&ocirc;ng bai, kh&ocirc;ng nhăn, kh&ocirc;ng x&ugrave;. --Mếch cổ v&agrave; tay l&agrave;m bằng chất liệu cao cấp, kh&ocirc;ng sợ bong tr&oacute;c. --Fom Body cực chuẩn, &ocirc;m trọn bờ vai mặc cực trẻ trung v&agrave; phong c&aacute;ch, ph&ugrave; hợp mọi ho&agrave;n cảnh kể cả đi chơi v&agrave; đi l&agrave;m. &Aacute;o sơ mi nam d&agrave;i tay c&oacute; sẵn đủ c&aacute;c size : M, L, XL, XXL, 3XL</span><span style="color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14.875px; white-space: pre-wrap;">&Aacute;o sơ mi nam d&agrave;i tay, vải đẹp cao cấp loại 1 tr&ecirc;n thị trường &Aacute;o sơ mi nam cổ bẻ d&agrave;i tay (sơ mi nam) được thiết kế với form d&aacute;ng trẻ trung với form &aacute;o &ocirc;m, rất chuẩn như h&igrave;nh. Ch&uacute;ng t&ocirc;i hiện nay cung cấp &aacute;o sơ mi nam với gi&aacute; b&aacute;n lẻ tốt nhất tr&ecirc;n thị trường. --Gi&aacute; cạnh tranh nhất do ch&iacute;nh nh&agrave; m&aacute;y sản xuất với số lượng lớn. --Ch&uacute;ng t&ocirc;i kh&ocirc;ng n&oacute;i sản phẩm của m&igrave;nh c&oacute; chất lượng cao nhưng phải khẳng định chất lượng sản phẩm vượt trội so với gi&aacute; tiền. --Uy t&iacute;n b&aacute;n h&agrave;ng được đặt l&ecirc;n h&agrave;ng đầu, kh&ocirc;ng kinh doanh chộp giật. --V&igrave; sản phẩm được sản xuất với số lượng lớn để c&oacute; gi&aacute; cạnh tranh n&ecirc;n kh&ocirc;ng thể tr&aacute;nh được sai s&oacute;t. Nếu qu&yacute; kh&aacute;ch h&agrave;ng kh&ocirc;ng h&agrave;i l&ograve;ng ch&uacute;ng t&ocirc;i sẵn s&agrave;ng hỗ trợ đổi trả. --Rất mong nhận được &yacute; kiến đ&oacute;ng g&oacute;p của Qu&yacute; kh&aacute;ch h&agrave;ng để ch&uacute;ng t&ocirc;i cải thiện chất lượng dịch vụ tốt hơn. Hướng dẫn chọn size &aacute;o sơ mi nam: - Qu&yacute; kh&aacute;ch kiểm tra số đo chiều cao c&acirc;n nặng theo bảng size ở phần h&igrave;nh ảnh ph&iacute;a tr&ecirc;n hoặc li&ecirc;n hệ ch&aacute;t với shop để được tư vấn r&otilde; r&agrave;ng hơn nha. Th&ocirc;ng tin chi tiết sản phẩm: &Aacute;o sơ mi nam cổ bẻ d&agrave;i tay --Chất vải sờ mịn kh&ocirc;ng bai, kh&ocirc;ng nhăn, kh&ocirc;ng x&ugrave;. --Mếch cổ v&agrave; tay l&agrave;m bằng chất liệu cao cấp, kh&ocirc;ng sợ bong tr&oacute;c. --Fom Body cực chuẩn, &ocirc;m trọn bờ vai mặc cực trẻ trung v&agrave; phong c&aacute;ch, ph&ugrave; hợp mọi ho&agrave;n cảnh kể cả đi chơi v&agrave; đi l&agrave;m. &Aacute;o sơ mi nam d&agrave;i tay c&oacute; sẵn đủ c&aacute;c size : M, L, XL, XXL, 3XL</span><br />
<br />
<span style="color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14.875px; white-space: pre-wrap;">1. GIỚI THIỆU SẢN PHẨM &Aacute;o Sơ Mi Nam d&agrave;i tay d&aacute;ng &ocirc;m body , chống nhăn cao cấp ch&iacute;nh l&agrave; gợi &yacute; tuyệt vời cho nam giới mỗi khi lựa chọn trang phục mỗi ng&agrave;y. Với những mẫu &aacute;o sơ mi nam thiết kế đơn giản v&agrave; to&aacute;t l&ecirc;n vẻ lịch l&atilde;m tinh tế, mang đến phong c&aacute;ch thời trang trẻ trung, năng động chắc chắn sẽ l&agrave; lựa chọn ho&agrave;n hảo cho ch&agrave;ng trai hiện đại, nam t&iacute;nh. Những chiếc &aacute;o sơ mi d&agrave;i tay d&aacute;ng &ocirc;m body H&agrave;n Quốc , chống nhăn cao cấp d&ugrave; kết hợp với quần &acirc;u, quần jeans khi đi l&agrave;m hay diện c&ugrave;ng quần ngố, quần short đi chơi đều NỔI BẬT, THOẢI M&Aacute;I v&agrave; PHONG C&Aacute;CH. Với form d&aacute;ng vừa vặn c&aacute;c ch&agrave;ng c&oacute; thể tự tin khoe body cực chuẩn của m&igrave;nh. H&atilde;y bổ sung ngay v&agrave;o tủ đồ item n&agrave;y để diện thật chất nh&eacute;! 2. TH&Ocirc;NG TIN CHI TIẾT - M&Agrave;U &Aacute;O : TRẮNG , ĐEN , XANH THAN . XANH NƯỚC BIỂN , ĐỎ Đ&Ocirc; - Chất liệu: 100% chất cotton lụa, thấm h&uacute;t mồ h&ocirc;i - Chất vải sờ mịn kh&ocirc;ng bai, kh&ocirc;ng nhăn, kh&ocirc;ng x&ugrave; - Quy c&aacute;ch, ti&ecirc;u chuẩn đường may tinh tế, tỉ mỉ trong từng chi tiết - Kiểu d&aacute;ng: Thiết kế đơn giản, dễ mặc, dễ phối đồ - Form body H&agrave;n Quốc mang lại phong c&aacute;ch trẻ trung, lịch l&atilde;m - Chất lượng sản phẩm tốt, gi&aacute; cả hợp l&yacute; 3 . CH&Iacute;NH S&Aacute;CH B&Aacute;N H&Agrave;NG: - Cam kết chất lượng v&agrave; mẫu m&atilde; sản phẩm giống với h&igrave;nh ảnh. - Ho&agrave;n tiền nếu sản phẩm kh&ocirc;ng giống với m&ocirc; tả. - Ngo&agrave;i ra SHOP tặng voucher hoặc ho&agrave;n xu cho c&aacute;c đơn h&agrave;ng tương ứng đủ điều kiện. - Uy t&iacute;n b&aacute;n h&agrave;ng được đặt l&ecirc;n h&agrave;ng đầu, kh&ocirc;ng kinh doanh chộp giật. - Rất mong nhận được &yacute; kiến đ&oacute;ng g&oacute;p của Qu&yacute; kh&aacute;ch h&agrave;ng để ch&uacute;ng t&ocirc;i cải thiện chất lượng dịch vụ tốt hơn. 4. HƯỚNG DẪN C&Aacute;CH ĐẶT H&Agrave;NG - Bước 1: C&aacute;ch chọn size, shop c&oacute; bảng size mẫu. Bạn N&Ecirc;N INBOX, cung cấp chiều cao, c&acirc;n nặng để SHOP TƯ VẤN SIZE - Bước 2: C&aacute;ch đặt h&agrave;ng: Nếu bạn muốn mua 2 sản phẩm kh&aacute;c nhau hoặc 2 size kh&aacute;c nhau, để được freeship + Bạn chọn từng sản phẩm rồi th&ecirc;m v&agrave;o giỏ h&agrave;ng + Khi giỏ h&agrave;ng đ&atilde; c&oacute; đầy đủ c&aacute;c sản phẩm cần mua, bạn mới tiến h&agrave;nh ấn n&uacute;t &ldquo; Thanh to&aacute;n&rdquo; - Shop lu&ocirc;n sẵn s&agrave;ng trả lời inbox để tư vấn. 5. HƯỚNG DẪN CHỌN SIZE &Aacute;O SƠ MI NAM: (Size &aacute;o phụ thuộc v&agrave;o chiều cao c&acirc;n nặng v&agrave; c&aacute;c yếu tố kh&aacute;c như v&ograve;ng ngực, bụng, vai, bắp tay,... Do đ&oacute; qu&yacute; kh&aacute;ch c&ograve;n ph&acirc;n v&acirc;n xin vui l&ograve;ng nhắn tin trực tiếp để được hỗ trợ tốt nhất) - Size M : C&acirc;n nặng từ 45-51kg, Chiều cao dưới 160cm - Size L : C&acirc;n nặng từ 52-58kg, Chiều cao dưới 165cm - Size XL : C&acirc;n nặng từ 59-65kg, Chiều cao dưới 170cm - Size 2XL : C&acirc;n nặng từ 66-72kg, Chiều cao dưới 175cm - Size 3XL : C&acirc;n nặng từ 73-80kg, Chiều cao dưới 185cm</span><span style="color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14.875px; white-space: pre-wrap;"> </span><span style="color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14.875px; white-space: pre-wrap;"> 1. GIỚI THIỆU SẢN PHẨM &Aacute;o Sơ Mi Nam d&agrave;i tay d&aacute;ng &ocirc;m body , chống nhăn cao cấp ch&iacute;nh l&agrave; gợi &yacute; tuyệt vời cho nam giới mỗi khi lựa chọn trang phục mỗi ng&agrave;y. Với những mẫu &aacute;o sơ mi nam thiết kế đơn giản v&agrave; to&aacute;t l&ecirc;n vẻ lịch l&atilde;m tinh tế, mang đến phong c&aacute;ch thời trang trẻ trung, năng động chắc chắn sẽ l&agrave; lựa chọn ho&agrave;n hảo cho ch&agrave;ng trai hiện đại, nam t&iacute;nh. Những chiếc &aacute;o sơ mi d&agrave;i tay d&aacute;ng &ocirc;m body H&agrave;n Quốc , chống nhăn cao cấp d&ugrave; kết hợp với quần &acirc;u, quần jeans khi đi l&agrave;m hay diện c&ugrave;ng quần ngố, quần short đi chơi đều NỔI BẬT, THOẢI M&Aacute;I v&agrave; PHONG C&Aacute;CH. Với form d&aacute;ng vừa vặn c&aacute;c ch&agrave;ng c&oacute; thể tự tin khoe body cực chuẩn của m&igrave;nh. H&atilde;y bổ sung ngay v&agrave;o tủ đồ item n&agrave;y để diện thật chất nh&eacute;! 2. TH&Ocirc;NG TIN CHI TIẾT - M&Agrave;U &Aacute;O : TRẮNG , ĐEN , XANH THAN . XANH NƯỚC BIỂN , ĐỎ Đ&Ocirc; - Chất liệu: 100% chất cotton lụa, thấm h&uacute;t mồ h&ocirc;i - Chất vải sờ mịn kh&ocirc;ng bai, kh&ocirc;ng nhăn, kh&ocirc;ng x&ugrave; - Quy c&aacute;ch, ti&ecirc;u chuẩn đường may tinh tế, tỉ mỉ trong từng chi tiết - Kiểu d&aacute;ng: Thiết kế đơn giản, dễ mặc, dễ phối đồ - Form body H&agrave;n Quốc mang lại phong c&aacute;ch trẻ trung, lịch l&atilde;m - Chất lượng sản phẩm tốt, gi&aacute; cả hợp l&yacute; 3 . CH&Iacute;NH S&Aacute;CH B&Aacute;N H&Agrave;NG: - Cam kết chất lượng v&agrave; mẫu m&atilde; sản phẩm giống với h&igrave;nh ảnh. - Ho&agrave;n tiền nếu sản phẩm kh&ocirc;ng giống với m&ocirc; tả. - Ngo&agrave;i ra SHOP tặng voucher hoặc ho&agrave;n xu cho c&aacute;c đơn h&agrave;ng tương ứng đủ điều kiện. - Uy t&iacute;n b&aacute;n h&agrave;ng được đặt l&ecirc;n h&agrave;ng đầu, kh&ocirc;ng kinh doanh chộp giật. - Rất mong nhận được &yacute; kiến đ&oacute;ng g&oacute;p của Qu&yacute; kh&aacute;ch h&agrave;ng để ch&uacute;ng t&ocirc;i cải thiện chất lượng dịch vụ tốt hơn. 4. HƯỚNG DẪN C&Aacute;CH ĐẶT H&Agrave;NG - Bước 1: C&aacute;ch chọn size, shop c&oacute; bảng size mẫu. Bạn N&Ecirc;N INBOX, cung cấp chiều cao, c&acirc;n nặng để SHOP TƯ VẤN SIZE - Bước 2: C&aacute;ch đặt h&agrave;ng: Nếu bạn muốn mua 2 sản phẩm kh&aacute;c nhau hoặc 2 size kh&aacute;c nhau, để được freeship + Bạn chọn từng sản phẩm rồi th&ecirc;m v&agrave;o giỏ h&agrave;ng + Khi giỏ h&agrave;ng đ&atilde; c&oacute; đầy đủ c&aacute;c sản phẩm cần mua, bạn mới tiến h&agrave;nh ấn n&uacute;t &ldquo; Thanh to&aacute;n&rdquo; - Shop lu&ocirc;n sẵn s&agrave;ng trả lời inbox để tư vấn. 5. HƯỚNG DẪN CHỌN SIZE &Aacute;O SƠ MI NAM: (Size &aacute;o phụ thuộc v&agrave;o chiều cao c&acirc;n nặng v&agrave; c&aacute;c yếu tố kh&aacute;c như v&ograve;ng ngực, bụng, vai, bắp tay,... Do đ&oacute; qu&yacute; kh&aacute;ch c&ograve;n ph&acirc;n v&acirc;n xin vui l&ograve;ng nhắn tin trực tiếp để được hỗ trợ tốt nhất) - Size M : C&acirc;n nặng từ 45-51kg, Chiều cao dưới 160cm - Size L : C&acirc;n nặng từ 52-58kg, Chiều cao dưới 165cm - Size XL : C&acirc;n nặng từ 59-65kg, Chiều cao dưới 170cm - Size 2XL : C&acirc;n nặng từ 66-72kg, Chiều cao dưới 175cm - Size 3XL : C&acirc;n nặng từ 73-80kg, Chiều cao dưới 185cm</span><span style="color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14.875px; white-space: pre-wrap;">1. GIỚI THIỆU SẢN PHẨM &Aacute;o Sơ Mi Nam d&agrave;i tay d&aacute;ng &ocirc;m body , chống nhăn cao cấp ch&iacute;nh l&agrave; gợi &yacute; tuyệt vời cho nam giới mỗi khi lựa chọn trang phục mỗi ng&agrave;y. Với những mẫu &aacute;o sơ mi nam thiết kế đơn giản v&agrave; to&aacute;t l&ecirc;n vẻ lịch l&atilde;m tinh tế, mang đến phong c&aacute;ch thời trang trẻ trung, năng động chắc chắn sẽ l&agrave; lựa chọn ho&agrave;n hảo cho ch&agrave;ng trai hiện đại, nam t&iacute;nh. Những chiếc &aacute;o sơ mi d&agrave;i tay d&aacute;ng &ocirc;m body H&agrave;n Quốc , chống nhăn cao cấp d&ugrave; kết hợp với quần &acirc;u, quần jeans khi đi l&agrave;m hay diện c&ugrave;ng quần ngố, quần short đi chơi đều NỔI BẬT, THOẢI M&Aacute;I v&agrave; PHONG C&Aacute;CH. Với form d&aacute;ng vừa vặn c&aacute;c ch&agrave;ng c&oacute; thể tự tin khoe body cực chuẩn của m&igrave;nh. H&atilde;y bổ sung ngay v&agrave;o tủ đồ item n&agrave;y để diện thật chất nh&eacute;! 2. TH&Ocirc;NG TIN CHI TIẾT - M&Agrave;U &Aacute;O : TRẮNG , ĐEN , XANH THAN . XANH NƯỚC BIỂN , ĐỎ Đ&Ocirc; - Chất liệu: 100% chất cotton lụa, thấm h&uacute;t mồ h&ocirc;i - Chất vải sờ mịn kh&ocirc;ng bai, kh&ocirc;ng nhăn, kh&ocirc;ng x&ugrave; - Quy c&aacute;ch, ti&ecirc;u chuẩn đường may tinh tế, tỉ mỉ trong từng chi tiết - Kiểu d&aacute;ng: Thiết kế đơn giản, dễ mặc, dễ phối đồ - Form body H&agrave;n Quốc mang lại phong c&aacute;ch trẻ trung, lịch l&atilde;m - Chất lượng sản phẩm tốt, gi&aacute; cả hợp l&yacute; 3 . CH&Iacute;NH S&Aacute;CH B&Aacute;N H&Agrave;NG: - Cam kết chất lượng v&agrave; mẫu m&atilde; sản phẩm giống với h&igrave;nh ảnh. - Ho&agrave;n tiền nếu sản phẩm kh&ocirc;ng giống với m&ocirc; tả. - Ngo&agrave;i ra SHOP tặng voucher hoặc ho&agrave;n xu cho c&aacute;c đơn h&agrave;ng tương ứng đủ điều kiện. - Uy t&iacute;n b&aacute;n h&agrave;ng được đặt l&ecirc;n h&agrave;ng đầu, kh&ocirc;ng kinh doanh chộp giật. - Rất mong nhận được &yacute; kiến đ&oacute;ng g&oacute;p của Qu&yacute; kh&aacute;ch h&agrave;ng để ch&uacute;ng t&ocirc;i cải thiện chất lượng dịch vụ tốt hơn. 4. HƯỚNG DẪN C&Aacute;CH ĐẶT H&Agrave;NG - Bước 1: C&aacute;ch chọn size, shop c&oacute; bảng size mẫu. Bạn N&Ecirc;N INBOX, cung cấp chiều cao, c&acirc;n nặng để SHOP TƯ VẤN SIZE - Bước 2: C&aacute;ch đặt h&agrave;ng: Nếu bạn muốn mua 2 sản phẩm kh&aacute;c nhau hoặc 2 size kh&aacute;c nhau, để được freeship + Bạn chọn từng sản phẩm rồi th&ecirc;m v&agrave;o giỏ h&agrave;ng + Khi giỏ h&agrave;ng đ&atilde; c&oacute; đầy đủ c&aacute;c sản phẩm cần mua, bạn mới tiến h&agrave;nh ấn n&uacute;t &ldquo; Thanh to&aacute;n&rdquo; - Shop lu&ocirc;n sẵn s&agrave;ng trả lời inbox để tư vấn. 5. HƯỚNG DẪN CHỌN SIZE &Aacute;O SƠ MI NAM: (Size &aacute;o phụ thuộc v&agrave;o chiều cao c&acirc;n nặng v&agrave; c&aacute;c yếu tố kh&aacute;c như v&ograve;ng ngực, bụng, vai, bắp tay,... Do đ&oacute; qu&yacute; kh&aacute;ch c&ograve;n ph&acirc;n v&acirc;n xin vui l&ograve;ng nhắn tin trực tiếp để được hỗ trợ tốt nhất) - Size M : C&acirc;n nặng từ 45-51kg, Chiều cao dưới 160cm - Size L : C&acirc;n nặng từ 52-58kg, Chiều cao dưới 165cm - Size XL : C&acirc;n nặng từ 59-65kg, Chiều cao dưới 170cm - Size 2XL : C&acirc;n nặng từ 66-72kg, Chiều cao dưới 175cm </span><span style="color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14.875px; white-space: pre-wrap;">- Size 3XL : C&acirc;n nặng từ 73-80kg, Chiều cao dưới 185cm</span><span style="color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14.875px; white-space: pre-wrap;"> 1. GIỚI THIỆU SẢN PHẨM &Aacute;o Sơ Mi Nam d&agrave;i tay d&aacute;ng &ocirc;m body , chống nhăn cao cấp ch&iacute;nh l&agrave; gợi &yacute; tuyệt vời cho nam giới mỗi khi lựa chọn trang phục mỗi ng&agrave;y. Với những mẫu &aacute;o sơ mi nam thiết kế đơn giản v&agrave; to&aacute;t l&ecirc;n vẻ lịch l&atilde;m tinh tế, mang đến phong c&aacute;ch thời trang trẻ trung, năng động chắc chắn sẽ l&agrave; lựa chọn ho&agrave;n hảo cho ch&agrave;ng trai hiện đại, nam t&iacute;nh. Những chiếc &aacute;o sơ mi d&agrave;i tay d&aacute;ng &ocirc;m body H&agrave;n Quốc , chống nhăn cao cấp d&ugrave; kết hợp với quần &acirc;u, quần jeans khi đi l&agrave;m hay diện c&ugrave;ng quần ngố, quần short đi chơi đều NỔI BẬT, THOẢI M&Aacute;I v&agrave; PHONG C&Aacute;CH. Với form d&aacute;ng vừa vặn c&aacute;c ch&agrave;ng c&oacute; thể tự tin khoe body cực chuẩn của m&igrave;nh. H&atilde;y bổ sung ngay v&agrave;o tủ đồ item n&agrave;y để diện thật chất nh&eacute;! 2. TH&Ocirc;NG TIN CHI TIẾT - M&Agrave;U &Aacute;O : TRẮNG , ĐEN , XANH THAN . XANH NƯỚC BIỂN , ĐỎ Đ&Ocirc; - Chất liệu: 100% chất cotton lụa, thấm h&uacute;t mồ h&ocirc;i - Chất vải sờ mịn kh&ocirc;ng bai, kh&ocirc;ng nhăn, kh&ocirc;ng x&ugrave; - Quy c&aacute;ch, ti&ecirc;u chuẩn đường may tinh tế, tỉ mỉ trong từng chi tiết - Kiểu d&aacute;ng: Thiết kế đơn giản, dễ mặc, dễ phối đồ - Form body H&agrave;n Quốc mang lại phong c&aacute;ch trẻ trung, lịch l&atilde;m - Chất lượng sản phẩm tốt, gi&aacute; cả hợp l&yacute; 3 . CH&Iacute;NH S&Aacute;CH B&Aacute;N H&Agrave;NG: - Cam kết chất lượng v&agrave; mẫu m&atilde; sản phẩm giống với h&igrave;nh ảnh. - Ho&agrave;n tiền nếu sản phẩm kh&ocirc;ng giống với m&ocirc; tả. - Ngo&agrave;i ra SHOP tặng voucher hoặc ho&agrave;n xu cho c&aacute;c đơn h&agrave;ng tương ứng đủ điều kiện. - Uy t&iacute;n b&aacute;n h&agrave;ng được đặt l&ecirc;n h&agrave;ng đầu, kh&ocirc;ng kinh doanh chộp giật. - Rất mong nhận được &yacute; kiến đ&oacute;ng g&oacute;p của Qu&yacute; kh&aacute;ch h&agrave;ng để ch&uacute;ng t&ocirc;i cải thiện chất lượng dịch vụ tốt hơn. 4. HƯỚNG DẪN C&Aacute;CH ĐẶT H&Agrave;NG - Bước 1: C&aacute;ch chọn size, shop c&oacute; bảng size mẫu. Bạn N&Ecirc;N INBOX, cung cấp chiều cao, c&acirc;n nặng để SHOP TƯ VẤN SIZE - Bước 2: C&aacute;ch đặt h&agrave;ng: Nếu bạn muốn mua 2 sản phẩm kh&aacute;c nhau hoặc 2 size kh&aacute;c nhau, để được freeship + Bạn chọn từng sản phẩm rồi th&ecirc;m v&agrave;o giỏ h&agrave;ng + Khi giỏ h&agrave;ng đ&atilde; c&oacute; đầy đủ c&aacute;c sản phẩm cần mua, bạn mới tiến h&agrave;nh ấn n&uacute;t &ldquo; Thanh to&aacute;n&rdquo; - Shop lu&ocirc;n sẵn s&agrave;ng trả lời inbox để tư vấn. 5. HƯỚNG DẪN CHỌN SIZE &Aacute;O SƠ MI NAM: (Size &aacute;o phụ thuộc v&agrave;o chiều cao c&acirc;n nặng v&agrave; c&aacute;c yếu tố kh&aacute;c như v&ograve;ng ngực, bụng, vai, bắp tay,... Do đ&oacute; qu&yacute; kh&aacute;ch c&ograve;n ph&acirc;n v&acirc;n xin vui l&ograve;ng nhắn tin trực tiếp để được hỗ trợ tốt nhất) - Size M : C&acirc;n nặng từ 45-51kg, Chiều cao dưới 160cm - Size L : C&acirc;n nặng từ 52-58kg, Chiều cao dưới 165cm - Size XL : C&acirc;n nặng từ 59-65kg, Chiều cao dưới 170cm - Size 2XL : C&acirc;n nặng từ 66-72kg, Chiều cao dưới 175cm - Size 3XL : C&acirc;n nặng từ 73-80kg, Chiều cao dưới 185cm</span>', CAST(N'2020-10-14T21:29:16.000' AS DateTime), CAST(N'2020-10-14T21:29:16.000' AS DateTime), 10, 6)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (24, N'Áo sơ mi trơn', 14, 4, 6, N'z1051412590704-3203d45e9546e05b502b0860aefad4c8.jpg', 5, 159000, N'<span style="color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14.875px; white-space: pre-wrap;">⏩ Th&ocirc;ng tin sản phẩm: 👉 Chất liệu: vải kate lụa mịn mềm, thấm h&uacute;t mồ h&ocirc;i tốt. 👉 &Iacute;t nhăn, &iacute;t nh&agrave;u, vải đứng form 👉 Chất vải đẹp, kh&ocirc;ng x&ugrave; l&ocirc;ng, kh&ocirc;ng phai m&agrave;u 👉 Đường may cực tỉ mỉ cực đẹp 👉 C&oacute; thể mặc đi l&agrave;m, đi chơi, dễ phối đồ, kh&ocirc;ng k&eacute;n người mặc 👉 Kiểu d&aacute;ng: Thiết kế theo form &ocirc;m body trẻ trung lịch l&atilde;m ⏩Được sản xuất v&agrave; bảo h&agrave;nh bởi C&ocirc;ng ty TNHH MTV LADOS VIỆT NAM 📣 CH&Iacute;NH S&Aacute;CH. 👉 Cam kết chất lượng v&agrave; mẫu m&atilde; sản phẩm giống với h&igrave;nh ảnh. 👉 Ho&agrave;n tiền nếu sản phẩm kh&ocirc;ng giống với m&ocirc; tả. 👉 ĐỔI TRẢ TRONG 7 NG&Agrave;Y NẾU KH&Ocirc;NG Đ&Uacute;NG MI&Ecirc;U TẢ 👉 CAM KẾT H&Agrave;NG CH&Iacute;NH H&Atilde;NG 100% 👉 CAM KẾT ẢNH SHOP TỰ CHỤP 👉 freeship cho đơn h&agrave;ng tr&ecirc;n 150k ------------------------------------ XEM C&Aacute;CH CHỌN SIZE TR&Ecirc;N H&Igrave;NH ĐỂ ĐƯỢC CH&Iacute;NH X&Aacute;C NHẤT 🔰 HƯỚNG DẪN C&Aacute;CH ĐẶT H&Agrave;NG ⏩ C&aacute;ch chọn size: Shop c&oacute; bảng size mẫu. - Bạn chọn từng sản phẩm rồi th&ecirc;m v&agrave;o giỏ h&agrave;ng - Khi giỏ h&agrave;ng đ&atilde; c&oacute; đầy đủ c&aacute;c sản phẩm cần mua, bạn mới tiến h&agrave;nh ấn n&uacute;t &ldquo; Thanh to&aacute;n&rdquo; ⏩ Shop lu&ocirc;n sẵn s&agrave;ng trả lời inbox để tư vấn</span>', CAST(N'2020-10-14T21:35:01.000' AS DateTime), CAST(N'2020-10-14T21:35:01.000' AS DateTime), 10, 6)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (25, N'Áo sơ mi Đen Cổ Vest ngắn tay form rộng unisex nam', 6, 4, 6, N'619e19b61167b2477c033ef2a5ee6bd0.jpg', 10, 229000, N'<span style="color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14.875px; white-space: pre-wrap;">&Aacute;O SƠ MI ĐEN NGẮN TAY CỔ VEST UNISEX - THỜI TRANG 2020 - Chất liệu: Lụa - M&agrave;u sắc: Đen - Phong c&aacute;ch: Unisex, streetwear - Đối tượng sử dụng: Nam v&agrave; nữ - Xu hướng: Năm 2020 - Xuất xứ: Việt Nam - Size: M L XL (Form rộng - Ph&ugrave; hợp với Nam v&agrave; Nữ) &bull; Size M : Dưới 1m65 - 60kg &bull; Size L : Dưới 1m75 - 70kg &bull; Size XL: Dưới 1m85 - 85kg</span>', CAST(N'2020-10-14T21:41:33.000' AS DateTime), CAST(N'2020-10-14T21:41:33.000' AS DateTime), 10, 5)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (26, N'Áo Sơmi Nam Sọc Caro ', 1, 4, 1, N'1484b1d71d19d1c3ffbc42d17300651c.jpg', 15, 259000, N'<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(80, 80, 80); font-family: Roboto, sans-serif; font-size: 14.5px;">
	-&Aacute;o sơmi nam với thiết kế sọc caro d&agrave;i tay 5 m&agrave;u ,tinh tế sắc sảo phong c&aacute;ch trẻ trung, th&iacute;ch hợp cho những bạn c&ocirc;ng sở lịch sự sang trọng thật đẹp v&agrave; dường như qu&aacute; quen thuộc với ph&aacute;i mạnh ch&uacute;ng ta</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(80, 80, 80); font-family: Roboto, sans-serif; font-size: 14.5px;">
	-Chất kate nỉ mềm mại,thấm h&uacute;t tốt cho bạn hoạt động v&agrave; l&agrave;m việc cả ng&agrave;y m&agrave; kh&ocirc;ng bận t&acirc;m g&igrave; cả</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(80, 80, 80); font-family: Roboto, sans-serif; font-size: 14.5px;">
	-H&agrave;ng chất lượng cao cấp giặt kh&ocirc;ng ra m&agrave;u,kh&ocirc;ng xuống m&agrave;u theo thời gian</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(80, 80, 80); font-family: Roboto, sans-serif; font-size: 14.5px;">
	TH&Ocirc;NG TIN CHI TIẾT: &Aacute;o sơmi nam</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(80, 80, 80); font-family: Roboto, sans-serif; font-size: 14.5px;">
	-CHẤT LIỆU:kate nỉ</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(80, 80, 80); font-family: Roboto, sans-serif; font-size: 14.5px;">
	-M&Agrave;U SẮC: số 1,số 2,số 3,số 4,số 5</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(80, 80, 80); font-family: Roboto, sans-serif; font-size: 14.5px;">
	-SIZE: M(50-56kg),L(57-62kg)</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(80, 80, 80); font-family: Roboto, sans-serif; font-size: 14.5px;">
	-XUẤT XỨ: Việt Nam</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(80, 80, 80); font-family: Roboto, sans-serif; font-size: 14.5px;">
	-100% H&igrave;nh ảnh thật<br style="box-sizing: border-box;" />
	-Giao h&agrave;ng đ&uacute;ng mẫu m&atilde;,size m&agrave;u kh&aacute;ch đặt</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(80, 80, 80); font-family: Roboto, sans-serif; font-size: 14.5px;">
	# C&Aacute;CH BẢO QUẢN QUẦN &Aacute;O</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(80, 80, 80); font-family: Roboto, sans-serif; font-size: 14.5px;">
	+ Bạn muốn chiếc &aacute;o được sử dụng l&acirc;u d&agrave;i v&agrave; lu&ocirc;n tr&ocirc;ng như mới chứ? h&atilde;y l&agrave;m theo mẹo dưới đ&acirc;y:</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(80, 80, 80); font-family: Roboto, sans-serif; font-size: 14.5px;">
	&ndash; Treo &aacute;o tr&ecirc;n mắc: Để giữ &aacute;o được giữ d&aacute;ng v&agrave; kh&ocirc;ng tạo n&ecirc;n c&aacute;c nếp gấp,bạn n&ecirc;n treo &aacute;o tr&ecirc;n những chiếc m&oacute;c rộng.</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(80, 80, 80); font-family: Roboto, sans-serif; font-size: 14.5px;">
	&ndash; Tr&aacute;ch tiếp x&uacute;c với nguồn nhiệt trục tiếp: Nhiệt độ qu&aacute; cao sẽ l&agrave;m &aacute;o bị kh&ocirc;,nổ m&agrave;u.Khi tiếp x&uacute;c qu&aacute; l&acirc;u dưới nguồn nhiệt cao &aacute;o sẽ dể bị hỏng</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(80, 80, 80); font-family: Roboto, sans-serif; font-size: 14.5px;">
	-Trước hết bạn h&atilde;y giặt bằng nước lạnh bởi như vậy sẽ gi&uacute;p độ bền cho chất liệu cũng như kiểu d&aacute;ng trang phục.Hơn nữa hầu hết c&aacute;c chất tẩy rửa đều c&oacute; t&aacute;c dụng khi được sử dụng với nước lạnh.C&oacute; chuyện lầm tưởng về chuyện sử dụng nước n&oacute;ng để giặt sẽ gi&uacute;p quần mau sạch hơn,nhưng thật chất nước n&oacute;ng sẽ l&agrave;m độ bền của chất liệu vải cũng như khiến ch&uacute;ng dể hỏng v&agrave; phai m&agrave;u nhanh hơn&hellip;</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(80, 80, 80); font-family: Roboto, sans-serif; font-size: 14.5px;">
	&ndash; Ngo&agrave;i ra,cũng phải ch&uacute; &yacute; đến bột giặt nhiều chất tẩy v&agrave; nếu giặt m&aacute;y tr&aacute;nh ch&egrave;n &eacute;p đồ qu&aacute; nhiều c&ugrave;ng một l&uacute;c&hellip;</p>
', CAST(N'2020-10-14T21:47:15.000' AS DateTime), CAST(N'2020-10-14T21:47:15.000' AS DateTime), 10, 6)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (27, N'Bộ Thể Thao Logo Ngực Mẫu Mới', 6, 4, 7, N'1a557ab0fd8f1e6a14a0ed7cb267443d.jpg', 5, 199000, N'<span style="color: rgb(80, 80, 80); font-family: Roboto, sans-serif; font-size: 14.5px;">Bộ Thể Thao Logo Ngực Mẫu Mới</span>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(80, 80, 80); font-family: Roboto, sans-serif; font-size: 14.5px;">
	Sản phẩm Bộ thể thao</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(80, 80, 80); font-family: Roboto, sans-serif; font-size: 14.5px;">
	&ndash; Bộ thể thao nam được thiết kế theo đ&uacute;ng form chuẩn của nam giới Ch&acirc;u &Aacute;<br style="box-sizing: border-box;" />
	&ndash; Sản phẩm ch&iacute;nh l&agrave; mẫu thiết kế mới nhất cho m&ugrave;a h&egrave; 2019<br style="box-sizing: border-box;" />
	&ndash; Chất liệu cực mềm mịn, tho&aacute;ng m&aacute;t<br style="box-sizing: border-box;" />
	&ndash; Đem lại sự thoải m&aacute;i tiện lợi nhất cho người mặc</p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(80, 80, 80); font-family: Roboto, sans-serif; font-size: 14.5px;">
	Lưu &yacute;:<br style="box-sizing: border-box;" />
	&ndash; Những kh&aacute;ch form người kh&ocirc;ng c&acirc;n đối (B&eacute;o, gầy, thấp&hellip;)<br style="box-sizing: border-box;" />
	&ndash; Những kh&aacute;ch th&iacute;ch mặc &ocirc;m body hoặc mặc rộng thoải m&aacute;i</p>
', CAST(N'2020-10-14T21:49:20.000' AS DateTime), CAST(N'2020-10-14T21:49:20.000' AS DateTime), 8, 5)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (28, N'Áo Sơ Mi Tay Ngắn Màu Trơn Phong Cách Hàn Quốc Cho Nam', 11, 2, 1, N'4063f1f19e1cb6661db2e9057a4ba11a.jpg', 10, 125000, N'<span style="color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14.875px; white-space: pre-wrap;">m&ocirc; h&igrave;nh: đồng bằng M&ugrave;a &aacute;p dụng: m&ugrave;a h&egrave; chiều d&agrave;i tay &aacute;o: tay &aacute;o ngắn Chất liệu: Voan K&iacute;ch thước đề xuất Chiều cao 165cm c&acirc;n nặng 45-50kg cỡ M Cao 165cm c&acirc;n nặng 50-60kg size L Chiều cao 170cm C&acirc;n nặng 60-65kg K&iacute;ch thước XL Chiều cao 170cm C&acirc;n nặng 65-75kg K&iacute;ch thước 2XL Chiều cao 175cm C&acirc;n nặng 75-80kg K&iacute;ch thước 3x Ch&uacute;ng t&ocirc;i c&oacute; k&iacute;ch thước Trung Quốc, nếu bạn kh&ocirc;ng chắc chắn về k&iacute;ch thước của m&igrave;nh, bạn c&oacute; thể cung cấp chiều cao v&agrave; c&acirc;n nặng của ri&ecirc;ng m&igrave;nh để t&igrave;m dịch vụ kh&aacute;ch h&agrave;ng, ch&uacute;ng t&ocirc;i sẽ cung cấp cho bạn c&aacute;c đề xuất.</span>', CAST(N'2020-10-14T21:51:57.000' AS DateTime), CAST(N'2020-10-14T21:51:57.000' AS DateTime), 9, 5)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (29, N'Áo sơ mi trơn big size, form body, chất lụa chống nhăn', 11, 2, 6, N'images (1)_1.jpg', 5, 150000, N'<span style="color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14.875px; white-space: pre-wrap;">⏩ Th&ocirc;ng tin sản phẩm: 👉 Chất liệu: vải kate lụa mịn mềm, thấm h&uacute;t mồ h&ocirc;i tốt. 👉 &Iacute;t nhăn, &iacute;t nh&agrave;u, vải đứng form 👉 Chất vải đẹp, kh&ocirc;ng x&ugrave; l&ocirc;ng, kh&ocirc;ng phai m&agrave;u 👉 Đường may cực tỉ mỉ cực đẹp 👉 C&oacute; thể mặc đi l&agrave;m, đi chơi, dễ phối đồ, kh&ocirc;ng k&eacute;n người mặc 👉 Kiểu d&aacute;ng: Thiết kế theo form &ocirc;m body trẻ trung lịch l&atilde;m ⏩Được sản xuất v&agrave; bảo h&agrave;nh bởi C&ocirc;ng ty TNHH MTV LADOS VIỆT NAM 📣 CH&Iacute;NH S&Aacute;CH. 👉 Cam kết chất lượng v&agrave; mẫu m&atilde; sản phẩm giống với h&igrave;nh ảnh. 👉 Ho&agrave;n tiền nếu sản phẩm kh&ocirc;ng giống với m&ocirc; tả. 👉 ĐỔI TRẢ TRONG 7 NG&Agrave;Y NẾU KH&Ocirc;NG Đ&Uacute;NG MI&Ecirc;U TẢ 👉 CAM KẾT H&Agrave;NG CH&Iacute;NH H&Atilde;NG 100% 👉 CAM KẾT ẢNH SHOP TỰ CHỤP 👉 freeship cho đơn h&agrave;ng tr&ecirc;n 150k ------------------------------------ XEM C&Aacute;CH CHỌN SIZE TR&Ecirc;N H&Igrave;NH ĐỂ ĐƯỢC CH&Iacute;NH X&Aacute;C NHẤT 🔰 HƯỚNG DẪN C&Aacute;CH ĐẶT H&Agrave;NG ⏩ C&aacute;ch chọn size: Shop c&oacute; bảng size mẫu. - Bạn chọn từng sản phẩm rồi th&ecirc;m v&agrave;o giỏ h&agrave;ng - Khi giỏ h&agrave;ng đ&atilde; c&oacute; đầy đủ c&aacute;c sản phẩm cần mua, bạn mới tiến h&agrave;nh ấn n&uacute;t &ldquo; Thanh to&aacute;n&rdquo; ⏩ Shop lu&ocirc;n sẵn s&agrave;ng trả lời inbox để tư vấn XL (61-67kg) - XXL( 68-75) - 3XL (75 -80kg) - 4xl( 81-87kg) - 5xl(87-93) </span>', CAST(N'2020-10-14T21:55:01.000' AS DateTime), CAST(N'2020-10-14T21:55:01.000' AS DateTime), 10, 6)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (30, N'Bộ Thể Thao Nam Thời Trang Cao Cấp', 6, 2, 1, N'f61c9a04f464123a4b75-1.jpg', 10, 299000, N'<p style="box-sizing: border-box; margin-bottom: 10px; margin-top: 0px; font-family: Baomoi; color: rgb(70, 66, 66); font-size: 16.15px;">
	Kiểu d&aacute;ng: Bộ thể thao nam &aacute;o d&agrave;i tay + quần jogger nam NIKE JUST DO IT</p>
<p style="box-sizing: border-box; margin-bottom: 10px; margin-top: 0px; font-family: Baomoi; color: rgb(70, 66, 66); font-size: 16.15px;">
	Chất liệu: Nỉ cotton da loại 1, mềm mịn, tho&aacute;ng kh&iacute;, full tem m&aacute;c</p>
<p style="box-sizing: border-box; margin-bottom: 10px; margin-top: 0px; font-family: Baomoi; color: rgb(70, 66, 66); font-size: 16.15px;">
	M&agrave;u sắc: Đen, Xanh navy, X&aacute;m, Trắng đen</p>
<p style="box-sizing: border-box; margin-bottom: 10px; margin-top: 0px; font-family: Baomoi; color: rgb(70, 66, 66); font-size: 16.15px;">
	Size: M, L, XL, XXL</p>
', CAST(N'2020-10-14T22:02:27.000' AS DateTime), CAST(N'2020-10-14T22:02:27.000' AS DateTime), 8, 4)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (31, N'Bộ Thể Thao Nam ROUGH Chất Nỉ Hàn Quốc, Năng Động, Thoải Mái', 7, 2, 8, N'h.jpg', 10, 199000, N'<span style="color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14.875px; white-space: pre-wrap;">🔰 TH&Ocirc;NG TIN CHI TIẾT 🎗 Xuất xứ: Việt Nam 🎗Thương hiệu: ROUGH 🎗M&agrave;u sắc: Ghi đậm &ndash; Ghi nhạt &ndash; Đen &ndash; Xanh đen. 🎗 Chất liệu: Cotton 100% 🎗K&iacute;ch thước: M &ndash; L &ndash; XL - XXL 👉 Thoải m&aacute;i mặc đi chơi, đi l&agrave;m, đi học hay cả ở nh&agrave;. 👉 Vải mềm, mịn, c&oacute; co gi&atilde;n nhẹ, thấn h&uacute;t mồ h&ocirc;i, m&aacute;t mẻ, tạo sự thoải m&aacute;i khi mặc. 👉Đường may tinh tế, chỉn chu, kh&eacute;o l&eacute;o -------------------------------------------------------------- 🔰 TH&Ocirc;NG TIN SẢN PHẨM 👉 Chất cotton, kh&ocirc;ng x&ugrave;, kh&ocirc;ng bai, kh&ocirc;ng phai m&agrave;u 👉 Form regular H&agrave;n Quốc mang lại phong c&aacute;ch trẻ trung, lịch l&atilde;m 👉 Đường may tinh tế, tỉ mỉ trong từng chi tiết. 👉 Chất lượng sản phẩm tốt, gi&aacute; cả hợp l&yacute; -------------------------------------------------------------------------------------------------------------- 🔰 HƯỚNG DẪN ĐẶT H&Agrave;NG: ▶ C&aacute;ch chọn size: Shop c&oacute; bảng size mẫu. Qu&yacute; kh&aacute;ch vui l&ograve;ng tham khảo bảng size chi tiết. ▶ M&atilde; sản phẩm đ&atilde; c&oacute; trong ảnh hoặc trong b&agrave;i đăng. ▶ C&aacute;ch đặt h&agrave;ng: Nếu bạn muốn mua 2 sản phẩm kh&aacute;c nhau hoặc 2 size kh&aacute;c nhau - Bạn chọn từng sản phẩm rồi th&ecirc;m v&agrave;o giỏ h&agrave;ng. - Khi giỏ h&agrave;ng đ&atilde; c&oacute; đầy đủ c&aacute;c sản phẩm cần mua, bạn mới tiến h&agrave;nh ấn n&uacute;t &ldquo; Thanh to&aacute;n&rdquo;. ▶ Rough lu&ocirc;n hỗ trợ giải đ&aacute;p thắc mắc sớm nhất của kh&aacute;ch h&agrave;ng. ------------------------------------------------------------------------------------- 🔰 HƯỚNG DẪN SỬ DỤNG: ▷ N&Ecirc;N giặt tay &ndash; Bỏ v&agrave;o t&uacute;i giặt khi giặt m&aacute;y &ndash; Giặt m&aacute;y ở chế độ len ▷ Tr&aacute;nh giặt/ng&acirc;m sản phẩm v&agrave;o nước n&oacute;ng&hellip; ▷ KH&Ocirc;NG d&ugrave;ng chất ng&acirc;m tẩy. Sử dụng c&aacute;c loại x&agrave; ph&ograve;ng, nước tẩy nhẹ ▷ Giặt ri&ecirc;ng sản phẩm s&aacute;ng m&agrave;u. ▷ L&agrave;, ủi ở nhiệt dộ trung b&igrave;nh. ▷ C&oacute; thể giặt kh&ocirc;. ▷ Kh&ocirc;ng phơi trực tiếp dưới &aacute;nh nắng gắt. ▷ Giũ mạnh trước khi phơi.</span>', CAST(N'2020-10-14T22:08:28.000' AS DateTime), CAST(N'2020-10-14T22:08:28.000' AS DateTime), 8, 6)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (32, N'Bộ thể thao nam givenchy sọc thân in logo chất nỉ bông dầy dặn Hàng QCL1', 1, 4, 8, N'5c5d98af1a9a8_1549637807.jpg', 10, 150000, N'<span style="color: rgb(33, 37, 41); font-family: Arial; font-size: 14px;">Bộ thể thao nam givenchy sọc th&acirc;n in logo chất nỉ b&ocirc;ng dầy dặn H&agrave;ng QCL1</span><br style="box-sizing: border-box; color: rgb(33, 37, 41); font-family: Arial; font-size: 14px;" />
<span style="color: rgb(33, 37, 41); font-family: Arial; font-size: 14px;">Gi&aacute;: 150k</span><br style="box-sizing: border-box; color: rgb(33, 37, 41); font-family: Arial; font-size: 14px;" />
<span style="color: rgb(33, 37, 41); font-family: Arial; font-size: 14px;">Chất: Nỉ l&oacute;t b&ocirc;ng mịn, da c&aacute; đẹp dầy dặn</span><br style="box-sizing: border-box; color: rgb(33, 37, 41); font-family: Arial; font-size: 14px;" />
<span style="color: rgb(33, 37, 41); font-family: Arial; font-size: 14px;">Size: Frsz cho nam c&acirc;n nặng từ 50-70 k&yacute;</span><br style="box-sizing: border-box; color: rgb(33, 37, 41); font-family: Arial; font-size: 14px;" />
<span style="color: rgb(33, 37, 41); font-family: Arial; font-size: 14px;">+ freeship kh&aacute;ch h&agrave;ng tại khu vực H&agrave; Nội</span><br style="box-sizing: border-box; color: rgb(33, 37, 41); font-family: Arial; font-size: 14px;" />
<span style="color: rgb(33, 37, 41); font-family: Arial; font-size: 14px;">+ hỗ trợ đơn ship h&agrave;ng to&agrave;n quốc đồng gi&aacute; only 30k</span>', CAST(N'2020-10-14T22:12:48.000' AS DateTime), CAST(N'2020-10-14T22:12:48.000' AS DateTime), 8, 6)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (33, N'Bộ thể thao Thu Đông nam umi HQ M02 ', 6, 4, 9, N'9f1ded30-f17f-11e9-8061-87a69b0ffe34.jpg', 10, 250000, N'<span style="color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14.875px; white-space: pre-wrap;">Sắp sang thu đ&ocirc;ng n&ecirc;n shop cập nhật mẫu thể thao cực hot cho c&aacute;c bạn ạ! Bộ n&agrave;y chất liệu vải thun u m&igrave; H&agrave;n Quốc cực mịn, kh&ocirc;ng lo phai x&ugrave;. Mặc l&ecirc;n người sang, xịn, mịn lắm nh&eacute;! H&agrave;ng nh&agrave; shop đổ bu&ocirc;n n&ecirc;n gi&aacute; cực rẻ đ&oacute; ạ, c&aacute;c bạn mua ngo&agrave;i bộ n&agrave;y phải 350-400k lu&ocirc;n đ&oacute; nha. Ảnh shop tự chụp n&ecirc;n c&aacute;c bạn y&ecirc;n t&acirc;m như mẫu, sai mẫu shop xin ho&agrave;n tiền 100% cho c&aacute;c bạn ạ! Chất liệu: Vải U m&igrave; H&agrave;n Size: ➡️ Size L: 50-57kg ➡️ Size XL:57-62kg ➡️Size 2XL: 63-71kg</span>', CAST(N'2020-10-14T22:16:38.000' AS DateTime), CAST(N'2020-10-14T22:16:38.000' AS DateTime), 8, 6)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (34, N'Áo Hoodie Nỉ Ngoại Ulzzang Có Mũ', 3, 4, 8, N'906760ed928f31bda291bcaa6da4b3d3.jpg', 10, 150000, N'<span style="color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14.875px; white-space: pre-wrap;">Chất liệu nỉ Ngoại cực đẹp Cao cấp từng chi tiết : D&acirc;y &aacute;o c&oacute; khuy&ecirc;n, đường chỉ may chắc chắn, in h&igrave;nh sắc n&eacute;t , vải D&agrave;y Dặn.... Kh&aacute;ch vui l&ograve;ng kh&ocirc;ng so s&aacute;nh gi&aacute; cả với c&aacute;c sp rẻ kh&aacute;c nh&eacute; . Tiền n&agrave;o của nấy . C&aacute;m ơn ❤️ Size L : 40-60kg Size XL :61-75kg NAM NỮ MẶC ĐƯỢC NHA</span>', CAST(N'2020-10-14T22:25:09.000' AS DateTime), CAST(N'2020-10-14T22:25:09.000' AS DateTime), 12, 6)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (35, N'Áo hoodie trơn nỉ PE Cacao giữ ấm tốt William', 3, 6, 8, N'eadc5cb42ccc62e4329594cbd2bcb271.jpg', 10, 150000, N'<span style="color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14.875px; white-space: pre-wrap;">&Aacute;o hoodie nỉ b&ocirc;ng basic trơn m&agrave;u đỏ unisex ulzzang form rộng M&ugrave;a đ&ocirc;ng l&agrave;m sao c&oacute; thể thiếu được những em hoodie trơn thế n&agrave;y 😍😍 đơn giản m&agrave; vẫn đẹp, chẳng bh lỗi mốt lu&ocirc;n ấy Price: 150.000₫ Size: M L XL </span>', CAST(N'2020-10-14T22:31:34.000' AS DateTime), CAST(N'2020-10-14T22:31:34.000' AS DateTime), 12, 5)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (36, N'HOODIE TRƠN BASIC', 17, 6, 8, N'ao-hoodie-tron-xanh-reu-min-247x296.jpg', 15, 199000, N'<br />
<ul style="box-sizing: border-box; letter-spacing: -0.2px; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Roboto Condensed&quot;; font-size: 18px;">
	<li class="bullet-star" style="box-sizing: border-box; letter-spacing: -0.2px; margin: 0px; list-style: none; position: relative; padding: 7px 0px 7px 25px; border-bottom: 1px solid rgb(236, 236, 236);">
		<span style="box-sizing: border-box; letter-spacing: -0.2px; font-size: 20px;">Chất&nbsp;<span style="box-sizing: border-box; letter-spacing: -0.2px; font-weight: bolder;">nỉ xuất</span>&nbsp;mềm mịn, d&agrave;y dạn kh&ocirc;ng x&ugrave; l&ocirc;ng</span></li>
	<li class="bullet-star" style="box-sizing: border-box; letter-spacing: -0.2px; margin: 0px; list-style: none; position: relative; padding: 7px 0px 7px 25px; border-bottom: 1px solid rgb(236, 236, 236);">
		<span style="box-sizing: border-box; letter-spacing: -0.2px; font-size: 20px;"><span style="box-sizing: border-box; letter-spacing: -0.2px; font-weight: bolder;">Mũ &aacute;o</span>&nbsp;to mặc l&ecirc;n rất đẹp</span></li>
	<li class="bullet-star" style="box-sizing: border-box; letter-spacing: -0.2px; margin: 0px; list-style: none; position: relative; padding: 7px 0px 7px 25px; border-bottom: 1px solid rgb(236, 236, 236);">
		<span style="box-sizing: border-box; letter-spacing: -0.2px; font-size: 20px;">Form&nbsp;<span style="box-sizing: border-box; letter-spacing: -0.2px; font-weight: bolder;">Unisex</span>&nbsp;thoải m&aacute;i</span></li>
	<li class="bullet-star" style="box-sizing: border-box; letter-spacing: -0.2px; margin: 0px; list-style: none; position: relative; padding: 7px 0px 7px 25px; border-bottom: 1px solid rgb(236, 236, 236);">
		<span style="box-sizing: border-box; letter-spacing: -0.2px; font-size: 20px;">C&oacute;&nbsp;<span style="box-sizing: border-box; letter-spacing: -0.2px; font-weight: bolder;">7 m&agrave;u</span>: Hồng, Xanh Đen, V&agrave;ng, Đỏ, X&aacute;m, Xanh Bis, Xanh R&ecirc;u</span></li>
</ul>
<br />
', CAST(N'2020-10-14T22:34:57.000' AS DateTime), CAST(N'2020-10-14T22:34:57.000' AS DateTime), 12, 5)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (37, N'Áo Hoodie Cổ Khóa Đen Trắng Unisex Mẫu Áo Hoodie Nam và Nữ Đẹp ', 6, 6, 8, N'download (1).jpg', 5, 150000, N'<span style="color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14.875px; white-space: pre-wrap;">Shop chuy&ecirc;n thời trang Unisex H&agrave;ng chất đẹp, gi&aacute; th&agrave;nh hợp l&yacute;. NAM NỮ MẶC ĐƯỢC NHA &Aacute;o Hoodie Cổ Kh&oacute;a 2 m&agrave;u đen v&agrave; trắng. &Aacute;o FREESIZE DƯỚI 60KG. (&Aacute;o m&agrave;u trắng kh&oacute;a đen nh&eacute;) C&aacute;c bạn muốn chọn size ph&ugrave; hợp c&oacute; thể xem h&igrave;nh feedback c&aacute;c kh&aacute;ch đ&atilde; mua hoặc inbox cho shop tư vấn ạ &Aacute;o Hoodie chất vải nỉ &Aacute;o s&aacute;ng m&agrave;u, bảo h&agrave;nh giặt m&aacute;y thoải m&aacute;i Kiểu d&aacute;ng thời trang, &aacute;o d&aacute;ng su&ocirc;ng, mặc rất thoải m&aacute;i, dễ phối đồ Kiểu d&aacute;ng trẻ trung, nam hay nữ đều mặc được</span>', CAST(N'2020-10-14T22:41:25.000' AS DateTime), CAST(N'2020-10-14T22:41:25.000' AS DateTime), 12, 6)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (38, N'Quần Jeans Nam Rách Gối Chất Jean Cotton Co Giãn Dáng Ôm Thời Trang', 6, 4, 1, N'10194-clean-68e53def8b2e6d70343f.png', 15, 280000, N'<span style="color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14.875px; white-space: pre-wrap;">+ Th&agrave;nh phần chất liệu: 98% Cotton ( thấm h&uacute;t ) / 2% Spandex ( co d&atilde;n ) + Form d&aacute;ng: Slim fit + M&agrave;u sắc: nhiều m&agrave;u + Size : 28/29/30/31/32/33 + Ưu điểm: tho&aacute;ng m&aacute;t, thấm h&uacute;t mồ h&ocirc;i tốt, co d&atilde;n nhẹ + Nhược điểm: Wash tay n&ecirc;n chưa đều m&agrave;u giữa c&aacute;c sản phẩm + Hướng dẫn Bảo quản: Giặt tay- giặt m&aacute;y đều được, hạn chế sấy ở nhiệt độ cao, tr&aacute;nh phơi sản phẩm ngo&agrave;i trời qu&aacute; l&acirc;u + Điểm nổi bật: Bền m&agrave;u cam kết kh&ocirc;ng phai khi giặt ở điều kiện b&igrave;nh thường. + Phong c&aacute;ch kết hợp tham khảo: ph&ugrave; hợp với mặc đi l&agrave;m, đi chơi, du lịch, phượt... - Kết hợp với &aacute;o: &aacute;o thun, &aacute;o sơ mi denim, họa tiết c&aacute;c loại dựa v&agrave;o phong c&aacute;ch v&agrave; da/ d&aacute;ng người mặc. - Phụ kiện: gi&agrave;y sneaker, đế c&oacute;i, d&eacute;p t&ocirc;ng, đế trấu, balo, mũ * Sản phẩm được thiết kế v&agrave; sản xuất bởi h&atilde;ng thời trang nam Routine -------------------------------------------- * C&aacute;ch chọn size: - Size 28 : C&acirc;n nặng 41 - 47kg, cao 1m60 - 1m67 / Chiều d&agrave;i quần 90cm, v&ograve;ng bụng 71cm, ống c&ocirc;n 15 - Size 29 : C&acirc;n nặng 48 - 52kg, cao 1m65 - 1m70 / Chiều d&agrave;i quần 92cm, v&ograve;ng bụng 73cm, ống c&ocirc;n 15 - Size 30 : C&acirc;n nặng 53 - 57kg, cao 1m68 - 1m75 / Chiều d&agrave;i quần 94cm, v&ograve;ng bụng 76cm, ống c&ocirc;n 15.5 - Size 31 : C&acirc;n nặng 58 - 62kg, cao 1m70 - 1m76 / Chiều d&agrave;i quần 96cm, v&ograve;ng bụng 79cm, ống c&ocirc;n 16 - Size 32 : C&acirc;n nặng 63 - 65kg, cao 1m70 - 1m80 / Chiều d&agrave;i quần 98cm, v&ograve;ng bụng 81cm, ống c&ocirc;n 16.5 - Size 33 : C&acirc;n nặng 66 - 72kg, cao 1m75 - 1m80 / Chiều d&agrave;i quần 100cm, v&ograve;ng bụng 84cm, ống c&ocirc;n 17 -------------------------------------------- - Mặc d&ugrave; quần jean kh&ocirc;ng c&ograve;n xa lạ với ch&uacute;ng ta nhưng những mẫu quần jean r&aacute;ch lu&ocirc;n được săn đ&oacute;n tr&ecirc;n thị trường v&agrave; chiếm trọn t&igrave;nh cảm của c&aacute;nh m&agrave;y r&acirc;u. - Bạn c&oacute; thể dễ d&agrave;ng lựa chọn cho m&igrave;nh kiểu d&aacute;ng ph&ugrave; hợp, mỗi đường r&aacute;ch tr&ecirc;n chiếc quần jean d&ugrave; nhẹ nh&agrave;ng hay t&aacute;o bạo đều đem đến phong c&aacute;ch ri&ecirc;ng, độc đ&aacute;o v&agrave; ấn tượng n&ecirc;n chắc chắn sẽ gi&uacute;p c&aacute;c ch&agrave;ng trai trở n&ecirc;n nổi bật v&agrave; phong c&aacute;ch hơn. - H&atilde;y chọn sản phẩm Quần Jeans đặt mua v&agrave; ch&uacute;ng t&ocirc;i sẽ tư vấn v&agrave; giao h&agrave;ng đến tận nơi cho qu&iacute; kh&aacute;ch. Xin cảm ơn qu&yacute; kh&aacute;ch.</span>', CAST(N'2020-10-14T22:49:11.000' AS DateTime), CAST(N'2020-10-14T22:49:11.000' AS DateTime), 11, 5)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (39, N'Quần Jean Nam Rách Xanh Xước Trắng Dọc Thời Thượng', 1, 4, 1, N'download (2).jpg', 15, 249000, N'<span style="color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14.875px; white-space: pre-wrap;">***NỘI DUNG SẢN PHẨM: - Kiểu d&aacute;ng quần jean nam form chuẩn thời trang, s&agrave;nh điệu. - Quần jean nam l&agrave; c&aacute;c m&agrave;u: đen, x&aacute;m, xanh, trắng, ghi,... với c&aacute;c kiểu d&aacute;ng r&aacute;ch, xước, trơn, c&agrave;o xước,... - C&oacute; hai t&uacute;i x&eacute;o trước v&agrave; hai t&uacute;i sau rất tiện dụng. - Chất liệu QUẦN JEAN CO GIẢN co d&atilde;n bền đẹp, chắc chắn, kh&ocirc;ng phai m&agrave;u, kh&ocirc;ng co r&uacute;t khi giặt. - Đường chỉ may chắc chắn, tỉ mỉ, tinh tế cả những chi tiết nhỏ nhất. - Ph&ugrave; hợp nhiều lứa tuổi n&ecirc;n bạn sẽ ho&agrave;n to&agrave;n an t&acirc;m khi mặc sản phẩm. - PHỐI HỢP ĐƯỢC VỚI NHIỀU TRANG PHỤC &Aacute;O SƠ MI, &Aacute;OTHUN,... TẠO N&Ecirc;N VẺ ĐIỂN TRAI PHONG ĐỘ M&Agrave; KH&Ocirc;NG K&Eacute;M PHẦN SANG CHẢNH LỊCH L&Atilde;M. ##### HOT HOT HOT: CHỐT SỈ SLL 100 C&Aacute;I TRỞ L&Ecirc;N NHẬN GI&Aacute; SI&Ecirc;U HẤP DẪN ***C&Aacute;CH CHỌN SIZE THAM KHẢO ĐỂ C&Oacute; THỂ CHỌN ĐƯỢC QUẦN JEAN NAM PH&Ugrave; HỢP NHẤT: &gt; Size 27: C&acirc;n nặng 33 - 39kg, cao Khoảng 1m40 - 1m49 &gt; Size 28 : C&acirc;n nặng 41 - 47kg, cao Khoảng 1m52 - 1m65 &gt; Size 29 : C&acirc;n nặng 48 - 52kg, cao Khoảng 1m65 - 1m69 &gt; Size 30 : C&acirc;n nặng 53 - 57kg, cao Khoảng 1m70 - 1m73 &gt; Size 31 : C&acirc;n nặng 58 - 63kg, cao Khoảng 1m72 - 1m75 &gt; Size 32 : C&acirc;n nặng 64 - 69kg, cao Khoảng 1m74 - 1m77 &gt; Size 33 : C&acirc;n nặng 70 - 73kg, cao Khoảng 1m75 - 1m80 &gt; Size 34 : C&acirc;n nặng 74 - 77kg, cao Khoảng 1m75 - 1m80</span>', CAST(N'2020-10-14T22:54:33.000' AS DateTime), CAST(N'2020-10-14T22:54:33.000' AS DateTime), 11, 5)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (40, N'QUẦN JEAN NGỐ', 1, 4, 1, N'images.jpg', 5, 130000, N'<span style="color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14.875px; white-space: pre-wrap;">&bull; Vải jean kh&ocirc;ng co gi&atilde;n, d&agrave;y dặn &rarr; Si&ecirc;u bền 2 năm &bull; Form ống su&ocirc;ng (ống đứng) &rarr; Dễ mặc, kh&ocirc;ng k&eacute;n d&aacute;ng &bull; Kh&oacute;a k&eacute;o v&agrave; khuy c&agrave;i bằng đồng &rarr; Kh&ocirc;ng gỉ &bull; M&agrave;u nhuộm 2 lần &rarr; Bền m&agrave;u l&acirc;u phai Hướng dẫn sử dụng quần short jean quần ngố nam &bull; Lần giặt đầu ti&ecirc;n: giặt ri&ecirc;ng với nước lạnh để tr&aacute;nh loang m&agrave;u. &bull; Kh&ocirc;ng d&ugrave;ng c&aacute;c chất tẩy rửa mạnh (như nước tẩy Javel...) l&agrave;m bạc m&agrave;u. &bull; Giũ mạnh rồi phơi. Quần sẽ giữ form l&acirc;u hơn v&agrave; phẳng phiu khi kh&ocirc;. Mẹo g&uacute;p quần short jean Q110[nhập DONG25846 giảm ngay15k] donghonytran quần ngố nam lu&ocirc;n bền m&agrave;u &bull; Lần giặt đầu: Cho quần v&agrave;o ngăn đ&aacute; tủ lạnh/ Pha muối đậm với nước lạnh, ng&acirc;m từ 10 - 12 tiếng (ng&acirc;m qua đ&ecirc;m l&agrave; tốt nhất) sau đ&oacute; xả nước rồi phơi. &bull; Với quần m&agrave;u tối: Th&ecirc;m muối/ tr&agrave;/ nước c&agrave; ph&ecirc;(khi giặt ri&ecirc;ng quần) v&agrave;o lượt nước xả cuối. Ưu điểm của sản quần short jean Q110[nhập DONG25846 giảm ngay15k] donghonytran quần ngố nam 🌟 Vải Jean đặc biệt tạo cho chiếc quần jean một phom d&aacute;ng đơn giản, kh&ocirc;ng qu&aacute; k&eacute;n d&aacute;ng người mặc l&agrave; một trong những yếu tố gi&uacute;p bộ trang phục n&agrave;y lu&ocirc;n hợp thời trang với phong c&aacute;ch hiện đại. 🌟 Bộ thời trang c&oacute; m&agrave;u sắc thanh lịch c&ugrave;ng chất liệu Jean đặc biệt l&agrave; một gợi &yacute; ho&agrave;n hảo cho c&aacute;c qu&yacute; kh&aacute;ch theo đuổi vẻ đẹp sang trọng, tinh tế v&agrave; s&agrave;nh điệu. 🌟 Chất liệu vải Jean gi&uacute;p thoải m&aacute;i trong mọi hoạt động, vải mềm mịn, &iacute;t nhăn, &iacute;t x&ugrave; l&ocirc;ng, giữ d&aacute;ng kh&ocirc;ng bai. 🌟 Thiết kế thời trang Jean đơn giản nhưng lu&ocirc;n tạo được ấn tượng đặc biệt đối với người nh&igrave;n. 🌟Đường may đẹp, chắc chắn, đường may tỉ mỉ, hiện đại. ✮ ✮ ✮ ✮ ✮ 👉 Size 28 (Từ 43 - 50kg Cao Dưới 1m65) V&ograve;ng bụng 79cm 👉 Size 29 (Từ 50 - 55kg Cao Dưới 1m65) V&ograve;ng bụng 80cm 👉 Size 30 (Từ 55 - 59kg Cao Dưới 1m70) V&ograve;ng bụng 81cm 👉 Size 31 ( Từ 60- 64kg Cao Dưới 1m75) V&ograve;ng bụng 83cm 👉 Size 32 (Từ 65 - 70kg Cao Dưới 1m78) V&ograve;ng bụng 85cm 👉 Size 33 (Từ 70 - 75kg Cao Dưới 1m80) V&ograve;ng bụng 87cm 👉 Size 34 (Từ 70 - 75kg Cao Dưới 1m80) V&ograve;ng bụng 89</span>', CAST(N'2020-10-14T22:58:31.000' AS DateTime), CAST(N'2020-10-14T22:58:31.000' AS DateTime), 11, 5)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (41, N'Quần đùi jean nam trơn', 6, 4, 1, N'images (1).jpg', 5, 150000, N'<span style="color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14.875px; white-space: pre-wrap;">🔒 TH&Ocirc;NG TIN SẢN PHẨM ▪️ Chất liệu: Vải jean . ▪️ Đường may chắc chắn, tỉ mỉ ▪️ Vải mềm, mịn, c&oacute; co gi&atilde;n nhẹ. ▪️ Thấn h&uacute;t mồ h&ocirc;i, m&aacute;t mẻ, tạo sự thoải m&aacute;i khi mặc. ▪️ Size: 29 đến 32 -------------------------------------------------------- 💡 HƯỚNG DẪN SỬ DỤNG: Giặt sản phẩm bằng nước lạnh. Hạn chế giặt m&aacute;y, giặt m&aacute;y với chế độ len. N&ecirc;n sử dụng c&aacute;ch loại x&agrave; ph&ograve;ng, nước tẩy nhẹ, kh&ocirc;ng d&ugrave;ng chất ng&acirc;m tẩy Kh&ocirc;ng n&ecirc;n giặt quần Quần với c&aacute;c sản phẩm thời trang cầu k&igrave; kh&aacute;c : như c&oacute; m&oacute;c, c&oacute; kh&oacute;a cứng, c&oacute; nhiều họa tiết L&agrave;, ủi ở nhiệt độ trung b&igrave;nh..</span>', CAST(N'2020-10-14T23:05:45.000' AS DateTime), CAST(N'2020-10-14T23:05:45.000' AS DateTime), 11, 4)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (42, N'Áo khoác nỉ nam dáng dài, phong cách Âu Mỹ thời thượng ', 6, 4, 8, N'unnamed.jpg', 15, 599000, N'<div class="extra-desc-info" style="box-sizing: border-box; padding: 10px 10px 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
	<ul class="clearfix" style="box-sizing: border-box; margin: 0px; padding-right: 0px; padding-left: 0px; list-style: none; border-bottom: 1px dotted rgb(204, 204, 204);">
		<li class="tsf" style="box-sizing: border-box; float: left; width: 206.784px; margin: 0px 10px 10px 0px;">
			Loại h&agrave;ng : C&oacute; sẵn</li>
		<li class="tsf" style="box-sizing: border-box; float: left; width: 206.784px; margin: 0px 10px 10px 0px;">
			M&agrave;u sắc : M&agrave;u đen, m&agrave;u x&aacute;m, m&agrave;u n&acirc;u nhạt</li>
		<li class="tsf" style="box-sizing: border-box; float: left; width: 206.784px; margin: 0px 10px 10px 0px;">
			Tồn kho : Kh&ocirc;ng</li>
		<li class="tsf" style="box-sizing: border-box; float: left; width: 206.784px; margin: 0px 10px 10px 0px;">
			Kiểu d&aacute;ng : &ocirc;m th&acirc;n - b&oacute; s&aacute;t</li>
		<li class="tsf" style="box-sizing: border-box; float: left; width: 206.784px; margin: 0px 10px 10px 0px;">
			Kinh doanh xuất nhập khẩu : Kh&ocirc;ng</li>
		<li class="tsf" style="box-sizing: border-box; float: left; width: 206.784px; margin: 0px 10px 10px 0px;">
			Độ d&agrave;y : Trung b&igrave;nh</li>
		<li class="tsf" style="box-sizing: border-box; float: left; width: 206.784px; margin: 0px 10px 10px 0px;">
			Kiểu cổ : cổ bẻ</li>
		<li class="tsf" style="box-sizing: border-box; float: left; width: 206.784px; margin: 0px 10px 10px 0px;">
			Thương hiệu : kh&aacute;c</li>
		<li class="tsf" style="box-sizing: border-box; float: left; width: 206.784px; margin: 0px 10px 10px 0px;">
			Th&agrave;nh phần chất liệu : cotton pha</li>
		<li class="tsf" style="box-sizing: border-box; float: left; width: 206.784px; margin: 0px 10px 10px 0px;">
			Phạm vi sai số : 1-3cm</li>
		<li class="tsf" style="box-sizing: border-box; float: left; width: 206.784px; margin: 0px 10px 10px 0px;">
			K&iacute;ch thước : M, L, XL, XXL, XXXL</li>
		<li class="tsf" style="box-sizing: border-box; float: left; width: 206.784px; margin: 0px 10px 10px 0px;">
			Đai &aacute;o : c&oacute; đai &aacute;o</li>
		<li class="tsf" style="box-sizing: border-box; float: left; width: 206.784px; margin: 0px 10px 10px 0px;">
			Liền mũ : kh&ocirc;ng liền mũ</li>
		<li class="tsf" style="box-sizing: border-box; float: left; width: 206.784px; margin: 0px 10px 10px 0px;">
			M&atilde; h&agrave;ng : N01F23</li>
		<li class="tsf" style="box-sizing: border-box; float: left; width: 206.784px; margin: 0px 10px 10px 0px;">
			M&ugrave;a : M&ugrave;a xu&acirc;n, m&ugrave;a thu, m&ugrave;a đ&ocirc;ng</li>
		<li class="tsf" style="box-sizing: border-box; float: left; width: 206.784px; margin: 0px 10px 10px 0px;">
			Kiểu kh&oacute;a : hai h&agrave;ng c&uacute;c</li>
		<li class="tsf" style="box-sizing: border-box; float: left; width: 206.784px; margin: 0px 10px 10px 0px;">
			Chất liệu : nỉ</li>
		<li class="tsf" style="box-sizing: border-box; float: left; width: 206.784px; margin: 0px 10px 10px 0px;">
			Phong c&aacute;ch : &Acirc;u Mỹ</li>
		<li class="tsf" style="box-sizing: border-box; float: left; width: 206.784px; margin: 0px 10px 10px 0px;">
			Họa tiết : một m&agrave;u</li>
		<li class="tsf" style="box-sizing: border-box; float: left; width: 206.784px; margin: 0px 10px 10px 0px;">
			Độ d&agrave;i &aacute;o : d&agrave;i (80cm&lt;độ d&agrave;i &aacute;o&le;100cm)</li>
	</ul>
</div>
<div class="prd-image" style="box-sizing: border-box; padding: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
	<p style="box-sizing: border-box; margin: 0px 0px 10px;">
		<img src="http://i00.c.aliimg.com/img/ibank/2013/863/655/938556368_1074330809.jpg" style="box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: auto;" /><img src="http://i03.c.aliimg.com/img/ibank/2013/207/405/926504702_1074330809.jpg" style="box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: auto;" /><img src="http://i01.c.aliimg.com/img/ibank/2013/637/405/926504736_1074330809.jpg" style="box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: auto;" /><img src="http://i03.c.aliimg.com/img/ibank/2013/657/405/926504756_1074330809.jpg" style="box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: auto;" /></p>
</div>
<br />
', CAST(N'2020-10-14T23:08:50.000' AS DateTime), CAST(N'2020-10-14T23:08:50.000' AS DateTime), 13, 6)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (43, N'Áo măng tô kaki nam lót lông', 13, 3, 10, N'ao-mang-to-kaki-nam-lot-long.jpg', 15, 769000, N'<p style="box-sizing: border-box; margin: 0px 0px 15px; color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 14px;">
	&Aacute;o l&agrave;m từ chất liệu vải kaki đặc biệt d&agrave;y dặn, mềm mịn cao cấp, kh&ocirc;ng phai m&agrave;u, b&ecirc;n trong được l&oacute;t lớp l&ocirc;ng gi&uacute;p giữ nhiệt tốt. Sản phẩm với đường may tinh xảo tạo n&ecirc;n chất lượng cho sản phẩm. Với 3 m&agrave;u đen, r&ecirc;u v&agrave;ng nam t&iacute;nh cho c&aacute;c bạn nam th&ecirc;m cuốn h&uacute;t.&nbsp;&Aacute;o c&oacute; size từ M - 3XL cho người từ 50 đến 80kg.</p>
<p style="box-sizing: border-box; margin: 0px 0px 15px; color: rgb(102, 102, 102); font-family: Arial, sans-serif; font-size: 14px;">
	Sản phẩm rất hợp với những chuyến đi chơi, tụ tập bạn b&egrave;. H&atilde;y c&ugrave;ng chi&ecirc;m ngưỡng th&ecirc;m 1 số h&igrave;nh ảnh về sản phẩm v&agrave; đặt mua ngay cho m&igrave;nh 1 chiếc nh&eacute; !!!</p>
<div>
	&nbsp;</div>
', CAST(N'2020-10-14T23:35:21.000' AS DateTime), CAST(N'2020-10-14T23:35:21.000' AS DateTime), 13, 4)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (44, N'Áo khoác măng tô dạ lông cừu', 7, 4, 11, N'ao-mang-to-da-long-cuu-nam-hang-hieu-mind-bridge-xuat-khau-mau-xam-xanh-1.jpg', 20, 1150000, N'<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;">
	<span style="box-sizing: border-box; font-weight: bolder;">Chi tiết:</span></p>
<ul style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;">
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		&Aacute;o măng t&ocirc; nam chất dạ l&ocirc;ng cừu h&agrave;ng hiệu Mind Bridge, xuất khẩu H&agrave;n.</li>
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		Kiểu d&aacute;ng H&agrave;n Quốc trẻ trung, chất dạ l&ocirc;ng cừu cực ấm.</li>
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		Thiết kế 2 t&uacute;i xi&ecirc;n c&oacute; nắp.</li>
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		M&atilde;: MRCA7109</li>
</ul>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;">
	<span style="box-sizing: border-box; font-weight: bolder;">Th&ocirc;ng số:</span></p>
<ul style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;">
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		Chất liệu: Lớp ngo&agrave;i Polyester 46%, L&ocirc;ng cừu 38%, Chất liệu kh&aacute;c 16%</li>
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		M&agrave;u sắc: X&aacute;m xanh, x&aacute;m đen, v&agrave;ng be</li>
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		Size: 95, 100, 105, 110 cho nam giới 60 &ndash; 100kg&hellip;</li>
</ul>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;">
	<span style="box-sizing: border-box; font-weight: bolder;">Bảo quản:</span></p>
<ul style="box-sizing: border-box; list-style-position: initial; list-style-image: initial; margin-top: 0px; padding-right: 0px; padding-left: 0px; margin-bottom: 1.3em; color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;">
	<li style="box-sizing: border-box; margin-bottom: 0.6em; margin-left: 1.3em;">
		giặt kh&ocirc;.</li>
</ul>
', CAST(N'2020-10-14T23:40:12.000' AS DateTime), CAST(N'2020-10-14T23:40:12.000' AS DateTime), 13, 6)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (45, N'Áo khoác dạ măng tô nam cao cấp ', 7, 3, 11, N'Ao-Khoac-Da-Mang-To-Nam-Han-Quoc-dep-gia-re-tai-Ha-Noi-Ao-khoac-da-nam-dang-dai-qua-dau-goi.jpg', 15, 1399000, N'<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;">
	<span style="color: rgb(102, 102, 102); font-family: Arial, Helvetica, &quot;trebuchet ms&quot;;">&Aacute;o kho&aacute;c dạ măng t&ocirc; nam cao cấp H&agrave;n Quốc nhập khẩu tại H&agrave; Nội ,th&agrave;nh phố Hồ Ch&iacute; Minh. Chất liệu dạ l&ocirc;ng cừu cao cấp si&ecirc;u mịn v&agrave; chất, chạm tay v&agrave;o sẽ thấy sự kh&aacute;c biệt v&agrave; đẳng cấp. Size S,M,L,Xl, c&oacute; cả XXL, 3xl,4xl,5xl... Cho Người big size Ngoại cỡ. Shop c&ograve;n rất nhiều mẫu mới về v&agrave; lu&ocirc;n c&oacute; sẵn 500 &aacute;o với nhiều mẫu m&atilde; phong ph&uacute; , qu&yacute; kh&aacute;ch nhắn tin inbox để được shop tư vấn hoặc qua trực tiếp địa chỉ shop để xem nh&eacute;.</span></p>
', CAST(N'2020-10-14T23:44:45.000' AS DateTime), CAST(N'2020-10-14T23:44:45.000' AS DateTime), 13, 6)
SET IDENTITY_INSERT [dbo].[db_SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[db_Size] ON 

INSERT [dbo].[db_Size] ([SizeID], [TenSize]) VALUES (2, N'M')
INSERT [dbo].[db_Size] ([SizeID], [TenSize]) VALUES (3, N'L')
INSERT [dbo].[db_Size] ([SizeID], [TenSize]) VALUES (4, N'XL')
INSERT [dbo].[db_Size] ([SizeID], [TenSize]) VALUES (5, N'XXL')
INSERT [dbo].[db_Size] ([SizeID], [TenSize]) VALUES (6, N'Free size')
INSERT [dbo].[db_Size] ([SizeID], [TenSize]) VALUES (7, N'Unisex')
SET IDENTITY_INSERT [dbo].[db_Size] OFF
GO
SET IDENTITY_INSERT [dbo].[db_TinTuc] ON 

INSERT [dbo].[db_TinTuc] ([TinTucID], [TieuDe], [AnhDaiDien], [MoTa], [NgayDang], [LuotXem], [ChiTiet], [ThuTu], [MaDM]) VALUES (3, N'Phong cách của bố: Nghe tưởng kỳ quái nhưng lại là trào lưu hot', N'1603273060-107-thumbnail-width640height480.jpg', N'Phong cách Dad vốn là phong cách của những người đàn ông trung niên hai thập kỷ trước hay mặc trong những ngày...', CAST(N'2020-10-22T00:00:00.000' AS DateTime), 27, N'<h2 class="ctTp tuht_show" id="article_sapo" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; margin: 10px 0px; line-height: 1.6; color: rgb(0, 0, 0);">
	Phong c&aacute;ch Dad vốn l&agrave; phong c&aacute;ch của những người đ&agrave;n &ocirc;ng trung ni&ecirc;n hai thập kỷ trước hay mặc trong những ng&agrave;y nghỉ. Tuy nhi&ecirc;n, giờ đ&acirc;y ch&uacute;ng lại trở th&agrave;nh một xu hướng phổ biến trong giới trẻ.</h2>
<div class="sbNws" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: normal; margin-bottom: 20px; color: rgb(0, 0, 0);">
	Sự kiện:&nbsp;<a class="sbevt clrGr fs12" href="https://www.24h.com.vn/xu-huong-thoi-trang-c78e1201.html" style="font-size: 15px; color: rgb(55, 139, 54); line-height: normal;" title="Xu hướng thời trang">Xu hướng thời trang</a></div>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">Thời trang Dad l&agrave; g&igrave;?</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Đ&oacute; l&agrave; xu hướng thời trang kỳ quặc nhất hiện c&oacute; tr&ecirc;n thế giới. Thời trang &quot;Dad&quot; mới nổi l&ecirc;n c&aacute;ch đ&acirc;y v&agrave;i năm, với những người mẫu thể thao mặc quần cạp cao, quần jean m&agrave;i kiểu đ&aacute; x&aacute;m&nbsp;stonewash tr&ecirc;n s&agrave;n catwalk. Đ&acirc;y vốn l&agrave; một phong c&aacute;ch được thấy v&agrave;o hai thập kỷ trước, được nhiều người đ&agrave;n &ocirc;ng trung ni&ecirc;n y&ecirc;u th&iacute;ch trong những ng&agrave;y nghỉ.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Phong cách của bố: Nghe tưởng kỳ quái nhưng lại là trào lưu hot - 1" class="news-image initial loading" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-21/Phong-cach-Dad-xu-huong-ki-quac-cua-the-ky-21-1-1603273144-482-width500height750.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">Tại sao Dad Fashion lại được ưa chuộng</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Sự ph&acirc;n chia giữa trang phục thường ng&agrave;y casual v&agrave; trang phục c&ocirc;ng sở ng&agrave;y c&agrave;ng dần bị mờ nhạt. Ng&agrave;y nay, việc mặc một chiếc quần jean đi l&agrave;m l&agrave; kh&ocirc;ng c&oacute; g&igrave; lạ, miễn l&agrave; quần jean kh&ocirc;ng bị r&aacute;ch hoặc qu&aacute; sờn.</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Nếu bạn l&agrave;m việc trong m&ocirc;i trường s&aacute;ng tạo hoặc c&ocirc;ng nghệ, &aacute;o ph&ocirc;ng thậm ch&iacute; kh&ocirc;ng phải l&agrave; điều cấm kỵ m&agrave; c&ograve;n được khuyến kh&iacute;ch. Mặt kh&aacute;c, những bộ veston từng l&agrave; ti&ecirc;u chuẩn gần như lỗi thời, chỉ thực sự d&agrave;nh ri&ecirc;ng cho những ng&agrave;nh nghề cũ kỹ như ng&acirc;n h&agrave;ng, t&agrave;i ch&iacute;nh v&agrave; luật.</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	V&igrave; vậy,&nbsp;khi Balenciaga ra mắt bộ sưu tập&nbsp;Xu&acirc;n/H&egrave; 2018 t&ocirc;n vinh những kiểu d&aacute;ng phong c&aacute;ch Dad&nbsp;của nhiều thập kỷ trước, nhiều người đ&atilde; nhanh ch&oacute;ng y&ecirc;u th&iacute;ch những kiểu d&aacute;ng lỗi thời một c&aacute;ch c&oacute; chủ đ&iacute;ch đ&oacute; đặc biệt l&agrave; những đ&ocirc;i gi&agrave;y thể thao cồng kềnh.</p>
<div class="txtCent" id="ADS_159_15s" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; text-align: center; line-height: normal; color: rgb(0, 0, 0);">
	<div id="ADS_159_15stxtBnrHor" style="font-size: 12px; line-height: normal;">
		&nbsp;</div>
</div>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">Phong c&aacute;ch Dad Fashion của thập ni&ecirc;n 90</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	C&oacute; thể bạn quen thuộc với một c&agrave;i h&igrave;nh tượng nổi tiếng của thập nhi&ecirc;n 90 như Jerry Seinfeld với chiếc quần jean ống c&ocirc;n v&agrave; đ&ocirc;i gi&agrave;y thể thao cồng kềnh của thập ni&ecirc;n 90. Larry David, d&agrave;nh cho những phong c&aacute;ch giản dị, thường ng&agrave;y v&agrave; tiết kiệm đ&atilde; thấy trong nhiều năm tr&ecirc;n Curb Your Enthusiasm.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Phong cách của bố: Nghe tưởng kỳ quái nhưng lại là trào lưu hot - 2" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-21/Phong-cach-Dad-xu-huong-ki-quac-cua-the-ky-21-2-1603273144-390-width400height600.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-21/Phong-cach-Dad-xu-huong-ki-quac-cua-the-ky-21-2-1603273144-390-width400height600.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	V&agrave;, sau đ&oacute; l&agrave; bộ sưu tập Balenciaga, với quần &aacute;o ngoại cỡ, &aacute;o blazer h&igrave;nh hộp, &aacute;o sơ mi, &aacute;o anorak, v&agrave; quần jean m&agrave; bạn chưa từng thấy ai mặc hợp thời trang kể từ năm 1995.</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Cốt l&otilde;i của thời trang Dad hiện đại&nbsp;l&agrave; phong c&aacute;ch streetwear bị ảnh hưởng bởi phong c&aacute;ch thập ni&ecirc;n 90 trong v&agrave;i năm qua, vay mượn v&agrave; kết hợp c&aacute;c yếu tố đa dạng như văn h&oacute;a rave, nhạc grunge, phong c&aacute;ch skate v&agrave; thời trang hip-hop.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Phong cách của bố: Nghe tưởng kỳ quái nhưng lại là trào lưu hot - 3" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-21/Phong-cach-Dad-xu-huong-ki-quac-cua-the-ky-21-3-1603273144-982-width484height750.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-21/Phong-cach-Dad-xu-huong-ki-quac-cua-the-ky-21-3-1603273144-982-width484height750.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Tuy nhi&ecirc;n, nếu bạn từng l&agrave; một th&agrave;nh vi&ecirc;n của thế hệ trẻ thời đ&oacute;, thời trang xuất hiện trong c&aacute;c video v&agrave; tạp ch&iacute; &acirc;m nhạc của thập kỷ đ&oacute; ho&agrave;n to&agrave;n l&agrave; kh&aacute;t vọng v&agrave; mơ ước. Th&ocirc;ng thường, bạn chọn &aacute;o ph&ocirc;ng v&agrave; quần jean ống c&ocirc;n trong nửa đầu thập kỷ v&agrave; ống rộng về cuối. Th&ecirc;m v&agrave;o đ&oacute; l&agrave; một đ&ocirc;i gi&agrave;y thể thao với phong c&aacute;ch chạy bộ v&agrave; b&oacute;ng rổ.</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Trong khi đ&oacute;, người lớn lại chọn những bộ đồ veston rộng hơn nhưng kh&ocirc;ng k&eacute;n d&aacute;ng để mặc cho dịp đặc biệt, v&agrave; &aacute;o sơ mi rộng thoải m&aacute;i với quần jean l&agrave; phẳng cho mọi dịp kh&aacute;c.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Phong cách của bố: Nghe tưởng kỳ quái nhưng lại là trào lưu hot - 4" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-21/Phong-cach-Dad-xu-huong-ki-quac-cua-the-ky-21-4-1603273144-138-width500height750.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-21/Phong-cach-Dad-xu-huong-ki-quac-cua-the-ky-21-4-1603273144-138-width500height750.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">Những m&oacute;n đồ phong c&aacute;ch Dad cơ bản</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<em style="line-height: 1.6;">&Aacute;o sơ mi Hawaii</em></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	C&aacute;c xu hướng hiện tại cho thấy một phi&ecirc;n bản &iacute;t g&acirc;y ch&uacute; &yacute; hơn của thời trang Dad. Trường hợp điển h&igrave;nh l&agrave; &aacute;o sơ mi Hawaii.</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	&Aacute;o sơ mi Hawaii, bất kể thập kỷ n&agrave;o, đều được gắn liền với những người đ&agrave;n &ocirc;ng lớn tuổi đi nghỉ m&aacute;t. Chất liệu, đường cắt v&agrave; hoa tiết hiện đại đem lại những kiểu d&aacute;ng ph&ugrave; hợp cho kh&aacute;ch h&agrave;ng trẻ tuổi hơn, nhưng &aacute;o sơ mi Hawaii vẫn l&agrave; một thứ được coi l&agrave; gắn liền với đ&agrave;n &ocirc;ng lớn tuổi.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Phong cách của bố: Nghe tưởng kỳ quái nhưng lại là trào lưu hot - 5" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-21/Phong-cach-Dad-xu-huong-ki-quac-cua-the-ky-21-5-1603273144-922-width600height750.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-21/Phong-cach-Dad-xu-huong-ki-quac-cua-the-ky-21-5-1603273144-922-width600height750.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<em style="line-height: 1.6;">Quần jean Dad</em></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Những chiếc quần jean phong c&aacute;ch Dad ng&agrave;y nay đ&oacute;ng vai tr&ograve; như một phản ứng đối với một thập kỷ phổ biến của những chiếc quần kiểu d&aacute;ng skinny. Đ&atilde; đến l&uacute;c để cho đ&ocirc;i ch&acirc;n của bạn được thở, v&igrave; vậy h&atilde;y cất tủ những trang phục b&oacute; s&aacute;t da v&agrave; pha trộn cotton/spandex. Thay v&agrave;o đ&oacute;, denim, cho d&ugrave; bạn muốn lựa chọn stonewashed, raw hay selvedge, tất cả đều nhằm giải ph&oacute;ng đ&ocirc;i ch&acirc;n bạn.</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Bạn h&atilde;y nghĩ đến chiếc quần jean huyền thoại Levi&rsquo;s 501, đ&acirc;y l&agrave; chiếc quần jean cho bạn nhiều kh&ocirc;ng gian nhưng kh&ocirc;ng rộng th&ugrave;ng th&igrave;nh, n&oacute; mang phong c&aacute;ch truyền thống m&agrave; kh&ocirc;ng c&oacute; vẻ qu&aacute; mức. Chiếc quần mang đến sự thoải m&aacute;i m&agrave; kh&ocirc;ng g&acirc;y cảm gi&aacute;c lười biếng. Đ&acirc;y l&agrave; chiếc quần của bạn c&oacute; thể kết hợp với bất k&igrave; thứ g&igrave; kh&aacute;c.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Phong cách của bố: Nghe tưởng kỳ quái nhưng lại là trào lưu hot - 6" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-21/Phong-cach-Dad-xu-huong-ki-quac-cua-the-ky-21-6-1603273144-545-width489height750.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-21/Phong-cach-Dad-xu-huong-ki-quac-cua-the-ky-21-6-1603273144-545-width489height750.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<em style="line-height: 1.6;">Gi&agrave;y sneaker Dad</em></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Phong c&aacute;ch Dad cũng để lại những dấu ấn nhất định tr&ecirc;n gi&agrave;y d&eacute;p hiện nay. Balenciaga Triple S l&agrave;m sai lệch tỷ lệ của một đ&ocirc;i gi&agrave;y chạy bộ của thời thập ni&ecirc;n 90 v&agrave; th&ecirc;m v&agrave;o một số m&agrave;u sắc đối lập, sự tồn tại của n&oacute; thể hiện một xu hướng đang phổ biến l&agrave; gi&agrave;y thể thao đơn giản l&agrave; thoải m&aacute;i hơn cho việc đi lại h&agrave;ng ng&agrave;y.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	&nbsp;</p>
<div style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: normal; color: rgb(0, 0, 0); text-align: center; width: 686.99px; clear: both; position: relative;">
	<div style="font-size: 12px; line-height: normal; position: relative; max-width: 660px; margin: 0px auto;">
		<img alt="Phong cách của bố: Nghe tưởng kỳ quái nhưng lại là trào lưu hot - 7" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-21/Phong-cach-Dad-xu-huong-ki-quac-cua-the-ky-21-7-1603273144-57-width750height385.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-21/Phong-cach-Dad-xu-huong-ki-quac-cua-the-ky-21-7-1603273144-57-width750height385.jpg" style="border: 0px; line-height: normal; max-width: 660px; margin-bottom: 22px;" width="660" />
		<div id="24h-banner-in-image" style="line-height: normal; position: absolute; overflow: hidden; width: 660px; height: 90px; color: white; bottom: 0px; left: 0px;">
			<div class="txtCent" id="ADS_139_15s" style="line-height: normal;">
				&nbsp;</div>
		</div>
	</div>
</div>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	&nbsp;</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Như vậy, c&agrave;ng ng&agrave;y c&agrave;ng nhiều người đi những đ&ocirc;i gi&agrave;y Vans, Adidas Stan Smith đ&atilde; truyền cảm hứng cho mọi người chọn một đ&ocirc;i gi&agrave;y trắng white kick hay những đ&ocirc;i gi&agrave;y tập New Balance chunky kh&ocirc;ng chỉ l&agrave; một phần trong tủ quần &aacute;o tập gym của bạn.<br />
	<br />
	<span style="color: rgb(117, 117, 117); font-size: 13px;">Nguồn: http://danviet.vn/phong-cach-cua-bo-nghe-tuong-ky-quai-nhung-lai-la-trao-luu-hot-50202022108451822.htm</span></p>
', 1, 3)
INSERT [dbo].[db_TinTuc] ([TinTucID], [TieuDe], [AnhDaiDien], [MoTa], [NgayDang], [LuotXem], [ChiTiet], [ThuTu], [MaDM]) VALUES (4, N'Bí quyết đeo 5 món đồ trang sức thiết yếu của nam giới', N'1603266928-214-thumbnail-width640height480.jpg', N'Nam giới có 5 món đồ trang sức phổ biến nhất và dưới đây là một vài lưu ý khi đeo chúng.', CAST(N'2020-10-22T00:00:00.000' AS DateTime), 3, N'<header class="atclTit atclTitD mrT10" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; margin-top: 10px; line-height: normal; color: rgb(0, 0, 0);">
	<h1 class="clrTit bld tuht_show" id="article_title" itemprop="headline" style="font-size: 27px; margin: 0px 0px 16px; color: initial; line-height: normal; word-spacing: 1px;">
		B&iacute; quyết đeo 5 m&oacute;n đồ trang sức thiết yếu của nam giới<a class="icoSocialCm" href="http://www.facebook.com/fan24h" style="text-align: right; font-size: 15px; text-decoration-line: none; line-height: normal; margin-left: 0px; margin-right: 5px; color: rgb(0, 0, 255);" target="_blank" title="Chia sẻ trên Fanpage">&nbsp;</a></h1>
</header>
<div class="bmTpSeoBlk bmTpSeoBlkD clF" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; clear: both; line-height: normal; height: auto; overflow: initial; color: rgb(0, 0, 0);">
	<div class="clF" style="font-size: 12px; clear: both; line-height: normal;">
		&nbsp;</div>
</div>
<h2 class="ctTp tuht_show" id="article_sapo" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; margin: 10px 0px; line-height: 1.6; color: rgb(0, 0, 0);">
	Nam giới c&oacute; 5 m&oacute;n đồ trang sức phổ biến nhất v&agrave; dưới đ&acirc;y l&agrave; một v&agrave;i lưu &yacute; khi đeo ch&uacute;ng.</h2>
<div class="sbNws" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: normal; margin-bottom: 20px; color: rgb(0, 0, 0);">
	Sự kiện:&nbsp;<a class="sbevt clrGr fs12" href="https://www.24h.com.vn/xu-huong-thoi-trang-c78e1201.html" style="font-size: 15px; color: rgb(55, 139, 54); line-height: normal;" title="Xu hướng thời trang">Xu hướng thời trang</a>,&nbsp;<a class="sbevt clrGr" href="https://www.24h.com.vn/men-style-guide-c78e6000.html" style="font-size: 15px; color: rgb(55, 139, 54); line-height: normal;" title="Men style guide">Men style guide</a></div>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">1. Tại sao mọi người đ&agrave;n &ocirc;ng n&ecirc;n c&oacute; một (hoặc hai) chiếc đồng hồ thời trang</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Với điện thoại th&ocirc;ng minh, việc đeo đồng hồ kh&ocirc;ng c&ograve;n phổ biến như trước. Tuy nhi&ecirc;n, một chiếc đồng hồ ho&agrave;n hảo c&oacute; thể ho&agrave;n thiện kiểu d&aacute;ng của bạn với một ch&uacute;t tinh xảo.</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	C&aacute;c quy tắc cơ bản cho đồng hồ l&agrave;, c&oacute; &iacute;t nhất một chiếc đồng hồ gi&aacute; cả phải chăng để đeo h&agrave;ng ng&agrave;y v&agrave; chiếc thứ hai ph&ugrave; hợp hơn cho những dịp đặc biệt, chẳng hạn như đ&aacute;m cưới, sự kiện c&ocirc;ng sở v&agrave; bất cứ nơi n&agrave;o kh&aacute;c m&agrave; bạn cần thể hiện một nh&acirc;n c&aacute;ch chuy&ecirc;n nghiệp, trưởng th&agrave;nh.</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Sự kh&aacute;c biệt giữa đồng hồ h&agrave;ng ng&agrave;y v&agrave; đồng hồ cho dịp đặc biệt l&agrave; g&igrave;? Tất cả đều phụ thuộc v&agrave;o k&iacute;ch thước v&agrave; vật liệu.</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<em style="line-height: 1.6;">Đồng hồ th&ocirc;ng thường casual</em></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Những loại đồng hồ cỡ lớn được ưu ti&ecirc;n cho kiểu d&aacute;ng h&agrave;ng ng&agrave;y, với d&acirc;y đeo bằng kim loại hoặc da. Bạn c&oacute; thể th&ecirc;m một số chi tiết nhưng kh&ocirc;ng n&ecirc;n th&ecirc;m thứ g&igrave; lớn hơn những vi&ecirc;n đ&aacute; rhinestones nhỏ v&agrave; thử một loạt c&aacute;c sắc th&aacute;i kim loại từ kim loại b&oacute;ng đến v&agrave;ng hồng ấm. Chiếc đồng hồ h&agrave;ng ng&agrave;y của bạn cũng c&oacute; thể l&agrave; phụ kiện tuy&ecirc;n bố thời trang của bạn.</p>
<div class="txtCent" id="ADS_159_15s" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; text-align: center; line-height: normal; color: rgb(0, 0, 0);">
	<div id="ADS_159_15stxtBnrHor" style="font-size: 12px; line-height: normal;">
		&nbsp;</div>
</div>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Bí quyết đeo 5 món đồ trang sức thiết yếu của nam giới - 1" class="news-image initial loading" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-21/Bi-quyet-deo-5-mon-do-trang-suc-thiet-yeu-cua-nam-gioi-7-1603267119-562-width564height705.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<em style="line-height: 1.6;">Đồng hồ cho dịp đặc biệt</em></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Nhưng, đối với những dịp đặc biệt, bạn h&atilde;y đi theo hướng ngược lại. Một chiếc đồng hồ, ở đ&acirc;y, l&agrave; thực dụng v&agrave; n&ecirc;n tr&aacute;nh xa những chiếc đồng hồ qu&aacute; nổi bật. Do đ&oacute;, h&atilde;y chọn d&acirc;y đeo mỏng hơn v&agrave; mặt đồng hồ nhỏ hơn, đồng thời giữ m&agrave;u tối hơn v&agrave; lặng.</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Về c&aacute;c chi tiết tr&ecirc;n đồng hồ, bạn h&atilde;y giữ ch&uacute;ng cơ bản nhất c&oacute; thể: Kh&ocirc;ng c&oacute; g&igrave; kh&aacute;c hơn l&agrave; c&aacute;c chữ số La M&atilde; để ho&agrave;n thiện. Trong những t&igrave;nh huống n&agrave;y, đừng biến đồng hồ th&agrave;nh trung t&acirc;m của sự ch&uacute; &yacute; m&agrave; d&agrave;nh sự ch&uacute; &yacute; cho bộ đồ của bạn.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Bí quyết đeo 5 món đồ trang sức thiết yếu của nam giới - 2" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-21/Bi-quyet-deo-5-mon-do-trang-suc-thiet-yeu-cua-nam-gioi-6-1603267064-890-width500height750.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-21/Bi-quyet-deo-5-mon-do-trang-suc-thiet-yeu-cua-nam-gioi-6-1603267064-890-width500height750.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">2. C&aacute;ch đeo v&ograve;ng tay v&agrave; d&acirc;y chuyền cho c&ocirc;ng việc mang t&iacute;nh chuy&ecirc;n nghiệp</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Với v&ograve;ng tay v&agrave; v&ograve;ng cổ, bạn n&ecirc;n c&oacute; cả hai loại trang sức n&agrave;y nhưng kh&ocirc;ng bao giờ đeo ch&uacute;ng c&ugrave;ng nhau, đặc biệt l&agrave; khi bạn mặc quần &aacute;o cho một c&ocirc;ng việc mang t&iacute;nh chuy&ecirc;n nghiệp. Chủ nghĩa tối giản n&ecirc;n được bạn lựa chọn ở đ&acirc;y, bạn n&ecirc;n chọn d&acirc;y da đơn hoặc đ&ocirc;i, v&ograve;ng b&iacute;t kim loại hoặc d&acirc;y x&iacute;ch kim loại mỏng. Mặt d&acirc;y chuyền l&agrave; ho&agrave;n to&agrave;n kh&ocirc;ng ph&ugrave; hợp v&agrave; n&ecirc;n được d&agrave;nh cho những ng&agrave;y nghỉ.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Bí quyết đeo 5 món đồ trang sức thiết yếu của nam giới - 3" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-21/Bi-quyet-deo-5-mon-do-trang-suc-thiet-yeu-cua-nam-gioi-5-1603266988-842-width564height752.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-21/Bi-quyet-deo-5-mon-do-trang-suc-thiet-yeu-cua-nam-gioi-5-1603266988-842-width564height752.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">3. Quy tắc đeo nhẫn của nam giới</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Nếu bạn kết h&ocirc;n, c&aacute;c quy tắc về đeo nhẫn cưới vẫn kh&ocirc;ng thay đổi, một chiếc nhẫn bản nhỏ, trơn, đơn, một m&agrave;u hoặc hai t&ocirc;ng m&agrave;u, kh&ocirc;ng c&oacute; chi tiết trang tr&iacute; c&ocirc;ng phu, tr&ecirc;n ng&oacute;n tay đeo nhẫn của bạn.</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Tuy nhi&ecirc;n, ngo&agrave;i nhẫn đ&aacute;m cưới, bạn c&oacute; nhiều tự do hơn về chi tiết trang tr&iacute;, đ&aacute;, kim loại v&agrave; k&iacute;ch thước. Bạn c&oacute; thể chọn nhẫn k&iacute;ch thước lớn v&agrave; chunky, t&igrave;m thứ g&igrave; đ&oacute; c&oacute; kết cấu hoặc đặt n&oacute; ở giữa xung quanh một vi&ecirc;n đ&aacute;. D&ugrave; bạn l&agrave;m g&igrave;, chỉ đeo một chiếc nhẫn mỗi tay.</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Nhẫn, giống như v&ograve;ng cổ v&agrave; v&ograve;ng tay, l&agrave; một phụ kiện dựa tr&ecirc;n ngữ cảnh. Ch&uacute;ng phụ thuộc v&agrave;o c&aacute;c quy tắc ăn mặc xung quanh c&aacute;c t&igrave;nh huống v&agrave; m&ocirc;i trường nhất định, bạn h&atilde;y nghĩ đến c&aacute;c nơi l&agrave;m việc truyền thống v&agrave; c&aacute;c sự kiện kinh doanh, đ&oacute; l&agrave; nơi bạn n&ecirc;n chọn những chiếc nhẫn đơn giản hơn v&agrave; kh&ocirc;ng g&acirc;y ch&uacute; &yacute;.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	&nbsp;</p>
<div style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: normal; color: rgb(0, 0, 0); text-align: center; width: 686.99px; clear: both; position: relative;">
	<div style="font-size: 12px; line-height: normal; position: relative; max-width: 660px; margin: 0px auto;">
		<img alt="Bí quyết đeo 5 món đồ trang sức thiết yếu của nam giới - 4" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-21/Bi-quyet-deo-5-mon-do-trang-suc-thiet-yeu-cua-nam-gioi-2-1603266988-97-width750height500.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-21/Bi-quyet-deo-5-mon-do-trang-suc-thiet-yeu-cua-nam-gioi-2-1603266988-97-width750height500.jpg" style="border: 0px; line-height: normal; max-width: 660px; margin-bottom: 22px;" width="660" />
		<div id="24h-banner-in-image" style="line-height: normal; position: absolute; overflow: hidden; width: 660px; height: 90px; color: white; bottom: 0px; left: 0px;">
			<div class="txtCent" id="ADS_139_15s" style="line-height: normal;">
				&nbsp;</div>
		</div>
	</div>
</div>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	&nbsp;</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">4. Tại sao mọi người n&ecirc;n mua cufflink</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Bạn h&atilde;y qu&ecirc;n đi những chiếc c&agrave; vạt c&oacute; hoa văn kỳ quặc. Trong số tất cả c&aacute;c loại trang sức truyền thống của nam giới, cufflink l&agrave; yếu tố tạo n&ecirc;n tuy&ecirc;n bố thời trang cho trang phục của bạn.</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Tất nhi&ecirc;n, ho&agrave;n to&agrave;n từ g&oacute;c độ thực tế, kh&ocirc;ng c&oacute; g&igrave; h&agrave;o nho&aacute;ng về ch&uacute;ng. Bạn đeo ch&uacute;ng v&agrave;o bất cứ khi n&agrave;o bạn mặc &aacute;o sơ mi c&oacute; cổ tay kiểu Ph&aacute;p hoặc bất cứ loại &aacute;o g&igrave; c&oacute; c&ograve;ng đ&ocirc;i.</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Tuy nhi&ecirc;n, sự hiện diện nhỏ nhưng lấp l&aacute;nh của ch&uacute;ng g&acirc;y ch&uacute; &yacute;, đặc biệt l&agrave; với kim loại được đ&aacute;nh b&oacute;ng, mặt trong bằng đ&aacute;, h&igrave;nh dạng độc đ&aacute;o hoặc thậm ch&iacute; l&agrave; hoa văn. D&agrave;nh cho những dịp trang trọng nhất, đ&oacute; l&agrave; cơ hội để đeo một số đồ trang sức d&agrave;nh cho nam giới tốt nhất như cufflink.</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Tuy nhi&ecirc;n, đối với những sự kiện trang trọng nhất được gắn nh&atilde;n &ldquo;black tie&rdquo;, bạn h&atilde;y lu&ocirc;n c&oacute; một đ&ocirc;i cufflink trơn, c&oacute; k&iacute;ch thước nhỏ hơn v&agrave; kh&ocirc;ng c&oacute; c&aacute;c chi tiết trang tr&iacute;. Ở đ&acirc;y, c&aacute;c kim loại cũng n&ecirc;n tr&ocirc;ng truyền thống: Bạc, v&agrave;ng hoặc bạch kim, hơn l&agrave; kim loại đen.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Bí quyết đeo 5 món đồ trang sức thiết yếu của nam giới - 6" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-21/Bi-quyet-deo-5-mon-do-trang-suc-thiet-yeu-cua-nam-gioi-3-1603266988-932-width750height536.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-21/Bi-quyet-deo-5-mon-do-trang-suc-thiet-yeu-cua-nam-gioi-3-1603266988-932-width750height536.jpg" style="border: 0px; line-height: normal; max-width: 660px;" width="660" /></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">5. Đ&agrave;n &ocirc;ng v&agrave; hoa tai: Phong c&aacute;ch chất chơi&nbsp;trở lại?</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Hầu hết mọi người đều tranh luận về t&iacute;nh thiết yếu của ch&uacute;ng nhưng sau tất cả, c&oacute; bao nhi&ecirc;u người trong ch&uacute;ng ta thực sự đeo hoa tai h&agrave;ng ng&agrave;y? Tuy nhi&ecirc;n, đ&acirc;y kh&ocirc;ng chỉ l&agrave; một xu hướng từ nhạc punk mất dần theo tuổi trưởng th&agrave;nh, hoa tai đ&atilde; bắt đầu c&oacute; chỗ đứng trong thế giới thương mại điện tử. Bạn chỉ cần nh&igrave;n v&agrave;o lựa chọn phụ kiện d&agrave;nh cho nam của c&aacute;c shop thời trang v&agrave; bạn sẽ t&igrave;m thấy nhiều lựa chọn cho m&igrave;nh. Điều đ&oacute; chứng tỏ c&agrave;ng ng&agrave;y c&agrave;ng nhiều đ&agrave;n &ocirc;ng đeo hoa tai như phụ kiện thời trang h&agrave;ng ng&agrave;y. Đương nhi&ecirc;n, trong một v&agrave;i sự kiện trang trọng, ch&uacute;ng c&oacute; thể kh&ocirc;ng ph&ugrave; hợp nhưng điều cũng kh&oacute; ngăn được bạn nếu bạn t&igrave;m được một kiểu d&aacute;ng nhất định được chấp nhận.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Bí quyết đeo 5 món đồ trang sức thiết yếu của nam giới - 7" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-21/Bi-quyet-deo-5-mon-do-trang-suc-thiet-yeu-cua-nam-gioi-4-1603266988-634-width750height500.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-21/Bi-quyet-deo-5-mon-do-trang-suc-thiet-yeu-cua-nam-gioi-4-1603266988-634-width750height500.jpg" style="border: 0px; line-height: normal; max-width: 660px;" width="660" /></p>
<p class="linkOrigin" style="font-family: Arial, Helvetica, sans-serif; line-height: 1.6; color: rgb(117, 117, 117); margin: 10px 0px; font-size: 13px !important;">
	<span class="dots" id="url_origin_cut" style="line-height: normal; margin: 0px;">Nguồn: http://danviet.vn/bi-quyet-deo-5-mon-do-trang-suc-thiet-yeu-cua-nam-gioi-50202022108191594.htm</span></p>
', 2, 3)
INSERT [dbo].[db_TinTuc] ([TinTucID], [TieuDe], [AnhDaiDien], [MoTa], [NgayDang], [LuotXem], [ChiTiet], [ThuTu], [MaDM]) VALUES (5, N'Cuối năm chuẩn bị dạ tiệc, nam giới cần chọn đồ như thế nào cho chuẩn?', N'1603263923-116-thumbnail-width640height480.jpg', N'Trang phục cocktail vốn được hiểu là trang phục dạ tiệc nhưng đó là đối với trang phục nữ. Trang phục cocktail nam giới...', CAST(N'2020-10-22T00:00:00.000' AS DateTime), 2, N'<header class="atclTit atclTitD mrT10" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; margin-top: 10px; line-height: normal; color: rgb(0, 0, 0);">
	<h1 class="clrTit bld tuht_show" id="article_title" itemprop="headline" style="font-size: 27px; margin: 0px 0px 16px; color: initial; line-height: normal; word-spacing: 1px;">
		Cuối năm chuẩn bị dạ tiệc, nam giới cần chọn đồ như thế n&agrave;o cho chuẩn?<a class="icoSocialCm" href="http://www.facebook.com/fan24h" style="text-align: right; font-size: 15px; text-decoration-line: none; line-height: normal; margin-left: 0px; margin-right: 5px; color: rgb(0, 0, 255);" target="_blank" title="Chia sẻ trên Fanpage">&nbsp;</a></h1>
</header>
<div class="bmTpSeoBlk bmTpSeoBlkD clF" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; clear: both; line-height: normal; height: auto; overflow: initial; color: rgb(0, 0, 0);">
	<div class="clF" style="font-size: 12px; clear: both; line-height: normal;">
		&nbsp;</div>
</div>
<h2 class="ctTp tuht_show" id="article_sapo" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; margin: 10px 0px; line-height: 1.6; color: rgb(0, 0, 0);">
	Trang phục cocktail vốn được hiểu l&agrave; trang phục dạ tiệc nhưng đ&oacute; l&agrave; đối với trang phục nữ. Trang phục cocktail nam giới lại kh&oacute; x&aacute;c định hơn v&agrave; c&oacute; nhiều c&aacute;ch để hiểu. Vậy định nghĩa ch&iacute;nh x&aacute;c cho trang phục cocktail nam giới l&agrave; g&igrave;.</h2>
<div class="sbNws" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: normal; margin-bottom: 20px; color: rgb(0, 0, 0);">
	Sự kiện:&nbsp;<a class="sbevt clrGr fs12" href="https://www.24h.com.vn/xu-huong-thoi-trang-c78e1201.html" style="font-size: 15px; color: rgb(55, 139, 54); line-height: normal;" title="Xu hướng thời trang">Xu hướng thời trang</a>,&nbsp;<a class="sbevt clrGr" href="https://www.24h.com.vn/men-style-guide-c78e6000.html" style="font-size: 15px; color: rgb(55, 139, 54); line-height: normal;" title="Men style guide">Men style guide</a></div>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Đối với phụ nữ, quy tắc trang phục n&agrave;y c&oacute; lẽ l&agrave; một trong những quy tắc đơn giản hơn v&agrave; tr&ecirc;n thực tế, tương quan với v&aacute;y dạ tiệc thực tế. Đối với nam giới, đ&acirc;y l&agrave; nơi mọi thứ được đảo lộn.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Cuối năm chuẩn bị dạ tiệc, nam giới cần chọn đồ như thế nào cho chuẩn? - 1" class="news-image initial loading" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-21/dinh-nghia-trang-phuc-cocktail-cho-nam-gioi-0-1603264042-613-width750height500.jpg" style="border: 0px; line-height: normal; max-width: 660px;" width="660" /></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Mặc d&ugrave;, trong nhiều trường hợp, bạn c&oacute; thể coi trang phục cocktail l&agrave; trang phục dự tiệc c&oacute; thể bao gồm những m&oacute;n đồ như chiếc quần chinos đẹp v&agrave; một chiếc &aacute;o blazer c&oacute; cấu tr&uacute;c, ho&agrave;n chỉnh với một chiếc &aacute;o sơ mi v&agrave; gi&agrave;y loafer, tuy nhi&ecirc;n c&aacute;c t&igrave;nh huống kh&aacute;c nhau sẽ quy định c&aacute;c loại quần &aacute;o kh&aacute;c nhau, v&igrave; vậy kh&ocirc;ng c&oacute; một định nghĩa ch&iacute;nh x&aacute;c n&agrave;o. V&igrave; l&yacute; do n&agrave;y, việc hỏi điều g&igrave; x&aacute;c định trang phục cocktail của nam giới sẽ mang lại nhiều c&acirc;u trả lời kh&aacute;c nhau.</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">1. Trang phục b&aacute;n formal</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Trang phục b&aacute;n formal c&oacute; lẽ l&agrave; định nghĩa&nbsp;ph&ugrave; hợp để n&oacute;i về trang phục cocktail cho nam giới. Kh&ocirc;ng ai thực sự biết định nghĩa n&agrave;y l&agrave; g&igrave;, chỉ biết rằng n&oacute; kh&ocirc;ng trang trọng như trang phục formal thực sự, mặc d&ugrave; trang phục n&agrave;y c&oacute; thể được sử dụng cho c&aacute;c sự kiện y&ecirc;u cầu mặc veston m&agrave;u than hoặc xanh navy hoặc tuxedo v&agrave; n&oacute; cũng kh&ocirc;ng phải l&agrave; phong c&aacute;ch casual.</p>
<div class="txtCent" id="ADS_159_15s" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; text-align: center; line-height: normal; color: rgb(0, 0, 0);">
	<div id="ADS_159_15stxtBnrHor" style="font-size: 12px; line-height: normal;">
		&nbsp;</div>
</div>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Ng&agrave;y nay, quy tắc ăn mặc của nam giới đ&atilde; ph&aacute;t triển một số tầng lớp kh&aacute;c nhau, với &ldquo;trang phục c&ocirc;ng sở formal&rdquo; v&agrave; &ldquo;trang phục c&ocirc;ng sở casual&rdquo; nằm b&ecirc;n dưới trang phục &ldquo;formal&rdquo; v&agrave; &ldquo;trang phục smart casual&rdquo; nằm b&ecirc;n dưới &ldquo;trang phục c&ocirc;ng sở casual&rdquo; nhưng b&ecirc;n tr&ecirc;n trang phục casual thực sự. &ldquo;Trang phục cocktail&rdquo; chiếm vị tr&iacute; b&ecirc;n dưới &ldquo;trang phục c&ocirc;ng sở casual&rdquo; v&agrave; tr&ecirc;n &ldquo;trang phục smart casual&rdquo;.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Cuối năm chuẩn bị dạ tiệc, nam giới cần chọn đồ như thế nào cho chuẩn? - 2" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-21/dinh-nghia-trang-phuc-cocktail-cho-nam-gioi-1-1603264042-279-width600height600.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-21/dinh-nghia-trang-phuc-cocktail-cho-nam-gioi-1-1603264042-279-width600height600.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Tuy nhi&ecirc;n, ngay cả khi đ&oacute;, vai tr&ograve; của n&oacute; cũng kh&ocirc;ng qu&aacute; r&otilde; r&agrave;ng. Thay v&agrave;o đ&oacute;, trang phục cocktail&nbsp;nam giới vay mượn nhiều từ trang phục c&ocirc;ng sở trong khi vẫn cho ph&eacute;p một ch&uacute;t tự do, v&iacute; dụ: đ&acirc;y l&agrave; cơ hội để thử những bộ veston c&oacute; hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau kh&ocirc;ng phải l&uacute;c n&agrave;o cũng ph&ugrave; hợp với m&ocirc;i trường kinh doanh. V&igrave; l&yacute; do n&agrave;y, trang phục cocktail cho nam giới tương đối dễ thực hiện.</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">2. Trang phục cocktail thay đổi theo từng trường hợp</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Th&ecirc;m v&agrave;o những điểm đ&atilde; n&ecirc;u ở tr&ecirc;n, trang phục cocktail nam giới tự tạo cho m&igrave;nh một số t&iacute;nh linh hoạt nhưng đ&oacute; kh&ocirc;ng phải l&agrave; sự tự do tuyệt đối 100%. Thay v&agrave;o đ&oacute;, bạn sẽ phải thay đổi trang phục của m&igrave;nh theo c&aacute;c quy tắc x&atilde; hội của theo từng trường hợp cụ thể: v&iacute; dụ, m&agrave;u đen gần như lu&ocirc;n d&agrave;nh cho đ&aacute;m tang v&agrave; phỏng vấn xin việc v&agrave; kh&ocirc;ng n&ecirc;n mặc v&agrave;o những bữa tiệc mang t&iacute;nh chất vui vẻ, ngo&agrave;i ra trong một đ&aacute;m cưới, c&ocirc; d&acirc;u v&agrave; ch&uacute; rể n&ecirc;n l&agrave; người ăn mặc đẹp nhất, bạn kh&ocirc;ng n&ecirc;n mặc những bộ đồ nổi trội hơn họ.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Cuối năm chuẩn bị dạ tiệc, nam giới cần chọn đồ như thế nào cho chuẩn? - 3" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-21/dinh-nghia-trang-phuc-cocktail-cho-nam-gioi-2-1603264042-71-width600height750.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-21/dinh-nghia-trang-phuc-cocktail-cho-nam-gioi-2-1603264042-71-width600height750.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">3. Những điều n&ecirc;n tr&aacute;nh</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Với tất cả c&aacute;c yếu tố tr&ecirc;n, bạn n&ecirc;n tr&aacute;nh xa một số thứ nhất định khi quy tắc trang phục được gắn nh&atilde;n &quot;cocktail&quot;:</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	- Bạn kh&ocirc;ng n&ecirc;n mặc tuxedo v&agrave; kh&ocirc;ng đeo &quot;c&agrave; vạt trắng&quot;.</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	- Kh&ocirc;ng mặc quần &aacute;o m&agrave;u đen trừ khi ch&uacute;ng c&oacute; họa tiết r&otilde; r&agrave;ng v&agrave; kh&aacute;c biệt.</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	- Bạn n&ecirc;n tr&aacute;nh trang phục c&oacute; qu&aacute; nhiều họa tiết v&agrave; m&agrave;u sắc v&agrave;o một bộ trang phục.</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	- Bạn n&ecirc;n lựa chọn mặc trang phục smart casual theo những sự kiện cụ thể, chẳng hạn như quần chinos v&agrave; &aacute;o polo. Ch&uacute;ng th&iacute;ch hợp cho c&aacute;c bữa tiệc sau giờ l&agrave;m việc, nhưng c&oacute; thể qu&aacute; xuề x&ograve;a đối với một đ&aacute;m cưới.</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	- Bạn kh&ocirc;ng n&ecirc;n đi gi&agrave;y thể thao hoặc gi&agrave;y slip-on v&agrave; lu&ocirc;n mang một đ&ocirc;i tất tối m&agrave;u với gi&agrave;y của bạn.</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	- Bạn n&ecirc;n đeo c&agrave; vạt cho c&aacute;c bộ veston nếu đ&oacute; l&agrave; một sự kiện trang trọng như đ&aacute;m cưới.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	&nbsp;</p>
<div style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: normal; color: rgb(0, 0, 0); text-align: center; width: 686.99px; clear: both; position: relative;">
	<div style="font-size: 12px; line-height: normal; position: relative; max-width: 660px; margin: 0px auto;">
		<img alt="Cuối năm chuẩn bị dạ tiệc, nam giới cần chọn đồ như thế nào cho chuẩn? - 4" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-21/dinh-nghia-trang-phuc-cocktail-cho-nam-gioi-3-1603264042-124-width800height935.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-21/dinh-nghia-trang-phuc-cocktail-cho-nam-gioi-3-1603264042-124-width800height935.jpg" style="border: 0px; line-height: normal; max-width: 660px; margin-bottom: 22px;" width="660" />
		<div id="24h-banner-in-image" style="line-height: normal; position: absolute; overflow: hidden; width: 660px; height: 90px; color: white; bottom: 0px; left: 0px;">
			<div class="txtCent" id="ADS_139_15s" style="line-height: normal;">
				&nbsp;</div>
		</div>
	</div>
</div>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	&nbsp;</p>
<p class="linkOrigin" style="font-family: Arial, Helvetica, sans-serif; line-height: 1.6; color: rgb(117, 117, 117); margin: 10px 0px; font-size: 13px !important;">
	<span class="txtFull" id="url_origin_full" style="line-height: normal; margin: 0px; display: block;">Nguồn: http://danviet.vn/cuoi-nam-chuan-bi-da-tiec-nam-gioi-can-chon-do-nhu-the-nao-cho-chuan-502020211017551813.htm</span></p>
', 3, 3)
INSERT [dbo].[db_TinTuc] ([TinTucID], [TieuDe], [AnhDaiDien], [MoTa], [NgayDang], [LuotXem], [ChiTiet], [ThuTu], [MaDM]) VALUES (6, N'5 nhà thiết kế trẻ khẳng định mình trong các tuần lễ thời trang năm nay', N'1603098866-80-thumbnail-width640height480.jpg', N'Tuần lễ thời trang luôn là cơ hội vàng cho các nhà thiết kế trẻ ra mắt bộ sưu tập cũng như khẳng định tên tuổi của mình. Đặc biệt trong mùa dịch Covid năm nay', CAST(N'2020-10-22T00:00:00.000' AS DateTime), 0, N'<header class="atclTit atclTitD mrT10" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; margin-top: 10px; line-height: normal; color: rgb(0, 0, 0);">
	<h1 class="clrTit bld tuht_show" id="article_title" itemprop="headline" style="font-size: 27px; margin: 0px 0px 16px; color: initial; line-height: normal; word-spacing: 1px;">
		5 nh&agrave; thiết kế trẻ khẳng định m&igrave;nh trong c&aacute;c tuần lễ thời trang năm nay</h1>
</header>
<div class="bmTpSeoBlk bmTpSeoBlkD clF" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; clear: both; line-height: normal; height: auto; overflow: initial; color: rgb(0, 0, 0);">
	<div class="icoSocial icoSocialx txtRt flRt" style="font-size: 12px; text-align: right; line-height: normal; margin-left: 0px;">
		<a class="icoSocialCm" href="http://www.facebook.com/fan24h" style="font-size: 15px; text-decoration-line: none; line-height: normal; margin-left: 0px; margin-right: 5px; color: rgb(0, 0, 255);" target="_blank" title="Chia sẻ trên Fanpage">&nbsp;</a></div>
	<div class="clF" style="font-size: 12px; clear: both; line-height: normal;">
		&nbsp;</div>
</div>
<h2 class="ctTp tuht_show" id="article_sapo" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; margin: 10px 0px; line-height: 1.6; color: rgb(0, 0, 0);">
	Tuần lễ thời trang lu&ocirc;n l&agrave; cơ hội v&agrave;ng cho c&aacute;c nh&agrave; thiết kế trẻ ra mắt bộ sưu tập cũng như khẳng định t&ecirc;n tuổi của m&igrave;nh. Đặc biệt trong m&ugrave;a dịch Covid năm nay, phương thức tr&igrave;nh diễn đ&atilde; c&oacute; sự thay đổi r&otilde; r&agrave;ng v&agrave; cũng chứng kiến sự s&aacute;ng tạo đổi mới của c&aacute;c nh&agrave; thiết kế trẻ.</h2>
<div class="sbNws" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: normal; margin-bottom: 20px; color: rgb(0, 0, 0);">
	Sự kiện:&nbsp;<a class="sbevt clrGr fs12" href="https://www.24h.com.vn/xu-huong-thoi-trang-c78e1201.html" style="font-size: 15px; color: rgb(55, 139, 54); line-height: normal;" title="Xu hướng thời trang">Xu hướng thời trang</a></div>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	M&ugrave;a Xu&acirc;n/H&egrave; 2021 năm nay tạo ra một quy chuẩn mới về c&aacute;c show diễn ảo v&agrave; c&aacute;c chương tr&igrave;nh thời trang tu&acirc;n thủ c&aacute;ch ly x&atilde; hội. Tuy nhi&ecirc;n, ngay cả c&aacute;c show diễn được ph&aacute;t song online với chất lượng cao nhất hoặc c&aacute;c bộ phim ngắn cũng kh&ocirc;ng thể so s&aacute;nh với việc nh&igrave;n thấy một bộ sưu tập mới bước xuống s&agrave;n diễn trong đời thực. Nhưng những hạn chế n&agrave;y c&oacute; &yacute; nghĩa như thế n&agrave;o đối với c&aacute;c nh&agrave; thiết kế mới nổi của c&aacute;c kinh đ&ocirc; thời trang tr&ecirc;n to&agrave;n cầu, đ&oacute; l&agrave; sự tự do. Những ng&ocirc;i sao đang l&ecirc;n n&agrave;y đối mặt trực tiếp với thực tế đang l&agrave;m ch&ugrave;n bước ng&agrave;nh c&ocirc;ng nghiệp v&agrave; khi họ khẳng định th&ocirc;ng điệp lạc quan v&agrave; s&aacute;ng tạo th&ocirc;ng qua c&aacute;c thiết kế của m&igrave;nh, họ đồng thời tho&aacute;t khỏi sự h&agrave;o nho&aacute;ng v&agrave; vinh quang của những show diễn c&aacute; nh&acirc;n v&agrave; chuyển sang c&ocirc;ng nghệ để mở rộng thiết kế của họ trong tầm tay của ch&uacute;ng ta th&ocirc;ng qua trải nghiệm một m&agrave;n h&igrave;nh. Từ những nh&agrave; thiết kế underground của New York cho đến những t&agrave;i năng thế hệ tiếp theo của London với t&iacute;nh thẩm mỹ t&aacute;o bạo, ch&uacute;ng ta c&ugrave;ng t&igrave;m hiểu về năm nh&agrave; thiết kế trẻ, mới nổi từ th&aacute;ng thời trang m&ugrave;a thu năm nay với những bộ sưu tập dự b&aacute;o trước về tương lai sắp tới.</p>
<div class="txtCent" id="ADS_159_15s" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; text-align: center; line-height: normal; color: rgb(0, 0, 0);">
	<div id="ADS_159_15stxtBnrHor" style="font-size: 12px; line-height: normal;">
		&nbsp;</div>
</div>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="5 nhà thiết kế trẻ khẳng định mình trong các tuần lễ thời trang năm nay - 1" class="news-image initial loading" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/5-nha-thiet-ke-tre-khang-dinh-minh-trong-cac-tuan-le-thoi-trang-nam-nay-1-1603099136-812-width980height1470.jpg" style="border: 0px; line-height: normal; max-width: 660px;" width="660" /></p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="5 nhà thiết kế trẻ khẳng định mình trong các tuần lễ thời trang năm nay - 2" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/5-nha-thiet-ke-tre-khang-dinh-minh-trong-cac-tuan-le-thoi-trang-nam-nay-2-1603099136-980-width980height1470.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/5-nha-thiet-ke-tre-khang-dinh-minh-trong-cac-tuan-le-thoi-trang-nam-nay-2-1603099136-980-width980height1470.jpg" style="border: 0px; line-height: normal; max-width: 660px;" width="660" /></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Tại Tuần lễ thời trang London, sự gợi cảm được n&acirc;ng tầm trong bộ sưu tập Xu&acirc;n/H&egrave; 2021 của 16Arlington. Được biết đến với trang phục dạ hội đương đại ng&agrave;y c&agrave;ng thẩm mỹ v&agrave; xa hoa, bộ đ&ocirc;i s&aacute;ng tạo đằng sau thương hiệu, Federica Cavenati v&agrave; Marco Capaldo, đ&atilde; d&agrave;nh thời gian c&aacute;ch ly để suy nghĩ lại c&aacute;ch tiếp cận của họ để chống lại sự thuần t&uacute;y tầm thường của thế giới. V&agrave; giải ph&aacute;p rất r&otilde; r&agrave;ng: c&acirc;n bằng giữa chủ nghĩa tối giản v&agrave; chủ nghĩa tối đa.</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Bộ sưu tập đi s&acirc;u v&agrave;o sự quyến rũ v&agrave; rộng lớn của đại dương với m&agrave;u sắc lấy cảm hứng từ vỏ s&ograve; v&agrave; kỹ thuật nhuộm loang m&agrave;u&nbsp;tie-dye. Nhưng giữa m&agrave;u pastel v&agrave; m&agrave;u hồng, bộ đ&ocirc;i đ&atilde; quyết định lấy m&agrave;u n&acirc;u l&agrave;m m&agrave;u mới cho vải da s&aacute;ng, trong khi n&eacute;t nữ t&iacute;nh của thập ni&ecirc;n 90 mang lại cho sự thanh lịch thoải m&aacute;i của những chiếc v&aacute;y n&agrave;y to&aacute;t l&ecirc;n vẻ sang trọng tinh tế trong lớp vải nhung xẻ t&agrave; v&agrave; tơ tằm.</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Với chất liệu vải tuyệt đẹp được ho&agrave;n thiện một c&aacute;ch ho&agrave;n hảo, 16Arlington đ&atilde; mang đến một t&aacute;c phẩm nghệ thuật truyền tải sự lạc quan v&agrave; tho&aacute;t tục cho tương lai của thời trang. V&agrave; chủ nghĩa tối giản đầy biểu cảm của bộ đ&ocirc;i đầu tư v&agrave;o chất lượng v&agrave; độ bền vượt thời gian, c&oacute; thể chỉ l&agrave; n&eacute;t thẩm mỹ tiếp theo để t&igrave;m kiếm.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="5 nhà thiết kế trẻ khẳng định mình trong các tuần lễ thời trang năm nay - 3" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/5-nha-thiet-ke-tre-khang-dinh-minh-trong-cac-tuan-le-thoi-trang-nam-nay-3-1603099136-870-width500height749.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/5-nha-thiet-ke-tre-khang-dinh-minh-trong-cac-tuan-le-thoi-trang-nam-nay-3-1603099136-870-width500height749.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="5 nhà thiết kế trẻ khẳng định mình trong các tuần lễ thời trang năm nay - 4" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/5-nha-thiet-ke-tre-khang-dinh-minh-trong-cac-tuan-le-thoi-trang-nam-nay-4-1603099136-454-width500height750.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/5-nha-thiet-ke-tre-khang-dinh-minh-trong-cac-tuan-le-thoi-trang-nam-nay-4-1603099136-454-width500height750.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Edvin Thompson, nh&agrave; thiết kế đứng sau thương hiệu quần &aacute;o đương đại Theophilio, đ&atilde; tr&igrave;nh l&agrave;ng bộ sưu tập Xu&acirc;n/H&egrave; 2021 mang t&ecirc;n &quot;Migration&quot; trong tuần lễ thời trang New York. Kết hợp ho&agrave;i niệm về những năm th&aacute;ng tuổi vị th&agrave;nh ni&ecirc;n ở Jamaica v&agrave; nền văn h&oacute;a tiến bộ của Brooklyn nơi Theophilio đặt trụ sở, bộ sưu tập Thompson cho nam v&agrave; nữ l&agrave; sự phản &aacute;nh v&agrave; lời ch&agrave;o của cuộc sống, về chiến thắng v&agrave; vượt qua gian nan.</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Gốc rễ của bộ sưu tập Thompson l&agrave; m&agrave;u cờ Rastafarian (đỏ, xanh l&aacute; c&acirc;y v&agrave; v&agrave;ng). Đ&oacute; l&agrave; những chiếc &aacute;o sơ mi mềm mại với tay &aacute;o mở rộng, những chiếc v&aacute;y ngắn c&oacute; tua rua v&agrave; lưới, &aacute;o sơ mi xếp nếp, quần da, &aacute;o blazer color blocking, họa tiết da b&aacute;o v&agrave; paisley hoang d&atilde;. Ngo&agrave;i c&aacute;c gi&aacute; trị cốt l&otilde;i của Theophilio về t&iacute;nh x&aacute;c thực, Thompson cũng thể hiện quan điểm c&aacute; nh&acirc;n của m&igrave;nh với tư c&aacute;ch l&agrave; một người nhập cư.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="5 nhà thiết kế trẻ khẳng định mình trong các tuần lễ thời trang năm nay - 5" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/5-nha-thiet-ke-tre-khang-dinh-minh-trong-cac-tuan-le-thoi-trang-nam-nay-5-1603099136-721-width842height1263.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/5-nha-thiet-ke-tre-khang-dinh-minh-trong-cac-tuan-le-thoi-trang-nam-nay-5-1603099136-721-width842height1263.jpg" style="border: 0px; line-height: normal; max-width: 660px;" width="660" /></p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="5 nhà thiết kế trẻ khẳng định mình trong các tuần lễ thời trang năm nay - 6" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/5-nha-thiet-ke-tre-khang-dinh-minh-trong-cac-tuan-le-thoi-trang-nam-nay-6-1603099136-497-width846height1269.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/5-nha-thiet-ke-tre-khang-dinh-minh-trong-cac-tuan-le-thoi-trang-nam-nay-6-1603099136-497-width846height1269.jpg" style="border: 0px; line-height: normal; max-width: 660px;" width="660" /></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Tại London, nh&agrave; thiết kế trẻ của Fashion East, Maximilian Davis, kh&ocirc;ng nản l&ograve;ng khi ra mắt bộ sưu tập đầu tay bằng h&igrave;nh thức kỹ thuật số, đ&atilde; ra mắt bộ sưu tập d&agrave;nh cho sinh vi&ecirc;n năm nhất của m&igrave;nh c&oacute; t&ecirc;n &quot;J&rsquo;ouvert&quot;. Thoạt nh&igrave;n, một sứ mệnh đầy tham vọng nhằm kết hợp thời trang hiện đại tinh tế với sự s&aacute;ng tạo m&agrave;u đen thăng hoa ở London.</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	M&ocirc; phỏng sự lộng lẫy của trang phục Lễ hội Trinidadian, bộ sưu tập truyền tải sức hấp dẫn giới t&iacute;nh kh&ocirc;ng thể kiềm chế được thuần h&oacute;a bằng sự tinh tế của sự đĩnh đạc. Những chiếc v&aacute;y da lộn xẻ t&agrave; với d&acirc;y đai bất đối xứng, v&aacute;y ngắn xếp ly v&agrave; &aacute;o sơ mi sa tanh được trang tr&iacute; bằng l&ocirc;ng ngỗng đề cập đến lịch sử giải ph&oacute;ng; những chiếc &aacute;o kho&aacute;c v&aacute;y nhiều lớp, những chiếc &aacute;o cho&agrave;ng c&oacute; d&acirc;y nịt v&agrave; những đường cắt may trong suốt bộ sưu tập thể hiện phong c&aacute;ch tinh thần của lễ hội h&oacute;a trang xuất hiện từ n&oacute;. Được giới thiệu trong một cuốn lookbook tương phản giữa bảng m&agrave;u cơ bản với l&agrave;n da rạng rỡ của người mẫu, J&rsquo;ouvert l&agrave; c&acirc;u chuyện mang t&iacute;nh c&aacute; nh&acirc;n s&acirc;u sắc của Davis về việc t&ocirc;n vinh di sản văn h&oacute;a của người da đen trong tất cả sự lộng lẫy v&agrave; sắc th&aacute;i của n&oacute;.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="5 nhà thiết kế trẻ khẳng định mình trong các tuần lễ thời trang năm nay - 7" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/5-nha-thiet-ke-tre-khang-dinh-minh-trong-cac-tuan-le-thoi-trang-nam-nay-7-1603099136-99-width902height1349.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/5-nha-thiet-ke-tre-khang-dinh-minh-trong-cac-tuan-le-thoi-trang-nam-nay-7-1603099136-99-width902height1349.jpg" style="border: 0px; line-height: normal; max-width: 660px;" width="660" /></p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="5 nhà thiết kế trẻ khẳng định mình trong các tuần lễ thời trang năm nay - 8" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/5-nha-thiet-ke-tre-khang-dinh-minh-trong-cac-tuan-le-thoi-trang-nam-nay-8-1603099136-919-width900height1349.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/5-nha-thiet-ke-tre-khang-dinh-minh-trong-cac-tuan-le-thoi-trang-nam-nay-8-1603099136-919-width900height1349.jpg" style="border: 0px; line-height: normal; max-width: 660px;" width="660" /></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Ra mắt CFDA tại New York, bộ sưu tập Xu&acirc;n/H&egrave; 2021 của Maisie Wilen l&agrave; sự kh&aacute;m ph&aacute; về c&aacute;ch xem v&agrave; vận dụng nhận thức về quần &aacute;o th&ocirc;ng qua c&aacute;c thiết kế. Được l&yacute; tưởng h&oacute;a khi giờ đ&acirc;y kh&ocirc;ng thể tiếp cận, bộ sưu tập của c&ocirc; đ&atilde; c&oacute; thể thực hiện được nhờ kinh nghiệm c&aacute;ch ly của c&ocirc;. Về nguồn cảm hứng của m&igrave;nh, Wilen giải th&iacute;ch: &ldquo;T&igrave;nh cờ, thời gian c&aacute;ch ly lại tạo ra m&ocirc;i trường m&agrave; hiếm khi nh&igrave;n thấy bằng c&aacute;ch trực tiếp, một thiết lập ho&agrave;n hảo trớ tr&ecirc;u cho nghi&ecirc;n cứu n&agrave;y.&rdquo;</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Bộ sưu tập của Wilen phảng phất sự mờ ảo của hiện thực v&agrave; tưởng tượng. C&aacute;c họa tiết trừu tượng, sống động của n&oacute; chảy v&agrave;o từng lớp vải v&agrave; việc sử dụng vải dệt kim loại, &oacute;ng &aacute;nh l&agrave;m nổi bật bởi sự rộng r&atilde;i của kiểu d&aacute;ng, tạo ra một loạt c&aacute;c ảo ảnh quang học trong m&agrave;u xanh l&aacute; c&acirc;y, hồng neon v&agrave; bạc trắng. C&ugrave;ng với những đường cắt đặc trưng của c&ocirc;, những thiết kế của Wilen sẽ nhấn ch&igrave;m người xem trong một h&igrave;nh ảnh thanh tao được gợi l&ecirc;n bởi bối cảnh b&igrave;nh dị của cuốn s&aacute;ch nấu ăn. B&ecirc;n trong, một bầu kh&ocirc;ng kh&iacute; độc đ&aacute;o của sự nữ t&iacute;nh xuy&ecirc;n suốt những g&igrave; c&oacute; thật v&agrave; những g&igrave; kh&ocirc;ng, cộng hưởng với nghệ thuật của Wilen với tư c&aacute;ch l&agrave; một nh&agrave; thiết kế c&oacute; tầm nh&igrave;n.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="5 nhà thiết kế trẻ khẳng định mình trong các tuần lễ thời trang năm nay - 9" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/5-nha-thiet-ke-tre-khang-dinh-minh-trong-cac-tuan-le-thoi-trang-nam-nay-9-1603099136-822-width980height1471.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/5-nha-thiet-ke-tre-khang-dinh-minh-trong-cac-tuan-le-thoi-trang-nam-nay-9-1603099136-822-width980height1471.jpg" style="border: 0px; line-height: normal; max-width: 660px;" width="660" /></p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="5 nhà thiết kế trẻ khẳng định mình trong các tuần lễ thời trang năm nay - 10" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/5-nha-thiet-ke-tre-khang-dinh-minh-trong-cac-tuan-le-thoi-trang-nam-nay-10-1603099136-809-width980height1471.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/5-nha-thiet-ke-tre-khang-dinh-minh-trong-cac-tuan-le-thoi-trang-nam-nay-10-1603099136-809-width980height1471.jpg" style="border: 0px; line-height: normal; max-width: 660px;" width="660" /></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	M&ugrave;a h&egrave; năm 2020 đ&atilde; bị tước đoạt khỏi thi&ecirc;n đường ngập tr&agrave;n &aacute;nh nắng gần bờ biển v&agrave; được đ&aacute;nh dấu bởi một sự th&ocirc;i th&uacute;c li&ecirc;n tục để được giải ph&oacute;ng khỏi những r&agrave;ng buộc v&agrave; sự kh&ocirc;ng chắc chắn về thể chất. Đối với Tuần lễ thời trang Milan, nh&agrave; thiết kế người Trung Quốc Shuting Qiu đ&atilde; đ&aacute;p lại những t&igrave;nh cảm n&agrave;y bằng bộ sưu tập &quot;Summer Wonderland&quot; của sự tự do v&agrave; &aacute;nh s&aacute;ng, bằng c&aacute;ch khai th&aacute;c vẻ đẹp khải huyền của m&ugrave;a h&egrave; v&agrave; nỗi nhớ trầm ng&acirc;m của ch&uacute;ng ta.</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Lấy cảm hứng từ nghệ sĩ t&acirc;n lập thể người Nga Natalia Goncharova, bộ sưu tập Xu&acirc;n/H&egrave; 2021 của Shuting Qiu c&oacute; sự kết hợp đặc trưng của nh&agrave; thiết kế gồm c&aacute;c họa tiết lớn, đầy m&agrave;u sắc được rải tr&ecirc;n v&aacute;y ngắn jacquard v&agrave; quần tất ph&ugrave; hợp. Trong khi thử nghiệm với c&aacute;c loại vải nhẹ v&agrave; c&oacute; độ d&agrave;i ngắn kh&aacute;c nhau, Qiu cũng cung cấp những chiếc v&aacute;y frock bất đối xứng v&agrave; &aacute;o hai d&acirc;y được thực hiện bằng c&aacute;ch th&ecirc;u hoa cườm, s&eacute;c đậm v&agrave; phối sọc. Bộ sưu tập hoạt h&igrave;nh của c&ocirc; ấy dễ d&agrave;ng lặp lại k&yacute; ức tr&agrave;n về một nơi nghỉ ngơi tr&ecirc;n b&atilde;i biển giữa m&ugrave;a h&egrave; v&agrave; phần tr&igrave;nh b&agrave;y bằng phim ngắn theo phong c&aacute;ch t&agrave;i liệu của c&ocirc; l&agrave; một m&agrave;n giới thiệu đầy t&aacute;o bạo nhưng l&atilde;ng mạn về sự mạnh mẽ, thanh lịch, tự tin, lấy cảm hứng từ bức ảnh b&atilde;i biển.</p>
', 4, 3)
INSERT [dbo].[db_TinTuc] ([TinTucID], [TieuDe], [AnhDaiDien], [MoTa], [NgayDang], [LuotXem], [ChiTiet], [ThuTu], [MaDM]) VALUES (7, N'Bí quyết mặc váy midi cho mùa thu đông sành điệu', N'1603095720-91-thumbnail-width640height480.jpg', N'Váy midi là một món đồ truyền thống trong tủ quần áo của nhiều cô nàng. Vậy bí quyết gì cho việc phôi đồ cùng váy midi trong mùa thu đông này.', CAST(N'2020-10-22T21:41:18.000' AS DateTime), 2, N'<header class="atclTit atclTitD mrT10" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; margin-top: 10px; line-height: normal; color: rgb(0, 0, 0);">
	<h1 class="clrTit bld tuht_show" id="article_title" itemprop="headline" style="font-size: 27px; margin: 0px 0px 16px; color: initial; line-height: normal; word-spacing: 1px;">
		B&iacute; quyết mặc v&aacute;y midi cho m&ugrave;a thu đ&ocirc;ng s&agrave;nh điệu<a class="icoSocialCm" href="http://www.facebook.com/fan24h" style="text-align: right; font-size: 15px; text-decoration-line: none; line-height: normal; margin-left: 0px; margin-right: 5px; color: rgb(0, 0, 255);" target="_blank" title="Chia sẻ trên Fanpage">&nbsp;</a></h1>
</header>
<div class="bmTpSeoBlk bmTpSeoBlkD clF" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; clear: both; line-height: normal; height: auto; overflow: initial; color: rgb(0, 0, 0);">
	<div class="clF" style="font-size: 12px; clear: both; line-height: normal;">
		&nbsp;</div>
</div>
<h2 class="ctTp tuht_show" id="article_sapo" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; margin: 10px 0px; line-height: 1.6; color: rgb(0, 0, 0);">
	V&aacute;y midi l&agrave; một m&oacute;n đồ truyền thống trong tủ quần &aacute;o của nhiều c&ocirc; n&agrave;ng. Vậy b&iacute; quyết g&igrave; cho việc ph&ocirc;i đồ c&ugrave;ng v&aacute;y midi trong m&ugrave;a thu đ&ocirc;ng n&agrave;y.</h2>
<div class="sbNws" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: normal; margin-bottom: 20px; color: rgb(0, 0, 0);">
	Sự kiện:&nbsp;<a class="sbevt clrGr fs12" href="https://www.24h.com.vn/xu-huong-thoi-trang-c78e1201.html" style="font-size: 15px; color: rgb(55, 139, 54); line-height: normal;" title="Xu hướng thời trang">Xu hướng thời trang</a></div>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">1. Đồng bộ</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Để c&oacute; được kiểu d&aacute;ng đẹp nhất chưa bao giờ dễ d&agrave;ng hơn với một bộ đồ đồng bộ. Đ&acirc;y l&agrave; một c&aacute;ch dễ d&agrave;ng để tr&ocirc;ng s&agrave;nh điệu cho bất kỳ sự kiện n&agrave;o v&agrave; kh&ocirc;ng tốn nhiều thời gian lựa chọn. Cho d&ugrave; đ&oacute; l&agrave; một bộ với c&ugrave;ng một loại vải hay đơn giản l&agrave; họa tiết tương tự nhau, bạn ho&agrave;n to&agrave;n c&oacute; thể điều chỉnh trang phục cho ph&ugrave; hợp với từng trường hợp cụ thể. Bạn n&ecirc;n chọn v&aacute;y midi v&agrave; &aacute;o kho&aacute;c với c&aacute;c t&ocirc;ng m&agrave;u s&aacute;ng như v&agrave;ng hoặc bạc h&agrave;, v&agrave; kết hợp với những chiếc &aacute;o trong c&oacute; t&ocirc;ng m&agrave;u trắng.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Bí quyết mặc váy midi cho mùa thu đông sành điệu - 1" class="news-image initial loading" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/Bi-quyet-mac-vay-midi-cho-mua-thu-dong-sanh-dieu-1-1603095773-270-width800height450.jpg" style="border: 0px; line-height: normal; max-width: 660px;" width="660" /></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">2. Trang phục da</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	C&aacute;ch dễ nhất để đem phong c&aacute;ch thời trang tr&ecirc;n những s&agrave;n diễn chuy&ecirc;n nghiệp đến với văn ph&ograve;ng l&agrave; lựa chọn trang phục da hoặc PVC. Cho d&ugrave; bạn th&iacute;ch &aacute;o kho&aacute;c biker hay &aacute;o kho&aacute;c nỉ, chất liệu da l&agrave; một c&aacute;ch dễ d&agrave;ng để tạo ra một bộ quần &aacute;o thời trang cao cấp v&agrave; sắc sảo. Bạn c&oacute; thể chọn kết hợp m&agrave;u đơn sắc monochrome sử dụng c&aacute;c sắc th&aacute;i tối như đen hoặc x&aacute;m, đ&acirc;y l&agrave; một c&aacute;ch để tiếp cận phong c&aacute;ch n&agrave;y m&agrave; kh&ocirc;ng cần qu&aacute; cầu kỳ v&agrave; tốn nhiều thời gian. Đối với những người đ&atilde; sẵn s&agrave;ng tiến th&ecirc;m một bước nữa, tại sao kh&ocirc;ng kết hợp c&aacute;c t&ocirc;ng m&agrave;u n&acirc;u v&agrave; than lại với nhau để tạo n&ecirc;n một diện mạo ho&agrave;n to&agrave;n mới? Đ&acirc;y l&agrave; lựa chọn tốt nhất cho những th&aacute;ng lạnh hơn v&agrave; sẽ n&acirc;ng tầm tủ quần &aacute;o của bạn ngay lập tức.</p>
<div class="txtCent" id="ADS_159_15s" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; text-align: center; line-height: normal; color: rgb(0, 0, 0);">
	<div id="ADS_159_15stxtBnrHor" style="font-size: 12px; line-height: normal;">
		&nbsp;</div>
</div>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Bí quyết mặc váy midi cho mùa thu đông sành điệu - 2" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/Bi-quyet-mac-vay-midi-cho-mua-thu-dong-sanh-dieu-2-1603095773-864-width800height450.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/Bi-quyet-mac-vay-midi-cho-mua-thu-dong-sanh-dieu-2-1603095773-864-width800height450.jpg" style="border: 0px; line-height: normal; max-width: 660px;" width="660" /></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">3. V&aacute;y midi với &aacute;o sơ mi</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Bộ trang phục truyền thống n&agrave;y l&agrave; một lựa chọn tuyệt vời cho thời tiết chuyển m&ugrave;a v&agrave; cũng ph&ugrave; hợp đối với tất cả mọi người. Bạn h&atilde;y chọn những chiếc v&aacute;y midi l&agrave;m bằng lưới hoặc ren, v&agrave; c&acirc;n bằng n&oacute; với một &aacute;o sơ mi m&agrave;u đậm v&agrave; sắc n&eacute;t ở tr&ecirc;n. Điều n&agrave;y c&oacute; thể hoạt động tốt với c&aacute;c sắc th&aacute;i đơn sắc hoặc với c&aacute;c t&ocirc;ng m&agrave;u bổ trợ như x&aacute;m v&agrave; xanh, sự lựa chọn l&agrave; của bạn. Ho&agrave;n thiện bộ trang phục với một đ&ocirc;i gi&agrave;y bệt thoải m&aacute;i hoặc t&aacute;o bạo với một đ&ocirc;i gi&agrave;y cao g&oacute;t stiletto.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	&nbsp;</p>
<div style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: normal; color: rgb(0, 0, 0); text-align: center; width: 686.99px; clear: both; position: relative;">
	<div style="font-size: 12px; line-height: normal; position: relative; max-width: 660px; margin: 0px auto;">
		<img alt="Bí quyết mặc váy midi cho mùa thu đông sành điệu - 3" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/Bi-quyet-mac-vay-midi-cho-mua-thu-dong-sanh-dieu-3-1603095773-116-width800height450.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/Bi-quyet-mac-vay-midi-cho-mua-thu-dong-sanh-dieu-3-1603095773-116-width800height450.jpg" style="border: 0px; line-height: normal; max-width: 660px; margin-bottom: 22px;" width="660" />
		<div id="24h-banner-in-image" style="line-height: normal; position: absolute; overflow: hidden; width: 660px; height: 90px; color: white; bottom: 0px; left: 0px;">
			<div class="txtCent" id="ADS_139_15s" style="line-height: normal;">
				&nbsp;</div>
		</div>
	</div>
</div>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	&nbsp;</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">4. V&aacute;y Midi K&egrave;m T&uacute;i Đai</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Kiểu d&aacute;ng đẹp v&agrave; vượt thời gian n&agrave;y l&agrave; lựa chọn ho&agrave;n hảo cho một đ&ecirc;m dạo phố hoặc trong tuần lễ thời trang. Phối v&agrave; kết hợp phong c&aacute;ch của bạn bằng c&aacute;ch kết hợp những chiếc v&aacute;y midi nữ t&iacute;nh với &aacute;o nỉ chunky hoặc &aacute;o hoodie v&agrave; bốt cao g&oacute;t. Phần cuối c&ugrave;ng l&agrave; lựa chọn một chiếc t&uacute;i đai m&agrave; bạn y&ecirc;u th&iacute;ch, h&atilde;y thoải m&aacute;i trong lựa chọn n&agrave;y v&igrave; ch&uacute;ng ph&ugrave; hợp với mọi m&agrave;u sắc v&agrave; kiểu d&aacute;ng theo phong c&aacute;ch n&agrave;y. Những bộ trang phục n&agrave;y ho&agrave;n hảo cho bất kỳ m&ugrave;a n&agrave;o v&agrave; cho ph&eacute;p bạn sử dụng tr&iacute; tưởng tượng của m&igrave;nh để thỏa th&iacute;ch phối đồ. Đừng ngại thể hiện một ch&uacute;t hoang d&atilde; với trang phục n&agrave;y, thế giới l&agrave; s&agrave;n diễn thời trang của bạn!</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Bí quyết mặc váy midi cho mùa thu đông sành điệu - 5" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/Bi-quyet-mac-vay-midi-cho-mua-thu-dong-sanh-dieu-4-1603095773-101-width800height450.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/Bi-quyet-mac-vay-midi-cho-mua-thu-dong-sanh-dieu-4-1603095773-101-width800height450.jpg" style="border: 0px; line-height: normal; max-width: 660px;" width="660" /></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">5. V&aacute;y midi với &aacute;o len chunky</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Khi b&ecirc;n ngo&agrave;i trời bắt đầu se lạnh, bạn h&atilde;y cảm thấy vừa vặn trong chiếc v&aacute;y midi v&agrave; &aacute;o len chunky. N&oacute; l&agrave; một lựa chọn l&yacute; tưởng cho thời tiết chuyển m&ugrave;a v&agrave; hoạt động tốt trong mọi sự kiện. Bạn h&atilde;y chọn những m&agrave;u sắc ph&ugrave; hợp với m&ugrave;a như v&agrave;ng, hổ ph&aacute;ch hoặc xanh hoặc l&ecirc;n m&agrave;u đỏ đậm hoặc ngọc lục bảo. Đ&acirc;y l&agrave; một kiểu d&aacute;ng dễ d&agrave;ng để tạo kiểu, sơ vin mặt trước của &aacute;o len v&agrave;o phần v&aacute;y dưới hoặc để n&oacute; thả xu&ocirc;i b&ecirc;n ngo&agrave;i để tạo cảm gi&aacute;c thoải m&aacute;i. Ho&agrave;n thiện bộ quần &aacute;o bằng một đ&ocirc;i bốt combat hoặc gi&agrave;y cao g&oacute;t vừa vặn v&agrave; bạn sẽ sẵn s&agrave;ng cho cả ng&agrave;y d&agrave;i. Đ&oacute; l&agrave; một lựa chọn thoải m&aacute;i v&agrave; vượt thời gian cho những ng&agrave;y bạn muốn tr&ocirc;ng thật ấm &aacute;p v&agrave; cực phong c&aacute;ch.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Bí quyết mặc váy midi cho mùa thu đông sành điệu - 6" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/Bi-quyet-mac-vay-midi-cho-mua-thu-dong-sanh-dieu-5-1603095773-587-width800height450.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/Bi-quyet-mac-vay-midi-cho-mua-thu-dong-sanh-dieu-5-1603095773-587-width800height450.jpg" style="border: 0px; line-height: normal; max-width: 660px;" width="660" /></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">6. Với &Aacute;o Sơ Mi Qu&aacute; Khổ</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Sơ vin, để thả b&ecirc;n ngo&agrave;i hoặc buộc quanh eo, &aacute;o sơ mi qu&aacute; khổ l&agrave; c&aacute;ch dễ d&agrave;ng để ho&agrave;n thiện trang phục với v&aacute;y midi. Bộ quần &aacute;o đơn giản v&agrave; dễ d&agrave;ng n&agrave;y l&agrave; lựa chọn tốt nhất cho một ng&agrave;y tại văn ph&ograve;ng hoặc sau giờ l&agrave;m việc c&ugrave;ng bạn b&egrave;. Giữ tay &aacute;o bu&ocirc;ng th&otilde;ng để tạo cảm gi&aacute;c thoải m&aacute;i tối đa v&agrave; thu gọn phần giữa của bạn bằng c&aacute;ch gom vải ở eo. Khi chọn m&agrave;u sắc, h&atilde;y đảm bảo bạn chọn c&aacute;c t&ocirc;ng m&agrave;u l&agrave;m nổi bật nhau, chẳng hạn như trung t&iacute;nh, trắng hoặc đen. Nếu bạn định t&ocirc; đậm, h&atilde;y đảm bảo rằng bạn chọn m&agrave;u như m&agrave;u xanh l&aacute; c&acirc;y. Bằng c&aacute;ch n&agrave;y, bạn tr&ocirc;ng sẽ kh&ocirc;ng bị rối mắt v&agrave; c&oacute; phong c&aacute;ch ho&agrave;n hảo v&agrave; cảm thấy như bạn mới bước ra khỏi s&agrave;n catwalk.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Bí quyết mặc váy midi cho mùa thu đông sành điệu - 7" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/Bi-quyet-mac-vay-midi-cho-mua-thu-dong-sanh-dieu-6-1603095773-831-width800height450.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/Bi-quyet-mac-vay-midi-cho-mua-thu-dong-sanh-dieu-6-1603095773-831-width800height450.jpg" style="border: 0px; line-height: normal; max-width: 660px;" width="660" /></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">7.&nbsp;Tất in họa tiết</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Bạn h&atilde;y t&aacute;o bạo với một đ&ocirc;i tất in họa tiết của m&igrave;nh. Đ&acirc;y l&agrave; một c&aacute;ch dễ d&agrave;ng để th&ecirc;m sự th&uacute; vị v&agrave;o một bộ quần &aacute;o truyền thống v&agrave; n&oacute; tr&ocirc;ng rất tuyệt vời v&agrave;o bất kỳ thời điểm n&agrave;o trong năm. Từ họa tiết da b&aacute;o đến trăng lưỡi liềm, c&oacute; v&ocirc; số kiểu d&aacute;ng để bạn lựa chọn. Phong c&aacute;ch n&agrave;y với một chiếc v&aacute;y xếp ly midi, &aacute;o b&oacute; s&aacute;t v&agrave; một đ&ocirc;i gi&agrave;y slip-on hoặc gi&agrave;y mule xinh xắn. Bạn h&atilde;y thoải m&aacute;i phối v&agrave; kết hợp m&agrave;u sắc tr&ecirc;n to&agrave;n bộ trang phục hoặc giữ cho n&oacute; đồng m&agrave;u trong một loạt m&agrave;u x&aacute;m hoặc đen. Đ&acirc;y l&agrave; một sự thay thế th&uacute; vị cho việc mặc đồ c&oacute; họa tiết.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Bí quyết mặc váy midi cho mùa thu đông sành điệu - 8" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/Bi-quyet-mac-vay-midi-cho-mua-thu-dong-sanh-dieu-7-1603095773-14-width800height450.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/Bi-quyet-mac-vay-midi-cho-mua-thu-dong-sanh-dieu-7-1603095773-14-width800height450.jpg" style="border: 0px; line-height: normal; max-width: 660px;" width="660" /></p>
<p class="linkOrigin" style="font-family: Arial, Helvetica, sans-serif; line-height: 1.6; color: rgb(117, 117, 117); margin: 10px 0px; font-size: 13px !important;">
	<span class="dots" id="url_origin_cut" style="line-height: normal; margin: 0px;">Nguồn: http://danviet.vn/bi-quyet-mac-vay-midi-cho-mua-thu-dong-sanh-dieu-50202020109332027.htm</span></p>
', 5, 3)
INSERT [dbo].[db_TinTuc] ([TinTucID], [TieuDe], [AnhDaiDien], [MoTa], [NgayDang], [LuotXem], [ChiTiet], [ThuTu], [MaDM]) VALUES (8, N'Cách lựa chọn những đôi giày sang trọng sành điệu nhưng vẫn thoải mái cho nàng', N'1603078324-444-thumbnail-width640height480.jpg', N'Việc lựa chọn một đôi giày sang trọng không hẳn là khó nhưng một đôi giày vừa sang trọng lại ...', CAST(N'2020-10-22T21:46:02.000' AS DateTime), 0, N'<header class="atclTit atclTitD mrT10" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; margin-top: 10px; line-height: normal; color: rgb(0, 0, 0);">
	<h1 class="clrTit bld tuht_show" id="article_title" itemprop="headline" style="font-size: 27px; margin: 0px 0px 16px; color: initial; line-height: normal; word-spacing: 1px;">
		C&aacute;ch lựa chọn những đ&ocirc;i gi&agrave;y sang trọng s&agrave;nh điệu nhưng vẫn thoải m&aacute;i cho n&agrave;ng</h1>
</header>
<div class="bmTpSeoBlk bmTpSeoBlkD clF" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; clear: both; line-height: normal; height: auto; overflow: initial; color: rgb(0, 0, 0);">
	<div class="clF" style="font-size: 12px; clear: both; line-height: normal;">
		&nbsp;</div>
</div>
<h2 class="ctTp tuht_show" id="article_sapo" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; margin: 10px 0px; line-height: 1.6; color: rgb(0, 0, 0);">
	Việc lựa chọn một đ&ocirc;i gi&agrave;y sang trọng kh&ocirc;ng hẳn l&agrave; kh&oacute; nhưng một đ&ocirc;i gi&agrave;y vừa sang trọng lại vừa thoải m&aacute;i để bạn di chuyển cả ng&agrave;y d&agrave;i cần sự ch&uacute; &yacute; v&agrave; đầu tư hơn từ những c&ocirc; n&agrave;ng của ch&uacute;ng ta.</h2>
<div class="sbNws" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: normal; margin-bottom: 20px; color: rgb(0, 0, 0);">
	Sự kiện:&nbsp;<a class="sbevt clrGr fs12" href="https://www.24h.com.vn/xu-huong-thoi-trang-c78e1201.html" style="font-size: 15px; color: rgb(55, 139, 54); line-height: normal;" title="Xu hướng thời trang">Xu hướng thời trang</a>,&nbsp;<a class="sbevt clrGr" href="https://www.24h.com.vn/giay-dep-c78e5596.html" style="font-size: 15px; color: rgb(55, 139, 54); line-height: normal;" title="Giày - Dép">Gi&agrave;y - D&eacute;p</a>,&nbsp;<a class="sbevt clrGr" href="https://www.24h.com.vn/tu-van-thoi-trang-cong-so-c78e1144.html" style="font-size: 15px; color: rgb(55, 139, 54); line-height: normal;" title="Tư vấn thời trang công sở">Tư vấn thời trang c&ocirc;ng sở</a></div>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">Gi&agrave;y c&ocirc;ng sở</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Cho d&ugrave; bạn ở vị tr&iacute; Gi&aacute;m đốc điều h&agrave;nh hay l&agrave; nh&acirc;n vi&ecirc;n, văn ph&ograve;ng l&agrave; nơi để bạn tr&ocirc;ng sắc sảo, phong c&aacute;ch v&agrave; tự tin. Với suy nghĩ n&agrave;y, việc đi gi&agrave;y thoải m&aacute;i l&agrave; đặt cược tốt nhất của bạn. Gi&agrave;y mule c&oacute; g&oacute;t, gi&agrave;y slide với những chi tiết trang tr&iacute; tối thiểu v&agrave; một đ&ocirc;i&nbsp;<a class="TextlinkBaiviet" href="https://www.24h.com.vn/giay-xinh-c78e3481.html" style="text-decoration-line: none; line-height: 1.6; color: rgb(0, 0, 255);" title="giày cao gót">gi&agrave;y cao g&oacute;t</a>&nbsp;truyền thống l&agrave; kiểu gi&agrave;y ph&ugrave; hợp, thoải m&aacute;i cho nơi l&agrave;m việc v&agrave; ch&uacute;ng dễ đi cho cả ng&agrave;y. Bạn n&ecirc;n chọn c&aacute;c sắc m&agrave;u tối để c&oacute; một kiểu d&aacute;ng trung t&iacute;nh hoặc kết hợp n&oacute; với trang phục nhiều m&agrave;u sắc hơn cho những ng&agrave;y bạn được mặc quần &aacute;o casual (đời thường) đi l&agrave;m.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Cách lựa chọn những đôi giày sang trọng sành điệu nhưng vẫn thoải mái cho nàng - 1" class="news-image initial loading" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/Cach-lua-chon-nhung-doi-giay-sang-trong-sanh-dieu-nhung-van-thoai-mai-cho-nang-1-1603078413-421-width800height450.jpg" style="border: 0px; line-height: normal; max-width: 660px;" width="660" /></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">Gi&agrave;y dự đ&aacute;m cưới</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Cho d&ugrave; bạn đang tham dự một đ&aacute;m cưới v&agrave;o m&ugrave;a đ&ocirc;ng hay m&ugrave;a xu&acirc;n tới, h&atilde;y chọn cho m&igrave;nh một đ&ocirc;i gi&agrave;y sang trọng, s&agrave;nh điệu nhưng vẫn giữ sự thoải m&aacute;i. Gi&agrave;y cao g&oacute;t c&oacute; d&acirc;y đeo mắt c&aacute; ch&acirc;n l&agrave; l&yacute; tưởng cho việc di chuyển v&agrave; g&oacute;t to hơn gi&uacute;p cho việc đứng trong thời gian d&agrave;i trở n&ecirc;n dễ d&agrave;ng hơn. Những m&agrave;u sắc vui nhộn như hồng, xanh lam v&agrave; xanh l&aacute; c&acirc;y tr&ocirc;ng rất tuyệt trong những th&aacute;ng ấm hơn v&agrave; rất ph&ugrave; hợp với quần d&agrave;i hoặc v&aacute;y hoa. Đối với đ&aacute;m cưới mang t&iacute;nh truyền thống, m&agrave;u tối hơn v&agrave; t&ocirc;ng m&agrave;u trung t&iacute;nh sẽ ph&ugrave; hợp với chủ đề cho lễ cưới m&agrave; kh&ocirc;ng bị qu&aacute; đ&agrave;. Th&ecirc;m một số t&ocirc; điểm cho một đ&ocirc;i gi&agrave;y cao g&oacute;t để tạo sự thay đổi theo m&ugrave;a, hoặc gi&agrave;y đế bệt hoặc gi&agrave;y cao g&oacute;t kitten cho những người th&iacute;ch bảo vệ mắt c&aacute; ch&acirc;n của m&igrave;nh.</p>
<div class="txtCent" id="ADS_159_15s" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; text-align: center; line-height: normal; color: rgb(0, 0, 0);">
	<div id="ADS_159_15stxtBnrHor" style="font-size: 12px; line-height: normal;">
		&nbsp;</div>
</div>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Cách lựa chọn những đôi giày sang trọng sành điệu nhưng vẫn thoải mái cho nàng - 2" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/Cach-lua-chon-nhung-doi-giay-sang-trong-sanh-dieu-nhung-van-thoai-mai-cho-nang-2-1603078413-834-width800height450.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/Cach-lua-chon-nhung-doi-giay-sang-trong-sanh-dieu-nhung-van-thoai-mai-cho-nang-2-1603078413-834-width800height450.jpg" style="border: 0px; line-height: normal; max-width: 660px;" width="660" /></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">Gi&agrave;y bệt</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Gi&agrave;y cao g&oacute;t kh&ocirc;ng phải l&agrave; c&aacute;ch duy nhất để l&agrave;m nổi bật một bộ trang phục, gi&agrave;y bệt l&agrave; một lựa chọn tuyệt vời cho c&aacute;c&nbsp;c&ocirc; g&aacute;i khi di chuyển nhiều. Những chiếc gi&agrave;y ba l&ecirc; m&agrave;u sắc nhẹ nh&agrave;ng l&agrave; c&aacute;ch tốt nhất để t&ocirc;n l&ecirc;n một bộ trang phục xuề x&ograve;a, hoặc bạn c&oacute; thể ho&agrave;n thiện&nbsp;trang phục&nbsp;văn ph&ograve;ng của m&igrave;nh&nbsp;bằng một bộ gi&agrave;y slide kiểu d&aacute;ng đẹp.</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Đai v&agrave; c&aacute;c loại vải độc đ&aacute;o&nbsp;l&agrave; c&aacute;ch tốt nhất để th&ecirc;m sự th&uacute; vị cho đ&ocirc;i gi&agrave;y n&agrave;y, những đ&ocirc;i gi&agrave;y n&agrave;y được tạo ra để trở n&ecirc;n nổi bật, v&agrave; bạn cũng vậy!</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Cách lựa chọn những đôi giày sang trọng sành điệu nhưng vẫn thoải mái cho nàng - 3" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/Cach-lua-chon-nhung-doi-giay-sang-trong-sanh-dieu-nhung-van-thoai-mai-cho-nang-3-1603078413-527-width800height450.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/Cach-lua-chon-nhung-doi-giay-sang-trong-sanh-dieu-nhung-van-thoai-mai-cho-nang-3-1603078413-527-width800height450.jpg" style="border: 0px; line-height: normal; max-width: 660px;" width="660" /></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">Gi&agrave;y cho phụ nữ di chuyển cả ng&agrave;y</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Bạn c&oacute; thể di chuyển từ nơi n&agrave;y sang nơi kh&aacute;c kh&ocirc;ng phải đau đớn nhờ những đ&ocirc;i gi&agrave;y n&agrave;y. Gi&agrave;y bệt Ballerina hoặc gi&agrave;y booty hoặc gi&agrave;y cao g&oacute;t đế thấp sẽ gi&uacute;p đ&ocirc;i ch&acirc;n của bạn lu&ocirc;n được bảo vệ m&agrave; vẫn&nbsp;phong c&aacute;ch. Bạn h&atilde;y chọn từ nhiều kiểu d&aacute;ng kh&aacute;c nhau để bổ sung cho trang phục của bạn. Nếu bạn đang chọn chiều cao, h&atilde;y chọn một đ&ocirc;i gi&agrave;y cao g&oacute;t c&oacute; đế chunky để đảm bảo thăng bằng v&agrave; ngăn nguy cơ trượt ng&atilde;. Để th&ecirc;m thoải m&aacute;i, h&atilde;y thử một chiếc l&oacute;t gi&agrave;y hỗ trợ, bạn sẽ c&oacute; thể thoải m&aacute;i đi lại cả ng&agrave;y.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	&nbsp;</p>
<div style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: normal; color: rgb(0, 0, 0); text-align: center; width: 686.99px; clear: both; position: relative;">
	<div style="font-size: 12px; line-height: normal; position: relative; max-width: 660px; margin: 0px auto;">
		<img alt="Cách lựa chọn những đôi giày sang trọng sành điệu nhưng vẫn thoải mái cho nàng - 4" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/Cach-lua-chon-nhung-doi-giay-sang-trong-sanh-dieu-nhung-van-thoai-mai-cho-nang-4-1603078413-840-width800height450.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/Cach-lua-chon-nhung-doi-giay-sang-trong-sanh-dieu-nhung-van-thoai-mai-cho-nang-4-1603078413-840-width800height450.jpg" style="border: 0px; line-height: normal; max-width: 660px; margin-bottom: 22px;" width="660" />
		<div id="24h-banner-in-image" style="line-height: normal; position: absolute; overflow: hidden; width: 660px; height: 90px; color: white; bottom: 0px; left: 0px;">
			<div class="txtCent" id="ADS_139_15s" style="line-height: normal;">
				&nbsp;</div>
		</div>
	</div>
</div>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	&nbsp;</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">Gi&agrave;y để đứng cả ng&agrave;y</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Cho d&ugrave; bạn l&agrave; nh&acirc;n vi&ecirc;n giao dịch ng&acirc;n h&agrave;ng hay một người mua sắm c&aacute; nh&acirc;n, việc đứng tr&ecirc;n đ&ocirc;i ch&acirc;n của bạn cả ng&agrave;y c&oacute; thể c&oacute; một ch&uacute;t kh&oacute; khăn. Tuy nhi&ecirc;n, những đ&ocirc;i gi&agrave;y n&agrave;y chắc chắn sẽ gi&uacute;p bạn cảm thấy thoải m&aacute;i v&agrave; tr&ocirc;ng đẹp nhất. Gi&agrave;y brogue, gi&agrave;y cao g&oacute;t đế thấp, gi&agrave;y bệt v&agrave; gi&agrave;y mules l&agrave; những lựa chọn ph&ugrave; hợp nhất cho một c&ocirc; g&aacute;i y&ecirc;u th&iacute;ch thời trang m&agrave; kh&ocirc;ng phải hy sinh đ&ocirc;i ch&acirc;n của bạn. Tăng th&ecirc;m chiều cao cho tầm v&oacute;c của bạn m&agrave; kh&ocirc;ng bị đau lưng bằng một đ&ocirc;i gi&agrave;y cao g&oacute;t kitten quai ngang, ch&uacute;ng rất phong c&aacute;ch v&agrave; vừa vặn, v&agrave; bạn c&oacute; thể mang ch&uacute;ng bất cứ l&uacute;c n&agrave;o trong năm. Nếu bạn phải di chuyển nhiều xung quanh, h&atilde;y chọn những đ&ocirc;i gi&agrave;y hỗ trợ bảo vệ v&ograve;m b&agrave;n ch&acirc;n của bạn, chẳng hạn như gi&agrave;y cao g&oacute;t b&iacute;t g&oacute;t stiletto hoặc gi&agrave;y bệt thoải m&aacute;i.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Cách lựa chọn những đôi giày sang trọng sành điệu nhưng vẫn thoải mái cho nàng - 6" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/Cach-lua-chon-nhung-doi-giay-sang-trong-sanh-dieu-nhung-van-thoai-mai-cho-nang-5-1603078413-558-width800height450.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-19/Cach-lua-chon-nhung-doi-giay-sang-trong-sanh-dieu-nhung-van-thoai-mai-cho-nang-5-1603078413-558-width800height450.jpg" style="border: 0px; line-height: normal; max-width: 660px;" width="660" /></p>
<p class="linkOrigin" style="font-family: Arial, Helvetica, sans-serif; line-height: 1.6; color: rgb(117, 117, 117); margin: 10px 0px; font-size: 13px !important;">
	<span class="txtFull" id="url_origin_full" style="line-height: normal; margin: 0px; display: block;">Nguồn: http://danviet.vn/cach-lua-chon-nhung-doi-giay-sang-trong-sanh-dieu-nhung-van-thoai-mai-cho-nang-502020191014282254.htm</span></p>
', 1, 4)
INSERT [dbo].[db_TinTuc] ([TinTucID], [TieuDe], [AnhDaiDien], [MoTa], [NgayDang], [LuotXem], [ChiTiet], [ThuTu], [MaDM]) VALUES (10, N'Đeo “băng đô lộn ngược” tạo sự khác biệt và cá tính mới', N'9_fotor-compressed-1601889001-247-width640height480.jpg', N'Sau đây là một số xu hướng phụ kiện cho tóc nổi bật nhất mùa Thu/Đông năm 2020-2021.', CAST(N'2020-10-22T21:49:08.000' AS DateTime), 0, N'<header class="atclTit atclTitD mrT10" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; margin-top: 10px; line-height: normal; color: rgb(0, 0, 0);">
	<h1 class="clrTit bld tuht_show" id="article_title" itemprop="headline" style="font-size: 27px; margin: 0px 0px 16px; color: initial; line-height: normal; word-spacing: 1px;">
		Đeo &ldquo;băng đ&ocirc; lộn ngược&rdquo; tạo sự kh&aacute;c biệt v&agrave; c&aacute; t&iacute;nh mới</h1>
</header>
<div class="updTm updTmD mrT5" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; margin-top: 5px; line-height: normal; color: rgb(153, 153, 153); padding-bottom: 5px; float: left;">
	<br />
	&nbsp;</div>
<h2 class="ctTp tuht_show" id="article_sapo" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; margin: 10px 0px; line-height: 1.6; color: rgb(0, 0, 0);">
	<br />
	Sau đ&acirc;y l&agrave; một số xu hướng phụ kiện cho t&oacute;c nổi bật nhất m&ugrave;a Thu/Đ&ocirc;ng năm 2020-2021.</h2>
<div class="sbNws" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: normal; margin-bottom: 20px; color: rgb(0, 0, 0);">
	Sự kiện:&nbsp;<a class="sbevt clrGr fs12" href="https://www.24h.com.vn/xu-huong-thoi-trang-c78e1201.html" style="font-size: 15px; color: rgb(55, 139, 54); line-height: normal;" title="Xu hướng thời trang">Xu hướng thời trang</a></div>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Đeo “băng đô lộn ngược” tạo sự khác biệt và cá tính mới - 1" class="news-image initial loading" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-05/deo-bang-do-lon-nguoc-tao-su-khac-biet-va-ca-tinh-moi-xu-huong-hien-dai-7c357e4aff4d41b477c83750c210ff91-1601889338-166-width564height846.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Đeo “băng đô lộn ngược” tạo sự khác biệt và cá tính mới - 2" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-05/deo-bang-do-lon-nguoc-tao-su-khac-biet-va-ca-tinh-moi-xu-huong-hien-dai-9-1601889027-474-width564height704.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-05/deo-bang-do-lon-nguoc-tao-su-khac-biet-va-ca-tinh-moi-xu-huong-hien-dai-9-1601889027-474-width564height704.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p align="center" class="img_chu_thich_0407" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(37, 37, 37); font-style: italic; text-align: center; margin-top: -15px;">
	Băng đ&ocirc; lộn ngược chất liệu sa tanh sang trọng, nổi bật v&agrave; thu h&uacute;t.</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">1. Ruy băng v&agrave; khăn qu&agrave;ng cổ tạo kiểu cho m&aacute;i t&oacute;c đơn giản m&agrave; tinh tế</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Nếu bạn muốn c&oacute; một d&aacute;ng vẻ đơn giản nhưng kh&ocirc;ng hề nhạt nh&ograve;a, h&atilde;y t&igrave;m đến những rải ruy băng hoặc khăn qu&agrave;ng cổ. T&ocirc; điểm cho kiểu t&oacute;c đu&ocirc;i ngựa buộc thấp bằng một dải ruy băng d&agrave;i sẽ l&agrave; một c&aacute;ch l&agrave;m điệu kh&aacute; tinh tế. Đ&acirc;y l&agrave; một trong những xu hướng phụ kiện t&oacute;c kh&ocirc;ng theo bất kỳ quy tắc n&agrave;o cho bạn dễ d&agrave;ng biến tấu theo c&aacute;ch của ri&ecirc;ng m&igrave;nh.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Đeo “băng đô lộn ngược” tạo sự khác biệt và cá tính mới - 3" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-05/deo-bang-do-lon-nguoc-tao-su-khac-biet-va-ca-tinh-moi-xu-huong-hien-dai-1-1601889027-1-width800height547.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-05/deo-bang-do-lon-nguoc-tao-su-khac-biet-va-ca-tinh-moi-xu-huong-hien-dai-1-1601889027-1-width800height547.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">2. Mạng che mặt cổ điển v&agrave; ki&ecirc;u sa</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	C&aacute;c tấm mạng&nbsp;che mặt cho cảm gi&aacute;c cổ điển v&agrave; ki&ecirc;u sa. C&oacute; thể l&agrave; mạng che mặt ngắn hoặc bao tr&ugrave;m cả gương mặt mang m&agrave;u sắc ph&ugrave; hợp với trang phục đem đến một c&aacute;i nh&igrave;n kh&aacute; đơn giản song v&ocirc; c&ugrave;ng tinh tế. Ch&uacute;ng xuất hiện nhiều tr&ecirc;n c&aacute;c đường băng, bao gồm Giambattista Valli, Chocheng, Carolina Herrera, Rodarte, Elie Saab v&agrave; Christopher John Rogers.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	&nbsp;</p>
<div style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: normal; color: rgb(0, 0, 0); text-align: center; width: 686.99px; clear: both; position: relative;">
	<div style="font-size: 12px; line-height: normal; position: relative; max-width: 660px; margin: 0px auto;">
		<img alt="Đeo “băng đô lộn ngược” tạo sự khác biệt và cá tính mới - 4" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-05/deo-bang-do-lon-nguoc-tao-su-khac-biet-va-ca-tinh-moi-xu-huong-hien-dai-2-1601889027-135-width800height547.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-05/deo-bang-do-lon-nguoc-tao-su-khac-biet-va-ca-tinh-moi-xu-huong-hien-dai-2-1601889027-135-width800height547.jpg" style="border: 0px; line-height: normal; max-width: 660px; margin-bottom: 22px;" />
		<div id="24h-banner-in-image" style="line-height: normal; position: absolute; overflow: hidden; width: 660px; height: 90px; color: white; bottom: 0px; left: 0px;">
			<div class="txtCent" id="ADS_139_15s" style="line-height: normal;">
				&nbsp;</div>
		</div>
	</div>
</div>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	&nbsp;</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Đeo “băng đô lộn ngược” tạo sự khác biệt và cá tính mới - 6" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-05/deo-bang-do-lon-nguoc-tao-su-khac-biet-va-ca-tinh-moi-xu-huong-hien-dai-3-1601889027-902-width800height547.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-05/deo-bang-do-lon-nguoc-tao-su-khac-biet-va-ca-tinh-moi-xu-huong-hien-dai-3-1601889027-902-width800height547.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">3. Kẹp t&oacute;c v&agrave; tr&acirc;m c&agrave;i hoa hơi hướng miền nhiệt đới</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Tr&acirc;m c&agrave;i t&oacute;c rất ph&ugrave; hợp để trang tr&iacute; m&aacute;i t&oacute;c theo c&aacute;ch vui tươi, trẻ trung m&agrave; kh&ocirc;ng hề trẻ con.&nbsp;Đặc điểm chung l&agrave; thiết kế hoa mang hơi hướng miền nhiệt đới, được l&agrave;m bằng c&aacute;c chi tiết kim loại v&agrave; nạm ngọc, điển h&igrave;nh như Miu Miu, Tom Ford, Giambattista Valli...</p>
<div class="txtCent" id="ADS_159_15s" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; text-align: center; line-height: normal; color: rgb(0, 0, 0);">
	<div id="ADS_159_15stxtBnrHor" style="font-size: 12px; line-height: normal;">
		&nbsp;</div>
</div>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Đeo “băng đô lộn ngược” tạo sự khác biệt và cá tính mới - 7" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-05/deo-bang-do-lon-nguoc-tao-su-khac-biet-va-ca-tinh-moi-xu-huong-hien-dai-4-1601889027-511-width800height546.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-05/deo-bang-do-lon-nguoc-tao-su-khac-biet-va-ca-tinh-moi-xu-huong-hien-dai-4-1601889027-511-width800height546.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">4. Đậm chất thể thao</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Vừa l&agrave;m điệu vừa l&agrave; một m&oacute;n phụ kiện thể thao ho&agrave;n hảo để giữ m&aacute;i t&oacute;c kh&ocirc;ng bị bết trong qu&aacute; tr&igrave;nh tập luyện. Ch&uacute;ng tr&ocirc;ng kh&aacute; đơn giản với h&igrave;nh d&aacute;ng l&agrave; một chiếc băng đ&ocirc; trơn hoặc in logo. H&atilde;y l&agrave; một c&ocirc; g&aacute;i s&agrave;nh điệu bất kể nơi đ&acirc;u, ngay cả khi bạn đang chơi thể thao.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Đeo “băng đô lộn ngược” tạo sự khác biệt và cá tính mới - 8" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-05/deo-bang-do-lon-nguoc-tao-su-khac-biet-va-ca-tinh-moi-xu-huong-hien-dai-8-1601889027-975-width800height546.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-05/deo-bang-do-lon-nguoc-tao-su-khac-biet-va-ca-tinh-moi-xu-huong-hien-dai-8-1601889027-975-width800height546.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">5. Băng đ&ocirc; đ&aacute;ng ch&uacute; &yacute;</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Băng đ&ocirc; l&agrave; một phần phụ kiện t&oacute;c kh&ocirc;ng thể thiếu của xu hướng năm nay. Hầu hết ch&uacute;ng nổi bật, đặc biệt thu h&uacute;t sự ch&uacute; &yacute; v&agrave; đều mang n&eacute;t sang trọng. Điển h&igrave;nh như những chiếc bằng&nbsp;kim loại giống vương miện được đeo ở Prada, hoặc những chiếc được trang tr&iacute; v&agrave; đ&iacute;nh cườm d&agrave;y m&agrave; c&aacute;c người mẫu đ&atilde; đeo tại Simone Rocha v&agrave; Erdem.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Đeo “băng đô lộn ngược” tạo sự khác biệt và cá tính mới - 9" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-05/deo-bang-do-lon-nguoc-tao-su-khac-biet-va-ca-tinh-moi-xu-huong-hien-dai-5-1601889027-846-width800height546.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-05/deo-bang-do-lon-nguoc-tao-su-khac-biet-va-ca-tinh-moi-xu-huong-hien-dai-5-1601889027-846-width800height546.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Đeo “băng đô lộn ngược” tạo sự khác biệt và cá tính mới - 10" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-05/deo-bang-do-lon-nguoc-tao-su-khac-biet-va-ca-tinh-moi-xu-huong-hien-dai-6-1601889027-24-width800height547.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-05/deo-bang-do-lon-nguoc-tao-su-khac-biet-va-ca-tinh-moi-xu-huong-hien-dai-6-1601889027-24-width800height547.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">6. Băng đ&ocirc; lộn ngược</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Băng đ&ocirc; lộn ngược thi&ecirc;n về xu hướng tạo kiểu hơn l&agrave; một phụ kiện t&oacute;c thực sự. Giờ đ&acirc;y, bạn c&oacute; thể đeo băng đ&ocirc; của m&igrave;nh ngược lại m&agrave; kh&ocirc;ng cần phải theo c&aacute;ch th&ocirc;ng thường để tạo n&ecirc;n sự kh&aacute;c biệt v&agrave; c&aacute; t&iacute;nh. Đ&oacute; l&agrave; c&aacute;ch một số người mẫu tại Badgley Mischka đeo những chiếc băng đ&ocirc; được trang sức bằng đ&aacute; qu&yacute;, điều n&agrave;y cho ph&eacute;p những chiếc băng đ&ocirc; của họ nổi bật hơn.&nbsp;B&ecirc;n cạnh đ&oacute;, c&aacute;c người mẫu đeo băng đ&ocirc; lộn ngược được bọc bằng sa tanh đệm ở Fendi tr&ocirc;ng v&ocirc; c&ugrave;ng lộng lẫy.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Đeo “băng đô lộn ngược” tạo sự khác biệt và cá tính mới - 11" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-05/deo-bang-do-lon-nguoc-tao-su-khac-biet-va-ca-tinh-moi-xu-huong-hien-dai-7-1601889027-713-width800height546.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-05/deo-bang-do-lon-nguoc-tao-su-khac-biet-va-ca-tinh-moi-xu-huong-hien-dai-7-1601889027-713-width800height546.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p class="linkOrigin" style="font-family: Arial, Helvetica, sans-serif; line-height: 1.6; color: rgb(117, 117, 117); margin: 10px 0px; font-size: 13px !important;">
	<span class="dots" id="url_origin_cut" style="line-height: normal; margin: 0px;">Nguồn: http://danviet.vn/deo-bang-do-lon-nguoc-tao-su-khac-biet-va-ca-tinh-moi-50202018108351941.htm</span></p>
', 0, 4)
INSERT [dbo].[db_TinTuc] ([TinTucID], [TieuDe], [AnhDaiDien], [MoTa], [NgayDang], [LuotXem], [ChiTiet], [ThuTu], [MaDM]) VALUES (11, N'Gợi ý 4 set đồ mang phong cách Parisian Chic đúng điệu cho mùa Thu', N'a_fotor-compressed-1602735597-127-width640height480.jpg', N'Parisian Chic là phong cách mang thương hiệu của các cô gái Pháp, đơn giản nhưng vẫn tinh tế, phong cách nhưng vẫn lãng mạn.', CAST(N'2020-10-22T00:00:00.000' AS DateTime), 0, N'<header class="atclTit atclTitD mrT10" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; margin-top: 10px; line-height: normal; color: rgb(0, 0, 0);">
	<h1 class="clrTit bld tuht_show" id="article_title" itemprop="headline" style="font-size: 27px; margin: 0px 0px 16px; color: initial; line-height: normal; word-spacing: 1px;">
		Gợi &yacute; 4 set đồ mang phong c&aacute;ch Parisian Chic đ&uacute;ng điệu cho m&ugrave;a Thu</h1>
</header>
<div class="updTm updTmD mrT5" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; margin-top: 5px; line-height: normal; color: rgb(153, 153, 153); padding-bottom: 5px; float: left;">
	Thứ S&aacute;u, ng&agrave;y 16/10/2020 07:32 AM (GMT+7)</div>
<div class="bmTpSeoBlk bmTpSeoBlkD clF" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; clear: both; line-height: normal; height: auto; overflow: initial; color: rgb(0, 0, 0);">
	<div class="icoSocial icoSocialx txtRt flRt" style="font-size: 12px; text-align: right; line-height: normal; margin-left: 0px;">
		<a class="icoSocialCm" href="http://www.facebook.com/fan24h" style="font-size: 15px; text-decoration-line: none; line-height: normal; margin-left: 0px; margin-right: 5px; color: rgb(0, 0, 255);" target="_blank" title="Chia sẻ trên Fanpage">&nbsp;</a></div>
	<div class="clF" style="font-size: 12px; clear: both; line-height: normal;">
		&nbsp;</div>
</div>
<h2 class="ctTp tuht_show" id="article_sapo" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; margin: 10px 0px; line-height: 1.6; color: rgb(0, 0, 0);">
	Parisian Chic l&agrave; phong c&aacute;ch mang thương hiệu của c&aacute;c c&ocirc; g&aacute;i Ph&aacute;p, đơn giản nhưng vẫn tinh tế, phong c&aacute;ch nhưng vẫn l&atilde;ng mạn.</h2>
<div class="sbNws" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: normal; margin-bottom: 20px; color: rgb(0, 0, 0);">
	Sự kiện:&nbsp;<a class="sbevt clrGr fs12" href="https://www.24h.com.vn/xu-huong-thoi-trang-c78e1201.html" style="font-size: 15px; color: rgb(55, 139, 54); line-height: normal;" title="Xu hướng thời trang">Xu hướng thời trang</a>,&nbsp;<a class="sbevt clrGr" href="https://www.24h.com.vn/phoi-do-c78e5179.html" style="font-size: 15px; color: rgb(55, 139, 54); line-height: normal;" title="Phối đồ">Phối đồ</a>,&nbsp;<a class="sbevt clrGr" href="https://www.24h.com.vn/tu-van-mac-dep-c78e3899.html" style="font-size: 15px; color: rgb(55, 139, 54); line-height: normal;" title="Tư vấn mặc đẹp">Tư vấn mặc đẹp</a></div>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Gợi ý 4 set đồ mang phong cách Parisian Chic đúng điệu cho mùa Thu - 1" class="news-image initial loading" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-1-1602735656-769-width472height590.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">Set đồ m&agrave;u trắng tao nh&atilde;</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Nếu như m&ugrave;a h&egrave;, c&aacute;c c&ocirc; g&aacute;i Ph&aacute;p y&ecirc;u th&iacute;ch chiếc v&aacute;y m&agrave;u trắng bồng bềnh l&atilde;ng mạn, th&igrave; sang thu m&agrave;u trắng vẫn kh&ocirc;ng thể thiếu trong những bộ đồ của họ. N&eacute;t tao nh&atilde; v&agrave; tinh kh&ocirc;i của chiếc đầm len hay chiếc quần t&acirc;y trắng ch&iacute;nh l&agrave; điểm nhấn nổi bật của cả set đồ. Bạn c&oacute; thể phối với c&aacute;c gam m&agrave;u trung t&iacute;nh kh&aacute;c hoặc với m&agrave;u n&acirc;u tạo n&eacute;t sang trọng hoặc &quot;white on white&quot; để tr&ocirc;ng thanh tao tuyệt đối.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Gợi ý 4 set đồ mang phong cách Parisian Chic đúng điệu cho mùa Thu - 2" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-2-1602735656-281-width564height751.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-2-1602735656-281-width564height751.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Gợi ý 4 set đồ mang phong cách Parisian Chic đúng điệu cho mùa Thu - 3" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-3-1602735656-802-width564height846.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-3-1602735656-802-width564height846.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Gợi ý 4 set đồ mang phong cách Parisian Chic đúng điệu cho mùa Thu - 4" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-4-1602735656-302-width564height846.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-4-1602735656-302-width564height846.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p class="img_chu_thich_0407" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(37, 37, 37); font-style: italic; text-align: center; margin-top: -15px;">
	Kết hợp với một chiếc quần jean cũng kh&ocirc;ng tồi để cho set đồ của bạn mang vẻ ph&oacute;ng kho&aacute;ng hơn.</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">&Aacute;o len kết hợp với trang phục l&atilde;ng mạn</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	&Aacute;o len vốn l&agrave; m&oacute;n đồ cơ bản kh&ocirc;ng thể thiếu của phong c&aacute;ch Parisian Chic. Ch&uacute;ng mềm mại, basic v&agrave; dễ l&ecirc;n đồ. Ph&aacute;i đẹp c&oacute; thể kết hợp ch&uacute;ng với bất k&igrave; m&oacute;n đồ n&agrave;o trong tủ quần &aacute;o của bạn như quần t&acirc;y, ch&acirc;n v&aacute;y v&agrave; veston,... Song để mặc chuẩn theo phong c&aacute;ch n&agrave;y, ph&aacute;i đẹp h&atilde;y mặc n&oacute; theo c&aacute;ch ri&ecirc;ng của m&igrave;nh hoặc kết hợp kh&eacute;o l&eacute;o để th&ecirc;m ch&uacute;t dư vị l&atilde;ng mạn.</p>
<div class="txtCent" id="ADS_159_15s" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; text-align: center; line-height: normal; color: rgb(0, 0, 0);">
	<div id="ADS_159_15stxtBnrHor" style="font-size: 12px; line-height: normal;">
		&nbsp;</div>
</div>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Gợi ý 4 set đồ mang phong cách Parisian Chic đúng điệu cho mùa Thu - 5" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-5-1602735656-96-width564height846.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-5-1602735656-96-width564height846.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Gợi ý 4 set đồ mang phong cách Parisian Chic đúng điệu cho mùa Thu - 6" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-6-1602735656-699-width564height846.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-6-1602735656-699-width564height846.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p class="img_chu_thich_0407" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(37, 37, 37); font-style: italic; text-align: center; margin-top: -15px;">
	Bạn n&ecirc;n thử nghiệm kiểu kho&aacute;c chiếc &aacute;o len tr&ecirc;n vai cho phong c&aacute;ch đường phố của m&igrave;nh.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Gợi ý 4 set đồ mang phong cách Parisian Chic đúng điệu cho mùa Thu - 7" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-7-1602735656-344-width564height845.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-7-1602735656-344-width564height845.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p class="img_chu_thich_0407" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(37, 37, 37); font-style: italic; text-align: center; margin-top: -15px;">
	Kết hợp với chiếc quần ống rộng su&ocirc;ng rủ hay chiếc v&aacute;y satin để ch&uacute;ng uyển chuyển theo mỗi bước đi của bạn.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Gợi ý 4 set đồ mang phong cách Parisian Chic đúng điệu cho mùa Thu - 8" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-8-1602735656-56-width563height706.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-8-1602735656-56-width563height706.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p class="img_chu_thich_0407" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(37, 37, 37); font-style: italic; text-align: center; margin-top: -15px;">
	Hay một set đồ m&agrave;u hoa oải hương đẹp tinh tế v&agrave; đậm chất thơ.</p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">&Aacute;o kho&aacute;c trench coat cho d&aacute;ng vẻ y&ecirc;u kiều</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Kh&ocirc;ng chỉ gi&uacute;p ph&aacute;i đẹp t&ocirc;n d&aacute;ng, &aacute;o trench coat c&ograve;n l&agrave; m&oacute;n đồ gi&uacute;p bạn trở n&ecirc;n y&ecirc;u kiều hơn trong m&ugrave;a thu. Kiểu &aacute;o basic, m&agrave;u sắc trang nh&atilde; bất hủ với thời gian như ghi x&aacute;m, c&agrave; ph&ecirc;, xanh vani, nude,... kết hợp với quần jean lửng v&agrave; bốt l&agrave; lựa chọn ph&ugrave; hợp cho bất cứ ai, đặc biệt l&yacute; tưởng cho những c&ocirc; g&aacute;i c&oacute; v&oacute;c d&aacute;ng nhỏ nhắn. V&agrave;o m&ugrave;a đ&ocirc;ng, kiểu phối layer c&ugrave;ng chiếc &aacute;o kho&aacute;c form rộng, veston, &aacute;o croptop vừa giữ ấm cơ thể vừa tạo n&ecirc;n một vẻ ngo&agrave;i s&agrave;nh điệu.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Gợi ý 4 set đồ mang phong cách Parisian Chic đúng điệu cho mùa Thu - 9" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-10-1602735656-192-width564height902.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-10-1602735656-192-width564height902.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Gợi ý 4 set đồ mang phong cách Parisian Chic đúng điệu cho mùa Thu - 10" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-11-1602735656-31-width564height846.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-11-1602735656-31-width564height846.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Gợi ý 4 set đồ mang phong cách Parisian Chic đúng điệu cho mùa Thu - 11" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-12-1602735656-595-width564height846.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-12-1602735656-595-width564height846.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">&Aacute;o blazer kẻ &ocirc; tartan c&ugrave;ng chiếc d&acirc;y đai</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	C&aacute;c c&ocirc; g&aacute;i Ph&aacute;p thường y&ecirc;u th&iacute;ch kẻ &ocirc; tartan hay đường kẻ mảnh mai để trang phục tuy đơn giản nhưng kh&ocirc;ng hề đơn điệu. D&ugrave; chỉ l&agrave; những chiếc &aacute;o rất cơ bản th&ocirc;i nhưng họ đ&atilde; phối theo phong c&aacute;ch ri&ecirc;ng n&ecirc;n chẳng bao giờ c&oacute; sự nh&agrave;m ch&aacute;n. B&iacute; quyết ch&iacute;nh l&agrave; nhờ sự trợ gi&uacute;p của những chiếc thắt lưng hay d&acirc;y đai buộc quanh eo sẽ cho bộ trang phục thanh lịch hơn hẳn.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Gợi ý 4 set đồ mang phong cách Parisian Chic đúng điệu cho mùa Thu - 12" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-13-1602735656-696-width510height850.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-13-1602735656-696-width510height850.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Gợi ý 4 set đồ mang phong cách Parisian Chic đúng điệu cho mùa Thu - 13" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-14-compressed-1602735656-356-width510height765.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-14-compressed-1602735656-356-width510height765.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Gợi ý 4 set đồ mang phong cách Parisian Chic đúng điệu cho mùa Thu - 14" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-15-compressed-1602735656-741-width510height765.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-15-compressed-1602735656-741-width510height765.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	<strong style="line-height: 1.6;">Phụ kiện gi&uacute;p ho&agrave;n thiện cho vẻ ngo&agrave;i đậm chất Ph&aacute;p</strong></p>
<p style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(0, 0, 0);">
	Ngo&agrave;i phụ kiện t&uacute;i x&aacute;ch, k&iacute;nh r&acirc;m, c&aacute;c c&ocirc; n&agrave;ng Parisian c&ograve;n t&ocirc; điểm cho vẻ ngo&agrave;i của m&igrave;nh bằng khăn lụa v&agrave; mũ. Ch&uacute;ng khiến cho c&aacute;c c&ocirc; g&aacute;i trở n&ecirc;n nữ t&iacute;nh v&agrave; l&atilde;ng mạn hơn chỉ trong v&ograve;ng một nốt nhạc.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Gợi ý 4 set đồ mang phong cách Parisian Chic đúng điệu cho mùa Thu - 15" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-16-1602735656-983-width564height846.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-16-1602735656-983-width564height846.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p class="img_chu_thich_0407" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(37, 37, 37); font-style: italic; text-align: center; margin-top: -15px;">
	Sử dụng khăn lụa quấn quanh cổ kh&ocirc;ng phải l&agrave; qu&aacute; mới mẻ, song n&oacute; lu&ocirc;n tạo được ấn tượng tốt với một vẻ ngo&agrave;i tinh tế.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Gợi ý 4 set đồ mang phong cách Parisian Chic đúng điệu cho mùa Thu - 16" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-18-1602735656-867-width564height705.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-18-1602735656-867-width564height705.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Gợi ý 4 set đồ mang phong cách Parisian Chic đúng điệu cho mùa Thu - 17" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-17-1602735656-593-width564height705.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-17-1602735656-593-width564height705.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p class="img_chu_thich_0407" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(37, 37, 37); font-style: italic; text-align: center; margin-top: -15px;">
	Cột m&aacute;i t&oacute;c của bạn bằng chiếc khăn tay tuy đơn giản nhưng sẽ mang đến n&eacute;t nhẹ nh&agrave;ng, mềm mại cho bất kỳ c&ocirc; g&aacute;i n&agrave;o.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Gợi ý 4 set đồ mang phong cách Parisian Chic đúng điệu cho mùa Thu - 18" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-20-1602735656-473-width564height848.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-20-1602735656-473-width564height848.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p class="img_chu_thich_0407" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(37, 37, 37); font-style: italic; text-align: center; margin-top: -15px;">
	Cho&agrave;ng khăn c&ugrave;ng một chiếc k&iacute;nh r&acirc;m đ&atilde; l&agrave; kiểu l&agrave;m điệu c&oacute; từ rất l&acirc;u rồi nhưng đến tận b&acirc;y giờ n&oacute; vẫn chưa bao giờ giảm sức h&uacute;t.</p>
<p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center; color: rgb(0, 0, 0);">
	<img alt="Gợi ý 4 set đồ mang phong cách Parisian Chic đúng điệu cho mùa Thu - 19" class="news-image loaded" data-original="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-19-1602735656-105-width564height705.jpg" data-was-processed="true" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/Goi-y-4-set-do-mang-phong-cach-Parisian-Chic-dung-dieu-cho-mua-Thu-19-1602735656-105-width564height705.jpg" style="border: 0px; line-height: normal; max-width: 660px;" /></p>
<p class="img_chu_thich_0407" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(37, 37, 37); font-style: italic; text-align: center; margin-top: -15px;">
	Khi đi ra ngo&agrave;i, bạn đừng qu&ecirc;n mang theo chiếc mũ nồi v&agrave; đội lệch sang một b&ecirc;n để trang phục mang đậm chất Ph&aacute;p.</p>
', 6, 4)
SET IDENTITY_INSERT [dbo].[db_TinTuc] OFF
GO
ALTER TABLE [dbo].[db_ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_db_ChiTietDonDatHang_db_DonDatHang] FOREIGN KEY([MaDonDatHang])
REFERENCES [dbo].[db_DonDatHang] ([MaDonDatHang])
GO
ALTER TABLE [dbo].[db_ChiTietDonDatHang] CHECK CONSTRAINT [FK_db_ChiTietDonDatHang_db_DonDatHang]
GO
ALTER TABLE [dbo].[db_ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_db_ChiTietDonDatHang_db_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[db_SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[db_ChiTietDonDatHang] CHECK CONSTRAINT [FK_db_ChiTietDonDatHang_db_SanPham]
GO
ALTER TABLE [dbo].[db_ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_db_ChiTietDonHang_db_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[db_HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[db_ChiTietDonHang] CHECK CONSTRAINT [FK_db_ChiTietDonHang_db_HoaDon]
GO
ALTER TABLE [dbo].[db_ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_db_ChiTietDonHang_db_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[db_SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[db_ChiTietDonHang] CHECK CONSTRAINT [FK_db_ChiTietDonHang_db_SanPham]
GO
ALTER TABLE [dbo].[db_DangKy]  WITH CHECK ADD  CONSTRAINT [FK_db_DangKy_db_QuyenDangNhap] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[db_QuyenDangNhap] ([MaQuyen])
GO
ALTER TABLE [dbo].[db_DangKy] CHECK CONSTRAINT [FK_db_DangKy_db_QuyenDangNhap]
GO
ALTER TABLE [dbo].[db_DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_db_DonDatHang_db_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[db_KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[db_DonDatHang] CHECK CONSTRAINT [FK_db_DonDatHang_db_KhachHang]
GO
ALTER TABLE [dbo].[db_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_db_HoaDon_db_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[db_KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[db_HoaDon] CHECK CONSTRAINT [FK_db_HoaDon_db_KhachHang]
GO
ALTER TABLE [dbo].[db_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_db_HoaDon_db_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[db_NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[db_HoaDon] CHECK CONSTRAINT [FK_db_HoaDon_db_NhanVien]
GO
ALTER TABLE [dbo].[db_QuangCao]  WITH CHECK ADD  CONSTRAINT [FK_db_QuangCao_db_NhomQuangCao] FOREIGN KEY([NhomQuangCaoID])
REFERENCES [dbo].[db_NhomQuangCao] ([NhomQuangCaoID])
GO
ALTER TABLE [dbo].[db_QuangCao] CHECK CONSTRAINT [FK_db_QuangCao_db_NhomQuangCao]
GO
ALTER TABLE [dbo].[db_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_db_SanPham_db_ChatLieu] FOREIGN KEY([ChatLieuID])
REFERENCES [dbo].[db_ChatLieu] ([ChatLieuID])
GO
ALTER TABLE [dbo].[db_SanPham] CHECK CONSTRAINT [FK_db_SanPham_db_ChatLieu]
GO
ALTER TABLE [dbo].[db_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_db_SanPham_db_DanhMuc] FOREIGN KEY([MaDM])
REFERENCES [dbo].[db_DanhMuc] ([MaDM])
GO
ALTER TABLE [dbo].[db_SanPham] CHECK CONSTRAINT [FK_db_SanPham_db_DanhMuc]
GO
ALTER TABLE [dbo].[db_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_db_SanPham_db_Mau] FOREIGN KEY([MauID])
REFERENCES [dbo].[db_Mau] ([MauID])
GO
ALTER TABLE [dbo].[db_SanPham] CHECK CONSTRAINT [FK_db_SanPham_db_Mau]
GO
ALTER TABLE [dbo].[db_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_db_SanPham_db_NhomSanPham] FOREIGN KEY([NhomID])
REFERENCES [dbo].[db_NhomSanPham] ([NhomID])
GO
ALTER TABLE [dbo].[db_SanPham] CHECK CONSTRAINT [FK_db_SanPham_db_NhomSanPham]
GO
ALTER TABLE [dbo].[db_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_db_SanPham_db_Size] FOREIGN KEY([SizeID])
REFERENCES [dbo].[db_Size] ([SizeID])
GO
ALTER TABLE [dbo].[db_SanPham] CHECK CONSTRAINT [FK_db_SanPham_db_Size]
GO
ALTER TABLE [dbo].[db_TinTuc]  WITH CHECK ADD  CONSTRAINT [FK_TinTuc_DanhMucTin] FOREIGN KEY([MaDM])
REFERENCES [dbo].[db_DanhMucTin] ([MaDM])
GO
ALTER TABLE [dbo].[db_TinTuc] CHECK CONSTRAINT [FK_TinTuc_DanhMucTin]
GO
/****** Object:  StoredProcedure [dbo].[CapNhatLuotXemTinTuc]    Script Date: 10/30/2020 10:27:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[CapNhatLuotXemTinTuc]
@id int
as
update db_TinTuc set LuotXem=LuotXem+1 where TinTucID=@id
GO
/****** Object:  StoredProcedure [dbo].[chatlieu_delete]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[chatlieu_delete]
@chatlieuid int
AS
BEGIN
	delete from db_ChatLieu where ChatLieuID=@chatlieuid
END

GO
/****** Object:  StoredProcedure [dbo].[chatlieu_insert]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[chatlieu_insert]
@tenchatlieu nvarchar(50),
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_ChatLieu where @tenchatlieu=TenChatLieu))
	begin
	insert into db_ChatLieu(TenChatLieu) values(@tenchatlieu)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[chatlieu_update]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[chatlieu_update]
@chatlieuid int,
@tenchatlieu nvarchar (50)
AS
BEGIN
	update db_ChatLieu set TenChatLieu=@tenchatlieu where ChatlieuID=@chatlieuid
END

GO
/****** Object:  StoredProcedure [dbo].[chitietdondathang_delete]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[chitietdondathang_delete]
@masp int,
@madondathang int
AS
BEGIN
	delete db_ChiTietDonDatHang where MaSP=@masp and MaDonDatHang=@madondathang
END

GO
/****** Object:  StoredProcedure [dbo].[chitietdondathang_insert]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[chitietdondathang_insert]
@masp int,
@madondathang int,
@soluongdat int,
@dongiadat float,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_ChiTietDonDatHang where @masp=MaSP and @madondathang=MaDonDatHang))
	begin
	insert into db_ChiTietDonDatHang(MaSP,MaDonDatHang,SoLuongDat,DonGiaDat) values(@masp,@madondathang,@soluongdat,@dongiadat)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[chitietdondathang_update]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[chitietdondathang_update]
@masp int,
@madondathang int,
@soluongdat int,
@dongiadat float
AS
BEGIN
	update db_ChiTietDonDatHang set SoLuongDat=@soluongdat,DonGiaDat=@dongiadat where MaSP=@masp and MaDonDatHang=@madondathang
END

GO
/****** Object:  StoredProcedure [dbo].[chitietdonhang_delete]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[chitietdonhang_delete]
@masp int,
@mahoadon int
AS
BEGIN
	delete db_ChiTietDonHang where MaSP=@masp and MaHD=@mahoadon
END

GO
/****** Object:  StoredProcedure [dbo].[chitietdonhang_insert]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[chitietdonhang_insert]
@masp int,
@mahoadon int,
@soluong int,
@dongia float,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_ChiTietDonHang where @masp=MaSP and @mahoadon=MaHD))
	begin
	insert into db_ChiTietDonHang(MaHD,MaSP,SoLuong,DonGia) values(@mahoadon,@masp,@soluong,@dongia)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[chitietdonhang_update]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[chitietdonhang_update]
@masp int,
@mahoadon int,
@soluong int,
@dongia float
AS
BEGIN
	update db_ChiTietDonHang set SoLuong=@soluong,DonGia=@dongia where MaSP=@masp and MaHD=@mahoadon
END

GO
/****** Object:  StoredProcedure [dbo].[dangky_delete]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dangky_delete]
@tendangnhap varchar(50)
AS
BEGIN
	delete from db_DangKy where TenDangNhap=@tendangnhap
END

GO
/****** Object:  StoredProcedure [dbo].[dangky_insert]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dangky_insert]
@tendangnhap varchar(50),
@matkhau varchar(50) ,
@emaildk varchar(50),
@diachidk nvarchar(50),
@tendaydu nvarchar(50),
@cauhoibaomat nvarchar(100),
@ngaysinh date,
@gioitinhdk nvarchar(10),
@maquyen int,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_DangKy where @tendangnhap=TenDangNhap))
	begin
	insert into db_DangKy(TenDangNhap,MatKhau,EmailDK,DiaChiDK,TenDayDu,CauHoiBaoMat,NgaySinh,GioiTinhDK,MaQuyen) values(@tendangnhap,@matkhau,@emaildk,@diachidk,@tendaydu,@cauhoibaomat,@ngaysinh,@gioitinhdk,@maquyen)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[dangky_update]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dangky_update]
@tendangnhap varchar(50),
@matkhau varchar(50) ,
@emaildk varchar(50),
@diachidk nvarchar(50),
@tendaydu nvarchar(50),
@cauhoibaomat nvarchar(100),
@ngaysinh date,
@gioitinhdk nvarchar(10),
@maquyen int
AS
BEGIN
	update db_DangKy set MatKhau=@matkhau,EmailDK=@emaildk,DiaChiDK=@diachidk,TenDayDu=@tendaydu,CauHoiBaoMat=@cauhoibaomat,NgaySinh=@ngaysinh,GioiTinhDK=@gioitinhdk,MaQuyen=@maquyen where TenDangNhap=@tendangnhap
END

GO
/****** Object:  StoredProcedure [dbo].[danhmuc_delete]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[danhmuc_delete]
@madm int
AS
BEGIN
	delete from db_DanhMuc where MaDM=@madm
	delete from db_SanPham where MaDM=@madm
END

GO
/****** Object:  StoredProcedure [dbo].[danhmuc_insert]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[danhmuc_insert]
@tendm nvarchar(50),
@anhdaidien nvarchar(100),
@thutu int,
@maDMcha int,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_DanhMuc where @tendm=TenDM))
	begin
	insert into db_DanhMuc(TenDM,AnhDaiDien,ThuTu,MaDMCha) values(@tendm,@anhdaidien,@thutu,@maDMcha)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[danhmuc_update]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[danhmuc_update]
@madm int,
@tendm nvarchar(50),
@anhdaidien nvarchar(100),
@thutu int,
@maDMcha int
AS
BEGIN
	update db_DanhMuc set TenDM=@tendm,AnhDaiDien=@anhdaidien,ThuTu=@thutu,MaDMCha=@maDMcha where MaDM=@madm
END

GO
/****** Object:  StoredProcedure [dbo].[danhmuctin_delete]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[danhmuctin_delete]
@madm int
AS
BEGIN
	delete from db_DanhMucTin where MaDM=@madm
	delete from db_TinTuc where MaDM=@madm
END

GO
/****** Object:  StoredProcedure [dbo].[danhmuctin_insert]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[danhmuctin_insert]
@tendm nvarchar(50),
@anhdaidien nvarchar(100),
@thutu int,
@maDMcha int,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_DanhMuc where @tendm=TenDM))
	begin
	insert into db_DanhMucTin(TenDM,AnhDaiDien,ThuTu,MaDMCha) values(@tendm,@anhdaidien,@thutu,@maDMcha)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[danhmuctin_update]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[danhmuctin_update]
@madm int,
@tendm nvarchar(50),
@anhdaidien nvarchar(100),
@thutu int,
@maDMcha int
AS
BEGIN
	update db_DanhMucTin set TenDM=@tendm,AnhDaiDien=@anhdaidien,ThuTu=@thutu,MaDMCha=@maDMcha where MaDM=@madm
END

GO
/****** Object:  StoredProcedure [dbo].[dondathang_delete]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dondathang_delete]
@madondathang int
AS
BEGIN
	delete from db_ChiTietDonDatHang where MaDonDatHang=@madondathang
	delete from db_DonDatHang where MaDonDatHang=@madondathang
END

GO
/****** Object:  StoredProcedure [dbo].[dondathang_insert]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dondathang_insert]
@ngaytao datetime,
@thanhtienhd float,
@tinhtrangdonhang nvarchar(300),
@makh int,
@tenkh nvarchar(50),
@sdtkh varchar(15),
@emailkh varchar(50),
@ret int out
AS
BEGIN
	set @ret=1
	begin
	insert into db_DonDatHang(NgayTao,ThanhTienDH,TinhTrangDonHang,MaKH,TenKH,sdtKH,EmailKH) values(@ngaytao,@thanhtienhd,@tinhtrangdonhang,@makh,@tenkh,@sdtkh,@emailkh)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[dondathang_update]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dondathang_update]
@madondathang int,
@ngaytao datetime,
@thanhtienhd float,
@tinhtrangdonhang nvarchar(300),
@makh int,
@tenkh nvarchar(50),
@sdtkh varchar(15),
@emailkh varchar(50)
AS
BEGIN
	update db_DonDatHang set NgayTao=@ngaytao,ThanhTienDH=@thanhtienhd,TinhTrangDonHang=@tinhtrangdonhang,MaKH=@makh,TenKH=@tenkh,sdtKH=@sdtkh,EmailKH=@emailkh where MaDonDatHang=@madondathang
END

GO
/****** Object:  StoredProcedure [dbo].[hoadon_delete]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[hoadon_delete]
@mahoadon int
AS
BEGIN
	delete from db_HoaDon where MaHD=@mahoadon
	delete from db_ChiTietDonHang where MaHD=@mahoadon
END

GO
/****** Object:  StoredProcedure [dbo].[hoadon_insert]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[hoadon_insert]
@ngaylap datetime,
@thanhtien float,
@manv int,
@tennv nvarchar(70),
@makh int,
@tenkh nvarchar(70),
@ret int out
AS
BEGIN
	set @ret=1
	begin
	insert into db_HoaDon(NgayLap,ThanhTien,MaNV,TenNV,MaKH,TenKH) values(@ngaylap,@thanhtien,@manv,@tennv,@makh,@makh)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[hoadon_update]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[hoadon_update]
@mahoadon int,
@ngaylap datetime,
@thanhtien float,
@manv int,
@tennv nvarchar(70),
@makh int,
@tenkh nvarchar(70)
AS
BEGIN
	update db_HoaDon set NgayLap=@ngaylap,ThanhTien=@thanhtien,MaNV=@manv,TenNV=@tennv,MaKH=@makh,TenKH=@tenkh where MaHD=@mahoadon
END

GO
/****** Object:  StoredProcedure [dbo].[khachang_delete]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[khachang_delete]
@makh int
AS
BEGIN
	delete from db_KhachHang where MaKH=@makh
END

GO
/****** Object:  StoredProcedure [dbo].[khachang_insert]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[khachang_insert]
@tenkh nvarchar(50),
@diachikh nvarchar(100),
@sdtkh varchar(15),
@emailkh varchar(50),
@matkhau nvarchar(50),
@ret int out
AS
BEGIN
	set @ret=1
	begin
	insert into db_KhachHang(TenKh,DiaChiKH,sdtKH,EmailKH,MatKhau) values(@tenkh,@diachikh,@sdtkh,@emailkh,@matkhau)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[khachang_update]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[khachang_update]
@makh int,
@tenkh nvarchar(50),
@diachikh nvarchar(100),
@sdtkh varchar(15),
@emailkh varchar(50),
@matkhau nvarchar(50)
AS
BEGIN
	update db_KhachHang set TenKh=@tenkh,DiaChiKH=@diachikh,sdtKH=@sdtkh,EmailKH=@emailkh, MatKhau=@matkhau where MaKH=@makh
END

GO
/****** Object:  StoredProcedure [dbo].[mau_delete]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[mau_delete]
@mauid int
AS
BEGIN
	delete from db_Mau where MauID=@mauid
END

GO
/****** Object:  StoredProcedure [dbo].[mau_insert]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[mau_insert]
@tenmau nvarchar(50),
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_Mau where @tenmau=TenMau))
	begin
	insert into db_Mau(TenMau) values(@tenmau)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[mau_update]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[mau_update]
@mauid int,
@tenmau nvarchar(50)
AS
BEGIN
	update db_Mau set TenMau=@tenmau where MauID=@mauid
END

GO
/****** Object:  StoredProcedure [dbo].[menu_delete]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[menu_delete]
@mamenu int
AS
BEGIN
	delete from db_Menu where MaMenu=@mamenu
END

GO
/****** Object:  StoredProcedure [dbo].[menu_insert]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[menu_insert]
@tenmenu nvarchar(50),
@lienket varchar(200),
@mamenucha int,
@thutumenu int,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_Menu where @tenmenu=TenMenu))
	begin
	insert into db_Menu(TenMenu,LienKet,MaMenuCha,ThuTuMenu) values(@tenmenu,@lienket,@mamenucha,@thutumenu)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[menu_update]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[menu_update]
@mamenu int,
@tenmenu nvarchar(50),
@lienket varchar(200),
@mamenucha int,
@thutumenu int
AS
BEGIN
	update db_Menu set TenMenu=@tenmenu,LienKet=@lienket,MaMenuCha=@mamenucha,ThuTuMenu=@thutumenu where MaMenu=@mamenu
END

GO
/****** Object:  StoredProcedure [dbo].[nhanvien_delete]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[nhanvien_delete]
@manv int
AS
BEGIN
	delete from db_NhanVien where MaNV=@manv
END

GO
/****** Object:  StoredProcedure [dbo].[nhanvien_insert]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[nhanvien_insert]
@tennv nvarchar(70),
@gioitinhnv nvarchar(10),
@diachinv nvarchar(100),
@sdtnv varchar(15),
@ngayvaolam datetime,
@ret int out
AS
BEGIN
	set @ret=1
	begin
	insert into db_NhanVien(TenNV,GioiTinhNV,DiaChiNV,sdtNV,NgayVaoLam) values(@tennv,@gioitinhnv,@diachinv,@sdtnv,@ngayvaolam)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[nhanvien_update]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[nhanvien_update]
@manv int,
@tennv nvarchar(70),
@gioitinhnv nvarchar(10),
@diachinv nvarchar(100),
@sdtnv varchar(15),
@ngayvaolam datetime
AS
BEGIN
	update db_NhanVien set TenNV=@tennv,GioiTinhNV=@gioitinhnv,DiaChiNV=@diachinv,sdtNV=@sdtnv,NgayVaoLam=@ngayvaolam where MaNV=@manv
END

GO
/****** Object:  StoredProcedure [dbo].[nhomquangcao_delete]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[nhomquangcao_delete]
@nhomquangcaoid int
AS
BEGIN
	delete from db_NhomQuangCao where NhomQuangCaoID=@nhomquangcaoid
END

GO
/****** Object:  StoredProcedure [dbo].[nhomquangcao_insert]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[nhomquangcao_insert]
@tennhomqc nvarchar(50),
@vitriqc nvarchar(30),
@thutunhomqc int,
@anhdaidienqc nvarchar(100),
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_NhomQuangCao where @tennhomqc=TenNhomQuangCao))
	begin
	insert into db_NhomQuangCao(TenNhomQuangCao,ViTriQC,ThuTuNhomQC,AnhDaiDienQC) values(@tennhomqc,@vitriqc,@thutunhomqc,@anhdaidienqc)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[nhomquangcao_update]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[nhomquangcao_update]
@nhomquangcaoid int,
@tennhomquangcao nvarchar(50),
@vitriqc nvarchar(30),
@thutunhomqc int,
@anhdaidienqc nvarchar(100)
AS
BEGIN
	update db_NhomQuangCao set TenNhomQuangCao=@tennhomquangcao,ViTriQC=@vitriqc,ThuTuNhomQC=@thutunhomqc,AnhDaiDienQC=@anhdaidienqc where NhomQuangCaoID=@nhomquangcaoid
END

GO
/****** Object:  StoredProcedure [dbo].[nhomsanpham_delete]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[nhomsanpham_delete]
@nhomid int
AS
BEGIN
	delete from db_NhomSanPham where NhomID=@nhomid
END

GO
/****** Object:  StoredProcedure [dbo].[nhomsanpham_insert]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[nhomsanpham_insert]
@tennhom nvarchar(100),
@anhdaidien nvarchar(100),
@thutu int,
@soSPhienthi int,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_NhomSanPham where @tennhom=TenNhom))
	begin
	insert into db_NhomSanPham(TenNhom,AnhDaiDien,ThuTu,SoSPHienThi) values(@tennhom,@anhdaidien,@thutu,@soSPhienthi)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[nhomsanpham_update]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[nhomsanpham_update]
@nhomid int,
@tennhom nvarchar(100),
@anhdadien nvarchar(100),
@thutu int,
@solanhienthi int
AS
BEGIN
	update db_NhomSanPham set TenNhom=@tennhom,AnhDaiDien=@anhdadien,ThuTu=@thutu,SoSPHienThi=@solanhienthi where NhomID=@nhomid
END

GO
/****** Object:  StoredProcedure [dbo].[quangcao_delete]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[quangcao_delete]
@quangcaoid int
AS
BEGIN
	delete from db_QuangCao where QuangCaoID=@quangcaoid
END

GO
/****** Object:  StoredProcedure [dbo].[quangcao_insert]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[quangcao_insert]
@tenqc nvarchar(50),
@loaiqc nvarchar(20),
@anhqc nvarchar(100),
@lienket nchar(100),
@thutuqc int,
@nhomqcID  INT,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_QuangCao where @tenqc=TenQC))
	begin
	insert into db_QuangCao(TenQC,LoaiQC,AnhQC,LienKet,ThuTuQC,NhomQuangCaoID) values(@tenqc,@loaiqc,@anhqc,@lienket,@thutuqc,@nhomqcID)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[quangcao_update]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[quangcao_update]
@quangcaoid int,
@tenquangcao nvarchar(50),
@loaiqc nvarchar(20),
@anhqc nvarchar(100),
@lienket nchar(100),
@thutuqc int,
@nhomquangcaoid int
AS
BEGIN
	update db_QuangCao set TenQC=@tenquangcao,LoaiQC=@loaiqc,AnhQC=@anhqc,LienKet=@lienket,ThuTuQC=@thutuqc,NhomQuangCaoID=@nhomquangcaoid where QuangCaoID=@quangcaoid
END

GO
/****** Object:  StoredProcedure [dbo].[quyendangnhap_delete]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[quyendangnhap_delete]
@quyenid int
AS
BEGIN
	delete from db_QuyenDangNhap where MaQuyen=@quyenid
END

GO
/****** Object:  StoredProcedure [dbo].[quyendangnhap_insert]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[quyendangnhap_insert]
@tenquyen varchar(10),
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_QuyenDangNhap where @tenquyen=TenQuyen))
	begin
	insert into db_QuyenDangNhap(TenQuyen) values(@tenquyen)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[quyendangnhap_update]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[quyendangnhap_update]
@maquyen int,
@tenquyen varchar(100)
AS
BEGIN
	update db_QuyenDangNhap set TenQuyen=@tenquyen where MaQuyen=@maquyen
END

GO
/****** Object:  StoredProcedure [dbo].[sanpham_delete]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sanpham_delete]
@masp int
AS
BEGIN
	delete from db_SanPham where MaSP=@masp
END

GO
/****** Object:  StoredProcedure [dbo].[sanpham_insert]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sanpham_insert]
@tensp nvarchar(100),
@mauID int,
@sizeID int,
@chatieuID int,
@anhsanpham nvarchar(100),
@soluongsp int,
@giasp float,
@motasp nvarchar(MAX),
@ngaytao datetime,
@ngayhuy datetime,
@maDM int,
@nhomID int,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_SanPham where @tensp=TenSP))
	begin
	insert into db_SanPham(TenSP,MauID,SizeID,ChatLieuID,AnhSP,SoLuongSP,GiaSP,MotaSP,NgayTao,NgayHuy,MaDM,NhomID) values(@tensp,@mauID,@sizeID,@chatieuID,@anhsanpham,@soluongsp,@giasp,@motasp,@ngaytao,@ngayhuy,@maDM,@nhomID)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[sanpham_update]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sanpham_update]
@masp int,
@tensp nvarchar(100),
@mauid int,
@sizeid int,
@chatieuid int,
@anhsp nvarchar(100),
@soluongsp int,
@giasp float,
@motasp nvarchar(MAX),
@ngaytao datetime,
@ngayhuy datetime,
@madm int,
@nhomid int
AS
BEGIN
	update db_SanPham set TenSP=@tensp,MauID=@mauid,SizeID=@sizeid,ChatLieuID=@chatieuid,AnhSP=@anhsp,SoLuongSP=@soluongsp,GiaSP=@giasp,MotaSP=@motasp,NgayTao=@ngaytao,NgayHuy=@ngayhuy,MaDM=@madm,NhomID=@nhomid where MaSP=@masp
END

GO
/****** Object:  StoredProcedure [dbo].[size_delete]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[size_delete]
@sizeid int
AS
BEGIN
	delete from db_Size where SizeID=@sizeid
END

GO
/****** Object:  StoredProcedure [dbo].[size_insert]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[size_insert]
@tensize varchar(10),
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_Size where @tensize=TenSize ))
	begin
	insert into db_Size(TenSize) values(@tensize)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[size_update]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[size_update]
@sizeid int,
@tensize varchar(10)
AS
BEGIN
	update db_Size set TenSize=@tensize where SizeID=@sizeid
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_chatlieu]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_chatlieu]
AS
BEGIN
	select * from db_ChatLieu
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_chatlieu_by_id]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_chatlieu_by_id]
@ChatLieuID INT
AS
BEGIN
	select * from db_ChatLieu where ChatLieuID=@ChatLieuID
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_chitietdondathang]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_chitietdondathang]
AS
BEGIN
	select * from db_ChiTietDonDatHang
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_chitietdondathang_by_madondathang]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_chitietdondathang_by_madondathang]
(
@madondathang int
)
AS
BEGIN
	select * from db_ChiTietDonDatHang where MaDonDatHang=@madondathang
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_chitietdonhang]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_chitietdonhang]
AS
BEGIN
	select * from db_ChiTietDonHang
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_dangky]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_dangky]
AS
BEGIN
	select * from db_DangKy
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_dangky_by_id]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_dangky_by_id]
@TenDangNhap varchar(50)
AS
BEGIN
	select * from db_DangKy where TenDangNhap=@TenDangNhap
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_dangky_by_id_matkhau]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_dangky_by_id_matkhau]
@TenDangNhap varchar(50),
@MatKhau varchar(50)
AS
BEGIN
	select * from db_DangKy where TenDangNhap=@TenDangNhap and MatKhau=@MatKhau
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_danhmuc]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_danhmuc]
AS
BEGIN
	select * from db_DanhMuc order by ThuTu
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_danhmuc_by_id]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure  [dbo].[thongtin_danhmuc_by_id]
(
@MaDM INT
)
AS
BEGIN
	select * from db_DanhMuc where MaDM=@MaDM
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_danhmuc_by_MaDMCha]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure  [dbo].[thongtin_danhmuc_by_MaDMCha]
(
@MaDMCha INT
)
AS
BEGIN
	select * from db_DanhMuc where MaDMCha=@MaDMCha
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_danhmuctin]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_danhmuctin]
AS
BEGIN
	select * from db_DanhMucTin order by ThuTu
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_danhmuctin_by_id]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure  [dbo].[thongtin_danhmuctin_by_id]
(
@MaDM INT
)
AS
BEGIN
	select * from db_DanhMucTin where MaDM=@MaDM
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_danhmuctin_by_MaDMCha]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure  [dbo].[thongtin_danhmuctin_by_MaDMCha]
(
@MaDMCha INT
)
AS
BEGIN
	select * from db_DanhMucTin where MaDMCha=@MaDMCha
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_dondathang]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_dondathang]
AS
BEGIN
	select * from db_DonDatHang
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_dondathang_by_id]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_dondathang_by_id]
@MaDonDatHang int
AS
BEGIN
	select * from db_DonDatHang where MaDonDatHang=@MaDonDatHang
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_dondathang_by_mathanhtoan]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_dondathang_by_mathanhtoan]
@mathanhtoan nvarchar(300)
AS
BEGIN
	select * from db_DonDatHang where TinhTrangDonHang=@mathanhtoan
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_dondathang_desc]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[thongtin_dondathang_desc]
AS
BEGIN
	select * from db_DonDatHang order by MaDonDatHang desc
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_hoadon]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_hoadon]
AS
BEGIN
	select * from db_HoaDon
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_khachhang]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_khachhang]
AS
BEGIN
	select * from db_KhachHang
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_khachhang_by_emailkh]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_khachhang_by_emailkh]
@emailkh nvarchar(50)
AS
BEGIN
	select * from db_KhachHang where EmailKH=@emailkh
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_khachhang_by_emailkh_matkhau]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_khachhang_by_emailkh_matkhau]
@emailkh nvarchar(50),
@matkhau nvarchar(50)
AS
BEGIN
	select * from db_KhachHang where EmailKH=@emailkh and MatKhau=@matkhau
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_khachhang_by_makh]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_khachhang_by_makh]
@makh nvarchar(50)
AS
BEGIN
	select * from db_KhachHang where MaKH=@makh
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_mau]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_mau]
AS
BEGIN
	select * from db_Mau
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_mau_by_id]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_mau_by_id]
@MauID INT
AS
BEGIN
	select * from db_Mau where MauID=@MauID
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_menu]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_menu]
AS
BEGIN
	select * from db_Menu
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_menu_by_id]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_menu_by_id]
@MaMenu int
AS
BEGIN
	select * from db_Menu where MaMenu=@MaMenu
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_menu_by_mamenucha]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_menu_by_mamenucha]
@MaMenuCha int
AS
BEGIN
	select * from db_Menu where MaMenuCha=@MaMenuCha
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_nhanvien]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_nhanvien]
AS
BEGIN
	select * from db_NhanVien
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_nhomquangcao]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_nhomquangcao]
AS
BEGIN
	select * from db_NhomQuangCao
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_nhomquangcao_by_id]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_nhomquangcao_by_id]
@NhomQuangCaoID int
AS
BEGIN
	select * from db_NhomQuangCao where NhomQuangCaoID=@NhomQuangCaoID
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_nhomquangcao_by_vitriqc]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_nhomquangcao_by_vitriqc]
@ViTriQC nvarchar(30)
AS
BEGIN
	select * from db_NhomQuangCao where ViTriQC=@ViTriQC
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_nhomsp]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_nhomsp]
AS
BEGIN
	select * from db_NhomSanPham order by ThuTu
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_nhomsp_by_id]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_nhomsp_by_id]
@NhomID int
AS
BEGIN
	select * from db_NhomSanPham where NhomID=@NhomID
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_quangcao]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_quangcao]
AS
BEGIN
	select * from db_QuangCao
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_quangcao_by_id]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_quangcao_by_id]
@QuangCaoID int
AS
BEGIN
	select * from db_QuangCao where QuangCaoID=@QuangCaoID
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_quangcao_by_nhomquangcaoid]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_quangcao_by_nhomquangcaoid]
@NhomQuangCaoID int
AS
BEGIN
	select * from db_QuangCao where NhomQuangCaoID=@NhomQuangCaoID
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_quyendangnhap]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[thongtin_quyendangnhap]
AS
BEGIN
	select * from db_QuyenDangNhap
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_quyendangnhap_by_id]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_quyendangnhap_by_id]
@MaQuyen int
AS
BEGIN
	select * from db_QuyenDangNhap where MaQuyen=@MaQuyen
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_sanpham]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_sanpham]
AS
BEGIN
	select * from db_SanPham
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_sanpham_by_id]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_sanpham_by_id]
@MaSP INT
AS
BEGIN
	select * from db_SanPham where MaSP=@MaSP
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_sanpham_by_madm]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_sanpham_by_madm]
@MaMD INT
AS
BEGIN
	select top 5 * from db_SanPham where MaDM=@MaMD
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_sanpham_by_madm_tatca]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_sanpham_by_madm_tatca]
@MaDM INT
AS
BEGIN
	select * from db_SanPham where MaDM=@MaDM
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_sanpham_by_nhomid]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_sanpham_by_nhomid]
@NhomID INT,
@SoSPHienThi INT
AS
BEGIN
	declare @sql nvarchar(300)
	set @sql='select top '+ CAST(@SoSPHienThi as varchar(10)) +' * from db_SanPham where NhomID='+CAST(@NhomID as varchar(10))
	exec sp_executesql @sql
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_sanpham_by_tukhoa]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_sanpham_by_tukhoa]
@TuKhoa nvarchar(100)
AS
BEGIN
	select * from db_SanPham where TenSP like N'%'+@TuKhoa+'%'
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_size]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_size]
AS
BEGIN
	select * from db_Size
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_size_by_id]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_size_by_id]
@SizeID INT
AS
BEGIN
	select * from db_Size where SizeID=@SizeID
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_tintuc]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_tintuc]
AS
BEGIN
	select * from db_TinTuc order by ThuTu
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_tintuc_by_id]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_tintuc_by_id]
@TinTucID INT
AS
BEGIN
	select * from db_TinTuc where TinTucID=@TinTucID
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_tintuc_by_madm]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_tintuc_by_madm]
@MaMD INT
AS
BEGIN
	select top 6 * from db_TinTuc where MaDM=@MaMD
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_tintuc_by_madm_tatca]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_tintuc_by_madm_tatca]
@MaMD INT
AS
BEGIN
	select * from db_TinTuc where MaDM=@MaMD
END

GO
/****** Object:  StoredProcedure [dbo].[tintuc_delete]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[tintuc_delete]
@TinTucID int
AS
BEGIN
	delete from db_TinTuc where TinTucID=@TinTucID
END

GO
/****** Object:  StoredProcedure [dbo].[tintuc_insert]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tintuc_insert]
@TieuDe nvarchar(200),
@AnhDaiDien  nvarchar(200),
@MoTa nvarchar(200),
@NgayDang datetime,
@LuotXem int,
@ChiTiet nvarchar(MAX),
@ThuTu int,
@MaDM int
AS
BEGIN
	begin
	insert into db_TinTuc(TieuDe,AnhDaiDien,MoTa,NgayDang,LuotXem,ChiTiet,ThuTu,MaDM) values(@TieuDe,@AnhDaiDien,@MoTa,@NgayDang,@LuotXem,@ChiTiet,@ThuTu,@MaDM)
	end
END

GO
/****** Object:  StoredProcedure [dbo].[tintuc_update]    Script Date: 10/30/2020 10:27:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tintuc_update]
@TinTucID INT,
@TieuDe nvarchar(200),
@AnhDaiDien nvarchar(200),
@MoTa nvarchar(200),
@NgayDang date,
@LuotXem int,
@ChiTiet nvarchar(MAX),
@ThuTu int,
@MaDM int

AS
BEGIN
	update db_TinTuc set TieuDe=@TieuDe,AnhDaiDien=@AnhDaiDien,MoTa=@MoTa,NgayDang=@NgayDang,LuotXem=@LuotXem,ChiTiet=@ChiTiet,ThuTu=@ThuTu,MaDM=@MaDM where TinTucID=@TinTucID
END

GO
USE [master]
GO
ALTER DATABASE [shopquanao] SET  READ_WRITE 
GO
