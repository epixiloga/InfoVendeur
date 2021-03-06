USE [Kartina]
GO
/****** Object:  Table [dbo].[Photo]    Script Date: 22/12/2018 21:12:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Titre] [nvarchar](max) NOT NULL,
	[Description] [varchar](max) NULL,
	[IDVendeur] [int] NOT NULL,
	[Path] [nvarchar](355) NULL,
 CONSTRAINT [PK_Photo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendeur]    Script Date: 22/12/2018 21:12:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendeur](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](200) NOT NULL,
	[LastName] [nvarchar](200) NULL,
	[Email] [nvarchar](200) NULL,
 CONSTRAINT [PK_Vendeur] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Photo] ON 

INSERT [dbo].[Photo] ([Id], [Titre], [Description], [IDVendeur], [Path]) VALUES (1, N'TourEffeil', N'Ceci est la tour effeil de paris', 1, N'https://www.toureiffel.paris/themes/custom/tour_eiffel/img/poster-tour-eiffel-jour-nuit.jpg')
INSERT [dbo].[Photo] ([Id], [Titre], [Description], [IDVendeur], [Path]) VALUES (2, N'nature', N'Qu''est ce qu''elle est belle la nature', 1, N'https://www.visitportugal.com/sites/www.visitportugal.com/files/mediateca/23_660x371.jpg')
INSERT [dbo].[Photo] ([Id], [Titre], [Description], [IDVendeur], [Path]) VALUES (3, N'starbourg', N'Strasbourg la capitale de l''europe', 1, N'https://medias.liberation.fr/photo/1179536-prodlibe-attaque-strasbourg.jpg?modified_at=1544594838&width=960')
INSERT [dbo].[Photo] ([Id], [Titre], [Description], [IDVendeur], [Path]) VALUES (4, N'Bottled United', N'Eau de toilette Boss Bottled United Hugo Boss', 2, N'https://www.olfastory.com/sites/www.olfastory.com/files/styles/500x500/public/boss-bottled-united-parfum.jpg?itok=XsAvgBF-')
INSERT [dbo].[Photo] ([Id], [Titre], [Description], [IDVendeur], [Path]) VALUES (5, N'Eau de Parfum', N'HUGO BOSS BOSS Bottled Intense Eau de Parfum', 2, N'https://johnlewis.scene7.com/is/image/JohnLewis/236557335?$rsp-pdp-port-1440$')
INSERT [dbo].[Photo] ([Id], [Titre], [Description], [IDVendeur], [Path]) VALUES (6, N'montre cuir marron homme', N'montre hugo boss orange 1550054 - montre cuir marron homme', 2, N'https://i2.cdscdn.com/pdt2/0/4/7/1/700x700/bos7613272247047/rw/montre-hugo-boss-orange-1550054-montre-cuir-marr.jpg')
INSERT [dbo].[Photo] ([Id], [Titre], [Description], [IDVendeur], [Path]) VALUES (7, N'Hugo Boss BOSS', N'HUGO WOMAN EXTREME Eau de Parfum', 2, N'https://www.nocibe.fr/bibliotheque/produits/HUGO_BOSS/206895_hugo_boss_hugo_woman_extreme_eau_de_parfum_eau_de_parfum_50_ml_500x500.jpg')
SET IDENTITY_INSERT [dbo].[Photo] OFF
SET IDENTITY_INSERT [dbo].[Vendeur] ON 

INSERT [dbo].[Vendeur] ([Id], [FirstName], [LastName], [Email]) VALUES (1, N'hafida', N'elkorchi', N'hafbenmoussa@gmail.com')
INSERT [dbo].[Vendeur] ([Id], [FirstName], [LastName], [Email]) VALUES (2, N'hugo', N'boss', N'hugoboss@gmail.com')
INSERT [dbo].[Vendeur] ([Id], [FirstName], [LastName], [Email]) VALUES (3, N'calven', N'Klein', N'calven@gmail.com')
SET IDENTITY_INSERT [dbo].[Vendeur] OFF
ALTER TABLE [dbo].[Photo]  WITH CHECK ADD  CONSTRAINT [FK_Photo_Vendeur] FOREIGN KEY([IDVendeur])
REFERENCES [dbo].[Vendeur] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Photo] CHECK CONSTRAINT [FK_Photo_Vendeur]
GO
