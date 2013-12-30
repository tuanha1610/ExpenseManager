create database dbExpense
go
use dbExpense
go
create table tblUser(
idUser int identity(1,1) primary key,
name varchar(100) not null,
_user varchar(20) not null,
_pass varchar(100)not null
)
go
create table tblExpense(
	 idEx int identity(1,1) primary key,
	 idUser int not null foreign key  references tblUser(idUser),
	 _date datetime not null,
	 price float not null,
	 _status bit
)
go 
create table tblDetail(
	idDt int identity(1,1) primary key,
	nameProduct varchar(100),
)
