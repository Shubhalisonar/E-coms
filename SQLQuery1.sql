CREATE TABLE [dbo].[Users]
(
	[Id] INT PRIMARY KEY Identity(1,1),
    [FirstName] VARCHAR(50) NULL, 
    [LastName] VARCHAR(50) NULL, 
    [UserName ] VARCHAR(30) NULL, 
    [Email ] VARCHAR(30) NULL, 
    [Password] VARCHAR(30) NULL
)

Select *from Users;