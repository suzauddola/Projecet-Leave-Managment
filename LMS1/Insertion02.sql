INSERT INTO [eLeave].[dbo].[employee_info]
           ([name],[gender],[email],[mobile],[employee_type])
     VALUES
           ('Hasan Sarwar','Male','hasan@gmail.com','9844','faculty');
GO


INSERT INTO [eLeave].[dbo].[employee_info]
           ([name],[gender],[email],[mobile],[employee_type])
     VALUES
           ('Faisal Kabir','Male','faisal@gmail.com','986724','faculty');
GO


INSERT INTO [eLeave].[dbo].[employee_info]
           ([name],[gender],[email],[mobile],[employee_type])
     VALUES
           ('Morshed Maruf','Male','maruf@gmail.com','98724','faculty');
GO


INSERT INTO [eLeave].[dbo].[employee_info]
           ([name],[gender],[email],[mobile],[employee_type])
     VALUES
           ('Ayon Alfaz','Male','faisal@gmail.com','986753','staff');
GO


INSERT INTO [eLeave].[dbo].[employee_info]
           ([name],[gender],[email],[mobile],[employee_type])
     VALUES
           ('Dr. salauddin','Male','slaudn@gmail.com','9872888','staff');
GO






INSERT INTO [eLeave].[dbo].[login_info]
           ([employee_index_pk],[username],[password],[privilege])
     VALUES
           (1,'HS','123',2);
GO


INSERT INTO [eLeave].[dbo].[login_info]
           ([employee_index_pk],[username],[password],[privilege])
     VALUES
           (2,'FKA','123',1);
GO


INSERT INTO [eLeave].[dbo].[login_info]
           ([employee_index_pk],[username],[password],[privilege])
     VALUES
           (3,'GMM','123',1);
GO

INSERT INTO [eLeave].[dbo].[login_info]
           ([employee_index_pk],[username],[password],[privilege])
     VALUES
           (3,'ayon','123',1);
GO


INSERT INTO [eLeave].[dbo].[login_info]
           ([employee_index_pk],[username],[password],[privilege])
     VALUES
           (3,'salauddin','123',3);
GO