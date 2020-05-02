# onlineExam.github.io
# Make DataBase In Sql Server
# Make Database name OnlineExamSystem
# DataBase query is as follow
Create table tblUserDetails
(
 UserId int,
Firstname nvarchar(50),
Lastname nvarchar(50),

Username nvarchar(50),
Password nvarchar(50),
Email nvarchar(50),
PhoneNumber nvarchar(50),
SecurityQuestion nvarchar(50),
SecurityAnswer nvarchar(50),
Usertype nvarchar(50),

)
select * from tblUserDetails
select * from tblAdminDetails
select * from tblQuestions
Create table tblAdminDetails
(
 AdminId int,
Firstname nvarchar(50),
Lastname nvarchar(50),

AdminName nvarchar(50),
Password nvarchar(50),
Email nvarchar(50),
PhoneNumber nvarchar(50),
SecurityQuestion nvarchar(50),
SecurityAnswer nvarchar(50),
Usertype nvarchar(50),

)

create table tblQuestions
(
 SerialNumber int primary key,
SubjectName nvarchar(50),
Question nvarchar(500),
Option1 nvarchar(100),
Option2 nvarchar(100),
Option3 nvarchar(100),
Option4 nvarchar(100),
Answer nvarchar(50),
ChoiceType nvarchar(50),



)

create table tblSubject
(
SubjectId int,
SubjectName nvarchar(50),

)



create table tblResult
(
 ResultId nvarchar(50),
 UserName nvarchar(50),
 SubjectName nvarchar(50),
 TestDate date,
 NumberOfQuestions int,
 Marks int,
 Status nvarchar(50)
 

)



create table tblTestSetting
(
TestId int ,
TimeLimit int,
NumberOfQuestions nvarchar(50) ,


)


create table ContactDetails
(
FirstName nvarchar(50),
LastName nvarchar(50),
EmailId nvarchar(50),
MobileNo nvarchar(50),
Message nvarchar(500),
MessageDate nvarchar(50)
)

select * from tblUserDetails

# Give The connection string into your project and all the data is store into your database

# Give Connection into web.config file for example
# connectionString="Data Source=Your pc name;Initial Catalog=OnlineExamSystem;Integrated Security=True"


