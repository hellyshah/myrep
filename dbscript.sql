USE [CLAG_DB]
GO
/****** Object:  Table [dbo].[tblArticleMaster]    Script Date: 1/9/2018 4:45:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblArticleMaster](
	[ArticleId] [int] IDENTITY(1,1) NOT NULL,
	[ArticleTitle] [nvarchar](200) NULL,
	[ArticleContent] [nvarchar](max) NULL,
	[AdditionalFile] [varbinary](max) NULL,
	[WriterId] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[LMDate] [datetime] NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblArticleMaster] PRIMARY KEY CLUSTERED 
(
	[ArticleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblEditorDetails]    Script Date: 1/9/2018 4:45:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEditorDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EditorName] [nvarchar](50) NULL,
	[ETwitterHandle] [nvarchar](50) NULL,
	[EMediumUsername] [nvarchar](50) NULL,
	[EEmailAddress] [nvarchar](100) NULL,
	[EEnglish] [bit] NULL,
	[EFrench] [bit] NULL,
	[ESpanish] [bit] NULL,
	[EPortuguese] [bit] NULL,
	[EBrazilian] [bit] NULL,
 CONSTRAINT [PK_tblEditorDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblRegistrationDetails]    Script Date: 1/9/2018 4:45:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRegistrationDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[TwitterUsername] [nvarchar](50) NULL,
	[MediumUsername] [nvarchar](50) NULL,
	[StoryLink] [nvarchar](50) NULL,
	[ReasonToJoin] [nvarchar](100) NULL,
	[RequestStatus] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblRegistrationDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblReviewerDetails]    Script Date: 1/9/2018 4:45:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReviewerDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReviewerName] [nvarchar](50) NULL,
	[RTwitterHandle] [nvarchar](50) NULL,
	[RMediumUsername] [nvarchar](50) NULL,
	[REmailAddress] [nvarchar](50) NULL,
	[REnglish] [bit] NULL,
	[RFrench] [bit] NULL,
	[RSpanish] [bit] NULL,
	[RPortuguese] [bit] NULL,
	[RBrazilian] [bit] NULL,
 CONSTRAINT [PK_tblReviewerDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblWriterDetails]    Script Date: 1/9/2018 4:45:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblWriterDetails](
	[WriterId] [int] IDENTITY(1,1) NOT NULL,
	[WriterEmail] [nvarchar](50) NULL,
	[WriterTwitterUName] [nvarchar](50) NULL,
	[WriterMediumUName] [nvarchar](50) NULL,
	[JoiningDate] [datetime] NULL,
 CONSTRAINT [PK_tblWriterDetails] PRIMARY KEY CLUSTERED 
(
	[WriterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tblArticleMaster] ON 

INSERT [dbo].[tblArticleMaster] ([ArticleId], [ArticleTitle], [ArticleContent], [AdditionalFile], [WriterId], [CreatedDate], [LMDate], [Status]) VALUES (1, N'Demo', N'bhfdkjbcvfdkjbvnmxcd,sv n', NULL, 1, CAST(N'2017-12-13T11:16:14.313' AS DateTime), CAST(N'2017-12-13T11:16:14.660' AS DateTime), N'Draft')
SET IDENTITY_INSERT [dbo].[tblArticleMaster] OFF
SET IDENTITY_INSERT [dbo].[tblEditorDetails] ON 

INSERT [dbo].[tblEditorDetails] ([Id], [EditorName], [ETwitterHandle], [EMediumUsername], [EEmailAddress], [EEnglish], [EFrench], [ESpanish], [EPortuguese], [EBrazilian]) VALUES (1, N'helly', N'helly908', N'helly908', N'helly@gmail.com', 1, 0, 0, 0, 1)
INSERT [dbo].[tblEditorDetails] ([Id], [EditorName], [ETwitterHandle], [EMediumUsername], [EEmailAddress], [EEnglish], [EFrench], [ESpanish], [EPortuguese], [EBrazilian]) VALUES (2, N'zsfzsdf', N'safsaf', N'sfsdf', N'fzsdfc@f.com', 1, 0, 0, 1, 0)
INSERT [dbo].[tblEditorDetails] ([Id], [EditorName], [ETwitterHandle], [EMediumUsername], [EEmailAddress], [EEnglish], [EFrench], [ESpanish], [EPortuguese], [EBrazilian]) VALUES (3, N'abc', N'abc908', N'abc908', N'abc@gmail.com', 1, 0, 0, 0, NULL)
SET IDENTITY_INSERT [dbo].[tblEditorDetails] OFF
SET IDENTITY_INSERT [dbo].[tblRegistrationDetails] ON 

INSERT [dbo].[tblRegistrationDetails] ([Id], [Email], [TwitterUsername], [MediumUsername], [StoryLink], [ReasonToJoin], [RequestStatus]) VALUES (1, N'helly@gmail.com', N'@helly908abc', N'helly shah123', N'www.medium.com/hellyshahstory', N'timepass', N'Accepted')
INSERT [dbo].[tblRegistrationDetails] ([Id], [Email], [TwitterUsername], [MediumUsername], [StoryLink], [ReasonToJoin], [RequestStatus]) VALUES (2, N'krunal@gmail.com', N'@Kbhadresa123', N'Krunal ', N'www.anbched.com', N'jksdfvbkjdgfv', N'Accepted')
INSERT [dbo].[tblRegistrationDetails] ([Id], [Email], [TwitterUsername], [MediumUsername], [StoryLink], [ReasonToJoin], [RequestStatus]) VALUES (6, N'sghjagshja', N'dcfjsdkhf', N'dhfskljhn', N'dhnkjasd', N'cfdskjcns', N'Accepted')
INSERT [dbo].[tblRegistrationDetails] ([Id], [Email], [TwitterUsername], [MediumUsername], [StoryLink], [ReasonToJoin], [RequestStatus]) VALUES (7, N'cvbcfbc', N'cfvbcfb', N'cbcb', N'cvcfbv', N'bcfbc', N'Accepted')
INSERT [dbo].[tblRegistrationDetails] ([Id], [Email], [TwitterUsername], [MediumUsername], [StoryLink], [ReasonToJoin], [RequestStatus]) VALUES (8, N'cdzsdcfsdzf', N'fsdfsdf', N'fsdf', N'fsdfds', N'fsdfs', N'Submitted')
SET IDENTITY_INSERT [dbo].[tblRegistrationDetails] OFF
SET IDENTITY_INSERT [dbo].[tblReviewerDetails] ON 

INSERT [dbo].[tblReviewerDetails] ([Id], [ReviewerName], [RTwitterHandle], [RMediumUsername], [REmailAddress], [REnglish], [RFrench], [RSpanish], [RPortuguese], [RBrazilian]) VALUES (1, N'Helly', N'helly908', N'helly', N'helly@gmail.com', 1, 1, 0, 1, 1)
INSERT [dbo].[tblReviewerDetails] ([Id], [ReviewerName], [RTwitterHandle], [RMediumUsername], [REmailAddress], [REnglish], [RFrench], [RSpanish], [RPortuguese], [RBrazilian]) VALUES (2, N'Krunal Bhadresha', N'@krunal', N'@krunal007', N'Krunal@gmail.com', 1, 0, 0, 1, 0)
INSERT [dbo].[tblReviewerDetails] ([Id], [ReviewerName], [RTwitterHandle], [RMediumUsername], [REmailAddress], [REnglish], [RFrench], [RSpanish], [RPortuguese], [RBrazilian]) VALUES (3, N'Dhruva Shah', N'@Dhruvashah', N'@Dhruvashah', N'Dhruva@gmail.com', 1, 1, 0, 0, 0)
INSERT [dbo].[tblReviewerDetails] ([Id], [ReviewerName], [RTwitterHandle], [RMediumUsername], [REmailAddress], [REnglish], [RFrench], [RSpanish], [RPortuguese], [RBrazilian]) VALUES (4, N'Someone', N'Someone', N'Someone', N'Someone@gmail.com', 1, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[tblReviewerDetails] OFF
SET IDENTITY_INSERT [dbo].[tblWriterDetails] ON 

INSERT [dbo].[tblWriterDetails] ([WriterId], [WriterEmail], [WriterTwitterUName], [WriterMediumUName], [JoiningDate]) VALUES (1, N'sghjagshja', N'dcfjsdkhf', N'dhfskljhn', CAST(N'2018-01-09T15:37:07.143' AS DateTime))
INSERT [dbo].[tblWriterDetails] ([WriterId], [WriterEmail], [WriterTwitterUName], [WriterMediumUName], [JoiningDate]) VALUES (2, N'cvbcfbc', N'cfvbcfb', N'cbcb', CAST(N'2018-01-09T16:43:03.580' AS DateTime))
SET IDENTITY_INSERT [dbo].[tblWriterDetails] OFF
ALTER TABLE [dbo].[tblRegistrationDetails] ADD  CONSTRAINT [DF_tblRegistrationDetails_RequestStatus]  DEFAULT (N'Submitted') FOR [RequestStatus]
GO
/****** Object:  StoredProcedure [dbo].[sp_AcceptRegistration]    Script Date: 1/9/2018 4:45:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_AcceptRegistration]
      
      
	   @Id int      
AS 
BEGIN 
     SET NOCOUNT ON 

     UPDATE tblRegistrationDetails
	 SET
          RequestStatus='Accepted'
           
			WHERE  @Id=Id                 ;
         

END 









GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteArticle]    Script Date: 1/9/2018 4:45:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_DeleteArticle]
      
          @ArticleId  int 
AS 
BEGIN 
    
	Delete FROM  tblArticleMaster    
	WHERE ArticleId=@ArticleId;
         

END 









GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteEditorDetails]    Script Date: 1/9/2018 4:45:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_DeleteEditorDetails]
      
          @Id  int 
AS 
BEGIN 
    
	Delete FROM  tblEditorDetails    
	WHERE Id=@Id;
         

END 









GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteRegistrationDetails]    Script Date: 1/9/2018 4:45:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_DeleteRegistrationDetails]
      
          @Id  int 
AS 
BEGIN 
    
	Delete FROM  tblRegistrationDetails 
	WHERE Id=@Id;
         

END 









GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteReviewerDetails]    Script Date: 1/9/2018 4:45:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_DeleteReviewerDetails]
      
          @Id  int 
AS 
BEGIN 
    
	Delete FROM  tblReviewerDetails 
	WHERE Id=@Id;
         

END 









GO
/****** Object:  StoredProcedure [dbo].[sp_DeletetblWriterDetails]    Script Date: 1/9/2018 4:45:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_DeletetblWriterDetails]
      
          @WriterId  int 
AS 
BEGIN 
    
	Delete FROM  tblWriterDetails 
	WHERE WriterId=@WriterId;
         

END 









GO
/****** Object:  StoredProcedure [dbo].[sp_InsertArticleDetails]    Script Date: 1/9/2018 4:45:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_InsertArticleDetails]
       @ArticleTitle  nvarchar(200) , 
       @ArticleContent  nvarchar(MAX) , 
   --    @AdditionalFile  varbinary(MAX) , 
       @WriterId  int  ,
       @CreatedDate  datetime,
	   @LMDate datetime,
	   @Status varchar(50)       
AS 
BEGIN 
     SET NOCOUNT ON 

     INSERT INTO tblArticleMaster
          ( 
       ArticleTitle , 
       ArticleContent , 
   --    AdditionalFile , 
       WriterId ,
       CreatedDate,
	   LMDate,
	   Status  

                          
          ) 
     VALUES 
          ( 
            @ArticleTitle , 
       @ArticleContent , 
    --   @AdditionalFile , 
       @WriterId ,
       @CreatedDate,
	   @LMDate,
	   @Status      
          ) 

END 









GO
/****** Object:  StoredProcedure [dbo].[sp_InsertEditorDetails]    Script Date: 1/9/2018 4:45:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_InsertEditorDetails]
       @EditorName  nvarchar(50) , 
       @ETwitterHandle  nvarchar(50) , 
       @EMediumUsername  nvarchar(50) , 
       @EEmailAddress  nvarchar(50)  ,
       @EEnglish bit,
	   @EFrench bit,
	   @ESpanish bit,
	   @EPortuguese bit
	--   @EBrazilian bit
	         
AS 
BEGIN 
     SET NOCOUNT ON 

     INSERT INTO tblEditorDetails
          ( 
             EditorName, 
       ETwitterHandle, 
       EMediumUsername, 
       EEmailAddress,
       EEnglish ,
	   EFrench ,
	   ESpanish ,
	   EPortuguese 
	--   EBrazilian                               
          ) 
     VALUES 
          ( 
          @EditorName, 
       @ETwitterHandle, 
       @EMediumUsername, 
       @EEmailAddress,
       @EEnglish ,
	   @EFrench ,
	   @ESpanish ,
	   @EPortuguese 
	--   @EBrazilian                   
          ) 

END 









GO
/****** Object:  StoredProcedure [dbo].[sp_InsertRegistrationDetails]    Script Date: 1/9/2018 4:45:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_InsertRegistrationDetails]
       @Email  nvarchar(50) , 
       @TwitterUsername  nvarchar(50) , 
       @MediumUsername  nvarchar(50) , 
       @StoryLink  nvarchar(50)  ,
       @ReasonToJoin  nvarchar(100)       
AS 
BEGIN 
     SET NOCOUNT ON 

     INSERT INTO tblRegistrationDetails
          ( 
            Email                   ,
            TwitterUsername                     ,
            MediumUsername                   ,
            StoryLink                     ,
            ReasonToJoin                              
          ) 
     VALUES 
          ( 
           @Email  , 
       @TwitterUsername , 
       @MediumUsername  , 
       @StoryLink   ,
       @ReasonToJoin                 
          ) 

END 









GO
/****** Object:  StoredProcedure [dbo].[sp_InsertReviewerDetails]    Script Date: 1/9/2018 4:45:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_InsertReviewerDetails]
       @ReviewerName  nvarchar(50) , 
       @RTwitterHandle  nvarchar(50) , 
       @RMediumUsername  nvarchar(50) , 
       @REmailAddress  nvarchar(50)  ,
       @REnglish bit,
	   @RFrench bit,
	   @RSpanish bit,
	   @RPortuguese bit,
	   @RBrazilian bit
	         
AS 
BEGIN 
     SET NOCOUNT ON 

     INSERT INTO tblReviewerDetails
          ( 
             ReviewerName, 
       RTwitterHandle, 
       RMediumUsername, 
       REmailAddress,
       REnglish ,
	   RFrench ,
	   RSpanish ,
	   RPortuguese ,
	   RBrazilian                               
          ) 
     VALUES 
          ( 
          @ReviewerName, 
       @RTwitterHandle, 
       @RMediumUsername, 
       @REmailAddress,
       @REnglish ,
	   @RFrench ,
	   @RSpanish ,
	   @RPortuguese ,
	   @RBrazilian                   
          ) 

END 









GO
/****** Object:  StoredProcedure [dbo].[sp_InsertWriterDetails]    Script Date: 1/9/2018 4:45:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_InsertWriterDetails]
       @WriterEmail  nvarchar(50) , 
       @WriterTwitterUName  nvarchar(50) , 
       @WriterMediumUName  nvarchar(50) , 
       @JoiningDate  datetime
      
AS 
BEGIN 
     SET NOCOUNT ON 

     INSERT INTO tblWriterDetails
          ( 
            WriterEmail  , 
       WriterTwitterUName  , 
       WriterMediumUName  , 
       JoiningDate                               
          ) 
     VALUES 
          ( 
           @WriterEmail  , 
       @WriterTwitterUName  , 
       @WriterMediumUName  , 
       @JoiningDate                        
          ) 

END 









GO
/****** Object:  StoredProcedure [dbo].[sp_RejectRegistration]    Script Date: 1/9/2018 4:45:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_RejectRegistration]
      
      
	   @Id int      
AS 
BEGIN 
     SET NOCOUNT ON 

     UPDATE tblRegistrationDetails
	 SET
          RequestStatus='Rejected'
           
			WHERE  @Id=Id                 ;
         

END 









GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateArticleDetails]    Script Date: 1/9/2018 4:45:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_UpdateArticleDetails]
	   @ArticleId int,	
       @ArticleTitle  nvarchar(200) , 
       @ArticleContent  nvarchar(MAX) , 
       @AdditionalFile  varbinary(MAX) , 
       @WriterId  int  ,
       @CreatedDate  datetime,
	   @LMDate datetime,
	   @Status varchar(50)       
AS 
BEGIN 
     SET NOCOUNT ON 

     UPDATE  tblArticleMaster
        SET  
       ArticleTitle=@ArticleTitle , 
       ArticleContent=@ArticleContent , 
       AdditionalFile= @AdditionalFile, 
       WriterId= @WriterId,
       CreatedDate=@CreatedDate,
	   LMDate=@LMDate,
	   Status=@Status  
	   WHERE 
	  ArticleId= @ArticleId;

                          
              

END 









GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateEditorDetails]    Script Date: 1/9/2018 4:45:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_UpdateEditorDetails]
      
       @ETwitterHandle  nvarchar(50) , 
       @EMediumUsername  nvarchar(50) ,
	   @EEnglish bit,
	   @EFrench bit,
	   @ESpanish bit,
	   @EPortuguese bit,
	--   @EBrazilian bit,
	   @Id int      
AS 
BEGIN 
     SET NOCOUNT ON 

     UPDATE tblEditorDetails
	 SET
         ETwitterHandle= @ETwitterHandle  , 
      EMediumUsername= @EMediumUsername  ,
	   EEnglish=@EEnglish ,
	  EFrench= @EFrench ,
	  ESpanish= @ESpanish ,
	  EPortuguese= @EPortuguese 
	--   EBrazilian=@EBrazilian 
	     
			WHERE  @Id=Id                 ;
         

END 









GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateRegistrationDetails]    Script Date: 1/9/2018 4:45:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_UpdateRegistrationDetails]
      
       @TwitterUsername  nvarchar(50) , 
       @MediumUsername  nvarchar(50) ,
	   @Id int      
AS 
BEGIN 
     SET NOCOUNT ON 

     UPDATE tblRegistrationDetails
	 SET
          
           
            TwitterUsername=@TwitterUsername                     ,
            MediumUsername=@MediumUsername 
			WHERE  @Id=Id                 ;
         

END 









GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateReviewerDetails]    Script Date: 1/9/2018 4:45:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_UpdateReviewerDetails]
      
       @RTwitterHandle  nvarchar(50) , 
       @RMediumUsername  nvarchar(50) ,
	   @REnglish bit,
	   @RFrench bit,
	   @RSpanish bit,
	   @RPortuguese bit,
	  -- @RBrazilian bit,
	   @Id int      
AS 
BEGIN 
     SET NOCOUNT ON 

     UPDATE tblReviewerDetails
	 SET
         RTwitterHandle= @RTwitterHandle  , 
      RMediumUsername= @RMediumUsername  ,
	   REnglish=@REnglish ,
	  RFrench= @RFrench ,
	  RSpanish= @RSpanish ,
	  RPortuguese= @RPortuguese 
	--   RBrazilian=@RBrazilian 
	     
			WHERE  @Id=Id                 ;
         

END 









GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateWriterDetails]    Script Date: 1/9/2018 4:45:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_UpdateWriterDetails]
      
       @WriterTwitterUName  nvarchar(50) , 
       @WriterMediumUName  nvarchar(50) ,
	   @WriterId int      
AS 
BEGIN 
     SET NOCOUNT ON 

     UPDATE tblWriterDetails
	 SET
          
           
            WriterTwitterUName=@WriterTwitterUName                     ,
            WriterMediumUName=@WriterMediumUName 
			WHERE  WriterId=@WriterId                 ;
         

END 









GO
/****** Object:  StoredProcedure [dbo].[sp_ViewArticlebyArticleId]    Script Date: 1/9/2018 4:45:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ViewArticlebyArticleId]
      
       @ArticleId  int 
       
AS 
BEGIN 
   
    SELECT ArticleId, ArticleTitle, ArticleContent,AdditionalFile,WriterId,CreatedDate,LMDate,Status
	FROM  tblArticleMaster
	WHERE ArticleId=@ArticleId;
         

END 









GO
/****** Object:  StoredProcedure [dbo].[sp_ViewArticleDetails]    Script Date: 1/9/2018 4:45:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ViewArticleDetails]
      
    --   @ArticleId  int 
       
AS 
BEGIN 
   
    SELECT ArticleId, ArticleTitle, ArticleContent,WriterId,CreatedDate,LMDate,Status
	FROM  tblArticleMaster
--	WHERE ArticleId=@ArticleId;
         

END 









GO
/****** Object:  StoredProcedure [dbo].[sp_ViewEditorDetails]    Script Date: 1/9/2018 4:45:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ViewEditorDetails]
      
          
AS 
BEGIN 
    
	SELECT Id,EditorName,ETwitterHandle,EMediumUsername,EEmailAddress,EEnglish,EFrench,ESpanish,EPortuguese,EBrazilian
	FROM tblEditorDetails;
         

END 







GO
/****** Object:  StoredProcedure [dbo].[sp_ViewEditorDetailsbyEditorId]    Script Date: 1/9/2018 4:45:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ViewEditorDetailsbyEditorId]
      
       @Id  int 
       
AS 
BEGIN 
   
    SELECT   EditorName, ETwitterHandle, EMediumUsername,EEmailAddress,EEnglish,EFrench,ESpanish,EPortuguese
	FROM  tblEditorDetails
	WHERE Id=@Id;
         

END 









GO
/****** Object:  StoredProcedure [dbo].[sp_ViewRegistrationDetails]    Script Date: 1/9/2018 4:45:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ViewRegistrationDetails]
      
          
AS 
BEGIN 
    
	SELECT Id,Email,TwitterUsername,MediumUsername,StoryLink,ReasonToJoin
	FROM tblRegistrationDetails
	where RequestStatus='Submitted';
         

END 







GO
/****** Object:  StoredProcedure [dbo].[sp_ViewRegistrationDetailsbyUserId]    Script Date: 1/9/2018 4:45:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ViewRegistrationDetailsbyUserId]
      
       @Id  int 
       
AS 
BEGIN 
   
    SELECT   Email, TwitterUsername, MediumUsername , StoryLink,ReasonToJoin
	FROM  tblRegistrationDetails
	WHERE Id=@Id;
         

END 









GO
/****** Object:  StoredProcedure [dbo].[sp_ViewReviewerDetails]    Script Date: 1/9/2018 4:45:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ViewReviewerDetails]
      
          
AS 
BEGIN 
    
	SELECT Id,ReviewerName,RTwitterHandle,RMediumUsername,REmailAddress,REnglish,RFrench,RSpanish,RPortuguese,RBrazilian
	FROM tblReviewerDetails;
         

END 







GO
/****** Object:  StoredProcedure [dbo].[sp_ViewReviewerDetailsbyReviewerId]    Script Date: 1/9/2018 4:45:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ViewReviewerDetailsbyReviewerId]
      
       @Id  int 
       
AS 
BEGIN 
   
    SELECT   ReviewerName, RTwitterHandle, RMediumUsername,REmailAddress,REnglish,RFrench,RSpanish,RPortuguese,RBrazilian
	FROM  tblReviewerDetails
	WHERE Id=@Id;
         

END 









GO
/****** Object:  StoredProcedure [dbo].[sp_ViewWriterDetails]    Script Date: 1/9/2018 4:45:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ViewWriterDetails]
      
          
AS 
BEGIN 
    
	SELECT WriterId,WriterEmail,WriterTwitterUName,WriterMediumUName,JoiningDate
	FROM tblWriterDetails;
         

END 







GO
/****** Object:  StoredProcedure [dbo].[sp_ViewWriterDetailsbyWriterId]    Script Date: 1/9/2018 4:45:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ViewWriterDetailsbyWriterId]
      
       @WriterId  int 
       
AS 
BEGIN 
   
    SELECT   WriterEmail, WriterTwitterUName, WriterMediumUName,JoiningDate
	FROM  tblWriterDetails
	WHERE WriterId=@WriterId;
         

END 









GO
