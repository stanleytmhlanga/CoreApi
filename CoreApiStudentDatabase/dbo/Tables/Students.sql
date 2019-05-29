CREATE TABLE [dbo].[Students] (
    [id]            INT            IDENTITY (1, 1) NOT NULL,
    [dept_id]       INT            NOT NULL,
    [cos_id]        INT            NOT NULL,
    [Name]          NVARCHAR (MAX) NULL,
    [Surname]       NVARCHAR (MAX) NULL,
    [Age]           INT            NOT NULL,
    [IDNumber]      NVARCHAR (MAX) NULL,
    [Grade]         NVARCHAR (MAX) NULL,
    [Discriminator] NVARCHAR (128) NOT NULL,
    CONSTRAINT [PK_dbo.Students] PRIMARY KEY CLUSTERED ([id] ASC),
    FOREIGN KEY ([cos_id]) REFERENCES [dbo].[Course] ([Id]),
    FOREIGN KEY ([dept_id]) REFERENCES [dbo].[Department] ([Id])
);

