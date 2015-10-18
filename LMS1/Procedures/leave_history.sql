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
CREATE PROCEDURE leave_history
	-- Add the parameters for the stored procedure here
	@employee_index int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT leave_type.leave_name, leave_details.starting_date, leave_details.ending_date, leave_details.num_of_days,
		leave_details.applying_date, leave_details.leave_no_index 
	FROM leave_details, leave_type 
	WHERE leave_details.leave_index_pk = leave_type.leave_index_pk AND leave_details.status = 3
		AND leave_details.employee_index_pk = @employee_index
END
GO
