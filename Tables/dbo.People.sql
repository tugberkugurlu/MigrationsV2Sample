CREATE TABLE [dbo].[People]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Name] [nvarchar] (50) COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[People] ADD CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO