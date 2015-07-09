SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[do_FTS]
AS
BEGIN
	SELECT Name
	FROM People
	WHERE FREETEXT (Name, 'vital safety components');
END
GO
