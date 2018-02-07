CREATE TABLE User(
	id Int,
	username varchar(100),
	password varchar(100) 
	fullName Text,
	gender Varchar(10),
	numberPhone Int,
	Usertype Int,
	Active Int,
	Brand text,
	Manufacturer Text, 
	Product Text,
	Android_version Text,
	Ngay_tao Date,
	primary key(ID)
);

CREATE TABLE TuDien(
	ID Int,
	Tu Varchar(10),
	Loaitu Varchar(10),
	Phienam Text,
	Dichnghia Text,
	Nhieunghia Text,
	Linkaudio Text,
	Ngaytao Date,
	primary key(ID)
);

CREATE TABLE ThanhNgu(
	ID Int,
	Thanhngu Text,
	Noidung Text,
	Vidu Text,
	Ngaytao Date,
	primary key(ID)
);

CREATE TABLE Audio(
	ID Int,
	Title Text,
	Noidung Text,
	Link Text,
	Luotview Int,
	Ngaytao Date,
	primary key(ID)
);

CREATE TABLE Video(
	ID Int,
	Title Text,
	Mo_ta Text,
	Link Text,
	Luotview Int,
	Ngaytao Date,
	primary key(ID)
);

CREATE TABLE Diem(
	ID Int,
	Id_user Int,
	Id_level Int,
	Diem Float,
	Socaudung Int,
	Socauhoi Int,
	Ngaytao Date,
	primary key(ID)
);

CREATE TABLE Favorite(
	ID Int,
	Id_user Int,
	Id_loai Int,
	Loai Varchar(10),
	Ngayluu Date,
	primary key(ID)
);

CREATE TABLE LienHe(
	ID Int,
	Id_user Int,
	Username Varchar(50),
	Title Text,
	Noidung Text,
	Ngaygui Date,
	primary key(ID)
);

CREATE TABLE Level(
	ID Int,	
	Title Text,
	Noidung Text,
	Ngaytao Date,
	primary key(ID)
);