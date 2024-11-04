Create database QLKaraoke;
use QLKaraoke;

CREATE TABLE Nhan_Vien
(
  MaNV Varchar(15) NOT NULL,
  HoTen Varchar(30) NOT NULL,
  SĐT INT NOT NULL,
  Email Varchar(25) NOT NULL,
  CaLam Varchar(10) NOT NULL,
  Luong float NOT NULL,
  Password varchar(30) NOT NULL,
  Role Varchar(10) NOT NULL,
  Image varchar(50),
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
  MaLoai varchar(15) NOT NULL,
  PRIMARY KEY (MaSP),
  FOREIGN KEY (MaLoai) REFERENCES Loai_sp(MaLoai)
);

CREATE TABLE CTHĐ
(
  So_Luong INT NOT NULL,
  Tong_Tien float NOT NULL,
  Tong_Gio time NOT NULL,
  CTHĐ Varchar(15) NOT NULL,
  MaPhong varchar(15) NOT NULL,
  MaSP varchar(15) NOT NULL,
  PRIMARY KEY (CTHĐ),
  FOREIGN KEY (MaPhong) REFERENCES Phong(MaPhong),
  FOREIGN KEY (MaSP) REFERENCES SP(MaSP)
);

CREATE TABLE Hoa_Đon
(
  Ngay_Lap date NOT NULL,
  MaHĐ varchar(15) NOT NULL,
  MaNV varchar(15) NOT NULL,
  CTHĐ varchar(15) NOT NULL,
  PRIMARY KEY (MaHĐ),
  FOREIGN KEY (MaNV) REFERENCES Nhan_Vien(MaNV),
  FOREIGN KEY (CTHĐ) REFERENCES CTHĐ(CTHĐ)
);


-- Thêm dữ liệu vào bảng Nhan_Vien
INSERT INTO Nhan_Vien (MaNV, HoTen, SĐT, Email, CaLam, Luong, Password, Role,Image) VALUES
('NV01', 'Nguyen Van A', 912345678, 'nva@gmail.com', 'Ca1', 5000000, 'password123', 'Admin',''),
('NV02', 'Tran Thi B', 923456789, 'ttb@gmail.com', 'Ca2', 4500000, 'password456', 'Staff','');

-- Thêm dữ liệu vào bảng Phong
INSERT INTO Phong (MaPhong, Gio_Bat_Dau, Gio_Ket_Thuc, Trang_Thai, MaNV) VALUES
('P01', '08:00', '12:00', 1, 'NV01'),
('P02', '13:00', '15:00', 0, 'NV02');

-- Thêm dữ liệu vào bảng Loai_sp
INSERT INTO Loai_sp (MaLoai, TenLoai) VALUES
('L01', 'Thức uống'),
('L02', 'Đồ ăn nhanh');

-- Thêm dữ liệu vào bảng SP
INSERT INTO SP (MaSP, TenSP, Gia, MaLoai) VALUES
('SP01', 'Cà phê', 20000, 'L01'),
('SP02', 'Trà sữa', 25000, 'L01'),
('SP03', 'Bánh mì', 15000, 'L02');

-- Thêm dữ liệu vào bảng CTHĐ
INSERT INTO CTHĐ (So_Luong, Tong_Tien, Tong_Gio, CTHĐ, MaPhong, MaSP) VALUES
(2, 40000, '04:00', 'CT01', 'P01', 'SP01'),
(1, 25000, '02:00', 'CT02', 'P02', 'SP02');

-- Thêm dữ liệu vào bảng Hoa_Đon
INSERT INTO Hoa_Đon (Ngay_Lap, MaHĐ, MaNV, CTHĐ) VALUES
('2023-10-29', 'HD01', 'NV01', 'CT01'),
('2023-10-30', 'HD02', 'NV02', 'CT02');
