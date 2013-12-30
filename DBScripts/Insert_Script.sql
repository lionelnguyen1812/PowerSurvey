use SuperSurvey_Dev
go

insert into [Role](RoleName) values('Admin')
go
insert into [Role](RoleName) values('Teachers')
go
insert into [Role](RoleName) values('Students')
go
insert into [User](Username, UserPassword,UserPermission) values('haianh','123456', 1)
go
insert into [User](Username, UserPassword, UserPermission) values('thidk','123456', 2)
go

insert into [User](Username, UserPassword,UserPermission) values('sonnb','123456', 3)
go



use master
go