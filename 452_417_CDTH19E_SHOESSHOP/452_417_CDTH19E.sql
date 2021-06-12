CREATE DATABASE QuanLyBanGiay
USE [QuanLyBanGiay]
GO
/****** Object:  Table [dbo].[CHITIETHOADON]    Script Date: 07/06/2021 11:53:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETHOADON](
	[ID_HoaDon] [nvarchar](5) NOT NULL,
	[ID_SanPham] [nvarchar](5) NOT NULL,
	[DonGia] [money] NULL,
	[SoLuong] [int] NULL,
	[GiamGia] [float] NULL,
	[ThanhTien] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_HoaDon] ASC,
	[ID_SanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETSANPHAM]    Script Date: 07/06/2021 11:53:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETSANPHAM](
	[ID_ChiTietSanPham] [nvarchar](5) NOT NULL,
	[Mau] [nvarchar](20) NULL,
	[KichThuoc] [nvarchar](20) NULL,
	[SoLuong] [int] NULL,
	[GiaNhap] [money] NULL,
	[GiaBan] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 07/06/2021 11:53:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[ID_HoaDon] [nvarchar](5) NOT NULL,
	[ID_KhachHang] [nvarchar](5) NULL,
	[DiaChi] [nvarchar](20) NULL,
	[NgayBan] [date] NULL,
	[TongTien] [money] NULL,
	[TrangThai] [nvarchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_HoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 07/06/2021 11:53:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[ID_KhachHang] [nvarchar](5) NOT NULL,
	[TenKhachHang] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SoDT] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_KhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAISANPHAM]    Script Date: 07/06/2021 11:53:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAISANPHAM](
	[ID_LoaiSanPham] [nvarchar](5) NOT NULL,
	[TenLoai] [nvarchar](20) NULL,
	[TrangThai] [nvarchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_LoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 07/06/2021 11:53:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[ID_NCC] [nvarchar](5) NOT NULL,
	[TenNCC] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](20) NULL,
	[SoDT] [nvarchar](20) NULL,
	[TrangThai] [nvarchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_NCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 07/06/2021 11:53:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[ID_NhanVien] [nvarchar](5) NOT NULL,
	[TenNhanVien] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[SoDT] [nvarchar](20) NULL,
	[Luong] [money] NULL,
	[Email] [nvarchar](30) NULL,
	[TrangThai] [nvarchar](5) NULL,
	[DiaChi] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_NhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 07/06/2021 11:53:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[ID_SanPham] [nvarchar](5) NOT NULL,
	[ID_LoaiSanPham] [nvarchar](5) NOT NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[TrangThai] [nvarchar](5) NULL,
	[ID_NCC] [nvarchar](5) NULL,
	[ID_ChiTietSanPham] [nvarchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_SanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 07/06/2021 11:53:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[ID_TaiKhoan] [nvarchar](5) NOT NULL,
	[ID_NhanVien] [nvarchar](5) NULL,
	[TenTaiKhoan] [nvarchar](20) NULL,
	[MatKhau] [nvarchar](20) NULL,
	[TrangThai] [nvarchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CHITIETHOADON] ([ID_HoaDon], [ID_SanPham], [DonGia], [SoLuong], [GiamGia], [ThanhTien]) VALUES (N'HD001', N'SP004', 200000.0000, 20, 0.1, 60000000.0000)
INSERT [dbo].[CHITIETHOADON] ([ID_HoaDon], [ID_SanPham], [DonGia], [SoLuong], [GiamGia], [ThanhTien]) VALUES (N'HD001', N'SP008', 200000.0000, 20, 0.1, 60000000.0000)
INSERT [dbo].[CHITIETHOADON] ([ID_HoaDon], [ID_SanPham], [DonGia], [SoLuong], [GiamGia], [ThanhTien]) VALUES (N'HD001', N'SP009', 200000.0000, 20, 0.1, 60000000.0000)
INSERT [dbo].[CHITIETHOADON] ([ID_HoaDon], [ID_SanPham], [DonGia], [SoLuong], [GiamGia], [ThanhTien]) VALUES (N'HD001', N'SP010', 200000.0000, 20, 0.1, 60000000.0000)
INSERT [dbo].[CHITIETHOADON] ([ID_HoaDon], [ID_SanPham], [DonGia], [SoLuong], [GiamGia], [ThanhTien]) VALUES (N'HD001', N'SP111', 200000.0000, 20, 0.1, 63330000.0000)
INSERT [dbo].[CHITIETHOADON] ([ID_HoaDon], [ID_SanPham], [DonGia], [SoLuong], [GiamGia], [ThanhTien]) VALUES (N'HD002', N'SP004', 200000.0000, 20, 0.1, 60000000.0000)
INSERT [dbo].[CHITIETHOADON] ([ID_HoaDon], [ID_SanPham], [DonGia], [SoLuong], [GiamGia], [ThanhTien]) VALUES (N'HD002', N'SP008', 200000.0000, 20, 0.1, 60000000.0000)
INSERT [dbo].[CHITIETHOADON] ([ID_HoaDon], [ID_SanPham], [DonGia], [SoLuong], [GiamGia], [ThanhTien]) VALUES (N'HD003', N'SP004', 200000.0000, 64, 0.1, 2330000.0000)
INSERT [dbo].[CHITIETHOADON] ([ID_HoaDon], [ID_SanPham], [DonGia], [SoLuong], [GiamGia], [ThanhTien]) VALUES (N'HD003', N'SP009', 200000.0000, 32, 0.1, 60000000.0000)
INSERT [dbo].[CHITIETHOADON] ([ID_HoaDon], [ID_SanPham], [DonGia], [SoLuong], [GiamGia], [ThanhTien]) VALUES (N'HD003', N'SP010', 200000.0000, 21, 0.1, 5500000.0000)
INSERT [dbo].[CHITIETHOADON] ([ID_HoaDon], [ID_SanPham], [DonGia], [SoLuong], [GiamGia], [ThanhTien]) VALUES (N'HD004', N'SP008', 200000.0000, 20, 0.1, 60000000.0000)
INSERT [dbo].[CHITIETHOADON] ([ID_HoaDon], [ID_SanPham], [DonGia], [SoLuong], [GiamGia], [ThanhTien]) VALUES (N'HD006', N'SP009', 200000.0000, 32, 0.1, 60000000.0000)
GO
INSERT [dbo].[CHITIETSANPHAM] ([ID_ChiTietSanPham], [Mau], [KichThuoc], [SoLuong], [GiaNhap], [GiaBan]) VALUES (N'CT001', N'Red', N'39', 20, 100000000.0000, 100000000.0000)
INSERT [dbo].[CHITIETSANPHAM] ([ID_ChiTietSanPham], [Mau], [KichThuoc], [SoLuong], [GiaNhap], [GiaBan]) VALUES (N'CT002', N'#000000', N'43', 5, 3000000.0000, 50000000.0000)
INSERT [dbo].[CHITIETSANPHAM] ([ID_ChiTietSanPham], [Mau], [KichThuoc], [SoLuong], [GiaNhap], [GiaBan]) VALUES (N'CT003', N'#f1f1f1', N'39', 10, 400000.0000, 40000000.0000)
INSERT [dbo].[CHITIETSANPHAM] ([ID_ChiTietSanPham], [Mau], [KichThuoc], [SoLuong], [GiaNhap], [GiaBan]) VALUES (N'CT004', N'#0964f3', N'40', 5, 1005000.0000, 200051000.0000)
INSERT [dbo].[CHITIETSANPHAM] ([ID_ChiTietSanPham], [Mau], [KichThuoc], [SoLuong], [GiaNhap], [GiaBan]) VALUES (N'CT005', N'#00645A', N'41', 3, 1000000.0000, 200000000.0000)
INSERT [dbo].[CHITIETSANPHAM] ([ID_ChiTietSanPham], [Mau], [KichThuoc], [SoLuong], [GiaNhap], [GiaBan]) VALUES (N'CT006', N'ffff8000', N'38', 20, 100000000.0000, 100000000.0000)
GO
INSERT [dbo].[HOADON] ([ID_HoaDon], [ID_KhachHang], [DiaChi], [NgayBan], [TongTien], [TrangThai]) VALUES (N'HD001', N'KH001', N'AAAAAAAAA', CAST(N'2020-12-08' AS Date), 200000.0000, N'1')
INSERT [dbo].[HOADON] ([ID_HoaDon], [ID_KhachHang], [DiaChi], [NgayBan], [TongTien], [TrangThai]) VALUES (N'HD002', N'KH002', N'Tp Hồ Chí Minh', CAST(N'2020-12-08' AS Date), 200000.0000, N'1')
INSERT [dbo].[HOADON] ([ID_HoaDon], [ID_KhachHang], [DiaChi], [NgayBan], [TongTien], [TrangThai]) VALUES (N'HD003', N'KH002', N'Tp Hồ Chí Minh', CAST(N'2020-12-08' AS Date), 200000.0000, N'1')
INSERT [dbo].[HOADON] ([ID_HoaDon], [ID_KhachHang], [DiaChi], [NgayBan], [TongTien], [TrangThai]) VALUES (N'HD004', N'KH004', N'Tp Hồ Chí Minh', CAST(N'2017-12-08' AS Date), 200000.0000, N'1')
INSERT [dbo].[HOADON] ([ID_HoaDon], [ID_KhachHang], [DiaChi], [NgayBan], [TongTien], [TrangThai]) VALUES (N'HD005', N'HD001', N'Tp Hồ Chí Minh', CAST(N'2020-12-08' AS Date), 200000.0000, N'0')
INSERT [dbo].[HOADON] ([ID_HoaDon], [ID_KhachHang], [DiaChi], [NgayBan], [TongTien], [TrangThai]) VALUES (N'HD006', N'KH002', N'Tp Hồ Chí Minh', CAST(N'2016-12-08' AS Date), 200000.0000, N'1')
INSERT [dbo].[HOADON] ([ID_HoaDon], [ID_KhachHang], [DiaChi], [NgayBan], [TongTien], [TrangThai]) VALUES (N'HD007', N'HD004', N'Tp Hồ Chí Minh', CAST(N'2020-12-17' AS Date), 200000.0000, N'1')
INSERT [dbo].[HOADON] ([ID_HoaDon], [ID_KhachHang], [DiaChi], [NgayBan], [TongTien], [TrangThai]) VALUES (N'HD008', N'HD004', N'Tp Hồ Chí Minh', CAST(N'2020-12-17' AS Date), 200000.0000, N'1')
INSERT [dbo].[HOADON] ([ID_HoaDon], [ID_KhachHang], [DiaChi], [NgayBan], [TongTien], [TrangThai]) VALUES (N'HD009', N'HD001', N'AAAAAAAAA', CAST(N'2021-05-31' AS Date), 200000.0000, N'1')
INSERT [dbo].[HOADON] ([ID_HoaDon], [ID_KhachHang], [DiaChi], [NgayBan], [TongTien], [TrangThai]) VALUES (N'HD015', N'HD002', N'Hà Tĩnh', CAST(N'2020-08-12' AS Date), 200000.0000, N'1')
INSERT [dbo].[HOADON] ([ID_HoaDon], [ID_KhachHang], [DiaChi], [NgayBan], [TongTien], [TrangThai]) VALUES (N'HD016', N'HD002', N'Nghệ an', CAST(N'2020-08-12' AS Date), 200000.0000, N'1')
INSERT [dbo].[HOADON] ([ID_HoaDon], [ID_KhachHang], [DiaChi], [NgayBan], [TongTien], [TrangThai]) VALUES (N'HD017', N'HD008', N'Quảng Bình', CAST(N'2020-08-12' AS Date), 200000.0000, N'1')
INSERT [dbo].[HOADON] ([ID_HoaDon], [ID_KhachHang], [DiaChi], [NgayBan], [TongTien], [TrangThai]) VALUES (N'HD021', N'HD009', N'Hà Nội', CAST(N'2020-08-12' AS Date), 201243.0000, N'1')
GO
INSERT [dbo].[KHACHHANG] ([ID_KhachHang], [TenKhachHang], [NgaySinh], [DiaChi], [SoDT]) VALUES (N'KH002', N'Trần Thanh Tâm', CAST(N'1996-01-29T00:00:00.000' AS DateTime), N'Hà Nội', N'03472565516')
INSERT [dbo].[KHACHHANG] ([ID_KhachHang], [TenKhachHang], [NgaySinh], [DiaChi], [SoDT]) VALUES (N'KH003', N'Kem KaBi', CAST(N'1995-08-05T00:00:00.000' AS DateTime), N'Tp Hồ Chí Minh', N'0356482154')
INSERT [dbo].[KHACHHANG] ([ID_KhachHang], [TenKhachHang], [NgaySinh], [DiaChi], [SoDT]) VALUES (N'KH004', N'Má Tám Miền Tây', CAST(N'2000-11-02T00:00:00.000' AS DateTime), N'Hà Tĩnh', N'03471642154')
INSERT [dbo].[KHACHHANG] ([ID_KhachHang], [TenKhachHang], [NgaySinh], [DiaChi], [SoDT]) VALUES (N'KH005', N'Bà Bảy Trà Đá', CAST(N'1992-06-07T00:00:00.000' AS DateTime), N'An Giang', N'0375542154')
INSERT [dbo].[KHACHHANG] ([ID_KhachHang], [TenKhachHang], [NgaySinh], [DiaChi], [SoDT]) VALUES (N'KH008', N'Trần Thanh Tâm', CAST(N'1996-01-29T00:00:00.000' AS DateTime), N'Hà Nội', N'03472565516')
INSERT [dbo].[KHACHHANG] ([ID_KhachHang], [TenKhachHang], [NgaySinh], [DiaChi], [SoDT]) VALUES (N'KH012', N'Trần Thanh Tâm', CAST(N'1996-01-29T00:00:00.000' AS DateTime), N'Hà Nội', N'03472565516')
INSERT [dbo].[KHACHHANG] ([ID_KhachHang], [TenKhachHang], [NgaySinh], [DiaChi], [SoDT]) VALUES (N'KH111', N'Trần Đức Bo', CAST(N'1995-09-15T00:00:00.000' AS DateTime), N'Tp Hồ Chí Minh', N'0123456789')
GO
INSERT [dbo].[LOAISANPHAM] ([ID_LoaiSanPham], [TenLoai], [TrangThai]) VALUES (N'LOAI2', N'HunterX', N'0')
INSERT [dbo].[LOAISANPHAM] ([ID_LoaiSanPham], [TenLoai], [TrangThai]) VALUES (N'LOAI3', N'AXXXA', N'0')
INSERT [dbo].[LOAISANPHAM] ([ID_LoaiSanPham], [TenLoai], [TrangThai]) VALUES (N'LOAI4', N'Bitis', N'1')
INSERT [dbo].[LOAISANPHAM] ([ID_LoaiSanPham], [TenLoai], [TrangThai]) VALUES (N'LOAI5', N'BitisXX', N'0')
INSERT [dbo].[LOAISANPHAM] ([ID_LoaiSanPham], [TenLoai], [TrangThai]) VALUES (N'LOAI6', N'BitisA', N'1')
INSERT [dbo].[LOAISANPHAM] ([ID_LoaiSanPham], [TenLoai], [TrangThai]) VALUES (N'LOAI7', N'BitisB', N'1')
INSERT [dbo].[LOAISANPHAM] ([ID_LoaiSanPham], [TenLoai], [TrangThai]) VALUES (N'LOAI8', N'BitisA', N'1')
INSERT [dbo].[LOAISANPHAM] ([ID_LoaiSanPham], [TenLoai], [TrangThai]) VALUES (N'LOAI9', N'MP001', N'1')
GO
INSERT [dbo].[NHACUNGCAP] ([ID_NCC], [TenNCC], [DiaChi], [SoDT], [TrangThai]) VALUES (N'NCC02', N'Tr?n Lâm YaSuo', N'Đồng Tháp', N'0347284599', N'1')
INSERT [dbo].[NHACUNGCAP] ([ID_NCC], [TenNCC], [DiaChi], [SoDT], [TrangThai]) VALUES (N'NCC03', N'Thái Th? Seraphine', N'Hà Nội', N'041684567899', N'1')
INSERT [dbo].[NHACUNGCAP] ([ID_NCC], [TenNCC], [DiaChi], [SoDT], [TrangThai]) VALUES (N'NCC04', N'Trần Lâm YaSuo', N'Đồng Tháp', N'0347284599', N'1')
INSERT [dbo].[NHACUNGCAP] ([ID_NCC], [TenNCC], [DiaChi], [SoDT], [TrangThai]) VALUES (N'NCC11', N'HAHAHAHA', N'Đồng Tháp', N'0347284599', N'0')
GO
INSERT [dbo].[NHANVIEN] ([ID_NhanVien], [TenNhanVien], [NgaySinh], [SoDT], [Luong], [Email], [TrangThai], [DiaChi]) VALUES (N'NV002', N'Trần Đức Bo', CAST(N'1999-12-16' AS Date), N'034721354568721', 1200000000.0000, N'NV002@nhanvien.shoesshop.com', N'1', N'Đà Nẵng')
INSERT [dbo].[NHANVIEN] ([ID_NhanVien], [TenNhanVien], [NgaySinh], [SoDT], [Luong], [Email], [TrangThai], [DiaChi]) VALUES (N'NV003', N'Hasagii Ukura', CAST(N'1999-12-07' AS Date), N'0315456622', 18000000.0000, N'NV003@nhanvien.shoesshop.com', N'1', N'Tp Hồ Chí Minh')
INSERT [dbo].[NHANVIEN] ([ID_NhanVien], [TenNhanVien], [NgaySinh], [SoDT], [Luong], [Email], [TrangThai], [DiaChi]) VALUES (N'NV004', N'Leesin Quyền Thái', CAST(N'2000-12-12' AS Date), N'01253123512', 99000000.0000, N'NV004@nhanvien.shoesshop.com', N'1', N'Bến Tre')
INSERT [dbo].[NHANVIEN] ([ID_NhanVien], [TenNhanVien], [NgaySinh], [SoDT], [Luong], [Email], [TrangThai], [DiaChi]) VALUES (N'NV005', N'Quỷ Vương', CAST(N'1998-07-05' AS Date), N'0123462332', 15000000.0000, N'NV005@nhanvien.shoesshop.com', N'1', N'Hà Nội')
INSERT [dbo].[NHANVIEN] ([ID_NhanVien], [TenNhanVien], [NgaySinh], [SoDT], [Luong], [Email], [TrangThai], [DiaChi]) VALUES (N'NV006', N'Faker', CAST(N'1998-07-05' AS Date), N'03061912465', 30000000.0000, N'NV006@nhanvien.shoesshop.com', N'1', N'Bình Thuận')
GO
INSERT [dbo].[SANPHAM] ([ID_SanPham], [ID_LoaiSanPham], [TenSanPham], [TrangThai], [ID_NCC], [ID_ChiTietSanPham]) VALUES (N'SP004', N'LOAI2', N'Bitis Hunter 452GH', N'1', N'NCC03', N'CT003')
INSERT [dbo].[SANPHAM] ([ID_SanPham], [ID_LoaiSanPham], [TenSanPham], [TrangThai], [ID_NCC], [ID_ChiTietSanPham]) VALUES (N'SP008', N'LOAI3', N'Bitis 13785XL', N'0', N'NCC03', N'CT001')
INSERT [dbo].[SANPHAM] ([ID_SanPham], [ID_LoaiSanPham], [TenSanPham], [TrangThai], [ID_NCC], [ID_ChiTietSanPham]) VALUES (N'SP009', N'LOAI5', N'Bitis Hunter X 2021', N'1', N'NCC02', N'CT002')
INSERT [dbo].[SANPHAM] ([ID_SanPham], [ID_LoaiSanPham], [TenSanPham], [TrangThai], [ID_NCC], [ID_ChiTietSanPham]) VALUES (N'SP010', N'LOAI4', N'Sản Phẩm 010', N'1', N'NCC11', N'CT111')
INSERT [dbo].[SANPHAM] ([ID_SanPham], [ID_LoaiSanPham], [TenSanPham], [TrangThai], [ID_NCC], [ID_ChiTietSanPham]) VALUES (N'SP111', N'LOAI5', N'Sản Phẩm 00001', N'1', N'NCC11', N'CT111')
INSERT [dbo].[SANPHAM] ([ID_SanPham], [ID_LoaiSanPham], [TenSanPham], [TrangThai], [ID_NCC], [ID_ChiTietSanPham]) VALUES (N'SP112', N'LOAI5', N'Sản Phẩm 00001', N'1', N'NCC11', N'CT111')
INSERT [dbo].[SANPHAM] ([ID_SanPham], [ID_LoaiSanPham], [TenSanPham], [TrangThai], [ID_NCC], [ID_ChiTietSanPham]) VALUES (N'SP113', N'LOAI5', N'Sản phẩm Bitis Hunter X', N'1', N'NCC02', N'CT003')
INSERT [dbo].[SANPHAM] ([ID_SanPham], [ID_LoaiSanPham], [TenSanPham], [TrangThai], [ID_NCC], [ID_ChiTietSanPham]) VALUES (N'SP333', N'LOAI2', N'Sản Phẩm BitisHUnter', N'1', N'NCC01', N'CT001')
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD FOREIGN KEY([ID_HoaDon])
REFERENCES [dbo].[HOADON] ([ID_HoaDon])
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD FOREIGN KEY([ID_SanPham])
REFERENCES [dbo].[SANPHAM] ([ID_SanPham])
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD FOREIGN KEY([ID_LoaiSanPham])
REFERENCES [dbo].[LOAISANPHAM] ([ID_LoaiSanPham])
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD FOREIGN KEY([ID_NhanVien])
REFERENCES [dbo].[NHANVIEN] ([ID_NhanVien])
GO
