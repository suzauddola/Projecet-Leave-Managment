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
CREATE PROCEDURE recommendation_list
	-- Add the parameters for the stored procedure here
	@superior_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM employee_info, faculty_info, leave_type, leave_details
	WHERE employee_info.employee_index_pk = faculty_info.employee_index_pk
		AND employee_info.employee_index_pk = leave_details.employee_index_pk
		AND leave_details.leave_index_pk = leave_type.leave_index_pk 
		AND leave_details.status = 1 AND faculty_info.superior_id = @superior_id
END
GO
