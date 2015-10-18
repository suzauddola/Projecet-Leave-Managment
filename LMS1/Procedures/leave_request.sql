-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE leave_request 
	-- Add the parameters for the stored procedure here
	@employee_index int,
	@leave_index int,
	@starting_date datetime,
	@ending_date datetime,
	@num_of_days int,
	@applying_date datetime,
	@status int,
	@apply_remarks varchar(80),
	@status_word varchar(20) 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO leave_details (employee_index_pk, leave_index_pk, starting_date, ending_date, num_of_days,  applying_date, status, apply_remakrs, status_word)
	VALUES(@employee_index, @leave_index, @starting_date, @ending_date, @num_of_days, @applying_date, @status, @apply_remarks, @status_word)
END
GO
