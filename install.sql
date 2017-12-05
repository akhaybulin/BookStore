CREATE TABLE [dbo].[Book] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [Title]       VARCHAR (MAX) NOT NULL,
    [Description] VARCHAR (MAX) NULL,
    [Author]      VARCHAR (MAX) NULL,
    [Pages]       INT           NOT NULL,
    [Genre]       VARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE TABLE [dbo].[Review] (
    [Id]           INT           IDENTITY (1, 1) NOT NULL,
    [AuthorId]     INT           NULL,
    [BookId]       INT           NULL,
    [Text]         VARCHAR (MAX) NULL,
    [LikeCount]    INT           DEFAULT ((0)) NULL,
    [ReportReason] VARCHAR (MAX) DEFAULT ('') NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
