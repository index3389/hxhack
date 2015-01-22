create database DBHack
go
use DBHack
go
create table hackuser
(
	userId int primary key identity,
	hackName varchar(20) not null unique,
	hackPass varchar(20),
	hackMail varchar(50),
	question varchar(100),
	answer varchar(100),
	createTime datetime default getdate(),
	integral int default 0,
	hackip varchar(20) default '127.0.0.1',
	hackimg varchar(20) default 'user.gif',
)

insert into hackuser (hackName,hackPass,hackMail,question,answer)values('admin','admin','admin@qq.com','admin','admin')
insert into hackuser (hackName,hackPass,hackMail,question,answer)values('sohu','admin','admin@qq.com','admin','admin')
insert into hackuser (hackName,hackPass,hackMail,question,answer)values('langsin','admin','admin@qq.com','admin','admin')


create table topic
(
	topicid int primary key identity,
	adminName varchar(20),
	title varchar(255) not null,
	content text,
	isnew int default 0,
	isbest int default 0,
	type int default 1,
	createTime datetime default getdate(),
)
go
create table topictype
(
	typeid int primary key identity,
	xtype int,
	content varchar(10),
)
go
insert into topictype values(1,'���ֹ���')
insert into topictype values(2,'��ȫ����')
insert into topictype values(3,'����ϵͳ')
insert into topictype values(4,'��վ����')
insert into topictype values(5,'�ű����')
insert into topictype values(6,'·�ɽ���')
insert into topictype values(7,'���ѻָ�')

go
create table news
(
	newsid int primary key identity,
	adminName varchar(20),
	title varchar(255) not null,
	content text,
	isnew int default 0,
	isbest int default 0,
	type int default 1,
	createTime datetime default getdate(),
)
go
create table newstype
(
	typeid int primary key identity,
	xtype int default 1,
	content varchar(10),
)
go
insert into newstype values(1,'�ڿ�����')
insert into newstype values(2,'��������')
insert into newstype values(3,'ʱ������')
insert into newstype values(4,'���̶�̬')

go

create table safety
(
	safetyid int primary key identity,
	adminName varchar(20),
	title varchar(255) not null,
	content text,
	isnew int default 0,
	ishot int default 0,
	type int default 1,
	createTime datetime default getdate(),
)

select * from safety
select * from news
select * from topic
go
create table safetytype
(
	safetyid int primary key identity,
	xtype int default 1,
	content varchar(10),
)
insert into safetytype values(1,'©������')
insert into safetytype values(2,'��������')
insert into safetytype values(3,'���')
insert into safetytype values(4,'�Ƽ��')

go

insert into downtype values(1,'©��ɨ��')
insert into downtype values(2,'�����ƽ�')
insert into downtype values(3,'���ֹ���')
insert into downtype values(4,'����ľ��')
insert into downtype values(5,'������')
insert into downtype values(6,'�ۺϹ���')
insert into downtype values(7,'��ȫ�;�')
insert into downtype values(8,'ԭ������')
go
create table cartoon
(
	cartoonid int primary key identity,
	adminName varchar(20),
	title varchar(255) not null,
	content text,
	isnew int default 0,
	ishot int default 0,
	type int default 1,
	createTime datetime default getdate(),
)
go
create table cartoontype
(
	cartoonid int primary key identity,
	xtype int default 1,
	content varchar(10),
)
go
insert into cartoontype values(1,'���ֹ���')
insert into cartoontype values(2,'QQ����')
insert into cartoontype values(3,'ľ�?��')
insert into cartoontype values(4,'ԭ������')

go
create table liter
(
	literid int primary key identity,
	adminName varchar(20),
	title varchar(255) not null,
	content text,
	isnew int default 0,
	ishot int default 0,
	type int default 1,
	createTime datetime default getdate(),
)
go
create table litertype
(
	literid int primary key identity,
	xtype int default 1,
	content varchar(10),
)
go
insert into litertype values(1,'�ڿ��Ļ�')
insert into litertype values(2,'��������')
insert into litertype values(3,'�ڿ����')
insert into litertype values(4,'��������')

go
create table download
(
	downid int primary key identity,
	downName varchar(30) not null,
	downsize varchar(30),
	language varchar(30),
	adminName varchar(30),
	type int default 1,
	createTime datetime default getdate(),
	downpass varchar(50) default 'www.hxhack.com',
	updateTime datetime default getdate(),
	downcount int default 0,
	content text,
)
go

create table downtype
(
	downtypeid int primary key identity,
	xtype int default 1,
	content varchar(10),
)


go

create table sys
(
	sysid int primary key identity,
	sysName varchar(20),
	sysPass varchar(20),
	role int default 1,
)
insert into sys values('admin','baidu',1)
insert into sys values('sohu','sohu',2)
go

create table systype
(
	typeid int primary key identity,
	xtype int default 1,
	role varchar(20),
)

go

insert into systype values(1,'��������Ա')
insert into systype values(2,'��ͨ����Ա')

go

create table fatie
(
	tieid int primary key identity,
	title varchar(255) default '�ޱ�������',
	hackName varchar(20) references hackuser(hackName),
	xtype int default 1,
	createTime datetime default getdate(),
	content ntext default '��������',
)
go

create table huitie
(
	huiid int primary key identity,
	tieid int references fatie(tieid),
	hackName varchar(20) references hackuser(hackName),
	createTime datetime default getdate(),
	content ntext default '��������',
)

go

create table lap
(
	lapid int primary key identity,
	lapName varchar(20) unique default '����������', 
)

insert into lap values('����������')
insert into lap values('�ڿͼ���������')

go


create table info
(
	infoid int primary key identity,
	infoValue varchar(200) default 'admin',
	infoContent varchar(255) default 'admin'
)
go

insert into info values('title','���ĺڿ�j��')
insert into info values('search','���ĺڿ�j��')
go

create proc killspid (@dbname varchar(20))   
as   
begin   
declare @sql nvarchar(500)   
declare @spid int   
set @sql='declare getspid cursor for     
select spid from sysprocesses where dbid=db_id('''+@dbname+''')'   
exec (@sql)   
open getspid   
fetch next from getspid into @spid   
while @@fetch_status < >-1   
begin   
exec('kill '+@spid)   
fetch next from getspid into @spid   
end   
close getspid   
deallocate getspid   
end   

--用法   
--use master   
--exec killspid '数据库名' 


