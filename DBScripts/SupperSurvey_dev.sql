use master
go

if exists (select * from sys.databases where name='SuperSurvey_Dev')
drop database SuperSurvey_Dev
go

create database SuperSurvey_Dev
go

use SuperSurvey_Dev
go

create table [Role](
	RoleID int identity primary key,
	RoleName varchar(50) not null unique,
	timestamp datetime default GETDATE()
)
go

create table [User](
	UserID int identity primary key,
	Username varchar(50) unique not null,
	UserPassword varchar(128) not null,
	UserPermission int not null foreign key references [Role](RoleID),
	timestamp datetime default GETDATE(),
)
go


create table Survey(
	SurveyID int identity primary key,
	SurveyCreateBy int not null,
	SurveyTitle nvarchar(100) not null,
	SurveyDescription nvarchar(200),
	timestamp datetime default GETDATE()
)
go

alter table Survey
	add constraint  fk_Admin_Survey  
		foreign key (SurveyCreateBy) references [User](UserID)
go

create table Tag(
	TagID int identity primary key,
	TagLabel nvarchar(50) not null unique,
	timestamp datetime default GETDATE()
)
go

create table Question(
	QuestionID int identity primary key,
	QuestionCreateBy int not null,
	QuestionContent nvarchar(200) not null,
	timestamp datetime default GETDATE()
)
go

alter table Question
	add constraint fk_Admin_Question 
		foreign key (QuestionCreateBy) references [User](UserID)
go

create table Choice(
	ChoiceID int identity primary key,
	QuestionID int not null,
	ChoiseContent nvarchar(200) not null,
	ChoiseIsRight bit not null,
	timestamp datetime default GETDATE()
)
go

alter table Choice
	add constraint fk_Question_Choice 
		foreign key (QuestionID) references Question(QuestionID)
go


create table QuestionTag(
	QuestionID int not null,
	TagID int not null,
	primary key (QuestionID, TagID),
	timestamp datetime default GETDATE()
)
go

alter table QuestionTag
	add constraint fk_QuestionTag_Question
		foreign key (QuestionID) references Question(QuestionID)
go

alter table QuestionTag
	add constraint fk_QuestionTag_Tag
		foreign key (TagID) references Tag(TagID)
go

create table QuestionSurvey(
	QuestionID int not null,
	SurveyID int not null,
	primary key (QuestionID, SurveyID),
	timestamp datetime default GETDATE()
)
go

alter table QuestionSurvey
	add constraint fk_QuestionSurvey_Question
		foreign key (QuestionID) references Question(QuestionID)
go

alter table QuestionSurvey
	add constraint fk_QuestionSurvey_Survey
		foreign key (SurveyID) references Survey(SurveyID)
go

create table UserSurvey(
	UserSurveyID int identity primary key,
	UserID int not null foreign key references [User](UserID),
	SurveyID int not null foreign key references Survey(SurveyID),
	timestamp datetime default GETDATE()
)
go

create table UserSurveyChoice(
	UserSurveyID int not null foreign key references UserSurvey(UserSurveyID),
	ChoiceID int not null foreign key references Choice(ChoiceID),
	primary key (UserSurveyID, ChoiceID),
	timestamp datetime default GETDATE()
)
go
