USE [WebPrac]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/24/2022 3:08:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [varchar](50) NOT NULL,
	[password] [varchar](30) NOT NULL,
	[address] [nvarchar](250) NULL,
	[email] [varchar](100) NOT NULL,
	[phone] [varchar](30) NULL,
	[logo] [nvarchar](30) NULL,
	[roleac] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Milk]    Script Date: 3/24/2022 3:08:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Milk](
	[id] [varchar](10) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[quantity] [int] NULL,
	[price] [float] NULL,
	[describe] [nvarchar](max) NULL,
	[published] [date] NULL,
	[typeid] [int] NULL,
	[img] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MilkType]    Script Date: 3/24/2022 3:08:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MilkType](
	[typeid] [int] NOT NULL,
	[nameType] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[typeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orderProducts]    Script Date: 3/24/2022 3:08:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderProducts](
	[o_id] [int] NULL,
	[id] [varchar](10) NULL,
	[quantity] [int] NULL,
	[amount] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 3/24/2022 3:08:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[o_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[OrderDate] [date] NULL,
	[Amount] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[o_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([username], [password], [address], [email], [phone], [logo], [roleac]) VALUES (N'admin', N'123', N'hide', N'hide', N'', N'Admin', 1)
INSERT [dbo].[Account] ([username], [password], [address], [email], [phone], [logo], [roleac]) VALUES (N'hai', N'123', N'Nghệ An', N'hai@gmail.com.vn', N'0965685837', N'Hải', 0)
INSERT [dbo].[Account] ([username], [password], [address], [email], [phone], [logo], [roleac]) VALUES (N'haia', N'123', N'Bình Định', N'phungduchai2001@gmail.com', N'03154687945', N'Hải', 0)
INSERT [dbo].[Account] ([username], [password], [address], [email], [phone], [logo], [roleac]) VALUES (N'mra', N'123', N'Tuyên Quang', N'mra@gmail.com', N'0159876543', N'MrA', 0)
INSERT [dbo].[Account] ([username], [password], [address], [email], [phone], [logo], [roleac]) VALUES (N'sa', N'123', N'Hà Nội', N'sa1@gmail.com.vn', N'0654789124', N'AA', 0)
GO
INSERT [dbo].[Milk] ([id], [name], [quantity], [price], [describe], [published], [typeid], [img]) VALUES (N'B1', N'Sữa Ensure Gold Vigor', 690, 1728000, N'Sữa Ensure Gold Vigor công thức đột phá mới bổ sung HMB giúp tăng cường sức khỏe trong 8 tuần giúp tăng cường sức khỏe thể chất, chất lượng cuộc sống. Sản phẩm công thức dinh dưỡng giúp thay thế hoàn toàn bữa ăn hoặc bữa ăn phụ bổ sung dinh dưỡng với hệ dưỡng chất Sure System của Abbott. Sữa Ensure Gold Vigor với đây đủ các vitamin và khoáng chất thiết yếu, các protein có giá trị sinh học cao giúp nhanh chóng phục hồi sức khỏe cho người bệnh, người mới ốm dậy. Ngoài ra sản phẩm được thiết kế giàu cholin và các axit béo đơn chức không no giúp hỗ trợ não bộ khỏe mạnh. Giàu MUFA, PUFA giúp hệ tim mạch khỏe mạnh.', CAST(N'2022-03-03' AS Date), 4, N'img/4suabotphasan/sua-ensure-gold-vigor-300x300.jpg')
INSERT [dbo].[Milk] ([id], [name], [quantity], [price], [describe], [published], [typeid], [img]) VALUES (N'B2', N'Sữa nước Anlene', 945, 445000, N'Sữa nước Anlene có đường 180ml tiệt trùng với công thức MovePro™ chứa các dưỡng chất thiết yếu hoạt động kết hợp giúp chăm sóc tốt cho cơ, xương và khớp. Sữa bột Anlene MOVEPRO™ là sản phẩm sữa với công thức MOVEPRO™ đặc biệt, chứa nhiều dưỡng chất thiết yếu hỗ trợ hệ Cơ-Xương-Khớp được phát triển khỏe mạnh, với nhiều hàm lượng Canxi và Ma-giê.', CAST(N'2022-03-02' AS Date), 4, N'https://suabottot.com/wp-content/uploads/2018/03/sua-nuoc-anlene-180ml-co-duong.jpg')
INSERT [dbo].[Milk] ([id], [name], [quantity], [price], [describe], [published], [typeid], [img]) VALUES (N'B3', N'Sữa Ensure Nước 237ml', 2436, 845000, N'Sữa Ensure nước pha sẵn tiện lợi hương vani là sản phẩm cung cấp dinh dưỡng đầy đủ cân đối cho người lớn. Sản phẩm dùng để thay thế hoàn toàn bữa ăn hoặc dùng cho bữa ăn phụ bổ sung cho người cần cải thiện tình trạng dinh dưỡng, người bênh cần phục hồi nhanh.', CAST(N'2022-03-12' AS Date), 4, N'https://suabottot.com/wp-content/uploads/2019/01/sua-nuoc-ensure-237ml.jpg')
INSERT [dbo].[Milk] ([id], [name], [quantity], [price], [describe], [published], [typeid], [img]) VALUES (N'C1', N'Sữa Asumiru-Vị dâu', 5000, 695000, N'Sữa Asumiru là sản phẩm cao cấp của Nhật Bản giúp tăng trưởng chiều cao hiệu quả cho bé từ 3-16 tuổi. Khi lựa chọn Sữa cho con các mẹ luôn ưu tiên các sản phẩm đến từ Nhật Bản, bởi chất lượng sản phẩm luôn là tiêu chí hàng đầu. Mặc dù các loại sữa đến từ Nhật Bản không có nhiều để các mẹ lựa chọn, điều đó cho thấy sản phẩm ít nhưng mà chất lượng lại rất tuyệt vời. Cũng như vậy, sản phẩm chuyên biệt tăng chiều cao cho bé đến từ Nhật Bản rất hiếm và Asumiru có thể được xem như là một lựa chọn tuyệt vời nhất dành cho các bé muốn tăng chiều cao trong giai đoạn phát triển từ 3-16 tuổi.', CAST(N'2022-02-25' AS Date), 1, N'img/1chieucao/asumiru_vidau.jpg')
INSERT [dbo].[Milk] ([id], [name], [quantity], [price], [describe], [published], [typeid], [img]) VALUES (N'C10', N'Sữa Abbot Grow 3', 3492, 450000, N'Sữa Abbott Grow 3 hươu cao cổ giúp trẻ phát triển tốt về chiều cao, thể chất và trí não. Giai đoạn từ 1 đến 2 tuổi, trẻ phát triển rất nhanh cả về chiều cao, trí não và sức đề kháng. việc bổ sung đầy đủ dưỡng chất và protein đóng vai trò rất quan trọng giúp trẻ phát triển tốt, và là nền tảng cho sức vóc của trẻ lúc trưởng thành. Abbott Grow 3 với hệ dưỡng chất G-Power giàu các dưỡng chất và Protein chất lượng cao, đủ 9 acid amin thiết yếu, giúp trẻ từ 1 đến 2 tuổi phát triển tốt nhất về thể chất và trí não. Sản phẩm được thiết kế dành riêng cho trẻ từ 1 đến 2 tuổi.', CAST(N'2022-02-20' AS Date), 1, N'img/1chieucao/sua-abbott-grow-3.jpg')
INSERT [dbo].[Milk] ([id], [name], [quantity], [price], [describe], [published], [typeid], [img]) VALUES (N'C2', N'Sữa Asumiru-Vị dưa gang', 4018, 690000, N'Sữa Asumiru là sản phẩm cao cấp của Nhật Bản giúp tăng trưởng chiều cao hiệu quả cho bé từ 3-16 tuổi. Khi lựa chọn Sữa cho con các mẹ luôn ưu tiên các sản phẩm đến từ Nhật Bản, bởi chất lượng sản phẩm luôn là tiêu chí hàng đầu. Mặc dù các loại sữa đến từ Nhật Bản không có nhiều để các mẹ lựa chọn, điều đó cho thấy sản phẩm ít nhưng mà chất lượng lại rất tuyệt vời. Cũng như vậy, sản phẩm chuyên biệt tăng chiều cao cho bé đến từ Nhật Bản rất hiếm và Asumiru có thể được xem như là một lựa chọn tuyệt vời nhất dành cho các bé muốn tăng chiều cao trong giai đoạn phát triển từ 3-16 tuổi.', CAST(N'2022-02-23' AS Date), 1, N'img/1chieucao/asumiru_duagang.jpg')
INSERT [dbo].[Milk] ([id], [name], [quantity], [price], [describe], [published], [typeid], [img]) VALUES (N'C3', N'Sữa Asumiru-Tăng chiều cao', 2992, 695000, N'Sữa Asumiru là sản phẩm cao cấp của Nhật Bản giúp tăng trưởng chiều cao hiệu quả cho bé từ 3-16 tuổi. Khi lựa chọn Sữa cho con các mẹ luôn ưu tiên các sản phẩm đến từ Nhật Bản, bởi chất lượng sản phẩm luôn là tiêu chí hàng đầu. Mặc dù các loại sữa đến từ Nhật Bản không có nhiều để các mẹ lựa chọn, điều đó cho thấy sản phẩm ít nhưng mà chất lượng lại rất tuyệt vời. Cũng như vậy, sản phẩm chuyên biệt tăng chiều cao cho bé đến từ Nhật Bản rất hiếm và Asumiru có thể được xem như là một lựa chọn tuyệt vời nhất dành cho các bé muốn tăng chiều cao trong giai đoạn phát triển từ 3-16 tuổi.', CAST(N'2022-02-20' AS Date), 1, N'img/1chieucao/asumiru_tangchieucao.jpg')
INSERT [dbo].[Milk] ([id], [name], [quantity], [price], [describe], [published], [typeid], [img]) VALUES (N'C4', N'Sữa Dê Hikid - 700', 3598, 750000, N'Sữa Dê Hikid Hàn Quốc dinh dưỡng đầy đủ cân đối giúp trẻ tăng trưởng chiều cao & cân nặng hiệu quả.Chắt lọc từ nguồn sữa tươi sạch của đàn dê núi được chăn thả “hoàn toàn tự nhiên” tại đồng cỏ New Zealand và vùng núi cao Hàn Quốc, trải qua dây chuyền sản xuất khép kín, hiện đại bậc nhất hiện nay. Hikid mang trong mình sứ mệnh thay đổi tầm vóc của trẻ em Châu Á, giúp bé phát triển toàn diện về thể chất và trí lực, đặc biệt là chiều cao.', CAST(N'2022-02-23' AS Date), 1, N'img/1chieucao/hikid-700.jpg')
INSERT [dbo].[Milk] ([id], [name], [quantity], [price], [describe], [published], [typeid], [img]) VALUES (N'C5', N'Hikid Premium tách béo', 4497, 690000, N'Sữa Hikid Premium Hàn Quốc là dòng sữa tách béo dành cho các bé dư cân muốn phát triển chiều cao tối đa. Mẹ quan tâm đến chiều cao của trẻ đều biết Hikid là dòng sữa mát nổi tiếng được yêu thích bởi hàng triệu bà mẹ Châu Á. Sự khác biệt của Hikid nằm ở bí mật khoa học, tiêu chuẩn khắt khe về chất lượng và độ an toàn. Với hàm lượng Canxi cao vượt trội, lên tới 183mg canxi trong 100g sữa, cùng với việc bổ sung Vitamin D, Kẽm, Magie và hàm lượng cao vitamin K2. Sữa Hikid Premium bổ sung và tăng khả năng hấp thu canxi, phát triển chiều cao tối đa của trẻ.', CAST(N'2022-02-23' AS Date), 1, N'img/1chieucao/hikid-premium_tach-beo.jpg')
INSERT [dbo].[Milk] ([id], [name], [quantity], [price], [describe], [published], [typeid], [img]) VALUES (N'C6', N'Sữa Hikid Socola', 3596, 749000, N'Sữa Hikid Socola bổ sung các loại Vitamin, khoáng chất, kháng thể sữa non giúp cho sự phát triển nhanh và vững chắc cho trẻ. Khi nói đến các loại sữa công thức giúp trẻ tăng trưởng chiều cao thì không thể thiếu dòng sản phẩm HIKID của Hàn Quốc. Và sự thật thì hầu hết các mẹ đã cho con dùng sang sữa Hikid sẽ trung thành với sản phẩm và tự tin cho con dùng trong suốt thời kỳ trưởng thành của trẻ. Trong đó sữa Hikid Socola với hương vị thơm ngon tự nhiên giàu dinh dưỡng được rất nhiều trẻ yêu thích.', CAST(N'2022-02-16' AS Date), 1, N'img/1chieucao/hikid-socola.jpg')
INSERT [dbo].[Milk] ([id], [name], [quantity], [price], [describe], [published], [typeid], [img]) VALUES (N'C7', N'Sữa Hikid Vani', 4200, 710000, N'Sữa Hikid chứa hàm lượng cao DHA, giúp bé phát triển trí não và tăng trưởng trí thông minh hơn. Ngoài ra, hàm lượng sữa non cao giúp ngăn chặn các mầm bệnh và vi rút, giúp hoàn thiện hệ miễn dịch, bé yêu luôn khỏe mạnh. Dưỡng chất chống ôxi hóa và các vitamin hỗ trợ việc tăng cường khả năng đề kháng sinh lý. Thành phần hỗ trợ tiêu hóa và tăng cường chức năng ruột, ngăn chặn các vi khuẩn có hại cho hệ tiêu hóa, giúp cho hệ tiêu hóa của bé luôn khỏe mạnh.', CAST(N'2022-01-22' AS Date), 1, N'img/1chieucao/hikid-vani.jpg')
INSERT [dbo].[Milk] ([id], [name], [quantity], [price], [describe], [published], [typeid], [img]) VALUES (N'C8', N'Sữa Lotte Kid Hàn Quốc A+', 5100, 690000, N'Sữa Lotte Kid A+ Hàn Quốc dinh dưỡng cao cấp từ tập đoàn LOTTLE FOODS giúp trẻ tăng trưởng chiều cao, trí não, sức đề kháng và phát triển toàn diện. Sữa Lotte Kid A+ được sản xuất từ 100% nguyên liệu hữu cơ hoàn toàn không sử dụng sử dụng kháng sinh trong tất cả các khâu từ chăn nuôi đến quá trình thu gom, bảo quản và sản xuất. Việc đảm bảo không sử dụng kháng sinh trong tất cả các khâu của sữa Lotte Kid A+ có ý nghĩa to lớn về sức khỏe của trẻ nhỏ, giải tỏa mỗi lo lắng về sự dậy thì sớm do dùng quá nhiều sữa bò có sử dụng “hormon” tăng trưởng trong chăn nuôi.', CAST(N'2022-01-17' AS Date), 1, N'img/1chieucao/lotte-kid-han-quoc.jpg')
INSERT [dbo].[Milk] ([id], [name], [quantity], [price], [describe], [published], [typeid], [img]) VALUES (N'C9', N'Sữa Vitagrow 0+', 2600, 430000, N'Sữa Vitagrow 0 + 900g công thức bổ sung 100% Canxi từ sữa kết hợp cùng MK7 giúp trẻ tăng trưởng chiều cao và phát triển toàn diện nhất. Theo các chuyên gia nhận định, dinh dưỡng được coi là yếu tố quan trọng hàng đầu quyết định chiều cao của một đứa trẻ ngay từ những năm đầu đời. Đây cũng là điều mà hầu hết cha mẹ Việt đều lo lắng bởi chiều cao, vóc dáng cân đối là một trong các yếu tố quyết định khá lớn đến thành công của con trong tương lai.', CAST(N'2022-02-02' AS Date), 1, N'img/1chieucao/sua-vitagrow-0-3.jpg')
INSERT [dbo].[Milk] ([id], [name], [quantity], [price], [describe], [published], [typeid], [img]) VALUES (N'CT1', N'Sữa Alene', 568, 340000, N'Sữa Anlene 3 khỏe mới với công thức đặc biệt chứa hàm lượng Canxi, Đạm và Collagen cao giúp hỗ trợ hệ Cơ-Xương-Khớp khỏe mạnh. Nhiều cha mẹ chúng ta thường chọn hi sinh mọi thứ để dành phần tốt nhất cho con mà ít quan tâm đến sức khỏe của mình. Điều này lâu dài có thể dẫn đến những suy giảm về sức khỏe và sự dẻo dai của cơ thể. Do đó, hãy cho mình một điều kiện tốt nhất có thể để duy trì sức khỏe bản thân, bởi vì chỉ khi có sức khỏe ta mới có thể làm được điều mình muốn và đi cùng con đến cuối chặng đường.', CAST(N'2022-01-02' AS Date), 2, N'img/2nguoicaotuoi/anlene.jpg')
INSERT [dbo].[Milk] ([id], [name], [quantity], [price], [describe], [published], [typeid], [img]) VALUES (N'CT2', N'Sữa Alene Gold 1.2kg', 780, 370000, N'Sữa Anlene Gold 1.2Kg hộp giấy mới với công thức Movepro giúp tăng cường hấp thu Canxi chăm sóc tốt cho cơ, xương, khớp. Sức khoẻ Cơ, Xương, Khớp và khả năng đề kháng suy giảm theo thời gian khiến người lớn tuổi dễ mệt mỏi và gặp các cơn đau trong vận động, sinh hoạt hàng ngày. Vì vậy, lựa chọn nguồn dinh dưỡng hợp lý là điều vô cùng quan trọng để chăm sóc sức khỏe ở lứa tuổi này.', CAST(N'2022-01-02' AS Date), 2, N'img/2nguoicaotuoi/anlene-gold-1.2kg-moi.jpg')
INSERT [dbo].[Milk] ([id], [name], [quantity], [price], [describe], [published], [typeid], [img]) VALUES (N'CT3', N'Sữa Alene Gold 900g', 768, 350000, N'Sữa Anlene Gold công thức Movepro mới giúp chăm sóc tốt cho cơ, xương, khớp. Cuộc sống càng hiện đại, những giây phút sống vui khỏe bên người thân và bạn bè càng là những điều ta cần nhất. Nhưng đôi lúc, cơ thể lại tỏ dấu hiệu “lão hóa” khiến cuộc vui bị gián đoạn. Vì thế, hãy uống Anlene 3 Khoẻ mỗi ngày với Canxi cho Xương chắc, Đạm giúp Cơ săn chắc và Collagen cho Khớp linh hoạt để những phút giây chơi đùa cùng con, “phiêu” theo từng điệu nhạc và chạy đều chân mỗi sáng được diễn ra trọn vẹn đầy hứng khởi.', CAST(N'2022-01-05' AS Date), 2, N'img/2nguoicaotuoi/anlene-gold-4.jpg')
INSERT [dbo].[Milk] ([id], [name], [quantity], [price], [describe], [published], [typeid], [img]) VALUES (N'CT4', N'Sữa Coloscare Adult IgG', 2200, 460000, N'Sữa Coloscare Adult dinh dưỡng cao cấp giúp tăng sức đề kháng cho người lớn tuổi. Càng lớn tuổi, sức đề kháng càng suy giảm, nguy cơ gặp phải các tình trạng rối loạn chức năng và nhiễm bệnh tăng cao. Dinh dưỡng đóng một vai trò đặc biệt quan trọng trong việc hỗ trợ tăng sức đề kháng, giúp cải thiện sức khỏe về thể chất cũng như tinh thần ở người lớn tuổi.', CAST(N'2022-01-05' AS Date), 2, N'img/2nguoicaotuoi/coloscare-adult.jpg')
INSERT [dbo].[Milk] ([id], [name], [quantity], [price], [describe], [published], [typeid], [img]) VALUES (N'CT5', N'Sữa Enplus Gold 900g', 2320, 430000, N'Sữa Enplus Gold giải pháp dinh dưỡng cho người cao tuổi, người bệnh, người ăn uống kém. Thử nghiệm lâm sàng đã chứng minh EnPlus Gold là sản phẩm tốt cho người cao tuổi người bệnh, người ăn uống kém, giúp nâng cao tình trạng dinh dưỡng và vi chất dinh dưỡng.', CAST(N'2022-02-05' AS Date), 2, N'img/2nguoicaotuoi/enplus-gold.jpg')
INSERT [dbo].[Milk] ([id], [name], [quantity], [price], [describe], [published], [typeid], [img]) VALUES (N'CT6', N'Sữa Ensure Đức 400g', 2095, 305000, N'Sữa Ensure Đức là dinh dưỡng cao năng lượng, giàu protein, vitamin và khoáng chất giúp bồi bổ cơ thể rất được ưa chuộng tại Đức nay đã có tại Việt Nam. Người Đức coi sữa như là một thực phẩm bổ sung dinh dưỡng không thể thiếu trong các bữa ăn phụ hàng ngày. Trong đó sữa Ensure được ưu tiên hàng đầu giúp bổ sung năng lượng đầy đủ, cân đối đặc biệt cần thiết cho người cao tuổi, người gầy, người suy dinh dưỡng, người ốm bệnh hoặc sau phẫu thuật.', CAST(N'2022-02-08' AS Date), 2, N'img/2nguoicaotuoi/ensure-duc-nk.jpg')
INSERT [dbo].[Milk] ([id], [name], [quantity], [price], [describe], [published], [typeid], [img]) VALUES (N'CT7', N'Sữa Ensure Gold HMB', 2106, 755000, N'Sữa Ensure Gold HMB 850g dinh dưỡng y học cao cấp được chứng minh lâm sàng giúp tăng cường sức khỏe trong 90 ngày. Với hơn 30 nghiên cứu lâm sàng trong suốt 45 năm, Ensure Gold là nguồn dinh dưỡng đầy đủ và cân đối, được chứng minh giúp đáp ứng nhu cầu dinh dưỡng cho người lớn tuổi, hỗ trợ tăng cường sức khỏe, thể chất và chất lượng cuộc sống. Sữa Ensure là thức uống cung cấp dinh dưỡng đầy đủ và cân đối dùng thay thế bữa ăn hoặc bổ sung cho chế độ ăn hàng ngày. Sản phẩm thích hợp cho người lớn, người ăn uống kém, đặc biệt cho người bệnh cần phục hồi nhanh.', CAST(N'2022-01-22' AS Date), 2, N'img/2nguoicaotuoi/ensure-gold.jpg')
INSERT [dbo].[Milk] ([id], [name], [quantity], [price], [describe], [published], [typeid], [img]) VALUES (N'CT8', N'Sữa Ensure Gold Ít Ngọt Vani', 4233, 755000, N'Sữa Ensure Gold ít ngọt mới với hệ dưỡng chất HMB giúp cung cấp dinh dưỡng cao năng lượng, đầy đủ cân đối, tốt cho hệ tim mạch và giúp trái tim khỏe mạnh. Sữa Ensure Gold HMB là sản phẩm tiên phong có thêm dưỡng chất HMB, kết hợp với hỗn hợp protein 3 nguồn phức hợp, giúp bảo vệ và tái tạo khối cơ. Với công thức dinh dưỡng đầy đủ và cân đối bao gồm 28 loại vitamin và khoáng chất cùng hàm lượng Protein và vitamin D cao hơn, Ensure Gold được chứng minh lâm sàng giúp tăng cường sức khỏe trong 8 tuần.', CAST(N'2022-01-17' AS Date), 2, N'img/2nguoicaotuoi/ensure-it-ngot.jpg')
INSERT [dbo].[Milk] ([id], [name], [quantity], [price], [describe], [published], [typeid], [img]) VALUES (N'CT9', N'Sữa Ensure Úc 850g', 3583, 680000, N'Sữa Ensure Úc là một trong những sản phẩm được ưa chuộng nhất trong các dòng sữa Ensure của Abbott. Khi nhắc đến dòng sản phẩm dinh dưỡng công thức dành cho người cao tuổi không thể bỏ qua dòng Ensure với rất nhiều dòng: Ensure úc, Ensure Đức, Ensure gold, Ensure Vigor… trong đó các sản phẩm đến từ Úc luôn được người tiêu dùng ưa chuộng. Bằng chứng là người Úc luôn luôn có thể trạng, sức khỏe tinh thần và thể chất tốt hơn các nước khác rất nhiều. Điều này cho thấy tiêu chuẩn dinh dưỡng từ quốc gia Úc có những thế mạnh riêng điều mà nhiều quốc gia khác đang hướng đến.', CAST(N'2022-01-17' AS Date), 2, N'img/2nguoicaotuoi/ensure-it-ngot.jpg')
INSERT [dbo].[Milk] ([id], [name], [quantity], [price], [describe], [published], [typeid], [img]) VALUES (N'MB1', N'Sữa Enfamama Sôcôla 830g', 1322, 430000, N'Sữa Enfamama hương sôcôla giàu dinh dưỡng, thơm ngon giúp mẹ khỏe, thai nhi tăng trưởng và phát triển thông minh. Khi mang bầu và cho con bú cơ thể người mẹ có nhu cầu về dinh dưỡng rất cao để đáp ứng năng lượng cho mẹ và dinh dưỡng đầy đủ cho sự phát triển của thai nhi. Trong khi nhiều mẹ có cảm giác khó ăn, ốm nghén do cơ thể thay đổi nội tiết tố làm ảnh hưởng đến sức khỏe cũng như sự phát triển của thai nhi. Khi đó các mẹ thường tìm đến sữa công thức dòng sản phẩm giàu dinh dưỡng, dễ sử dụng có thể bổ sung dinh dưỡng bị thiếu hụt do bữa ăn chính không đủ.', CAST(N'2022-03-09' AS Date), 5, N'https://suabottot.com/wp-content/uploads/2020/10/sua-enfamama-socola.jpg')
INSERT [dbo].[Milk] ([id], [name], [quantity], [price], [describe], [published], [typeid], [img]) VALUES (N'TE1', N'Sữa Blackmore 1', 678, 365000, N'Sữa Blackmores số 1 dinh dưỡng cao năng lượng nhập khẩu nguyên lon từ Australia giúp trẻ tăng trưởng cân nặng, chiều cao tối đa. Theo đánh giá khách quan của các mẹ đã cho con sử dụng thì sữa Blackmores có mùi vị rất thơm, bé rất thích. Sử dụng sữa một thời gian thấy trẻ ăn ngon miệng, không bị táo, ngủ ngon, tiêu hóa tốt nên tăng cân, phát triển chiều cao rõ rệt.', CAST(N'2022-02-25' AS Date), 3, N'img/3treem/sua-blackmores1.jpg')
INSERT [dbo].[Milk] ([id], [name], [quantity], [price], [describe], [published], [typeid], [img]) VALUES (N'TE10', N'Sữa P100', 1300, 492000, N'Sữa P100 thực phẩm bổ sung cao năng lượng cho trẻ biếng ăn, trẻ thấp còi, trẻ suy dinh dưỡng vừa và nặng được các chuyên gia dinh dưỡng khuyên dùng. Thực trạng suy dinh dưỡng trong các bệnh viện nhi tại Việt Nam năm 2017: Tỉ lệ trẻ biếng ăn là 44.9%, suy dinh dưỡng ở trẻ biếng ăn thấp còi là 32.3%, nhẹ cân là 28.2%. Thống kê trên phạm vi toàn quốc có tới 1,9 triệu trẻ em Việt Nam dưới 5 tuổi bị suy dinh dưỡng (chiếm 1/6). Nguyên nhân chính được xác định là do chế độ ăn không đảm bảo đủ dinh dưỡng cho sự trưởng thành và phát triển của trẻ theo độ tuổi.', CAST(N'2022-02-26' AS Date), 3, N'img/3treem/sua-p100-vdd-300x300.jpg')
INSERT [dbo].[Milk] ([id], [name], [quantity], [price], [describe], [published], [typeid], [img]) VALUES (N'TE2', N'Sữa Blackmore 2', 3000, 395000, N'Sữa Blackmores số 2 nhập khẩu nguyên hộp từ Úc giàu năng lượng, vitamin và khoáng chất giúp trẻ tăng trưởng, phát triển khỏe mạnh. “Em cần nhấn mạnh là sữa Blackmores rất thơm, dễ pha, dễ uống, giàu Canxi, giúp bé phát triển chiều cao và cân nặng một cách tối ưu nhất, ngoài ra với prebiotics còn giúp bé ăn ngon miệng, không bị táo bón, ngủ ngon, hệ đường ruột khỏe mạnh và Tăng sức đề kháng cho bé.”', CAST(N'2022-02-24' AS Date), 3, N'img/3treem/sua-blackmores2.jpg')
INSERT [dbo].[Milk] ([id], [name], [quantity], [price], [describe], [published], [typeid], [img]) VALUES (N'TE3', N'Sữa Blackmore 3', 3233, 460000, N'Sữa Blackmores số 3 công thức đột phá INFAT được chứng minh lâm sàng giúp thúc đẩy sự hấp thu chất béo và canxi hiệu quả giúp trẻ tăng trưởng cân nặng và chiều cao. Sản phẩm dinh dưỡng công thức Blackmores được mẹ Việt biết đến nhiều chủ yếu là từ các mẹ đã cho con dùng Blackmores xách tay có hiệu quả nên đã chia sẻ qua facebook, các hội nhóm. Tiếng lành đồn xa, dần dần nhiều mẹ khác biết được và cho con dùng thử, từ đó trung thành với sản phẩm luôn.', CAST(N'2022-02-27' AS Date), 3, N'img/3treem/sua-blackmores3.jpg')
INSERT [dbo].[Milk] ([id], [name], [quantity], [price], [describe], [published], [typeid], [img]) VALUES (N'TE4', N'Sữa CaloKid Gold 900g', 529, 445000, N'Sữa CaloKid Gold 900g là dòng sản phẩm cải tiến mới của Vitadairy giúp bé tăng cân khoa học, tiêu hóa tốt, phát triển trí não, tăng cường hệ miễn dịch. Trẻ trong giai đoạn từ 1-10 tuổi có các biểu hiện SUY DINH DƯỠNG, BIẾNG ĂN, CHẬM TĂNG CÂN cần một chế độ dinh dưỡng khoa học, không chỉ giúp bé cải thiện cân nặng phù hợp ở từng giai đoạn phát triển, mà còn giúp giải quyết các khó khăn của bé ở đường tiêu hóa, giúp bé ăn uống tốt, tiêu hóa và hấp thu tốt, để bé mau chóng thoát khỏi tình trạng suy dinh dưỡng, phát triển khỏe mạnh cả về thể chất và trí tuệ.', CAST(N'2022-03-01' AS Date), 3, N'img/3treem/sua-calokid-gold-900g.jpg')
INSERT [dbo].[Milk] ([id], [name], [quantity], [price], [describe], [published], [typeid], [img]) VALUES (N'TE5', N'Sữa Care Gold 100 Gold', 530, 445000, N'Sữa Care 100 Gold là dòng sản phẩm được thiết kế chuyên biệt dành cho trẻ biếng ăn, suy dinh dưỡng thấp còi từ 1 đến 10 tuổi. Sữa giúp bổ sung thêm năng lượng, chất đạm, các vitamin và khoáng chất cần thiết vào khẩu phần ăn giúp trẻ tăng trưởng và phát triển chiều cao, cân nặng, trí não tối đa.', CAST(N'2022-03-01' AS Date), 3, N'img/3treem/sua-care-100-gold-grow.jpg')
INSERT [dbo].[Milk] ([id], [name], [quantity], [price], [describe], [published], [typeid], [img]) VALUES (N'TE6', N'Sữa Colos Gain 800G', 2500, 390000, N'Sữa Colos Gain là sản phẩm dinh dưỡng đặc chế giúp trẻ có thể trạng suy dinh dưỡng tăng cân nhanh và tăng cường miễn dịch hiệu quả. Thương hiệu sữa Vitadairy nổi tiếng với dòng sản phẩm Colosbaby giúp trẻ tăng trưởng và phát triển khỏe mạnh đáp ứng hầu hết nhu cầu dinh dưỡng của trẻ em Việt. Tuy nhiên đối với những trẻ có thể trạng suy dinh dưỡng, thiếu cân, thiếu chiều cao do biếng ăn kéo dài thì cần một chế độ dinh dưỡng đặc biệt. Thì Colos Gain là lựa chọn hoàn hảo mà các mẹ nên tham khảo cho con.', CAST(N'2022-01-01' AS Date), 3, N'img/3treem/sua-colosgain-800g.jpg')
INSERT [dbo].[Milk] ([id], [name], [quantity], [price], [describe], [published], [typeid], [img]) VALUES (N'TE7', N'Sữa Kid Essentials Úc', 3230, 600000, N'Sữa Kid Essentials – Dinh dưỡng cao năng lượng chuyên biệt cho trẻ từ 1-10 tuổi bị biếng ăn, nhẹ cân, trẻ mới ốm dậy cần phục hồi sức khỏe. Nếu mẹ đang muốn tìm hiểu và lựa chọn cho con yêu một dòng sữa tăng cân thực sự hiệu quả chứ không phải chỉ là những lời quảng cáo như các nhà sản xuất đã đưa ra, vậy thì mẹ đừng nên bỏ qua dòng sữa cao năng lượng Kid Essentials Úc vì đây chính là sự lựa chọn hoàn hảo nhất mà mẹ đang cần tìm.', CAST(N'2022-02-28' AS Date), 3, N'img/3treem/sua-kid-essentials.jpg')
INSERT [dbo].[Milk] ([id], [name], [quantity], [price], [describe], [published], [typeid], [img]) VALUES (N'TE8', N'Sữa Nutralait BA', 2456, 370000, N'Sữa Nutralait BA dinh dưỡng đặc biệt dành cho trẻ biếng ăn, gầy yếu, suy dinh dưỡng, thấp còi được các chuyên gia dinh dưỡng khuyên dùng. Công dụng chính của sữa Nutralait BA là dinh dưỡng chuyên biệt giúp trẻ tăng trưởng chiều cao và cân nặng, hỗ trợ tiêu hóa cải thiện cảm giác chán ăn và tăng cường hệ miễn dịch.', CAST(N'2022-03-01' AS Date), 3, N'img/3treem/sua-nutralait-ba.jpg')
INSERT [dbo].[Milk] ([id], [name], [quantity], [price], [describe], [published], [typeid], [img]) VALUES (N'TE9', N'Sữa Nutren Junior Nestle', 3561, 585000, N'Sữa Nutren Junior sản phẩm nổi tiếng của thương hiệu Nestle Thụy Sĩ chuyên biệt dành cho trẻ suy dinh dưỡng. Nutren Junior được biết đến như là sản phẩm y học cao năng lượng hỗ trợ tăng cân, kích thích ăn ngon miệng và tốt cho hệ tiêu hóa của trẻ. Sản phẩm được thiết kế phù hợp với nhiều đối tượng trẻ nhỏ như trẻ thấp còi, trẻ biếng ăn, trẻ đang trong giai đoạn phát triển vận động thể thao nhiều…', CAST(N'2022-03-03' AS Date), 3, N'img/3treem/sua-nutren-junior-850g.jpg')
GO
INSERT [dbo].[MilkType] ([typeid], [nameType]) VALUES (1, N'Tăng chiều cao')
INSERT [dbo].[MilkType] ([typeid], [nameType]) VALUES (2, N'Người cao tuổi')
INSERT [dbo].[MilkType] ([typeid], [nameType]) VALUES (3, N'Trẻ em')
INSERT [dbo].[MilkType] ([typeid], [nameType]) VALUES (4, N'Sữa bột pha sẵn')
INSERT [dbo].[MilkType] ([typeid], [nameType]) VALUES (5, N'Sữa mẹ bầu')
GO
INSERT [dbo].[orderProducts] ([o_id], [id], [quantity], [amount]) VALUES (8, N'B1', 3, 1440000)
INSERT [dbo].[orderProducts] ([o_id], [id], [quantity], [amount]) VALUES (9, N'B2', 2, 534000)
INSERT [dbo].[orderProducts] ([o_id], [id], [quantity], [amount]) VALUES (9, N'C3', 5, 834000)
INSERT [dbo].[orderProducts] ([o_id], [id], [quantity], [amount]) VALUES (10, N'B3', 7, 1014000)
INSERT [dbo].[orderProducts] ([o_id], [id], [quantity], [amount]) VALUES (11, N'C2', 5, 828000)
INSERT [dbo].[orderProducts] ([o_id], [id], [quantity], [amount]) VALUES (11, N'C4', 2, 900000)
INSERT [dbo].[orderProducts] ([o_id], [id], [quantity], [amount]) VALUES (12, N'B1', 4, 1440000)
INSERT [dbo].[orderProducts] ([o_id], [id], [quantity], [amount]) VALUES (12, N'C3', 3, 834000)
INSERT [dbo].[orderProducts] ([o_id], [id], [quantity], [amount]) VALUES (13, N'C10', 5, 540000)
GO
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([o_id], [username], [OrderDate], [Amount]) VALUES (8, N'sa', CAST(N'2022-03-15' AS Date), 4320000)
INSERT [dbo].[orders] ([o_id], [username], [OrderDate], [Amount]) VALUES (9, N'hai', CAST(N'2022-03-15' AS Date), 5238000)
INSERT [dbo].[orders] ([o_id], [username], [OrderDate], [Amount]) VALUES (10, N'sa', CAST(N'2022-03-15' AS Date), 7098000)
INSERT [dbo].[orders] ([o_id], [username], [OrderDate], [Amount]) VALUES (11, N'mra', CAST(N'2022-03-15' AS Date), 5940000)
INSERT [dbo].[orders] ([o_id], [username], [OrderDate], [Amount]) VALUES (12, N'sa', CAST(N'2022-03-17' AS Date), 8262000)
INSERT [dbo].[orders] ([o_id], [username], [OrderDate], [Amount]) VALUES (13, N'sa', CAST(N'2022-03-17' AS Date), 2700000)
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
ALTER TABLE [dbo].[Milk]  WITH CHECK ADD FOREIGN KEY([typeid])
REFERENCES [dbo].[MilkType] ([typeid])
GO
ALTER TABLE [dbo].[orderProducts]  WITH CHECK ADD FOREIGN KEY([o_id])
REFERENCES [dbo].[orders] ([o_id])
GO
ALTER TABLE [dbo].[orderProducts]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[Milk] ([id])
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([username])
GO
