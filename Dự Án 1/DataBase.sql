Create database QLKaraoke;
use QLKaraoke;

CREATE TABLE Nhan_Vien
(
  MaNV Varchar(15) NOT NULL,
  HoTen Varchar(30) NOT NULL,
  GioiTinh bit,
  SĐT varchar(11) NOT NULL,
  CCCD varchar(12) not null,
  Email Varchar(25) NOT NULL,
  DiaChi varchar(100) Not NULL,
  CaLam Varchar(10) NOT NULL,
  Luong float NOT NULL,
  Password varchar(30) NOT NULL,
  Role Varchar(10) NOT NULL,
  PRIMARY KEY (MaNV)
);

CREATE TABLE Phong
(
  MaPhong varchar(15) NOT NULL,
  Gio_Bat_Dau time NOT NULL,
  Gio_Ket_Thuc time NOT NULL,
  Trang_Thai bit NOT NULL,
  MaNV varchar(15) NOT NULL,
  PRIMARY KEY (MaPhong),
  FOREIGN KEY (MaNV) REFERENCES Nhan_Vien(MaNV)
);

CREATE TABLE Loai_sp
(
  MaLoai varchar(15) NOT NULL,
  TenLoai varchar(30) NOT NULL,
  PRIMARY KEY (MaLoai)
);

CREATE TABLE SP
(
  MaSP varchar(15) NOT NULL,
  TenSP varchar(30) NOT NULL,
  Gia float NOT NULL,
  SoLuong int Not null,
  MaLoai varchar(15) NOT NULL,
  PRIMARY KEY (MaSP),
  FOREIGN KEY (MaLoai) REFERENCES Loai_sp(MaLoai)
);

CREATE TABLE CTHD
(
  So_Luong INT NOT NULL,
  Tong_Tien float NOT NULL,
  Tong_Gio time NOT NULL,
  MaCTHD Varchar(15) NOT NULL,
  MaPhong varchar(15) NOT NULL,
  MaSP varchar(15) NOT NULL,
  PRIMARY KEY (CTHD),
  FOREIGN KEY (MaPhong) REFERENCES Phong(MaPhong),
  FOREIGN KEY (MaSP) REFERENCES SP(MaSP)
);

CREATE TABLE Hoa_Don
(
  Tong_SoLuong int not null,
  Ngay_Lap date NOT NULL,
  MaHD varchar(15) NOT NULL,
  MaNV varchar(15) NOT NULL,
  CTHD varchar(15) NOT NULL,
  PRIMARY KEY (MaHD),
  FOREIGN KEY (MaNV) REFERENCES Nhan_Vien(MaNV),
  FOREIGN KEY (CTHD) REFERENCES CTHD(CTHD)
);


-- Thêm dữ liệu vào bảng Nhan_Vien
INSERT INTO Nhan_Vien (MaNV, HoTen, GioiTinh, SĐT, CCCD, Email,DiaChi, CaLam, Luong, Password, Role) VALUES
('NV01', 'Nguyen Van A',0, '0912345678', '088289006859', 'nva@gmail.com',N'1356 Tỉnh Lộ 10,Phường Tân Tạo, Quận Bình Tân,TP HCM', 'Ca1', 5000000, 'password123', 'Admin'),
('NV02', 'Tran Thi B',1, '0923456789', '046101168495', 'ttb@gmail.com',N'46 Nguyễn Trãi,Quận 1,Tp HCM', 'Ca2', 4500000, 'password456', 'Staff');

-- Thêm dữ liệu vào bảng Phong
INSERT INTO Phong (MaPhong, Gio_Bat_Dau, Gio_Ket_Thuc, Trang_Thai, MaNV) VALUES
('P01', '08:00', '12:00', 1, 'NV01'),
('P02', '13:00', '15:00', 0, 'NV02');

-- Thêm dữ liệu vào bảng Loai_sp
INSERT INTO Loai_sp (MaLoai, TenLoai) VALUES
('L01', 'Thức uống'),
('L02', 'Đồ ăn nhanh');

-- Thêm dữ liệu vào bảng SP
INSERT INTO SP (MaSP, TenSP, Gia,SoLuong, MaLoai) VALUES
('SP01', 'Cà phê', 20000,30, 'L01'),
('SP02', 'Trà sữa', 25000,20, 'L01'),
('SP03', 'Bánh mì', 15000,15, 'L02');

-- Thêm dữ liệu vào bảng CTHD
INSERT INTO CTHD (So_Luong, Tong_Tien, Tong_Gio, MaCTHD, MaPhong, MaSP) VALUES
(2, 40000, '04:00', 'CT01', 'P01', 'SP01'),
(1, 25000, '02:00', 'CT02', 'P02', 'SP02');

-- Thêm dữ liệu vào bảng Hoa_Đon
INSERT INTO Hoa_Don (Tong_SoLuong,Ngay_Lap, MaHD, MaNV, MaCTHD) VALUES
(10,'2023-10-29', 'HD01', 'NV01', 'CT01'),
(7,'2023-10-30', 'HD02', 'NV02', 'CT02'
