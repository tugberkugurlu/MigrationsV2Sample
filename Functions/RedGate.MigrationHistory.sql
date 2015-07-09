SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [RedGate].[MigrationHistory] ()
RETURNS @Tbl TABLE (PropertyKey VARCHAR(30) UNIQUE, PropertyValue NVARCHAR(MAX))
AS 
BEGIN
    
INSERT  @Tbl  VALUES  ('MigrationHistory' , N'[
  {
    "UpScript": "\r\nIF NOT EXISTS ( SELECT  1\r\n                FROM    [information_schema].[Tables]\r\n                WHERE   table_schema = ''dbo''\r\n                        AND TABLE_NAME = ''People'' )\r\n    PRINT ''Object ''''[dbo].[People]'''' could not be found – skipping migration.'';\r\nELSE\r\n    EXEC sp_rename ''[dbo].[People]'', ''Customers''\r\n",
    "DownScript": null,
    "Name": "rename_people_to_customers",
    "UniqueId": "2b22377b-35ac-4b57-808b-f60badf8eb0c",
    "Timestamp": "2015-07-09T09:30:54",
    "Order": 0,
    "Description": "Rename table [dbo].People to [dbo].Customers"
  }
]')
    RETURN
END
GO
