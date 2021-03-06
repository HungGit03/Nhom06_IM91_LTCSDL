USE [QuanLyLop]
GO
/****** Object:  Table [dbo].[AdminDb]    Script Date: 1/25/2022 9:38:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminDb](
	[MaAdmin] [nvarchar](5) NOT NULL,
	[TenAdmin] [nvarchar](50) NOT NULL,
	[GioiTinh] [nvarchar](3) NOT NULL,
	[NgaySinh] [datetime] NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[SDT] [float] NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_AdminDb] PRIMARY KEY CLUSTERED 
(
	[MaAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiemDb]    Script Date: 1/25/2022 9:38:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiemDb](
	[MaMH] [int] NOT NULL,
	[MaHS] [nvarchar](5) NOT NULL,
	[MaKH] [int] NOT NULL,
	[Diem] [float] NOT NULL,
 CONSTRAINT [PK_DiemDb] PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC,
	[MaHS] ASC,
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoVienDb]    Script Date: 1/25/2022 9:38:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVienDb](
	[MaGV] [nvarchar](5) NOT NULL,
	[TenGV] [nvarchar](50) NOT NULL,
	[GioiTinh] [nvarchar](3) NOT NULL,
	[NgaySinh] [datetime] NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[SDT] [float] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[ChuyenNganh] [nvarchar](50) NOT NULL,
	[TrinhDoChuyenMon] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_GiaoVienDb] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hoc]    Script Date: 1/25/2022 9:38:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoc](
	[MaKH] [int] NOT NULL,
	[MaLop] [int] NOT NULL,
 CONSTRAINT [PK_Hoc] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC,
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocSinhDb]    Script Date: 1/25/2022 9:38:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocSinhDb](
	[MaHS] [nvarchar](5) NOT NULL,
	[TenHS] [nvarchar](50) NOT NULL,
	[GioiTinh] [nvarchar](3) NOT NULL,
	[NgaySinh] [datetime] NOT NULL,
	[DiaChi] [nvarchar](255) NOT NULL,
	[SDT] [float] NULL,
	[Email] [nvarchar](50) NULL,
	[MaLop] [int] NOT NULL,
 CONSTRAINT [PK_HocSinhDb] PRIMARY KEY CLUSTERED 
(
	[MaHS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhoaHocDb]    Script Date: 1/25/2022 9:38:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoaHocDb](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[NgayBatDau] [datetime] NOT NULL,
	[NgayKetThuc] [datetime] NOT NULL,
 CONSTRAINT [PK_KhoaHocDb] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopDb]    Script Date: 1/25/2022 9:38:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopDb](
	[MaLop] [int] IDENTITY(1,1) NOT NULL,
	[TenLop] [nvarchar](50) NOT NULL,
	[MoTa] [nvarchar](255) NULL,
	[PhongHoc] [nvarchar](10) NOT NULL,
	[TrangThai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LopDb] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHocDb]    Script Date: 1/25/2022 9:38:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHocDb](
	[MaMH] [int] IDENTITY(1,1) NOT NULL,
	[TenMH] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MonHocDb] PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoanAdDb]    Script Date: 1/25/2022 9:38:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoanAdDb](
	[MaTK] [int] IDENTITY(1,1) NOT NULL,
	[MaAdmin] [nvarchar](5) NOT NULL,
	[TenDangNhap] [nvarchar](10) NOT NULL,
	[MatKhau] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_TaiKhoanAd] PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoanGVDb]    Script Date: 1/25/2022 9:38:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoanGVDb](
	[MaTK] [int] IDENTITY(1,1) NOT NULL,
	[MaGV] [nvarchar](5) NOT NULL,
	[TenDangNhap] [nvarchar](10) NOT NULL,
	[MatKhau] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_TaiKhoanGV] PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoanHSDb]    Script Date: 1/25/2022 9:38:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoanHSDb](
	[MaTK] [int] IDENTITY(1,1) NOT NULL,
	[MaHS] [nvarchar](5) NULL,
	[TenDangNhap] [nvarchar](10) NOT NULL,
	[MatKhau] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_TaiKhoanDb_1] PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TKBCTDb]    Script Date: 1/25/2022 9:38:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TKBCTDb](
	[MaTKB] [int] NOT NULL,
	[Malop] [int] NOT NULL,
	[Thu] [int] NOT NULL,
	[Tiet] [int] NOT NULL,
	[MaMH] [int] NOT NULL,
	[MaGV] [nvarchar](5) NOT NULL,
 CONSTRAINT [PK_TKBCTDb] PRIMARY KEY CLUSTERED 
(
	[MaTKB] ASC,
	[Malop] ASC,
	[Thu] ASC,
	[Tiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TKBDb]    Script Date: 1/25/2022 9:38:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TKBDb](
	[MaTKB] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NOT NULL,
	[TenTKB] [nvarchar](50) NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_TKBDb] PRIMARY KEY CLUSTERED 
(
	[MaTKB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AdminDb] ([MaAdmin], [TenAdmin], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email]) VALUES (N'ad1', N'Nguyễn Thành Hưng', N'Nam', CAST(N'2001-03-03T00:00:00.000' AS DateTime), N'Tân Bình, Tp Hồ Chí Minh', 321254342, N'hung@gmail.com')
INSERT [dbo].[AdminDb] ([MaAdmin], [TenAdmin], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email]) VALUES (N'ad2', N'Thành Hiệp 3', N'Nam', CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Tân bình, tp. Hồ Chí Minh', 132312, N'fds1f@gmail.com')
GO
INSERT [dbo].[DiemDb] ([MaMH], [MaHS], [MaKH], [Diem]) VALUES (1, N'hs1', 2, 9)
INSERT [dbo].[DiemDb] ([MaMH], [MaHS], [MaKH], [Diem]) VALUES (1, N'hs1', 7, 8)
INSERT [dbo].[DiemDb] ([MaMH], [MaHS], [MaKH], [Diem]) VALUES (1, N'hs2', 2, 9)
INSERT [dbo].[DiemDb] ([MaMH], [MaHS], [MaKH], [Diem]) VALUES (1, N'hs3', 2, 9)
INSERT [dbo].[DiemDb] ([MaMH], [MaHS], [MaKH], [Diem]) VALUES (1, N'hs4', 2, 9)
INSERT [dbo].[DiemDb] ([MaMH], [MaHS], [MaKH], [Diem]) VALUES (1, N'hs5', 2, 4)
INSERT [dbo].[DiemDb] ([MaMH], [MaHS], [MaKH], [Diem]) VALUES (1, N'hs6', 2, 3)
INSERT [dbo].[DiemDb] ([MaMH], [MaHS], [MaKH], [Diem]) VALUES (5, N'hs1', 2, 8)
INSERT [dbo].[DiemDb] ([MaMH], [MaHS], [MaKH], [Diem]) VALUES (5, N'hs1', 7, 7)
INSERT [dbo].[DiemDb] ([MaMH], [MaHS], [MaKH], [Diem]) VALUES (15, N'hs1', 2, 8)
INSERT [dbo].[DiemDb] ([MaMH], [MaHS], [MaKH], [Diem]) VALUES (15, N'hs1', 7, 8)
INSERT [dbo].[DiemDb] ([MaMH], [MaHS], [MaKH], [Diem]) VALUES (18, N'hs1', 2, 9)
INSERT [dbo].[DiemDb] ([MaMH], [MaHS], [MaKH], [Diem]) VALUES (18, N'hs1', 7, 9)
INSERT [dbo].[DiemDb] ([MaMH], [MaHS], [MaKH], [Diem]) VALUES (21, N'hs1', 2, 7.7)
INSERT [dbo].[DiemDb] ([MaMH], [MaHS], [MaKH], [Diem]) VALUES (21, N'hs1', 7, 6)
INSERT [dbo].[DiemDb] ([MaMH], [MaHS], [MaKH], [Diem]) VALUES (22, N'hs1', 2, 8.6)
INSERT [dbo].[DiemDb] ([MaMH], [MaHS], [MaKH], [Diem]) VALUES (22, N'hs1', 7, 8)
INSERT [dbo].[DiemDb] ([MaMH], [MaHS], [MaKH], [Diem]) VALUES (23, N'hs1', 2, 7)
INSERT [dbo].[DiemDb] ([MaMH], [MaHS], [MaKH], [Diem]) VALUES (23, N'hs1', 7, 9)
INSERT [dbo].[DiemDb] ([MaMH], [MaHS], [MaKH], [Diem]) VALUES (29, N'hs1', 2, 10)
INSERT [dbo].[DiemDb] ([MaMH], [MaHS], [MaKH], [Diem]) VALUES (29, N'hs1', 7, 8)
INSERT [dbo].[DiemDb] ([MaMH], [MaHS], [MaKH], [Diem]) VALUES (31, N'hs1', 2, 6)
INSERT [dbo].[DiemDb] ([MaMH], [MaHS], [MaKH], [Diem]) VALUES (31, N'hs1', 7, 6)
GO
INSERT [dbo].[GiaoVienDb] ([MaGV], [TenGV], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ChuyenNganh], [TrinhDoChuyenMon]) VALUES (N'gv1', N'Lê Ngọc Hiếu', N'Nam', CAST(N'1987-01-01T00:00:00.000' AS DateTime), N'Tân Bình, tp Hồ Chí Minh', 124365321, N'hieu@gmail.com', N'Toán', N'thạc sĩ ')
INSERT [dbo].[GiaoVienDb] ([MaGV], [TenGV], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ChuyenNganh], [TrinhDoChuyenMon]) VALUES (N'gv10', N'Châu Hoài Thanh', N'Nam', CAST(N'1978-08-21T00:00:00.000' AS DateTime), N'Tân Phú, Tp Hồ Chí Minh', 32428398, N'hoaithanh@gmail.com', N'Địa', N'thạc sĩ')
INSERT [dbo].[GiaoVienDb] ([MaGV], [TenGV], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ChuyenNganh], [TrinhDoChuyenMon]) VALUES (N'gv11', N'Nguyễn Thị Linh Nhi', N'Nữ', CAST(N'1995-04-12T00:00:00.000' AS DateTime), N'Tân Phú, Tp Hồ Chí Minh', 24382734, N'linhnhi@gmail.com', N'Văn', N'thạc sĩ')
INSERT [dbo].[GiaoVienDb] ([MaGV], [TenGV], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ChuyenNganh], [TrinhDoChuyenMon]) VALUES (N'gv12', N'Lan Anh', N'Nữ', CAST(N'1995-09-12T00:00:00.000' AS DateTime), N'Tân Phú, Tp Hồ Chí Minh', 123201398, N'la@gmail.com', N'NN', N'thạc sĩ')
INSERT [dbo].[GiaoVienDb] ([MaGV], [TenGV], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ChuyenNganh], [TrinhDoChuyenMon]) VALUES (N'gv13', N'Ngọc Trâm', N'Nữ', CAST(N'1998-04-21T00:00:00.000' AS DateTime), N'Tân Bình, Tp Hồ Chí Minh', 1231231, N'ngoctram@gmail.com', N'NN', N'thạc sĩ')
INSERT [dbo].[GiaoVienDb] ([MaGV], [TenGV], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ChuyenNganh], [TrinhDoChuyenMon]) VALUES (N'gv14', N'Nguyễn Ngọc Huy', N'Nam', CAST(N'1987-06-21T00:00:00.000' AS DateTime), N'Quận 10, Tp Hồ Chí Minh', 12355438, N'ngochuy@gmail.com', N'GDCD', N'thạc sĩ')
INSERT [dbo].[GiaoVienDb] ([MaGV], [TenGV], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ChuyenNganh], [TrinhDoChuyenMon]) VALUES (N'gv15', N'Nguyễn Xuân Trường', N'Nam', CAST(N'1989-10-12T00:00:00.000' AS DateTime), N'Quận 10, Tp Hồ Chí Minh', 21312321, N'xuantruong@gmail.com', N'GDCD', N'thạc sĩ')
INSERT [dbo].[GiaoVienDb] ([MaGV], [TenGV], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ChuyenNganh], [TrinhDoChuyenMon]) VALUES (N'gv2', N'Võ Thị Hồng Tuyết', N'Nữ', CAST(N'1987-01-04T00:00:00.000' AS DateTime), N'Quận 3, Tp hồ Chí Minh', 1278453, N'tuyet@gmail.com', N'Văn', N'Thạc sĩ')
INSERT [dbo].[GiaoVienDb] ([MaGV], [TenGV], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ChuyenNganh], [TrinhDoChuyenMon]) VALUES (N'gv3', N'Nguyễn Thị Mai Trang', N'Nữ ', CAST(N'1986-03-04T00:00:00.000' AS DateTime), N'Tân Bình, Tp Hồ Chí Minh', 2138742, N'trang@gmail.com', N'Sinh', N'Thạc sĩ')
INSERT [dbo].[GiaoVienDb] ([MaGV], [TenGV], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ChuyenNganh], [TrinhDoChuyenMon]) VALUES (N'gv4', N'Lê Văn Hùng', N'Nam', CAST(N'1980-12-03T00:00:00.000' AS DateTime), N'Tân Bình', 318912, N'hung@gmail.com', N'Lịch sử', N'thạc sĩ')
INSERT [dbo].[GiaoVienDb] ([MaGV], [TenGV], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ChuyenNganh], [TrinhDoChuyenMon]) VALUES (N'gv5', N'Trần Quốc Hưng', N'Nam', CAST(N'1985-03-03T00:00:00.000' AS DateTime), N'Tân Phú, Tp Hồ Chí Minh', 37912857, N'quochung@gmail.com', N'Toán', N'Thạc sĩ')
INSERT [dbo].[GiaoVienDb] ([MaGV], [TenGV], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ChuyenNganh], [TrinhDoChuyenMon]) VALUES (N'gv6', N'Lê Minh Hoàng', N'Nam', CAST(N'1983-01-01T00:00:00.000' AS DateTime), N'Tân Phú, Tp Hồ Chí Minh', 934111222, N'lmhoang@gmail.com', N'Hoá', N'thạc sĩ')
INSERT [dbo].[GiaoVienDb] ([MaGV], [TenGV], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ChuyenNganh], [TrinhDoChuyenMon]) VALUES (N'gv7', N'Nguyễn Thì Út Thương', N'Nữ', CAST(N'1999-12-12T00:00:00.000' AS DateTime), N'Gò Vấp, Tp Hồ Chí Minh', 878323384, N'ut@gmail.com', N'Lý', N'thạc sĩ')
INSERT [dbo].[GiaoVienDb] ([MaGV], [TenGV], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ChuyenNganh], [TrinhDoChuyenMon]) VALUES (N'gv8', N'Trần Văn Siêu', N'Nam', CAST(N'1994-12-23T00:00:00.000' AS DateTime), N'Tân Phú, Tp Hồ Chí Minh', 423358485, N'sieu@gmail.com', N'Lý', N'thạc sĩ')
INSERT [dbo].[GiaoVienDb] ([MaGV], [TenGV], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [ChuyenNganh], [TrinhDoChuyenMon]) VALUES (N'gv9', N'Nguyễn Ảnh Thủ', N'Nam', CAST(N'1923-02-02T00:00:00.000' AS DateTime), N'Tân Phú, Tp Hồ Chí Minh', 3847892749, N'thu@gmail.com', N'Hoá', N'tiến sĩ')
GO
INSERT [dbo].[Hoc] ([MaKH], [MaLop]) VALUES (2, 1)
INSERT [dbo].[Hoc] ([MaKH], [MaLop]) VALUES (2, 2)
INSERT [dbo].[Hoc] ([MaKH], [MaLop]) VALUES (2, 3)
INSERT [dbo].[Hoc] ([MaKH], [MaLop]) VALUES (2, 4)
INSERT [dbo].[Hoc] ([MaKH], [MaLop]) VALUES (7, 1)
GO
INSERT [dbo].[HocSinhDb] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [MaLop]) VALUES (N'hs1', N'Vương Thái Tường', N'Nam', CAST(N'2005-01-06T00:00:00.000' AS DateTime), N'Bình Thạnh, Tp. Hồ Chí Minh', 1231245, N'tuong@gmail.com', 1)
INSERT [dbo].[HocSinhDb] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [MaLop]) VALUES (N'hs10', N'Hồ Văn Tri', N'Nam', CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Tân Bình, Tp Hồ Chí Minh', 132312, N'hung@gmail.com', 1)
INSERT [dbo].[HocSinhDb] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [MaLop]) VALUES (N'hs11', N'Lê Văn Học', N'Nam', CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'Tân Bình, Tp Hồ Chí Minh', 132312, N'fds1f@gmail.com', 2)
INSERT [dbo].[HocSinhDb] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [MaLop]) VALUES (N'hs12', N'Lê Văn Học', N'Nữ', CAST(N'2021-12-16T00:00:00.000' AS DateTime), N'Tân bình, tp. Hồ Chí Minh', 12222, N'hung@gmail.com', 1)
INSERT [dbo].[HocSinhDb] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [MaLop]) VALUES (N'hs13', N'Lê Văn Học', N'Nam', CAST(N'2022-01-22T00:00:00.000' AS DateTime), N'', 132312, N'fdsf@gmail.com', 1)
INSERT [dbo].[HocSinhDb] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [MaLop]) VALUES (N'hs2', N'Nguyễn Thành Hưng', N'Nam', CAST(N'2005-03-03T00:00:00.000' AS DateTime), N'Tân Bình, Tp Hồ Chí Minh', 12379832, N'hung@gmail.com', 1)
INSERT [dbo].[HocSinhDb] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [MaLop]) VALUES (N'hs3', N'Nguyễn Thị Út Thương', N'Nữ', CAST(N'2006-01-01T00:00:00.000' AS DateTime), N'Tân Bình', 4835932, N'thuong@gmail.com', 2)
INSERT [dbo].[HocSinhDb] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [MaLop]) VALUES (N'hs4', N'Lan Anh', N'Nữ', CAST(N'2006-01-02T00:00:00.000' AS DateTime), N'Bình Tân, Tp Hồ Chí Minh', 3127895, N'Lan@gmail.com', 2)
INSERT [dbo].[HocSinhDb] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [MaLop]) VALUES (N'hs5', N'Thanh Thảo', N'Nữ', CAST(N'2006-01-04T00:00:00.000' AS DateTime), N'Quận 3, Tp Hồ Chí Minh', 12390432, N'thao@gmail.com', 3)
INSERT [dbo].[HocSinhDb] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [MaLop]) VALUES (N'hs6', N'Hà Yến ', N'Nữ', CAST(N'2006-03-06T00:00:00.000' AS DateTime), N'Quận 3, Tp Hồ Chí Minh', 42378921, N'yen@gmail.com', 3)
INSERT [dbo].[HocSinhDb] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [MaLop]) VALUES (N'hs7', N'Nguyễn Văn Thiện', N'Nam', CAST(N'2007-02-06T00:00:00.000' AS DateTime), N'Quận 3, Tp Hồ Chí Minh', 132871, N'thien@gmail.com', 4)
INSERT [dbo].[HocSinhDb] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [MaLop]) VALUES (N'hs8', N'Trần Quang Nhật', N'Nam', CAST(N'2007-12-04T00:00:00.000' AS DateTime), N'Quận 2, Tp Hồ Chí Minh', 3127891, N'nhat@gmail.com', 4)
INSERT [dbo].[HocSinhDb] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [MaLop]) VALUES (N'hs9', N'Lê Văn Học', N'Nam', CAST(N'2021-12-11T00:00:00.000' AS DateTime), N'Tân bình, tp. Hồ Chí Minh', 11111111, N'fds1f@gmail.com', 1)
GO
SET IDENTITY_INSERT [dbo].[KhoaHocDb] ON 

INSERT [dbo].[KhoaHocDb] ([MaKH], [TenKH], [NgayBatDau], [NgayKetThuc]) VALUES (2, N'2020-2021 kỳ 1', CAST(N'2020-01-04T00:00:00.000' AS DateTime), CAST(N'2021-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[KhoaHocDb] ([MaKH], [TenKH], [NgayBatDau], [NgayKetThuc]) VALUES (7, N'2020-2021 kỳ 2', CAST(N'2021-12-31T00:00:00.000' AS DateTime), CAST(N'2022-01-09T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[KhoaHocDb] OFF
GO
SET IDENTITY_INSERT [dbo].[LopDb] ON 

INSERT [dbo].[LopDb] ([MaLop], [TenLop], [MoTa], [PhongHoc], [TrangThai]) VALUES (1, N'12A1', N'Khối A', N'201', N'Đang học')
INSERT [dbo].[LopDb] ([MaLop], [TenLop], [MoTa], [PhongHoc], [TrangThai]) VALUES (2, N'12A3', N'Khối C', N'203', N'Đang học')
INSERT [dbo].[LopDb] ([MaLop], [TenLop], [MoTa], [PhongHoc], [TrangThai]) VALUES (3, N'11A9', N'Lớp thường', N'109', N'Đang học')
INSERT [dbo].[LopDb] ([MaLop], [TenLop], [MoTa], [PhongHoc], [TrangThai]) VALUES (4, N'10A2', N'Lớp chọn', N'002', N'Chưa học')
INSERT [dbo].[LopDb] ([MaLop], [TenLop], [MoTa], [PhongHoc], [TrangThai]) VALUES (5, N'Lớp 1', N'khoong có', N'123123', N'Chưa học')
SET IDENTITY_INSERT [dbo].[LopDb] OFF
GO
SET IDENTITY_INSERT [dbo].[MonHocDb] ON 

INSERT [dbo].[MonHocDb] ([MaMH], [TenMH]) VALUES (1, N'Toán 12')
INSERT [dbo].[MonHocDb] ([MaMH], [TenMH]) VALUES (3, N'Toán 11')
INSERT [dbo].[MonHocDb] ([MaMH], [TenMH]) VALUES (4, N'Toán 10')
INSERT [dbo].[MonHocDb] ([MaMH], [TenMH]) VALUES (5, N'Văn 12')
INSERT [dbo].[MonHocDb] ([MaMH], [TenMH]) VALUES (7, N'Văn 11')
INSERT [dbo].[MonHocDb] ([MaMH], [TenMH]) VALUES (8, N'Văn 10')
INSERT [dbo].[MonHocDb] ([MaMH], [TenMH]) VALUES (9, N'Sinh 11')
INSERT [dbo].[MonHocDb] ([MaMH], [TenMH]) VALUES (10, N'Sinh 10')
INSERT [dbo].[MonHocDb] ([MaMH], [TenMH]) VALUES (12, N'Lịch sử 11')
INSERT [dbo].[MonHocDb] ([MaMH], [TenMH]) VALUES (13, N'Lịch sử 10')
INSERT [dbo].[MonHocDb] ([MaMH], [TenMH]) VALUES (15, N'Lý 12')
INSERT [dbo].[MonHocDb] ([MaMH], [TenMH]) VALUES (16, N'Lý 11')
INSERT [dbo].[MonHocDb] ([MaMH], [TenMH]) VALUES (17, N'Lý 10')
INSERT [dbo].[MonHocDb] ([MaMH], [TenMH]) VALUES (18, N'Hoá 12')
INSERT [dbo].[MonHocDb] ([MaMH], [TenMH]) VALUES (19, N'Hoá 11')
INSERT [dbo].[MonHocDb] ([MaMH], [TenMH]) VALUES (20, N'Hoá 10')
INSERT [dbo].[MonHocDb] ([MaMH], [TenMH]) VALUES (21, N'Sinh 12')
INSERT [dbo].[MonHocDb] ([MaMH], [TenMH]) VALUES (22, N'Lịch sử 12')
INSERT [dbo].[MonHocDb] ([MaMH], [TenMH]) VALUES (23, N'Địa lý 12')
INSERT [dbo].[MonHocDb] ([MaMH], [TenMH]) VALUES (24, N'Địa lý 11')
INSERT [dbo].[MonHocDb] ([MaMH], [TenMH]) VALUES (25, N'Địa lý 10')
INSERT [dbo].[MonHocDb] ([MaMH], [TenMH]) VALUES (26, N'Ngoại ngữ 10')
INSERT [dbo].[MonHocDb] ([MaMH], [TenMH]) VALUES (27, N'GDCD 10')
INSERT [dbo].[MonHocDb] ([MaMH], [TenMH]) VALUES (28, N'Ngoại Ngữ 11')
INSERT [dbo].[MonHocDb] ([MaMH], [TenMH]) VALUES (29, N'Ngoại ngữ 12')
INSERT [dbo].[MonHocDb] ([MaMH], [TenMH]) VALUES (30, N'GDCD 11')
INSERT [dbo].[MonHocDb] ([MaMH], [TenMH]) VALUES (31, N'GDCD 12')
SET IDENTITY_INSERT [dbo].[MonHocDb] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoanAdDb] ON 

INSERT [dbo].[TaiKhoanAdDb] ([MaTK], [MaAdmin], [TenDangNhap], [MatKhau]) VALUES (1, N'ad1', N'ad1', N'1232')
SET IDENTITY_INSERT [dbo].[TaiKhoanAdDb] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoanGVDb] ON 

INSERT [dbo].[TaiKhoanGVDb] ([MaTK], [MaGV], [TenDangNhap], [MatKhau]) VALUES (1, N'gv1', N'gv1', N'123')
INSERT [dbo].[TaiKhoanGVDb] ([MaTK], [MaGV], [TenDangNhap], [MatKhau]) VALUES (2, N'gv2', N'gv2', N'123')
INSERT [dbo].[TaiKhoanGVDb] ([MaTK], [MaGV], [TenDangNhap], [MatKhau]) VALUES (3, N'gv3', N'gv3', N'123')
INSERT [dbo].[TaiKhoanGVDb] ([MaTK], [MaGV], [TenDangNhap], [MatKhau]) VALUES (4, N'gv4', N'gv4', N'1234')
INSERT [dbo].[TaiKhoanGVDb] ([MaTK], [MaGV], [TenDangNhap], [MatKhau]) VALUES (5, N'gv5', N'gv5', N'123')
INSERT [dbo].[TaiKhoanGVDb] ([MaTK], [MaGV], [TenDangNhap], [MatKhau]) VALUES (6, N'gv6', N'gv6', N'123')
INSERT [dbo].[TaiKhoanGVDb] ([MaTK], [MaGV], [TenDangNhap], [MatKhau]) VALUES (7, N'gv7', N'gv7', N'123')
INSERT [dbo].[TaiKhoanGVDb] ([MaTK], [MaGV], [TenDangNhap], [MatKhau]) VALUES (8, N'gv8', N'gv8', N'123')
INSERT [dbo].[TaiKhoanGVDb] ([MaTK], [MaGV], [TenDangNhap], [MatKhau]) VALUES (9, N'gv9', N'gv9', N'123')
SET IDENTITY_INSERT [dbo].[TaiKhoanGVDb] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoanHSDb] ON 

INSERT [dbo].[TaiKhoanHSDb] ([MaTK], [MaHS], [TenDangNhap], [MatKhau]) VALUES (1, N'hs1', N'hs1', N'1234')
INSERT [dbo].[TaiKhoanHSDb] ([MaTK], [MaHS], [TenDangNhap], [MatKhau]) VALUES (2, N'hs2', N'hs2', N'123')
INSERT [dbo].[TaiKhoanHSDb] ([MaTK], [MaHS], [TenDangNhap], [MatKhau]) VALUES (3, N'hs3', N'hs3', N'123')
INSERT [dbo].[TaiKhoanHSDb] ([MaTK], [MaHS], [TenDangNhap], [MatKhau]) VALUES (5, N'hs5', N'hs5', N'123')
INSERT [dbo].[TaiKhoanHSDb] ([MaTK], [MaHS], [TenDangNhap], [MatKhau]) VALUES (6, N'hs6', N'hs6', N'123')
INSERT [dbo].[TaiKhoanHSDb] ([MaTK], [MaHS], [TenDangNhap], [MatKhau]) VALUES (7, N'hs7', N'hs7', N'123')
INSERT [dbo].[TaiKhoanHSDb] ([MaTK], [MaHS], [TenDangNhap], [MatKhau]) VALUES (8, N'hs8', N'hs8', N'123')
INSERT [dbo].[TaiKhoanHSDb] ([MaTK], [MaHS], [TenDangNhap], [MatKhau]) VALUES (9, N'hs9', N'hs9', N'123')
INSERT [dbo].[TaiKhoanHSDb] ([MaTK], [MaHS], [TenDangNhap], [MatKhau]) VALUES (10, N'hs10', N'hs10', N'123')
INSERT [dbo].[TaiKhoanHSDb] ([MaTK], [MaHS], [TenDangNhap], [MatKhau]) VALUES (11, N'hs11', N'hs11', N'123')
INSERT [dbo].[TaiKhoanHSDb] ([MaTK], [MaHS], [TenDangNhap], [MatKhau]) VALUES (12, N'hs12', N'hs12', N'123')
INSERT [dbo].[TaiKhoanHSDb] ([MaTK], [MaHS], [TenDangNhap], [MatKhau]) VALUES (13, N'hs13', N'hs13', N'123')
SET IDENTITY_INSERT [dbo].[TaiKhoanHSDb] OFF
GO
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 1, 2, 2, 1, N'gv1')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 1, 2, 3, 1, N'gv1')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 1, 2, 4, 5, N'gv2')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 1, 2, 5, 5, N'gv2')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 1, 3, 1, 21, N'gv3')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 1, 3, 2, 22, N'gv4')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 1, 3, 3, 23, N'gv10')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 1, 3, 4, 18, N'gv6')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 1, 3, 5, 29, N'gv12')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 1, 4, 1, 15, N'gv7')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 1, 4, 2, 29, N'gv12')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 1, 4, 3, 1, N'gv1')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 1, 4, 4, 5, N'gv2')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 1, 4, 5, 5, N'gv2')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 1, 6, 1, 21, N'gv3')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 1, 6, 2, 18, N'gv6')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 1, 6, 3, 18, N'gv6')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 1, 6, 4, 31, N'gv14')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 1, 6, 5, 5, N'gv2')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 1, 7, 1, 15, N'gv7')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 1, 7, 2, 23, N'gv10')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 1, 7, 3, 15, N'gv7')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 1, 7, 4, 22, N'gv4')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 1, 7, 5, 21, N'gv3')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 2, 2, 2, 5, N'gv2')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 2, 2, 3, 5, N'gv2')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 2, 2, 4, 1, N'gv1')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 2, 2, 5, 1, N'gv1')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 3, 2, 2, 9, N'gv3')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 3, 2, 3, 12, N'gv4')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 3, 2, 4, 3, N'gv5')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 3, 2, 5, 3, N'gv5')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 4, 2, 2, 13, N'gv4')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 4, 2, 3, 10, N'gv3')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (3, 4, 2, 4, 10, N'gv3')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (7, 1, 2, 2, 1, N'gv1')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (7, 1, 2, 3, 1, N'gv1')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (7, 1, 2, 4, 18, N'gv6')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (7, 1, 2, 5, 18, N'gv6')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (7, 1, 3, 1, 15, N'gv7')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (7, 1, 3, 2, 29, N'gv12')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (7, 1, 3, 3, 1, N'gv1')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (7, 1, 3, 4, 5, N'gv2')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (7, 1, 3, 5, 5, N'gv2')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (7, 1, 4, 1, 15, N'gv7')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (7, 1, 4, 2, 22, N'gv10')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (7, 1, 4, 3, 23, N'gv10')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (7, 1, 4, 4, 5, N'gv2')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (7, 1, 4, 5, 29, N'gv12')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (7, 1, 6, 1, 15, N'gv7')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (7, 1, 6, 2, 23, N'gv10')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (7, 1, 6, 3, 5, N'gv2')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (7, 1, 6, 4, 22, N'gv4')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (7, 1, 6, 5, 21, N'gv3')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (7, 1, 7, 1, 15, N'gv7')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (7, 1, 7, 2, 23, N'gv10')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (7, 1, 7, 3, 15, N'gv7')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (7, 1, 7, 4, 23, N'gv4')
INSERT [dbo].[TKBCTDb] ([MaTKB], [Malop], [Thu], [Tiet], [MaMH], [MaGV]) VALUES (7, 1, 7, 5, 22, N'gv4')
GO
SET IDENTITY_INSERT [dbo].[TKBDb] ON 

INSERT [dbo].[TKBDb] ([MaTKB], [MaKH], [TenTKB], [TrangThai]) VALUES (3, 2, NULL, 1)
INSERT [dbo].[TKBDb] ([MaTKB], [MaKH], [TenTKB], [TrangThai]) VALUES (7, 7, NULL, 0)
INSERT [dbo].[TKBDb] ([MaTKB], [MaKH], [TenTKB], [TrangThai]) VALUES (10, 7, NULL, 0)
SET IDENTITY_INSERT [dbo].[TKBDb] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Unique_MaAd]    Script Date: 1/25/2022 9:38:41 PM ******/
ALTER TABLE [dbo].[TaiKhoanAdDb] ADD  CONSTRAINT [Unique_MaAd] UNIQUE NONCLUSTERED 
(
	[MaAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [unique_tdn]    Script Date: 1/25/2022 9:38:41 PM ******/
ALTER TABLE [dbo].[TaiKhoanAdDb] ADD  CONSTRAINT [unique_tdn] UNIQUE NONCLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [unique_Ten]    Script Date: 1/25/2022 9:38:41 PM ******/
ALTER TABLE [dbo].[TaiKhoanAdDb] ADD  CONSTRAINT [unique_Ten] UNIQUE NONCLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Unique_MaGV]    Script Date: 1/25/2022 9:38:41 PM ******/
ALTER TABLE [dbo].[TaiKhoanGVDb] ADD  CONSTRAINT [Unique_MaGV] UNIQUE NONCLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [unique_tdngv]    Script Date: 1/25/2022 9:38:41 PM ******/
ALTER TABLE [dbo].[TaiKhoanGVDb] ADD  CONSTRAINT [unique_tdngv] UNIQUE NONCLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Unique_HS]    Script Date: 1/25/2022 9:38:41 PM ******/
ALTER TABLE [dbo].[TaiKhoanHSDb] ADD  CONSTRAINT [Unique_HS] UNIQUE NONCLUSTERED 
(
	[MaHS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [unique_tdnhs]    Script Date: 1/25/2022 9:38:41 PM ******/
ALTER TABLE [dbo].[TaiKhoanHSDb] ADD  CONSTRAINT [unique_tdnhs] UNIQUE NONCLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_TKBCTDb]    Script Date: 1/25/2022 9:38:41 PM ******/
ALTER TABLE [dbo].[TKBCTDb] ADD  CONSTRAINT [IX_TKBCTDb] UNIQUE NONCLUSTERED 
(
	[Thu] ASC,
	[Tiet] ASC,
	[MaGV] ASC,
	[MaTKB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DiemDb]  WITH CHECK ADD  CONSTRAINT [FK_DiemDb_HocSinhDb] FOREIGN KEY([MaHS])
REFERENCES [dbo].[HocSinhDb] ([MaHS])
GO
ALTER TABLE [dbo].[DiemDb] CHECK CONSTRAINT [FK_DiemDb_HocSinhDb]
GO
ALTER TABLE [dbo].[DiemDb]  WITH CHECK ADD  CONSTRAINT [FK_DiemDb_KhoaHocDb] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhoaHocDb] ([MaKH])
GO
ALTER TABLE [dbo].[DiemDb] CHECK CONSTRAINT [FK_DiemDb_KhoaHocDb]
GO
ALTER TABLE [dbo].[DiemDb]  WITH CHECK ADD  CONSTRAINT [FK_DiemDb_MonHocDb] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MonHocDb] ([MaMH])
GO
ALTER TABLE [dbo].[DiemDb] CHECK CONSTRAINT [FK_DiemDb_MonHocDb]
GO
ALTER TABLE [dbo].[Hoc]  WITH CHECK ADD  CONSTRAINT [FK_Hoc_KhoaHocDb] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhoaHocDb] ([MaKH])
GO
ALTER TABLE [dbo].[Hoc] CHECK CONSTRAINT [FK_Hoc_KhoaHocDb]
GO
ALTER TABLE [dbo].[Hoc]  WITH CHECK ADD  CONSTRAINT [FK_Hoc_LopDb] FOREIGN KEY([MaLop])
REFERENCES [dbo].[LopDb] ([MaLop])
GO
ALTER TABLE [dbo].[Hoc] CHECK CONSTRAINT [FK_Hoc_LopDb]
GO
ALTER TABLE [dbo].[HocSinhDb]  WITH CHECK ADD  CONSTRAINT [FK_HocSinhDb_LopDb] FOREIGN KEY([MaLop])
REFERENCES [dbo].[LopDb] ([MaLop])
GO
ALTER TABLE [dbo].[HocSinhDb] CHECK CONSTRAINT [FK_HocSinhDb_LopDb]
GO
ALTER TABLE [dbo].[TaiKhoanAdDb]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoanAdDb_AdminDb] FOREIGN KEY([MaAdmin])
REFERENCES [dbo].[AdminDb] ([MaAdmin])
GO
ALTER TABLE [dbo].[TaiKhoanAdDb] CHECK CONSTRAINT [FK_TaiKhoanAdDb_AdminDb]
GO
ALTER TABLE [dbo].[TaiKhoanGVDb]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoanGVDb_GiaoVienDb] FOREIGN KEY([MaGV])
REFERENCES [dbo].[GiaoVienDb] ([MaGV])
GO
ALTER TABLE [dbo].[TaiKhoanGVDb] CHECK CONSTRAINT [FK_TaiKhoanGVDb_GiaoVienDb]
GO
ALTER TABLE [dbo].[TaiKhoanHSDb]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoanDb_HocSinhDb] FOREIGN KEY([MaHS])
REFERENCES [dbo].[HocSinhDb] ([MaHS])
GO
ALTER TABLE [dbo].[TaiKhoanHSDb] CHECK CONSTRAINT [FK_TaiKhoanDb_HocSinhDb]
GO
ALTER TABLE [dbo].[TKBCTDb]  WITH CHECK ADD  CONSTRAINT [FK_TKBCTDb_GiaoVienDb] FOREIGN KEY([MaGV])
REFERENCES [dbo].[GiaoVienDb] ([MaGV])
GO
ALTER TABLE [dbo].[TKBCTDb] CHECK CONSTRAINT [FK_TKBCTDb_GiaoVienDb]
GO
ALTER TABLE [dbo].[TKBCTDb]  WITH CHECK ADD  CONSTRAINT [FK_TKBCTDb_LopDb] FOREIGN KEY([Malop])
REFERENCES [dbo].[LopDb] ([MaLop])
GO
ALTER TABLE [dbo].[TKBCTDb] CHECK CONSTRAINT [FK_TKBCTDb_LopDb]
GO
ALTER TABLE [dbo].[TKBCTDb]  WITH CHECK ADD  CONSTRAINT [FK_TKBCTDb_MonHocDb] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MonHocDb] ([MaMH])
GO
ALTER TABLE [dbo].[TKBCTDb] CHECK CONSTRAINT [FK_TKBCTDb_MonHocDb]
GO
ALTER TABLE [dbo].[TKBCTDb]  WITH CHECK ADD  CONSTRAINT [FK_TKBCTDb_TKBDb] FOREIGN KEY([MaTKB])
REFERENCES [dbo].[TKBDb] ([MaTKB])
GO
ALTER TABLE [dbo].[TKBCTDb] CHECK CONSTRAINT [FK_TKBCTDb_TKBDb]
GO
ALTER TABLE [dbo].[TKBDb]  WITH CHECK ADD  CONSTRAINT [FK_TKBDb_KhoaHocDb] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhoaHocDb] ([MaKH])
GO
ALTER TABLE [dbo].[TKBDb] CHECK CONSTRAINT [FK_TKBDb_KhoaHocDb]
GO
