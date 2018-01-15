Create database QUAN_LY_SIEU_THI_DIEN_MAY_NHOM2_DF1607M_REV1
go
use QUAN_LY_SIEU_THI_DIEN_MAY_NHOM2_DF1607M_REV1
go
Create table CTDATHANG
(
 IDCTDH int not null,
 IDDH int not null ,
 IDSP int not null ,
 SOLUONGDH int not null check (SOLUONGDH>0),
 GIA money not null check(GIA>=0),
 Primary key (IDDH , IDSP , IDCTDH)
 )
 go
 Create table CTHOADON
 (
 IDCTHD int not null,
 IDHD int not null ,
 IDSP int not null ,
 GIA money not null check (GIA>=0),
 SOLUONG int not null check (SOLUONG >0),
 Primary key (IDHD , IDSP , IDCTHD)
 )
 go
 Create table CTPHIEUNHAP
 (
 IDCTPN int not null,
 IDPN int not null ,
 IDSP int not null ,
 GIA money not null check (GIA>=0),
 SOLUONGNHAP int not null check (SOLUONGNHAP >0),
 THANHTIEN money not null check (THANHTIEN>=0),
 Primary key (IDPN , IDSP , IDCTPN)
 )
 go
 Create table DATHANG
 (
 IDDH int not null primary key,
 MDH char(10) not null ,
 IDKH int not null ,
 IDND int not null ,
 NGAYDATHANG datetime default(getdate()),
 NGAYGIAOHANG datetime not null,
 TINHTRANGGIAOHANG int not null,
 TRANGTHAIDH bit not null,
 MOTADH nvarchar(200),
 )
 go 
 Create table HOADON
 (
 IDHD int not null primary key,
 MHD char(10) not null ,
 IDKH int not null ,
 IDND int not null ,
 NGAYLAPHD datetime default(getdate()),
 TRANGTHAIHD bit not null,
 MOTAHD nvarchar(200),
 )
 go
 Create table KHACHHANG
 (
 IDKH int not null primary key,
 MKH char(10) not null ,
 HOTENKH nvarchar(100) not null,
 DIACHIKH nvarchar(200) not null,
 SDTKH varchar(20),
 TONGTIENTIEUTHU money not null check (TONGTIENTIEUTHU > 0),
 TRANGTHAIKH bit not null,
 MOTAKH nvarchar(200),
 )
 go
 Create table LOAISANPHAM
 (
 IDLOAISP int not null primary key,
 MLOAISP char(10) not null ,
 TENLOAI nvarchar(100) not null,
 TRANGTHAILOAISP bit not null,
 MOTALOAISP nvarchar(200),
 )
 go 
 Create table NHACUNGCAP
 (
 IDNCC int not null primary key,
 MNCC char(10) not null ,
 TENNCC nvarchar(50) not null,
 SPCUNGCAP ntext not null,
 DIACHINCC nvarchar(200) not null,
 SDTNCC varchar(50) not null,
 TRANGTHAINCC bit not null,
 MOTANCC nvarchar(200),
 )
 go 
 Create table NGUOIDUNG
 (
 IDND int not null primary key,
 MND char(10) not null ,
 TENND nvarchar(100) not null,
 IDQUYEN int,
 TKUSER varchar(20),
 PASSWORDUSER varchar(20),
 SDTND varchar(50),
 NGAYSINHND datetime not null,
 GIOITINHND bit not null,
 CTMNDND varchar(20) not null,
 TRINHDOHOCVANND nvarchar(50),
 QUEQUANND nvarchar(200),
 TRANGTHAIND bit not null,
 MOTAND nvarchar(200),
 )
 go
 Create table NHASANXUAT
 (
 IDNSX int not null primary key,
 MANSX char(10) not null ,
 TENNSX nvarchar(50) not null,
 DIACHINSX nvarchar(200) not null,
 SDTNSX varchar(20),
 TRANGTHAINSX bit not null,
 MOTANSX nvarchar(200),
 )
 go
 Create table PHIEUNHAP
 (
 IDPHIEUNHAP int not null primary key,
 MPN char(10) not null ,
 IDNCC int not null ,
 IDND int not null ,
 NGAYLAPPN datetime default(getdate()),
 TONGGIATRIPN money not null check(TONGGIATRIPN>0),
 TRANGTHAIPN bit not null,
 MOTAPN nvarchar(200),
 )
 go
 Create table QUYEN
 (
 IDQUYEN int not null primary key,
 MAQUYEN char(10) not null ,
 TENQUYEN nvarchar(50) not null,
 TRANGTHAIQUYEN bit not null, 
 MOTAQUYEN nvarchar(200),
 )
 go
 Create table SANPHAM
 (
 IDSP int not null primary key,
 MSP char(10) not null ,
 IDLOAISP int not null ,
 HINHANHSP image,
 IDNSX int not null ,
 TENSP nvarchar(100) not null,
 GIABANCU money not null check(GIABANCU>=0),
 GIABANMOI money not null check (GIABANMOI>=0),
 SOLUONG int not null check (SOLUONG>0),
 DONVITINH nvarchar(20) not null,
 TRANGTHAISP bit not null,
 GIOITHIEUSP ntext not null,
 THOIGIANBAOHANH float not null,
 MOTASP nvarchar(200),
 )
 go 
 Create table THONGSO
 (
 IDTS int not null primary key,
 TENTS nvarchar(100) not null,
 )
 go
 Create table CTTHONGSO
 (
 IDCTTS int not null,
 IDSP int not null,
 IDTS int not null,
 GIATRITS ntext,
 Primary key (IDCTTS, IDSP, IDTS)
 )
 go