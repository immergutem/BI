CREATE DATABASE DataSolving;
GO
USE DataSolving;
SET ANSI_NULLS, QUOTED_IDENTIFIER ON;
GO
CREATE TABLE [dbo].[Countries] (
    [id]         INT                 IDENTITY (1, 1) NOT NULL,
    [id_city]    INT                 NOT NULL,
    [name]       VARCHAR(25) NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);
GO
SET ANSI_NULLS, QUOTED_IDENTIFIER ON;
GO
CREATE TABLE dbo.Cities (
    [id]          INT                 IDENTITY (1, 1) NOT NULL,
    [country_id]          INT                 NOT NULL,
    [name]        VARCHAR (25)  NOT      NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_CountriesCities] FOREIGN KEY ([country_id]) REFERENCES [dbo].[Countries] ([id]) ON DELETE CASCADE
);


  