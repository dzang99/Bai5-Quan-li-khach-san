create database QUAN_LY_KHACH_SAN
go
use QUAN_LY_KHACH_SAN
go

create table KHACHHANG
(	
	ID_KhachHang nvarchar(10) not null, 
	TenKhachHang nvarchar(50), 
	CMND nvarchar(10), 
	SDT bigint 
)

create table DODUNG
(	
	ID_DoDung nvarchar(10) not null, 
	TenDoDung nvarchar(50), 
	Gia bigint
)

create table DICHVU
(	
	ID_DichVu nvarchar(10) not null, 
	TenDichVu nvarchar(50), 
	Gia bigint
)

create table PHONG
(	
	ID_Phong nvarchar(10) not null, 
	TinhTrang nvarchar(10),
	Gia1Ngay bigint, 
	GhiChu nvarchar(50)
)

create table QUANLYPHONG
(	
	ID_Phong nvarchar(10) not null, 
	ID_KhachHang nvarchar(10) not null, 
	NgayThue date, 
	NgayTra date,
	TongTien bigint,
	GhiChu nvarchar(50)
)

create table QUANLYDICHVU
(	
	ID_Phong nvarchar(10) not null, 
	ID_DichVu nvarchar(10) not null,
	Soluong bigint
)

create table QUANLYDODUNG 
(	
	ID_Phong nvarchar(10) not null, 
	ID_DoDung nvarchar(10) not null, 
	SoLuong bigint
)

 create table DANGNHAP
(	
	Username nvarchar(50) not null,
	Pass nvarchar(50)
)

go
insert into KHACHHANG values
('KH001',N'Lê Thị Ngọc Anh','174200022','0928182732'),
('KH002',N'Phan Duy Nam','174232022','0982716273'),
('KH003',N'Đào Văn Thành','174200202','0982628174'),
('KH004',N'Bùi Anh Tuấn','174200974','029182837'),
('KH005',N'Nguyễn Minh Quân','174232321','0192837172'),
('KH006',N'Trần Văn Tý','174254333','0123737180'),
('KH007',N'Đỗ Hoài Thu','174209172','0192837172'),
('KH008',N'Tạ Đình Chiến','174203232','019283162'),
('KH009',N'Võ Văn Bình','174289002','0182764718'),
('KH010',N'Nguyễn Duy Quang','174294828','0182736271')
go 
insert into DODUNG values 
('DD001',N'TiVi',100000),
('DD002',N'Tủ Lạnh',200000),
('DD003',N'Điều Hòa 2 chiều',300000),
('DD004',N'Giường',400000),
('DD005',N'Kệ TiVi',50000),
('DD006',N'Bàn trang điểm',100000),
('DD007',N'Thùng rác',100000),
('DD008',N'Rèm cửa',100000),
('DD009',N'Điều khiển',100000),
('DD010',N'Máy giặt',100000)
go 
insert into DICHVU values
('DV001',N'Dịch vụ 1',350000),
('DV002',N'Dịch vụ 2',450000),
('DV003',N'Dịch vụ 3',550000),
('DV004',N'Dịch vụ 4',250000),
('DV005',N'Dịch vụ 5',550000),
('DV006',N'Dịch vụ 6',300000),
('DV007',N'Dịch vụ 7',400000),
('DV008',N'Dịch vụ 8',500000),
('DV009',N'Dịch vụ 9',600000),
('DV010',N'Dịch vụ 10',200000)
go
insert into PHONG values
('Ph001',N'Ready',100000,''),
('Ph002',N'Busy',50000,''),
('Ph003',N'Busy',75000,''),
('Ph004',N'Ready',125000,''),
('Ph005',N'Ready',100000,''),
('Ph006',N'Ready',100000,''),
('Ph007',N'Busy',50000,''),
('Ph008',N'Busy',100000,''),
('Ph009',N'Ready',100000,''),
('Ph010',N'Ready',100000,''),
('Ph011',N'Ready',100000,''),
('Ph012',N'Ready',100000,''),
('Ph013',N'Ready',100000,''),
('Ph014',N'Ready',100000,''),
('Ph015',N'Ready',100000,'')
go 
insert into QUANLYDODUNG values
('Ph001','DD001',1),('Ph001','DD002',1),
('Ph002','DD002',2),('Ph002','DD003',1),
('Ph002','DD007',1),('Ph003','DD002',1),
('Ph004','DD005',1),('Ph004','DD008',2)
go 
insert into QUANLYPHONG values
('Ph001','KH002','1/1/2015','3/1/2015',0,N''),
('Ph002','KH003','2/2/2015','3/3/2016',0,N''),
('Ph003','KH004','3/3/2015','4/3/2016',0,N''),
('Ph004','KH005','3/4/2015','7/4/2015',0,N''),
('Ph005','KH006','5/5/2015','9/5/2015',0,N''),
('Ph006','KH007','6/7/2015','10/7/2015',0,N''),
('Ph007','KH008','8/8/2015','10/7/2015',0,N''),
('Ph008','KH009','9/8/2015','10/7/2016',0,N'')
go 
insert into QUANLYDICHVU values
('Ph001','DV001',1),('Ph001','DV002',2),('Ph001','DV003',1),('Ph001','DV004',1),
('Ph002','DV002',1),('Ph002','DV003',1),('Ph002','DV004',1),
('Ph003','DV003',1),('Ph003','DV005',1),('Ph003','DV006',3),
('Ph004','DV004',1),('Ph004','DV008',2),
('Ph005','DV005',1),('Ph005','DV006',1),('Ph005','DV007',1),('Ph005','DV009',1),
('Ph006','DV006',1),('Ph006','DV009',3),
('Ph007','DV003',1),('Ph007','DV006',4),('Ph007','DV008',1),
('Ph008','DV001',1),('Ph008','DV002',5),('Ph008','DV010',1)
go
insert into DANGNHAP values
('khuonghoang','hoanglaota'),
('tuananh','anhle123'),
('khuonglinh','linh123'),
('quangtruong','truong123'),
('anhtuan','tuan123'),
('hongquan','quan123')
go
alter table KHACHHANG add constraint PK_KH primary key (ID_KhachHang)
alter table DODUNG add constraint PK_DD primary key (ID_DoDung)
alter table DICHVU add constraint PK_DV primary key (ID_DichVu)
alter table PHONG add constraint PK_Ph primary key (ID_Phong)
alter table DANGNHAP add constraint PK_DN primary key (Username)
go