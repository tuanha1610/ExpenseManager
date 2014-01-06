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
insert into tblUser values('hoang anh tuan','tuanha','asdasd')
insert into tblUser values('dao kien cuong','cuongdk','asdasd')
insert into tblUser values('tran duc tung','tungtd','asdasd')
go

create table tblExpense(
	 idEx int identity(1,1) primary key,
	 idUser int not null foreign key  references tblUser(idUser),
	 _date datetime not null,
	 price float not null,
	 _status bit,
	 constraint FK_User_Expense foreign key (idUser) references tblUser(idUser)
)
go
create table tblDetail(
	idEx int identity(1,1) primary key,
	nameProduct varchar(100),
	price float,
	constraint FK_Expense_Detail foreign key(idEx) references tblExpense(idEx)
) 
go
-- drop table tblDetail
--drop table tblExpense
select * from tblUser
select * from tblExpense
select * from tblDetail

