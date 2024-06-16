USE [Quiz_Practice]
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 6/16/2024 11:49:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[AnswerID] [int] IDENTITY(1,1) NOT NULL,
	[QuestionID] [int] NULL,
	[AnswerName] [text] NULL,
	[IsCorrect] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[AnswerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 6/16/2024 11:49:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[BlogId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[BlogCategoryId] [int] NULL,
	[BlogTitle] [nvarchar](512) NULL,
	[UpdatedTime] [datetime] NULL,
	[PostBrief] [nvarchar](2048) NULL,
	[PostText] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[BlogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlogCategory]    Script Date: 6/16/2024 11:49:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogCategory](
	[BlogCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[BlogCategoryName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[BlogCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 6/16/2024 11:49:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[GenderId] [int] IDENTITY(1,1) NOT NULL,
	[GenderName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[GenderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Package]    Script Date: 6/16/2024 11:49:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Package](
	[PackageId] [int] IDENTITY(1,1) NOT NULL,
	[SubjectId] [int] NULL,
	[PackageName] [nvarchar](50) NULL,
	[PackageDuration] [int] NULL,
	[ListPrice] [float] NULL,
	[SalePrice] [float] NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[PackageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProfilePicture]    Script Date: 6/16/2024 11:49:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProfilePicture](
	[UserId] [int] NOT NULL,
	[Image] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 6/16/2024 11:49:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[QuestionID] [int] IDENTITY(1,1) NOT NULL,
	[QuestionText] [text] NULL,
	[Explanation] [text] NULL,
	[Level] [int] NULL,
	[SubjectID] [int] NULL,
	[LessonID] [int] NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[QuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 6/16/2024 11:49:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[RegistrationId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[RegistrationTime] [date] NULL,
	[PackageId] [int] NULL,
	[RegistrationStatusId] [int] NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NULL,
	[TransactionContent] [varchar](255) NULL,
	[TransactionCode] [varchar](255) NULL,
	[TransactionAccount] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[RegistrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegistrationStatus]    Script Date: 6/16/2024 11:49:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistrationStatus](
	[RegistrationStatusId] [int] IDENTITY(1,1) NOT NULL,
	[RegistrationStatusName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[RegistrationStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResetToken]    Script Date: 6/16/2024 11:49:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResetToken](
	[UserId] [int] NOT NULL,
	[Token] [varchar](255) NULL,
	[ValidTo] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 6/16/2024 11:49:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 6/16/2024 11:49:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[SubjectId] [int] IDENTITY(1,1) NOT NULL,
	[SubjectTitle] [varchar](50) NULL,
	[SubjectCategoryId] [int] NULL,
	[SubjectStatus] [bit] NULL,
	[IsFeaturedSubject] [bit] NULL,
	[SubjectCreatedDate] [date] NULL,
	[SubjectUpdatedDate] [date] NULL,
	[SubjectTagLine] [varchar](50) NULL,
	[SubjectThumbnail] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[SubjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubjectCategory]    Script Date: 6/16/2024 11:49:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubjectCategory](
	[SubjectCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[SubjectCategoryName] [varchar](50) NULL,
	[SubjectParentCategory] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SubjectCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 6/16/2024 11:49:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[RoleId] [int] NULL,
	[FullName] [nvarchar](50) NULL,
	[GenderId] [int] NULL,
	[Mobile] [varchar](50) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Answer] ON 

INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (208, 1, N'2.0', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (209, 1, N'3.0', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (210, 1, N'4.0', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (211, 2, N'da1', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (212, 2, N'da2', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (213, 2, N'HN', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (214, 2, N'dap3', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (215, 3, N'Answer 1 for MAD (Mean Absolute Deviation) question 1', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (216, 3, N'Answer 2 for MAD (Mean Absolute Deviation) question 1', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (217, 3, N'Answer 3 for MAD (Mean Absolute Deviation) question 1', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (218, 3, N'Answer 4 for MAD (Mean Absolute Deviation) question 1', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (219, 3, N'Answer 5 for MAD (Mean Absolute Deviation) question 1', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (220, 4, N'Answer 1 for MAD (Mean Absolute Deviation) question 2', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (221, 4, N'Answer 2 for MAD (Mean Absolute Deviation) question 2', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (222, 4, N'Answer 3 for MAD (Mean Absolute Deviation) question 2', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (223, 4, N'Answer 4 for MAD (Mean Absolute Deviation) question 2', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (224, 4, N'Answer 5 for MAD (Mean Absolute Deviation) question 2', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (225, 5, N'Answer 1 for MAD (Mean Absolute Deviation) question 3', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (226, 5, N'Answer 2 for MAD (Mean Absolute Deviation) question 3', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (227, 5, N'Answer 3 for MAD (Mean Absolute Deviation) question 3', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (228, 5, N'Answer 4 for MAD (Mean Absolute Deviation) question 3', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (229, 5, N'Answer 5 for MAD (Mean Absolute Deviation) question 3', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (230, 6, N'Answer 1 for MAD (Mean Absolute Deviation) question 4', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (231, 6, N'Answer 2 for MAD (Mean Absolute Deviation) question 4', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (232, 6, N'Answer 3 for MAD (Mean Absolute Deviation) question 4', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (233, 6, N'Answer 4 for MAD (Mean Absolute Deviation) question 4', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (234, 6, N'Answer 5 for MAD (Mean Absolute Deviation) question 4', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (235, 7, N'Answer 1 for MAD (Mean Absolute Deviation) question 5', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (236, 7, N'Answer 2 for MAD (Mean Absolute Deviation) question 5', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (237, 7, N'Answer 3 for MAD (Mean Absolute Deviation) question 5', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (238, 7, N'Answer 4 for MAD (Mean Absolute Deviation) question 5', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (239, 7, N'Answer 5 for MAD (Mean Absolute Deviation) question 5', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (240, 8, N'Answer 1 for MAD (Mean Absolute Deviation) question 6', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (241, 8, N'Answer 2 for MAD (Mean Absolute Deviation) question 6', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (242, 8, N'Answer 3 for MAD (Mean Absolute Deviation) question 6', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (243, 8, N'Answer 4 for MAD (Mean Absolute Deviation) question 6', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (244, 8, N'Answer 5 for MAD (Mean Absolute Deviation) question 6', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (245, 9, N'Answer 1 for MAD (Mean Absolute Deviation) question 7', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (246, 9, N'Answer 2 for MAD (Mean Absolute Deviation) question 7', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (247, 9, N'Answer 3 for MAD (Mean Absolute Deviation) question 7', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (248, 9, N'Answer 4 for MAD (Mean Absolute Deviation) question 7', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (249, 9, N'Answer 5 for MAD (Mean Absolute Deviation) question 7', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (250, 10, N'Answer 1 for MAD (Mean Absolute Deviation) question 8', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (251, 10, N'Answer 2 for MAD (Mean Absolute Deviation) question 8', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (252, 10, N'Answer 3 for MAD (Mean Absolute Deviation) question 8', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (253, 10, N'Answer 4 for MAD (Mean Absolute Deviation) question 8', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (254, 10, N'Answer 5 for MAD (Mean Absolute Deviation) question 8', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (255, 11, N'Answer 1 for MAD (Mean Absolute Deviation) question 9', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (256, 11, N'Answer 2 for MAD (Mean Absolute Deviation) question 9', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (257, 11, N'Answer 3 for MAD (Mean Absolute Deviation) question 9', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (258, 11, N'Answer 4 for MAD (Mean Absolute Deviation) question 9', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (259, 11, N'Answer 5 for MAD (Mean Absolute Deviation) question 9', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (260, 12, N'Answer 1 for MAD (Mean Absolute Deviation) question 10', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (261, 12, N'Answer 2 for MAD (Mean Absolute Deviation) question 10', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (262, 12, N'Answer 3 for MAD (Mean Absolute Deviation) question 10', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (263, 12, N'Answer 4 for MAD (Mean Absolute Deviation) question 10', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (264, 12, N'Answer 5 for MAD (Mean Absolute Deviation) question 10', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (265, 13, N'Answer 1 for CSI (Customer Satisfaction Index) question 1', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (266, 13, N'Answer 2 for CSI (Customer Satisfaction Index) question 1', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (267, 13, N'Answer 3 for CSI (Customer Satisfaction Index) question 1', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (268, 13, N'Answer 4 for CSI (Customer Satisfaction Index) question 1', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (269, 13, N'Answer 5 for CSI (Customer Satisfaction Index) question 1', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (270, 14, N'Answer 1 for CSI (Customer Satisfaction Index) question 2', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (271, 14, N'Answer 2 for CSI (Customer Satisfaction Index) question 2', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (272, 14, N'Answer 3 for CSI (Customer Satisfaction Index) question 2', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (273, 14, N'Answer 4 for CSI (Customer Satisfaction Index) question 2', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (274, 14, N'Answer 5 for CSI (Customer Satisfaction Index) question 2', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (275, 15, N'Answer 1 for CSI (Customer Satisfaction Index) question 3', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (276, 15, N'Answer 2 for CSI (Customer Satisfaction Index) question 3', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (277, 15, N'Answer 3 for CSI (Customer Satisfaction Index) question 3', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (278, 15, N'Answer 4 for CSI (Customer Satisfaction Index) question 3', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (279, 15, N'Answer 5 for CSI (Customer Satisfaction Index) question 3', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (280, 16, N'Answer 1 for CSI (Customer Satisfaction Index) question 4', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (281, 16, N'Answer 2 for CSI (Customer Satisfaction Index) question 4', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (282, 16, N'Answer 3 for CSI (Customer Satisfaction Index) question 4', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (283, 16, N'Answer 4 for CSI (Customer Satisfaction Index) question 4', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (284, 16, N'Answer 5 for CSI (Customer Satisfaction Index) question 4', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (285, 17, N'Answer 1 for CSI (Customer Satisfaction Index) question 5', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (286, 17, N'Answer 2 for CSI (Customer Satisfaction Index) question 5', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (287, 17, N'Answer 3 for CSI (Customer Satisfaction Index) question 5', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (288, 17, N'Answer 4 for CSI (Customer Satisfaction Index) question 5', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (289, 17, N'Answer 5 for CSI (Customer Satisfaction Index) question 5', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (290, 18, N'Answer 1 for CSI (Customer Satisfaction Index) question 6', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (291, 18, N'Answer 2 for CSI (Customer Satisfaction Index) question 6', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (292, 18, N'Answer 3 for CSI (Customer Satisfaction Index) question 6', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (293, 18, N'Answer 4 for CSI (Customer Satisfaction Index) question 6', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (294, 18, N'Answer 5 for CSI (Customer Satisfaction Index) question 6', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (295, 19, N'Answer 1 for CSI (Customer Satisfaction Index) question 7', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (296, 19, N'Answer 2 for CSI (Customer Satisfaction Index) question 7', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (297, 19, N'Answer 3 for CSI (Customer Satisfaction Index) question 7', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (298, 19, N'Answer 4 for CSI (Customer Satisfaction Index) question 7', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (299, 19, N'Answer 5 for CSI (Customer Satisfaction Index) question 7', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (300, 20, N'Answer 1 for CSI (Customer Satisfaction Index) question 8', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (301, 20, N'Answer 2 for CSI (Customer Satisfaction Index) question 8', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (302, 20, N'Answer 3 for CSI (Customer Satisfaction Index) question 8', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (303, 20, N'Answer 4 for CSI (Customer Satisfaction Index) question 8', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (304, 20, N'Answer 5 for CSI (Customer Satisfaction Index) question 8', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (305, 21, N'Answer 1 for CSI (Customer Satisfaction Index) question 9', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (306, 21, N'Answer 2 for CSI (Customer Satisfaction Index) question 9', 1)
GO
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (307, 21, N'Answer 3 for CSI (Customer Satisfaction Index) question 9', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (308, 21, N'Answer 4 for CSI (Customer Satisfaction Index) question 9', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (309, 21, N'Answer 5 for CSI (Customer Satisfaction Index) question 9', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (310, 22, N'Answer 1 for CSI (Customer Satisfaction Index) question 10', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (311, 22, N'Answer 2 for CSI (Customer Satisfaction Index) question 10', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (312, 22, N'Answer 3 for CSI (Customer Satisfaction Index) question 10', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (313, 22, N'Answer 4 for CSI (Customer Satisfaction Index) question 10', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (314, 22, N'Answer 5 for CSI (Customer Satisfaction Index) question 10', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (315, 23, N'Answer 1 for WED (Weekly Earnings Distribution) question 1', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (316, 23, N'Answer 2 for WED (Weekly Earnings Distribution) question 1', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (317, 23, N'Answer 3 for WED (Weekly Earnings Distribution) question 1', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (318, 23, N'Answer 4 for WED (Weekly Earnings Distribution) question 1', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (319, 23, N'Answer 5 for WED (Weekly Earnings Distribution) question 1', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (320, 24, N'Answer 1 for WED (Weekly Earnings Distribution) question 2', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (321, 24, N'Answer 2 for WED (Weekly Earnings Distribution) question 2', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (322, 24, N'Answer 3 for WED (Weekly Earnings Distribution) question 2', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (323, 24, N'Answer 4 for WED (Weekly Earnings Distribution) question 2', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (324, 24, N'Answer 5 for WED (Weekly Earnings Distribution) question 2', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (325, 25, N'Answer 1 for WED (Weekly Earnings Distribution) question 3', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (326, 25, N'Answer 2 for WED (Weekly Earnings Distribution) question 3', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (327, 25, N'Answer 3 for WED (Weekly Earnings Distribution) question 3', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (328, 25, N'Answer 4 for WED (Weekly Earnings Distribution) question 3', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (329, 25, N'Answer 5 for WED (Weekly Earnings Distribution) question 3', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (330, 26, N'Answer 1 for WED (Weekly Earnings Distribution) question 4', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (331, 26, N'Answer 2 for WED (Weekly Earnings Distribution) question 4', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (332, 26, N'Answer 3 for WED (Weekly Earnings Distribution) question 4', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (333, 26, N'Answer 4 for WED (Weekly Earnings Distribution) question 4', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (334, 26, N'Answer 5 for WED (Weekly Earnings Distribution) question 4', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (335, 27, N'Answer 1 for WED (Weekly Earnings Distribution) question 5', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (336, 27, N'Answer 2 for WED (Weekly Earnings Distribution) question 5', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (337, 27, N'Answer 3 for WED (Weekly Earnings Distribution) question 5', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (338, 27, N'Answer 4 for WED (Weekly Earnings Distribution) question 5', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (339, 27, N'Answer 5 for WED (Weekly Earnings Distribution) question 5', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (340, 28, N'Answer 1 for WED (Weekly Earnings Distribution) question 6', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (341, 28, N'Answer 2 for WED (Weekly Earnings Distribution) question 6', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (342, 28, N'Answer 3 for WED (Weekly Earnings Distribution) question 6', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (343, 28, N'Answer 4 for WED (Weekly Earnings Distribution) question 6', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (344, 28, N'Answer 5 for WED (Weekly Earnings Distribution) question 6', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (345, 29, N'Answer 1 for WED (Weekly Earnings Distribution) question 7', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (346, 29, N'Answer 2 for WED (Weekly Earnings Distribution) question 7', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (347, 29, N'Answer 3 for WED (Weekly Earnings Distribution) question 7', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (348, 29, N'Answer 4 for WED (Weekly Earnings Distribution) question 7', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (349, 29, N'Answer 5 for WED (Weekly Earnings Distribution) question 7', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (350, 30, N'Answer 1 for WED (Weekly Earnings Distribution) question 8', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (351, 30, N'Answer 2 for WED (Weekly Earnings Distribution) question 8', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (352, 30, N'Answer 3 for WED (Weekly Earnings Distribution) question 8', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (353, 30, N'Answer 4 for WED (Weekly Earnings Distribution) question 8', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (354, 30, N'Answer 5 for WED (Weekly Earnings Distribution) question 8', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (355, 31, N'Answer 1 for WED (Weekly Earnings Distribution) question 9', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (356, 31, N'Answer 2 for WED (Weekly Earnings Distribution) question 9', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (357, 31, N'Answer 3 for WED (Weekly Earnings Distribution) question 9', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (358, 31, N'Answer 4 for WED (Weekly Earnings Distribution) question 9', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (359, 31, N'Answer 5 for WED (Weekly Earnings Distribution) question 9', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (360, 32, N'Answer 1 for WED (Weekly Earnings Distribution) question 10', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (361, 32, N'Answer 2 for WED (Weekly Earnings Distribution) question 10', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (362, 32, N'Answer 3 for WED (Weekly Earnings Distribution) question 10', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (363, 32, N'Answer 4 for WED (Weekly Earnings Distribution) question 10', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (364, 32, N'Answer 5 for WED (Weekly Earnings Distribution) question 10', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (365, 33, N'Answer 1 for OSG (Open Study Group) question 1', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (366, 33, N'Answer 2 for OSG (Open Study Group) question 1', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (367, 33, N'Answer 3 for OSG (Open Study Group) question 1', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (368, 33, N'Answer 4 for OSG (Open Study Group) question 1', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (369, 33, N'Answer 5 for OSG (Open Study Group) question 1', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (370, 34, N'Answer 1 for OSG (Open Study Group) question 2', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (371, 34, N'Answer 2 for OSG (Open Study Group) question 2', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (372, 34, N'Answer 3 for OSG (Open Study Group) question 2', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (373, 34, N'Answer 4 for OSG (Open Study Group) question 2', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (374, 34, N'Answer 5 for OSG (Open Study Group) question 2', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (375, 35, N'Answer 1 for OSG (Open Study Group) question 3', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (376, 35, N'Answer 2 for OSG (Open Study Group) question 3', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (377, 35, N'Answer 3 for OSG (Open Study Group) question 3', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (378, 35, N'Answer 4 for OSG (Open Study Group) question 3', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (379, 35, N'Answer 5 for OSG (Open Study Group) question 3', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (380, 36, N'Answer 1 for OSG (Open Study Group) question 4', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (381, 36, N'Answer 2 for OSG (Open Study Group) question 4', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (382, 36, N'Answer 3 for OSG (Open Study Group) question 4', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (383, 36, N'Answer 4 for OSG (Open Study Group) question 4', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (384, 36, N'Answer 5 for OSG (Open Study Group) question 4', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (385, 37, N'Answer 1 for OSG (Open Study Group) question 5', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (386, 37, N'Answer 2 for OSG (Open Study Group) question 5', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (387, 37, N'Answer 3 for OSG (Open Study Group) question 5', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (388, 37, N'Answer 4 for OSG (Open Study Group) question 5', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (389, 37, N'Answer 5 for OSG (Open Study Group) question 5', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (390, 38, N'Answer 1 for OSG (Open Study Group) question 6', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (391, 38, N'Answer 2 for OSG (Open Study Group) question 6', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (392, 38, N'Answer 3 for OSG (Open Study Group) question 6', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (393, 38, N'Answer 4 for OSG (Open Study Group) question 6', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (394, 38, N'Answer 5 for OSG (Open Study Group) question 6', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (395, 39, N'Answer 1 for OSG (Open Study Group) question 7', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (396, 39, N'Answer 2 for OSG (Open Study Group) question 7', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (397, 39, N'Answer 3 for OSG (Open Study Group) question 7', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (398, 39, N'Answer 4 for OSG (Open Study Group) question 7', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (399, 39, N'Answer 5 for OSG (Open Study Group) question 7', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (400, 40, N'Answer 1 for OSG (Open Study Group) question 8', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (401, 40, N'Answer 2 for OSG (Open Study Group) question 8', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (402, 40, N'Answer 3 for OSG (Open Study Group) question 8', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (403, 40, N'Answer 4 for OSG (Open Study Group) question 8', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (404, 40, N'Answer 5 for OSG (Open Study Group) question 8', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (405, 41, N'Answer 1 for OSG (Open Study Group) question 9', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (406, 41, N'Answer 2 for OSG (Open Study Group) question 9', 1)
GO
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (407, 41, N'Answer 3 for OSG (Open Study Group) question 9', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (408, 41, N'Answer 4 for OSG (Open Study Group) question 9', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (409, 41, N'Answer 5 for OSG (Open Study Group) question 9', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (410, 42, N'Answer 1 for OSG (Open Study Group) question 10', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (411, 42, N'Answer 2 for OSG (Open Study Group) question 10', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (412, 42, N'Answer 3 for OSG (Open Study Group) question 10', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (413, 42, N'Answer 4 for OSG (Open Study Group) question 10', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (414, 42, N'Answer 5 for OSG (Open Study Group) question 10', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (415, 43, N'2.0', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (416, 43, N'3.0', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (417, 43, N'4.0', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (418, 44, N'da1', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (419, 44, N'da2', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (420, 44, N'HN', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (421, 44, N'dap3', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (422, 45, N'2.0', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (423, 45, N'3.0', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (424, 45, N'4.0', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (425, 46, N'da1', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (426, 46, N'da2', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (427, 46, N'HN', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerName], [IsCorrect]) VALUES (428, 46, N'dap3', 0)
SET IDENTITY_INSERT [dbo].[Answer] OFF
GO
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (1, 1, 1, N'Top 5 Strategies for Acing Your Quizzes', CAST(N'2024-02-15T00:00:00.000' AS DateTime), N'Learn the top 5 strategies to improve your quiz scores and ace every test.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (2, 1, 1, N'How to Effectively Manage Your Time During Quizzes', CAST(N'2024-02-20T00:00:00.000' AS DateTime), N'Discover time management techniques to help you finish quizzes on time without rushing.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (3, 1, 1, N'The Power of Practice Quizzes', CAST(N'2024-03-01T00:00:00.000' AS DateTime), N'Understand the benefits of taking practice quizzes and how they can enhance your learning.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (4, 1, 1, N'Analyzing Quiz Questions: What to Look For', CAST(N'2024-03-05T00:00:00.000' AS DateTime), N'Learn how to break down quiz questions to understand what is being asked and how to answer effectively.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (5, 1, 1, N'Using Elimination Methods to Improve Quiz Performance', CAST(N'2024-03-10T00:00:00.000' AS DateTime), N'Explore the process of eliminating incorrect answers to increase your chances of choosing the right one.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (6, 1, 1, N'Quiz Strategies for Different Learning Styles', CAST(N'2024-03-15T00:00:00.000' AS DateTime), N'Find out how to tailor quiz strategies to match your learning style for better results.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (7, 1, 1, N'Creating a Study Schedule for Quiz Preparation', CAST(N'2024-03-20T00:00:00.000' AS DateTime), N'Learn how to create a study schedule that optimizes your quiz preparation time.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (8, 1, 2, N'Effective Test Preparation Techniques', CAST(N'2024-03-25T00:00:00.000' AS DateTime), N'Master the most effective techniques for preparing for tests.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (9, 1, 2, N'The Importance of Sleep Before a Test', CAST(N'2024-03-30T00:00:00.000' AS DateTime), N'Discover why a good nights sleep is crucial before taking a test.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (10, 1, 2, N'Balancing Study Sessions with Breaks', CAST(N'2024-04-05T00:00:00.000' AS DateTime), N'Learn how to balance study sessions with breaks to maximize retention.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (11, 1, 2, N'Using Flashcards for Test Prep', CAST(N'2024-04-10T00:00:00.000' AS DateTime), N'Explore the benefits of using flashcards as a study tool for test preparation.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (12, 1, 2, N'Group Study vs. Solo Study: Pros and Cons', CAST(N'2024-04-15T00:00:00.000' AS DateTime), N'Weigh the pros and cons of group study versus solo study for test preparation.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (13, 1, 2, N'How to Create a Test Prep Plan', CAST(N'2024-04-20T00:00:00.000' AS DateTime), N'Learn how to create a comprehensive test preparation plan.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (14, 1, 3, N'Techniques to Reduce Exam Anxiety', CAST(N'2024-04-25T00:00:00.000' AS DateTime), N'Discover effective techniques to manage and reduce exam anxiety.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (15, 1, 3, N'How to Stay Calm During an Exam', CAST(N'2024-04-30T00:00:00.000' AS DateTime), N'Learn strategies to stay calm and focused during exams.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (16, 1, 3, N'The Role of Mindfulness in Exam Preparation', CAST(N'2024-05-05T00:00:00.000' AS DateTime), N'Understand how mindfulness practices can help in exam preparation.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (17, 1, 3, N'Breathing Exercises to Manage Exam Stress', CAST(N'2024-05-10T00:00:00.000' AS DateTime), N'Explore breathing exercises that can help reduce stress during exams.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (18, 1, 3, N'How to Overcome Negative Thoughts Before an Exam', CAST(N'2024-05-15T00:00:00.000' AS DateTime), N'Learn techniques to overcome negative thoughts and boost confidence before exams.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (19, 1, 3, N'Building a Positive Mindset for Exam Success', CAST(N'2024-05-20T00:00:00.000' AS DateTime), N'Discover ways to build a positive mindset for better exam performance.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (20, 1, 3, N'Nutrition Tips to Reduce Exam Stress', CAST(N'2024-05-25T00:00:00.000' AS DateTime), N'Learn how proper nutrition can help reduce stress and improve exam performance.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (21, 1, 4, N'Top 10 Popular Quiz Categories in 2024', CAST(N'2024-02-01T00:00:00.000' AS DateTime), N'Explore the top 10 quiz categories that are trending in 2024.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (22, 1, 4, N'Why General Knowledge Quizzes Are So Popular', CAST(N'2024-02-05T00:00:00.000' AS DateTime), N'Understand why general knowledge quizzes attract so many participants.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (23, 1, 4, N'The Rise of Pop Culture Quizzes', CAST(N'2024-02-10T00:00:00.000' AS DateTime), N'Discover the reasons behind the popularity of pop culture quizzes.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (24, 1, 4, N'History Quizzes: Fun and Educational', CAST(N'2024-02-15T00:00:00.000' AS DateTime), N'Learn why history quizzes are both fun and educational.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (25, 1, 4, N'Science Quizzes: Test Your Knowledge', CAST(N'2024-02-20T00:00:00.000' AS DateTime), N'Challenge your knowledge with engaging science quizzes.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (26, 1, 4, N'The Popularity of Literature Quizzes', CAST(N'2024-02-25T00:00:00.000' AS DateTime), N'Explore the reasons why literature quizzes are a hit among readers.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (27, 1, 4, N'Sports Quizzes: Are You a True Fan?', CAST(N'2024-03-01T00:00:00.000' AS DateTime), N'Test your sports knowledge with exciting sports quizzes.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (28, 1, 5, N'How I Aced My Exams Using These Tips', CAST(N'2024-01-05T00:00:00.000' AS DateTime), N'Read the success story of a student who aced their exams using our tips.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (29, 1, 5, N'From Failing to Passing: A Students Journey', CAST(N'2024-01-10T00:00:00.000' AS DateTime), N'Discover how a student turned their grades around with effective study strategies.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (30, 1, 5, N'Overcoming Exam Anxiety: A Personal Story', CAST(N'2024-01-15T00:00:00.000' AS DateTime), N'Read a personal story of overcoming exam anxiety and achieving success.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (31, 1, 5, N'Achieving Top Scores with Consistent Effort', CAST(N'2024-01-20T00:00:00.000' AS DateTime), N'Learn how consistent effort helped a student achieve top scores.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (32, 1, 5, N'Success Story: Using Quizzes for Better Learning', CAST(N'2024-01-25T00:00:00.000' AS DateTime), N'Find out how using quizzes as a learning tool led to academic success.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (33, 1, 5, N'The Power of a Positive Mindset in Exam Success', CAST(N'2024-01-30T00:00:00.000' AS DateTime), N'Discover the impact of a positive mindset on exam success through this story.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (34, 1, 5, N'From Struggling to Thriving: A Students Tale', CAST(N'2024-02-01T00:00:00.000' AS DateTime), N'Read about a students journey from struggling to thriving in their studies.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (35, 1, 6, N'5 Study Habits of Successful Students', CAST(N'2024-02-05T00:00:00.000' AS DateTime), N'Discover the study habits that successful students swear by.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (36, 1, 6, N'How to Stay Organized During the School Year', CAST(N'2024-02-10T00:00:00.000' AS DateTime), N'Learn tips and tricks to stay organized throughout the school year.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (37, 1, 6, N'Effective Note-Taking Strategies', CAST(N'2024-02-15T00:00:00.000' AS DateTime), N'Explore different note-taking strategies to enhance your learning.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (38, 1, 6, N'Maximizing Productivity: Tips for Students', CAST(N'2024-02-20T00:00:00.000' AS DateTime), N'Discover ways to maximize productivity and make the most of your study time.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (39, 1, 6, N'How to Avoid Procrastination', CAST(N'2024-02-25T00:00:00.000' AS DateTime), N'Learn techniques to avoid procrastination and stay on track with your studies.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (40, 1, 6, N'Balancing School and Extracurricular Activities', CAST(N'2024-03-01T00:00:00.000' AS DateTime), N'Find out how to balance school work with extracurricular activities effectively.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (41, 1, 6, N'Tips for Effective Group Study Sessions', CAST(N'2024-03-05T00:00:00.000' AS DateTime), N'Learn tips for making the most out of group study sessions.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (42, 1, 7, N'Introducing Our New Quiz Feature!', CAST(N'2024-03-10T00:00:00.000' AS DateTime), N'Discover the exciting new quiz feature weve just launched.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (43, 1, 7, N'New User Interface: A Fresh Look', CAST(N'2024-03-15T00:00:00.000' AS DateTime), N'Explore the changes in our new user interface designed for a better experience.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (44, 1, 7, N'Enhanced Performance Metrics for Your Quizzes', CAST(N'2024-03-20T00:00:00.000' AS DateTime), N'Learn about the enhanced performance metrics available for your quizzes.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (45, 1, 7, N'Customizable Quiz Themes Now Available', CAST(N'2024-03-25T00:00:00.000' AS DateTime), N'Discover how you can now customize quiz themes to match your preferences.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (46, 1, 7, N'New Language Support: Quiz in Your Language', CAST(N'2024-03-30T00:00:00.000' AS DateTime), N'Find out about the new languages weve added support for in our quizzes.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (47, 1, 7, N'Improved Accessibility Features', CAST(N'2024-04-05T00:00:00.000' AS DateTime), N'Learn about the improved accessibility features weve implemented.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (48, 1, 7, N'Introducing Quiz Leaderboards', CAST(N'2024-04-10T00:00:00.000' AS DateTime), N'Get competitive with our new quiz leaderboards feature.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (49, 1, 8, N'Latest Product Update: Whats New?', CAST(N'2024-04-15T00:00:00.000' AS DateTime), N'Find out whats new in our latest product update.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (50, 1, 8, N'Bug Fixes and Improvements', CAST(N'2024-04-20T00:00:00.000' AS DateTime), N'Learn about the latest bug fixes and performance improvements.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (51, 1, 8, N'New Features Added in the Latest Release', CAST(N'2024-04-25T00:00:00.000' AS DateTime), N'Discover the new features added in our latest product release.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (52, 1, 8, N'Upcoming Changes You Should Know About', CAST(N'2024-04-30T00:00:00.000' AS DateTime), N'Stay informed about the upcoming changes in our product.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (53, 1, 8, N'User Feedback: What Weve Improved', CAST(N'2024-05-05T00:00:00.000' AS DateTime), N'See how user feedback has shaped our recent improvements.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (54, 1, 8, N'Enhanced Security Features', CAST(N'2024-05-10T00:00:00.000' AS DateTime), N'Learn about the enhanced security features weve implemented.', N'')
INSERT [dbo].[Blog] ([BlogId], [UserId], [BlogCategoryId], [BlogTitle], [UpdatedTime], [PostBrief], [PostText]) VALUES (55, 1, 8, N'Faster Loading Times with Our Latest Update', CAST(N'2024-05-15T00:00:00.000' AS DateTime), N'Experience faster loading times with our latest update.', N'')
SET IDENTITY_INSERT [dbo].[Blog] OFF
GO
SET IDENTITY_INSERT [dbo].[BlogCategory] ON 

INSERT [dbo].[BlogCategory] ([BlogCategoryId], [BlogCategoryName]) VALUES (1, N'Quiz Strategies')
INSERT [dbo].[BlogCategory] ([BlogCategoryId], [BlogCategoryName]) VALUES (2, N'Test Preparation Tips')
INSERT [dbo].[BlogCategory] ([BlogCategoryId], [BlogCategoryName]) VALUES (3, N'Exam Anxiety Management')
INSERT [dbo].[BlogCategory] ([BlogCategoryId], [BlogCategoryName]) VALUES (4, N'Popular Quiz Categories')
INSERT [dbo].[BlogCategory] ([BlogCategoryId], [BlogCategoryName]) VALUES (5, N'Success Stories')
INSERT [dbo].[BlogCategory] ([BlogCategoryId], [BlogCategoryName]) VALUES (6, N'General Tips & Tricks')
INSERT [dbo].[BlogCategory] ([BlogCategoryId], [BlogCategoryName]) VALUES (7, N'New Feature Announcements')
INSERT [dbo].[BlogCategory] ([BlogCategoryId], [BlogCategoryName]) VALUES (8, N'Product Updates')
SET IDENTITY_INSERT [dbo].[BlogCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([GenderId], [GenderName]) VALUES (1, N'Male')
SET IDENTITY_INSERT [dbo].[Gender] OFF
GO
SET IDENTITY_INSERT [dbo].[Package] ON 

INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (1, 1, N'6 Month Premium', 6, 20, 5, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (2, 1, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (3, 1, N'3 Month Premium', 3, 10, 7, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (4, 2, N'6 Month Premium', 6, 20, 5, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (5, 2, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (6, 2, N'3 Month Premium', 3, 10, 7, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (7, 3, N'6 Month Premium', 6, 20, 5, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (8, 3, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (9, 3, N'3 Month Premium', 3, 10, 7, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (10, 4, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (11, 4, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (12, 4, N'3 Month Premium', 3, 10, 7, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (13, 5, N'6 Month Premium', 6, 20, 5, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (14, 5, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (15, 5, N'3 Month Premium', 3, 10, 7, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (16, 6, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (17, 6, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (18, 6, N'3 Month Premium', 3, 10, 7, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (19, 7, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (20, 7, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (21, 7, N'3 Month Premium', 3, 5, 3, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (22, 8, N'6 Month Premium', 6, 20, 5, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (23, 8, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (24, 8, N'3 Month Premium', 3, 5, 3, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (25, 9, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (26, 9, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (27, 9, N'3 Month Premium', 3, 5, 3, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (28, 10, N'6 Month Premium', 6, 20, 5, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (29, 10, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (30, 10, N'3 Month Premium', 3, 5, 3, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (31, 11, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (32, 11, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (33, 11, N'3 Month Premium', 3, 5, 3, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (34, 12, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (35, 12, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (36, 12, N'3 Month Premium', 3, 5, 3, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (37, 13, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (38, 13, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (39, 13, N'3 Month Premium', 3, 7, 4, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (40, 14, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (41, 14, N'9 Month Premium', 9, 30, 15, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (42, 14, N'3 Month Premium', 3, 7, 4, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (43, 15, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (44, 15, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (45, 15, N'3 Month Premium', 3, 7, 4, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (46, 16, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (47, 16, N'9 Month Premium', 9, 30, 15, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (48, 16, N'3 Month Premium', 3, 7, 4, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (49, 17, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (50, 17, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (51, 17, N'3 Month Premium', 3, 7, 4, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (52, 18, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (53, 18, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (54, 18, N'3 Month Premium', 3, 7, 4, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (55, 19, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (56, 19, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (57, 19, N'3 Month Premium', 3, 5, 3, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (58, 20, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (59, 20, N'9 Month Premium', 9, 30, 15, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (60, 20, N'3 Month Premium', 3, 5, 3, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (61, 21, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (62, 21, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (63, 21, N'3 Month Premium', 3, 5, 3, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (64, 22, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (65, 22, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (66, 22, N'3 Month Premium', 3, 5, 3, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (67, 23, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (68, 23, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (69, 23, N'3 Month Premium', 3, 5, 3, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (70, 24, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (71, 24, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (72, 24, N'3 Month Premium', 3, 5, 3, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (73, 25, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (74, 25, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (75, 25, N'3 Month Premium', 3, 5, 3, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (76, 26, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (77, 26, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (78, 26, N'3 Month Premium', 3, 5, 3, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (79, 27, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (80, 27, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (81, 27, N'3 Month Premium', 3, 5, 3, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (82, 28, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (83, 28, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (84, 28, N'3 Month Premium', 3, 5, 3, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (85, 29, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (86, 29, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (87, 29, N'3 Month Premium', 3, 5, 3, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (88, 30, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (89, 30, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (90, 30, N'3 Month Premium', 3, 15, 14, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (91, 31, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (92, 31, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (93, 31, N'3 Month Premium', 3, 15, 14, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (94, 32, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (95, 32, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (96, 32, N'3 Month Premium', 3, 15, 14, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (97, 33, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (98, 33, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (99, 33, N'3 Month Premium', 3, 15, 14, 1)
GO
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (100, 34, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (101, 34, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (102, 34, N'3 Month Premium', 3, 15, 14, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (103, 35, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (104, 35, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (105, 35, N'3 Month Premium', 3, 15, 14, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (106, 36, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (107, 36, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (108, 36, N'3 Month Premium', 3, 15, 14, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (109, 37, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (110, 37, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (111, 37, N'3 Month Premium', 3, 15, 14, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (112, 38, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (113, 38, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (114, 38, N'3 Month Premium', 3, 5, 3, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (115, 39, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (116, 39, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (117, 39, N'3 Month Premium', 3, 5, 3, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (118, 40, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (119, 40, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (120, 40, N'3 Month Premium', 3, 5, 3, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (121, 41, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (122, 41, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (123, 41, N'3 Month Premium', 3, 5, 3, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (124, 42, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (125, 42, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (126, 42, N'3 Month Premium', 3, 5, 3, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (127, 43, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (128, 43, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (129, 43, N'3 Month Premium', 3, 5, 3, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (130, 44, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (131, 44, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (132, 44, N'3 Month Premium', 3, 5, 3, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (133, 45, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (134, 45, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (135, 45, N'3 Month Premium', 3, 5, 3, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (136, 46, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (137, 46, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (138, 46, N'3 Month Premium', 3, 5, 3, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (139, 47, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (140, 47, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (141, 47, N'3 Month Premium', 3, 5, 3, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (142, 48, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (143, 48, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (144, 48, N'3 Month Premium', 3, 5, 3, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (145, 49, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (146, 49, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (147, 49, N'3 Month Premium', 3, 5, 3, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (148, 50, N'6 Month Premium', 6, 20, 18, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (149, 50, N'9 Month Premium', 9, 30, 27, 1)
INSERT [dbo].[Package] ([PackageId], [SubjectId], [PackageName], [PackageDuration], [ListPrice], [SalePrice], [Status]) VALUES (150, 50, N'3 Month Premium', 3, 5, 3, 1)
SET IDENTITY_INSERT [dbo].[Package] OFF
GO
SET IDENTITY_INSERT [dbo].[Question] ON 

INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (1, N' 1+1=?', N'plus', 1, 1, 1, 0)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (2, N'thu do VN', N'country', 1, 1, 2, 0)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (3, N'MAD (Mean Absolute Deviation) Question 1', N'Explanation for MAD (Mean Absolute Deviation) question 1', 2, 1, 1, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (4, N'MAD (Mean Absolute Deviation) Question 2', N'Explanation for MAD (Mean Absolute Deviation) question 2', 1, 1, 1, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (5, N'MAD (Mean Absolute Deviation) Question 3', N'Explanation for MAD (Mean Absolute Deviation) question 3', 3, 1, 2, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (6, N'MAD (Mean Absolute Deviation) Question 4', N'Explanation for MAD (Mean Absolute Deviation) question 4', 3, 1, 2, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (7, N'MAD (Mean Absolute Deviation) Question 5', N'Explanation for MAD (Mean Absolute Deviation) question 5', 2, 1, 3, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (8, N'MAD (Mean Absolute Deviation) Question 6', N'Explanation for MAD (Mean Absolute Deviation) question 6', 2, 1, 3, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (9, N'MAD (Mean Absolute Deviation) Question 7', N'Explanation for MAD (Mean Absolute Deviation) question 7', 3, 1, 4, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (10, N'MAD (Mean Absolute Deviation) Question 8', N'Explanation for MAD (Mean Absolute Deviation) question 8', 3, 1, 4, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (11, N'MAD (Mean Absolute Deviation) Question 9', N'Explanation for MAD (Mean Absolute Deviation) question 9', 2, 1, 5, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (12, N'MAD (Mean Absolute Deviation) Question 10', N'Explanation for MAD (Mean Absolute Deviation) question 10', 2, 1, 5, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (13, N'CSI (Customer Satisfaction Index) Question 1', N'Explanation for CSI (Customer Satisfaction Index) question 1', 1, 2, 6, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (14, N'CSI (Customer Satisfaction Index) Question 2', N'Explanation for CSI (Customer Satisfaction Index) question 2', 3, 2, 6, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (15, N'CSI (Customer Satisfaction Index) Question 3', N'Explanation for CSI (Customer Satisfaction Index) question 3', 1, 2, 7, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (16, N'CSI (Customer Satisfaction Index) Question 4', N'Explanation for CSI (Customer Satisfaction Index) question 4', 1, 2, 7, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (17, N'CSI (Customer Satisfaction Index) Question 5', N'Explanation for CSI (Customer Satisfaction Index) question 5', 1, 2, 8, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (18, N'CSI (Customer Satisfaction Index) Question 6', N'Explanation for CSI (Customer Satisfaction Index) question 6', 3, 2, 8, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (19, N'CSI (Customer Satisfaction Index) Question 7', N'Explanation for CSI (Customer Satisfaction Index) question 7', 3, 2, 9, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (20, N'CSI (Customer Satisfaction Index) Question 8', N'Explanation for CSI (Customer Satisfaction Index) question 8', 3, 2, 9, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (21, N'CSI (Customer Satisfaction Index) Question 9', N'Explanation for CSI (Customer Satisfaction Index) question 9', 2, 2, 10, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (22, N'CSI (Customer Satisfaction Index) Question 10', N'Explanation for CSI (Customer Satisfaction Index) question 10', 3, 2, 10, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (23, N'WED (Weekly Earnings Distribution) Question 1', N'Explanation for WED (Weekly Earnings Distribution) question 1', 2, 3, 11, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (24, N'WED (Weekly Earnings Distribution) Question 2', N'Explanation for WED (Weekly Earnings Distribution) question 2', 3, 3, 11, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (25, N'WED (Weekly Earnings Distribution) Question 3', N'Explanation for WED (Weekly Earnings Distribution) question 3', 3, 3, 12, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (26, N'WED (Weekly Earnings Distribution) Question 4', N'Explanation for WED (Weekly Earnings Distribution) question 4', 1, 3, 12, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (27, N'WED (Weekly Earnings Distribution) Question 5', N'Explanation for WED (Weekly Earnings Distribution) question 5', 3, 3, 13, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (28, N'WED (Weekly Earnings Distribution) Question 6', N'Explanation for WED (Weekly Earnings Distribution) question 6', 3, 3, 13, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (29, N'WED (Weekly Earnings Distribution) Question 7', N'Explanation for WED (Weekly Earnings Distribution) question 7', 3, 3, 14, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (30, N'WED (Weekly Earnings Distribution) Question 8', N'Explanation for WED (Weekly Earnings Distribution) question 8', 2, 3, 14, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (31, N'WED (Weekly Earnings Distribution) Question 9', N'Explanation for WED (Weekly Earnings Distribution) question 9', 2, 3, 15, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (32, N'WED (Weekly Earnings Distribution) Question 10', N'Explanation for WED (Weekly Earnings Distribution) question 10', 1, 3, 15, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (33, N'OSG (Open Study Group) Question 1', N'Explanation for OSG (Open Study Group) question 1', 3, 4, 16, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (34, N'OSG (Open Study Group) Question 2', N'Explanation for OSG (Open Study Group) question 2', 3, 4, 16, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (35, N'OSG (Open Study Group) Question 3', N'Explanation for OSG (Open Study Group) question 3', 1, 4, 17, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (36, N'OSG (Open Study Group) Question 4', N'Explanation for OSG (Open Study Group) question 4', 2, 4, 17, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (37, N'OSG (Open Study Group) Question 5', N'Explanation for OSG (Open Study Group) question 5', 1, 4, 18, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (38, N'OSG (Open Study Group) Question 6', N'Explanation for OSG (Open Study Group) question 6', 3, 4, 18, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (39, N'OSG (Open Study Group) Question 7', N'Explanation for OSG (Open Study Group) question 7', 3, 4, 19, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (40, N'OSG (Open Study Group) Question 8', N'Explanation for OSG (Open Study Group) question 8', 1, 4, 19, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (41, N'OSG (Open Study Group) Question 9', N'Explanation for OSG (Open Study Group) question 9', 1, 4, 20, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (42, N'OSG (Open Study Group) Question 10', N'Explanation for OSG (Open Study Group) question 10', 2, 4, 20, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (43, N' 1+1=?', N'plus', 1, 1, 1, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (44, N'thu do VN', N'country', 1, 1, 2, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (45, N' 1+1=?', N'plus', 1, 1, 1, 1)
INSERT [dbo].[Question] ([QuestionID], [QuestionText], [Explanation], [Level], [SubjectID], [LessonID], [Status]) VALUES (46, N'thu do VN', N'country', 1, 1, 2, 1)
SET IDENTITY_INSERT [dbo].[Question] OFF
GO
SET IDENTITY_INSERT [dbo].[Registration] ON 

INSERT [dbo].[Registration] ([RegistrationId], [UserId], [RegistrationTime], [PackageId], [RegistrationStatusId], [ValidFrom], [ValidTo], [TransactionContent], [TransactionCode], [TransactionAccount]) VALUES (1, 1, CAST(N'2024-05-01' AS Date), 3, 3, CAST(N'2024-05-10' AS Date), CAST(N'2024-08-10' AS Date), N'abc', N'abc', N'abc')
INSERT [dbo].[Registration] ([RegistrationId], [UserId], [RegistrationTime], [PackageId], [RegistrationStatusId], [ValidFrom], [ValidTo], [TransactionContent], [TransactionCode], [TransactionAccount]) VALUES (2, 1, NULL, 7, 1, NULL, NULL, N'abc', N'abc', N'abc')
INSERT [dbo].[Registration] ([RegistrationId], [UserId], [RegistrationTime], [PackageId], [RegistrationStatusId], [ValidFrom], [ValidTo], [TransactionContent], [TransactionCode], [TransactionAccount]) VALUES (3, 1, CAST(N'2024-05-01' AS Date), 5, 2, NULL, NULL, N'abc', N'abc', N'abc')
INSERT [dbo].[Registration] ([RegistrationId], [UserId], [RegistrationTime], [PackageId], [RegistrationStatusId], [ValidFrom], [ValidTo], [TransactionContent], [TransactionCode], [TransactionAccount]) VALUES (4, 1, NULL, 10, 1, NULL, NULL, N'abc', N'abc', N'abc')
INSERT [dbo].[Registration] ([RegistrationId], [UserId], [RegistrationTime], [PackageId], [RegistrationStatusId], [ValidFrom], [ValidTo], [TransactionContent], [TransactionCode], [TransactionAccount]) VALUES (5, 1, CAST(N'2004-09-01' AS Date), 15, 4, CAST(N'2004-09-10' AS Date), CAST(N'2004-12-10' AS Date), N'abc', N'abc', N'abc')
INSERT [dbo].[Registration] ([RegistrationId], [UserId], [RegistrationTime], [PackageId], [RegistrationStatusId], [ValidFrom], [ValidTo], [TransactionContent], [TransactionCode], [TransactionAccount]) VALUES (6, 1, CAST(N'2004-09-01' AS Date), 17, 5, CAST(N'2004-09-10' AS Date), CAST(N'2004-12-10' AS Date), N'abc', N'abc', N'abc')
INSERT [dbo].[Registration] ([RegistrationId], [UserId], [RegistrationTime], [PackageId], [RegistrationStatusId], [ValidFrom], [ValidTo], [TransactionContent], [TransactionCode], [TransactionAccount]) VALUES (7, 1, NULL, 20, 1, NULL, NULL, N'abc', N'abc', N'abc')
INSERT [dbo].[Registration] ([RegistrationId], [UserId], [RegistrationTime], [PackageId], [RegistrationStatusId], [ValidFrom], [ValidTo], [TransactionContent], [TransactionCode], [TransactionAccount]) VALUES (8, 1, CAST(N'2024-05-01' AS Date), 22, 2, NULL, NULL, N'abc', N'abc', N'abc')
INSERT [dbo].[Registration] ([RegistrationId], [UserId], [RegistrationTime], [PackageId], [RegistrationStatusId], [ValidFrom], [ValidTo], [TransactionContent], [TransactionCode], [TransactionAccount]) VALUES (9, 1, CAST(N'2004-09-01' AS Date), 25, 5, CAST(N'2004-09-10' AS Date), CAST(N'2004-12-10' AS Date), N'abc', N'abc', N'abc')
INSERT [dbo].[Registration] ([RegistrationId], [UserId], [RegistrationTime], [PackageId], [RegistrationStatusId], [ValidFrom], [ValidTo], [TransactionContent], [TransactionCode], [TransactionAccount]) VALUES (10, 1, CAST(N'2024-05-01' AS Date), 29, 2, NULL, NULL, N'abc', N'abc', N'abc')
INSERT [dbo].[Registration] ([RegistrationId], [UserId], [RegistrationTime], [PackageId], [RegistrationStatusId], [ValidFrom], [ValidTo], [TransactionContent], [TransactionCode], [TransactionAccount]) VALUES (11, 1, CAST(N'2024-05-01' AS Date), 33, 2, NULL, NULL, N'abc', N'abc', N'abc')
INSERT [dbo].[Registration] ([RegistrationId], [UserId], [RegistrationTime], [PackageId], [RegistrationStatusId], [ValidFrom], [ValidTo], [TransactionContent], [TransactionCode], [TransactionAccount]) VALUES (12, 1, NULL, 35, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Registration] ([RegistrationId], [UserId], [RegistrationTime], [PackageId], [RegistrationStatusId], [ValidFrom], [ValidTo], [TransactionContent], [TransactionCode], [TransactionAccount]) VALUES (13, 1, CAST(N'2024-05-01' AS Date), 37, 3, CAST(N'2024-05-10' AS Date), CAST(N'2024-08-10' AS Date), N'abc', N'abc', N'abc')
SET IDENTITY_INSERT [dbo].[Registration] OFF
GO
SET IDENTITY_INSERT [dbo].[RegistrationStatus] ON 

INSERT [dbo].[RegistrationStatus] ([RegistrationStatusId], [RegistrationStatusName]) VALUES (1, N'Submitted')
INSERT [dbo].[RegistrationStatus] ([RegistrationStatusId], [RegistrationStatusName]) VALUES (2, N'Pending Approval')
INSERT [dbo].[RegistrationStatus] ([RegistrationStatusId], [RegistrationStatusName]) VALUES (3, N'Active')
INSERT [dbo].[RegistrationStatus] ([RegistrationStatusId], [RegistrationStatusName]) VALUES (4, N'Withdrawn')
INSERT [dbo].[RegistrationStatus] ([RegistrationStatusId], [RegistrationStatusName]) VALUES (5, N'Inactive')
SET IDENTITY_INSERT [dbo].[RegistrationStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (1, N'Customer')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Subject] ON 

INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (1, N'College Algebra with the Math Sorcerer', 7, 1, 1, CAST(N'2004-05-01' AS Date), CAST(N'2004-05-01' AS Date), N'nice', N'https://thumbs.comidoc.net/750/webp/2463616_13ef_3.webp')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (2, N'Become an Algebra Master', 7, 1, 1, CAST(N'2004-05-01' AS Date), CAST(N'2004-05-01' AS Date), N'nice', N'https://www.tangolearn.com/wp-content/uploads/2022/03/best-online-algebra-courses-1.jpg')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (3, N'US / United States History', 33, 1, 0, CAST(N'2004-05-01' AS Date), CAST(N'2004-05-01' AS Date), N'nice', N'https://higheredprofessor.com/wp-content/uploads/2015/05/How-many-courses-do-university-faculty-teach1.jpg')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (4, N'C Fundamental', 29, 1, 1, CAST(N'2004-05-01' AS Date), CAST(N'2004-05-01' AS Date), N'nice', N'https://www.bostontechmom.com/wp-content/uploads/2019/03/Computer-Science-Class.jpg')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (5, N'The Geography of Globalization', 34, 1, 1, CAST(N'2004-05-01' AS Date), CAST(N'2004-05-01' AS Date), N'nice', N'https://img77.uenicdn.com/image/upload/v1654265992/business/93f45720-1374-4925-8f1a-c50dd53034f4.jpg')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (6, N'Pointers & Advanced C Language', 29, 1, 1, CAST(N'2004-05-01' AS Date), CAST(N'2004-05-01' AS Date), N'nice', N'https://i.ytimg.com/vi/0zuolvgpAaY/maxresdefault.jpg')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (7, N'Geometry Basics to Advanced', 8, 1, 1, CAST(N'2004-05-01' AS Date), CAST(N'2004-05-01' AS Date), N'nice', N'https://www.venturelessons.com/wp-content/uploads/2020/09/geometry-1128x635.jpg')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (8, N'Probability and Statistics', 9, 1, 1, CAST(N'2004-05-01' AS Date), CAST(N'2004-05-01' AS Date), N'nice', N'https://cdn01.alison-static.net/courses/1818/alison_courseware_intro_1818.jpg')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (9, N'Linear Algebra', 10, 1, 1, CAST(N'2004-05-01' AS Date), CAST(N'2004-05-01' AS Date), N'nice', N'https://i.ytimg.com/vi/bHwB0icYErw/maxresdefault.jpg')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (10, N'React 18 Course 2024 - Learn React JS', 23, 1, 1, CAST(N'2004-05-01' AS Date), CAST(N'2004-05-01' AS Date), N'nice', N'https://i.ytimg.com/vi/CXa0f4-dWi4/maxresdefault.jpg')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (11, N'Spring Boot 3, Spring 6 & Hibernate', 24, 1, 0, CAST(N'2004-05-01' AS Date), CAST(N'2004-05-01' AS Date), N'nice', N'https://crunchify.com/wp-content/uploads/2018/04/Spring-Boot-Tutorial-by-Crunchify-LLC.jpg')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (12, N'Learn JAVA Programming', 27, 1, 0, CAST(N'2004-05-01' AS Date), CAST(N'2004-05-01' AS Date), N'nice', N'https://i.ytimg.com/vi/ZYwHJ1LiKZY/maxresdefault.jpg')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (13, N'The Complete Python Bootcamp', 28, 1, 0, CAST(N'2004-05-01' AS Date), CAST(N'2004-05-01' AS Date), N'nice', N'https://i.ytimg.com/vi/wHXWMChMVds/maxresdefault.jpg')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (14, N'New Subject', 28, 1, 0, CAST(N'2024-06-07' AS Date), CAST(N'2024-06-07' AS Date), N'This is nice', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (15, N'New Subject', 29, 1, 0, CAST(N'2024-06-06' AS Date), CAST(N'2024-06-07' AS Date), N'This is awsome', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (16, N'New Subject', 30, 1, 0, CAST(N'2024-06-05' AS Date), CAST(N'2024-06-07' AS Date), N'This is incredible', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (17, N'New Subject', 9, 1, 0, CAST(N'2024-06-04' AS Date), CAST(N'2024-06-07' AS Date), N'This is amazing', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (18, N'iWork', 24, 1, 0, CAST(N'2023-08-21' AS Date), CAST(N'2024-04-24' AS Date), N'target plug-and-play e-tailers', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (19, N'Customer Relationships', 24, 1, 0, CAST(N'2024-06-07' AS Date), CAST(N'2024-06-07' AS Date), N'visualize robust niches', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (20, N'iSCSI', 23, 1, 0, CAST(N'2023-07-10' AS Date), CAST(N'2024-05-29' AS Date), N'redefine e-markets', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (21, N'EOI', 24, 1, 0, CAST(N'2023-09-03' AS Date), CAST(N'2024-04-02' AS Date), N'utilize killer web services', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (22, N'Sports Marketing', 25, 1, 0, CAST(N'2023-06-26' AS Date), CAST(N'2023-06-23' AS Date), N'redefine sticky vortals', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (23, N'SAP EWM', 28, 1, 0, CAST(N'2023-06-18' AS Date), CAST(N'2023-07-06' AS Date), N'aggregate communities', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (24, N'FPGA prototyping', 33, 1, 0, CAST(N'2024-02-15' AS Date), CAST(N'2023-11-08' AS Date), N'matrix action-items', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (25, N'DNS Administration', 8, 1, 0, CAST(N'2023-08-30' AS Date), CAST(N'2023-08-20' AS Date), N'incubate wireless markets', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (26, N'BMI', 9, 1, 0, CAST(N'2024-04-27' AS Date), CAST(N'2024-04-07' AS Date), N'empower e-services', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (27, N'DDI Certified', 30, 1, 0, CAST(N'2023-06-24' AS Date), CAST(N'2023-12-23' AS Date), N'envisioneer 24/7 niches', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (28, N'GIS Modeling', 27, 1, 0, CAST(N'2024-05-03' AS Date), CAST(N'2024-05-31' AS Date), N'incubate granular solutions', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (29, N'XSS', 28, 1, 0, CAST(N'2024-04-09' AS Date), CAST(N'2023-09-21' AS Date), N'target experiences', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (30, N'VAT', 27, 1, 0, CAST(N'2023-09-20' AS Date), CAST(N'2024-05-15' AS Date), N'grow infomediaries', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (31, N'QNXT', 28, 1, 0, CAST(N'2023-09-30' AS Date), CAST(N'2023-09-15' AS Date), N'productize action-items', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (32, N'EEOC', 23, 1, 0, CAST(N'2023-08-01' AS Date), CAST(N'2024-04-22' AS Date), N'reinvent e-tailers', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (33, N'Packaging', 30, 1, 0, CAST(N'2024-03-12' AS Date), CAST(N'2024-04-20' AS Date), N'monetize interfaces', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (34, N'Medical Equipment', 33, 1, 0, CAST(N'2023-06-21' AS Date), CAST(N'2024-04-05' AS Date), N'embrace infrastructures', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (35, N'CTIOS', 29, 1, 0, CAST(N'2023-09-03' AS Date), CAST(N'2024-05-26' AS Date), N'optimize metrics', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (36, N'Therapists', 26, 1, 0, CAST(N'2023-09-05' AS Date), CAST(N'2024-01-12' AS Date), N'whiteboard architectures', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (37, N'PVM', 24, 1, 0, CAST(N'2024-05-10' AS Date), CAST(N'2023-06-21' AS Date), N'innovatevconvergence', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (38, N'ECDL Certification', 23, 1, 0, CAST(N'2024-01-09' AS Date), CAST(N'2023-11-19' AS Date), N'integrate viral e-markets', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (39, N'Evidence', 25, 1, 0, CAST(N'2023-11-08' AS Date), CAST(N'2024-04-18' AS Date), N'grow infomediaries', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (40, N'HBase', 23, 1, 0, CAST(N'2023-08-29' AS Date), CAST(N'2023-10-08' AS Date), N'matrix ynergies', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (41, N'Subversion', 24, 1, 0, CAST(N'2024-01-15' AS Date), CAST(N'2023-07-02' AS Date), N'repurpose eyeballs', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (42, N'FCE', 25, 1, 0, CAST(N'2024-03-05' AS Date), CAST(N'2024-05-21' AS Date), N'cultivate supply-chains', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (43, N'Design Patterns', 26, 1, 0, CAST(N'2024-01-19' AS Date), CAST(N'2024-04-20' AS Date), N'innovate scalable content', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (44, N'AutoCAD Civil 3D', 27, 1, 0, CAST(N'2023-11-22' AS Date), CAST(N'2024-06-05' AS Date), N'morph world-class systems', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (45, N'Front-end', 28, 1, 0, CAST(N'2023-06-17' AS Date), CAST(N'2023-12-19' AS Date), N'synthesize models', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (46, N'HP Blade', 29, 1, 0, CAST(N'2023-11-24' AS Date), CAST(N'2024-04-04' AS Date), N'reintermediate web-readiness', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (47, N'NCover', 30, 1, 0, CAST(N'2024-05-24' AS Date), CAST(N'2024-05-17' AS Date), N'utilize robust convergence', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (48, N'FMA', 29, 1, 0, CAST(N'2024-02-21' AS Date), CAST(N'2023-12-20' AS Date), N'utilize user-centric e-markets', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (49, N'CQ5', 30, 1, 0, CAST(N'2024-04-21' AS Date), CAST(N'2024-03-25' AS Date), N'repurpose e-markets', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
INSERT [dbo].[Subject] ([SubjectId], [SubjectTitle], [SubjectCategoryId], [SubjectStatus], [IsFeaturedSubject], [SubjectCreatedDate], [SubjectUpdatedDate], [SubjectTagLine], [SubjectThumbnail]) VALUES (50, N'Euphonium', 33, 1, 0, CAST(N'2024-02-10' AS Date), CAST(N'2024-02-10' AS Date), N'transform interactive deliverables', N'https://leverageedu.com/blog/wp-content/uploads/2019/11/Science-Stream-Subjects.png')
SET IDENTITY_INSERT [dbo].[Subject] OFF
GO
SET IDENTITY_INSERT [dbo].[SubjectCategory] ON 

INSERT [dbo].[SubjectCategory] ([SubjectCategoryId], [SubjectCategoryName], [SubjectParentCategory]) VALUES (1, N'Natural Science', 0)
INSERT [dbo].[SubjectCategory] ([SubjectCategoryId], [SubjectCategoryName], [SubjectParentCategory]) VALUES (2, N'Social Science', 0)
INSERT [dbo].[SubjectCategory] ([SubjectCategoryId], [SubjectCategoryName], [SubjectParentCategory]) VALUES (3, N'Technology & IT', 0)
INSERT [dbo].[SubjectCategory] ([SubjectCategoryId], [SubjectCategoryName], [SubjectParentCategory]) VALUES (4, N'Mathematics', 1)
INSERT [dbo].[SubjectCategory] ([SubjectCategoryId], [SubjectCategoryName], [SubjectParentCategory]) VALUES (5, N'Chemistry', 1)
INSERT [dbo].[SubjectCategory] ([SubjectCategoryId], [SubjectCategoryName], [SubjectParentCategory]) VALUES (6, N'Physics', 1)
INSERT [dbo].[SubjectCategory] ([SubjectCategoryId], [SubjectCategoryName], [SubjectParentCategory]) VALUES (7, N'Algebra', 4)
INSERT [dbo].[SubjectCategory] ([SubjectCategoryId], [SubjectCategoryName], [SubjectParentCategory]) VALUES (8, N'Geometry', 4)
INSERT [dbo].[SubjectCategory] ([SubjectCategoryId], [SubjectCategoryName], [SubjectParentCategory]) VALUES (9, N'Probability and Statistics', 4)
INSERT [dbo].[SubjectCategory] ([SubjectCategoryId], [SubjectCategoryName], [SubjectParentCategory]) VALUES (10, N'Linear Algebra', 4)
INSERT [dbo].[SubjectCategory] ([SubjectCategoryId], [SubjectCategoryName], [SubjectParentCategory]) VALUES (11, N'Organic Chemistry', 5)
INSERT [dbo].[SubjectCategory] ([SubjectCategoryId], [SubjectCategoryName], [SubjectParentCategory]) VALUES (12, N'Inorganic Chemistry', 5)
INSERT [dbo].[SubjectCategory] ([SubjectCategoryId], [SubjectCategoryName], [SubjectParentCategory]) VALUES (13, N'Biochemistry', 5)
INSERT [dbo].[SubjectCategory] ([SubjectCategoryId], [SubjectCategoryName], [SubjectParentCategory]) VALUES (14, N'Physical Chemistry', 5)
INSERT [dbo].[SubjectCategory] ([SubjectCategoryId], [SubjectCategoryName], [SubjectParentCategory]) VALUES (15, N'Quantum Mechanics', 6)
INSERT [dbo].[SubjectCategory] ([SubjectCategoryId], [SubjectCategoryName], [SubjectParentCategory]) VALUES (16, N'Electromagnetism', 6)
INSERT [dbo].[SubjectCategory] ([SubjectCategoryId], [SubjectCategoryName], [SubjectParentCategory]) VALUES (17, N'Nuclear Physics', 6)
INSERT [dbo].[SubjectCategory] ([SubjectCategoryId], [SubjectCategoryName], [SubjectParentCategory]) VALUES (18, N'Optics', 6)
INSERT [dbo].[SubjectCategory] ([SubjectCategoryId], [SubjectCategoryName], [SubjectParentCategory]) VALUES (19, N'Programming & Development', 3)
INSERT [dbo].[SubjectCategory] ([SubjectCategoryId], [SubjectCategoryName], [SubjectParentCategory]) VALUES (20, N'Data Science & Analytics', 3)
INSERT [dbo].[SubjectCategory] ([SubjectCategoryId], [SubjectCategoryName], [SubjectParentCategory]) VALUES (21, N'Cybersecurity', 3)
INSERT [dbo].[SubjectCategory] ([SubjectCategoryId], [SubjectCategoryName], [SubjectParentCategory]) VALUES (22, N'Web Design & Development', 3)
INSERT [dbo].[SubjectCategory] ([SubjectCategoryId], [SubjectCategoryName], [SubjectParentCategory]) VALUES (23, N'Front-End Development', 22)
INSERT [dbo].[SubjectCategory] ([SubjectCategoryId], [SubjectCategoryName], [SubjectParentCategory]) VALUES (24, N'Back-End Development', 22)
INSERT [dbo].[SubjectCategory] ([SubjectCategoryId], [SubjectCategoryName], [SubjectParentCategory]) VALUES (25, N'Full-Stack Development', 22)
INSERT [dbo].[SubjectCategory] ([SubjectCategoryId], [SubjectCategoryName], [SubjectParentCategory]) VALUES (26, N'UX Design', 22)
INSERT [dbo].[SubjectCategory] ([SubjectCategoryId], [SubjectCategoryName], [SubjectParentCategory]) VALUES (27, N'Java', 19)
INSERT [dbo].[SubjectCategory] ([SubjectCategoryId], [SubjectCategoryName], [SubjectParentCategory]) VALUES (28, N'Python', 19)
INSERT [dbo].[SubjectCategory] ([SubjectCategoryId], [SubjectCategoryName], [SubjectParentCategory]) VALUES (29, N'C', 19)
INSERT [dbo].[SubjectCategory] ([SubjectCategoryId], [SubjectCategoryName], [SubjectParentCategory]) VALUES (30, N'C#', 19)
INSERT [dbo].[SubjectCategory] ([SubjectCategoryId], [SubjectCategoryName], [SubjectParentCategory]) VALUES (31, N'History', 2)
INSERT [dbo].[SubjectCategory] ([SubjectCategoryId], [SubjectCategoryName], [SubjectParentCategory]) VALUES (32, N'Geography', 2)
INSERT [dbo].[SubjectCategory] ([SubjectCategoryId], [SubjectCategoryName], [SubjectParentCategory]) VALUES (33, N'World History', 31)
INSERT [dbo].[SubjectCategory] ([SubjectCategoryId], [SubjectCategoryName], [SubjectParentCategory]) VALUES (34, N'Development Geography', 32)
SET IDENTITY_INSERT [dbo].[SubjectCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserId], [Email], [Password], [RoleId], [FullName], [GenderId], [Mobile], [IsActive]) VALUES (1, N'ngocdbhe182383@fpt.edu.vn', N'123', 1, N'ngoc', 1, N'123', 1)
INSERT [dbo].[User] ([UserId], [Email], [Password], [RoleId], [FullName], [GenderId], [Mobile], [IsActive]) VALUES (2, N'dunglhhe181276@fpt.edu.vn', N'12345', 1, N'lehungdung', 1, N'0963634669', 1)
INSERT [dbo].[User] ([UserId], [Email], [Password], [RoleId], [FullName], [GenderId], [Mobile], [IsActive]) VALUES (3, N'quannm@fpt.edu.vn', N'1234', 1, N'nguyenminhquan', 1, N'0916712381', 1)
INSERT [dbo].[User] ([UserId], [Email], [Password], [RoleId], [FullName], [GenderId], [Mobile], [IsActive]) VALUES (4, N'anlt@fpt.edu.vn', N'1234u505', 1, N'lethanhan', 1, N'0902532029', 0)
INSERT [dbo].[User] ([UserId], [Email], [Password], [RoleId], [FullName], [GenderId], [Mobile], [IsActive]) VALUES (5, N'huynq@fpt.edu.vn', N'1234', 1, N'nguyenquochuy', 1, N'0906166329', 0)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__User__6FAE0782C3EC317F]    Script Date: 6/16/2024 11:49:37 AM ******/
ALTER TABLE [dbo].[User] ADD UNIQUE NONCLUSTERED 
(
	[Mobile] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__User__A9D105342DD0F528]    Script Date: 6/16/2024 11:49:37 AM ******/
ALTER TABLE [dbo].[User] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD FOREIGN KEY([QuestionID])
REFERENCES [dbo].[Question] ([QuestionID])
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD FOREIGN KEY([BlogCategoryId])
REFERENCES [dbo].[BlogCategory] ([BlogCategoryId])
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Package]  WITH CHECK ADD FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subject] ([SubjectId])
GO
ALTER TABLE [dbo].[ProfilePicture]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([SubjectId])
GO
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD FOREIGN KEY([PackageId])
REFERENCES [dbo].[Package] ([PackageId])
GO
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD FOREIGN KEY([RegistrationStatusId])
REFERENCES [dbo].[RegistrationStatus] ([RegistrationStatusId])
GO
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[ResetToken]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD FOREIGN KEY([SubjectCategoryId])
REFERENCES [dbo].[SubjectCategory] ([SubjectCategoryId])
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([GenderId])
REFERENCES [dbo].[Gender] ([GenderId])
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO
