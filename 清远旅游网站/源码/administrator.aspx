<%@ Page Language="C#" AutoEventWireup="true" CodeFile="administrator.aspx.cs" Inherits="administrator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>后台管理</title>
    <link rel="stylesheet" type="text/css" href="css/administrator.css" />
    <style>
        .details {
            width: 600px;
        }
        .upload {
            background-color: #336633;
            color: #fff;
            border: none;
            outline: none;
            cursor: pointer;
            padding: 5px 8px;
        }
        .picList, .textList {
            width: 750px;
            background-color: #1C5E55;
            overflow: hidden;
            margin-top: 20px;
        }
        .picList div {
            margin: 20px;
            float: left;
        }
        .picList p {
            text-align: center;
            color: #fff;
        }
        .picList img {
            width: 200px;
            height: 100px;
        }        
        #Button2, #select {
            width: 60px;
            background-color: #336633;
            color: #fff;
            border: none;
            outline: none;
            cursor: pointer;
            padding: 5px 8px;
            font-size: 14px;
        }
        #Button2 {
            display: block;
        }
        .editText {
            margin-top: 30px;
        }
        .textList {
            padding: 20px;
            box-sizing: border-box;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
           
        <div class="header">后台管理</div>                    
        <div class="main-page">
	        <div class="left">
		        <div class="nav-back"></div>
		        <div class="nav">
			        <div class="on">内容管理</div>
			        <div>意见反馈</div>
			        <div>用户管理</div>
			        <div>管理员</div>			        
		        </div>
	        </div>
	        <div class="right">
		        <div class="content">
                    <%--内容管理--%>
			        <div class="con-ggh">
                        <div class="editPics">
                            <h2 class="title">更改图片</h2>
                            <asp:DropDownList ID="Category" runat="server">
                                <asp:ListItem>eating</asp:ListItem>
                                <asp:ListItem>living</asp:ListItem>
                                <asp:ListItem>walking</asp:ListItem>
                            </asp:DropDownList>
                            <asp:FileUpload ID="FileUpload1" runat="server" ForeColor="White" />
                            <asp:Button ID="Button1" CssClass="upload" runat="server" Text="确认上传" OnClick="Button1_Click" />
                            <asp:Label ID="lblInfo" runat="server" Text="路径" Font-Size="13px" ForeColor="White"></asp:Label>
                            <div class="picList">
                                <div>
                                    <asp:Image ID="eating" runat="server" />
                                    <p>食在清远</p>
                                </div>
                                <div>
                                    <asp:Image ID="living" runat="server" />
                                    <p>住在清远</p>
                                </div>
                                <div>
                                    <asp:Image ID="walking" runat="server" />
                                    <p>行在清远</p>
                                </div>                                
                            </div>                            
                        </div>
                        <div class="editText">
                            <h2 class="title">更改文字</h2>
                            <div style="margin-bottom: 10px;">
                                <asp:DropDownList ID="type" runat="server" style="vertical-align: top;" OnSelectedIndexChanged="type_SelectedIndexChanged">
                                <asp:ListItem>清远新闻</asp:ListItem>
                                <asp:ListItem>广东新闻</asp:ListItem>
                                <asp:ListItem>国内新闻</asp:ListItem>
                                <asp:ListItem>国际新闻</asp:ListItem>
                            </asp:DropDownList>
                            <asp:Button ID="select" runat="server" Text="确认" type="button" />
                            </div>   
                            <div class="textList">       
                                <asp:TextBox ID="titleText" runat="server" Height="150px" Width="300px" TextMode="MultiLine" placeholder="新闻标题..."></asp:TextBox>
                                <asp:TextBox ID="contentText" runat="server" Height="150px" Width="300px" TextMode="MultiLine" style="margin-left: 15px;" placeholder="新闻内容..."></asp:TextBox>
                                <asp:Button ID="Button2" runat="server" Text="修改" type="button" OnClick="Button2_Click" />
                            </div>
                        </div>
			        </div>
                    <%--意见反馈--%>
			        <div class="con-ggh">
                        <h2 class="title">用户反馈</h2>                        
                        <asp:GridView ID="feedback" CssClass="details" runat="server" CellPadding="4" ForeColor="#333333" GridLines="Vertical" PageSize="5" AutoGenerateColumns="False" DataSourceID="feedbackData" >
                            <AlternatingRowStyle BackColor="White" />                            
                            <Columns>
                                <asp:BoundField DataField="userName" HeaderText="用户名" SortExpression="userName">
                                <ItemStyle HorizontalAlign="Center" Width="30%" />
                                </asp:BoundField>
                                <asp:BoundField DataField="feedback" HeaderText="意见反馈" SortExpression="feedback">
                                <ItemStyle HorizontalAlign="Center" Width="70%" />
                                </asp:BoundField>
                            </Columns>
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <RowStyle BackColor="#E3EAEB" />                            
                        </asp:GridView>
			            <asp:SqlDataSource ID="feedbackData" runat="server" ConnectionString="<%$ ConnectionStrings:qylyConnectionString %>" SelectCommand="SELECT * FROM [feedback]"></asp:SqlDataSource>
			        </div>
                    <%--用户管理--%>
                    <div class="con-ggh">
                        <h2 class="title">用户管理</h2>
                        <asp:GridView ID="users" CssClass="details" runat="server" CellPadding="4" ForeColor="#333333" GridLines="Vertical" PageSize="5" AutoGenerateColumns="False" DataSourceID="usersData">
			                <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="userName" HeaderText="用户名" SortExpression="userName">
                                <ItemStyle HorizontalAlign="Center" Width="50%" />
                                </asp:BoundField>
                                <asp:BoundField DataField="gender" HeaderText="性别" SortExpression="gender">
                                <ItemStyle HorizontalAlign="Center" Width="50%" />
                                </asp:BoundField>
                            </Columns>
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <RowStyle BackColor="#E3EAEB" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="usersData" runat="server" ConnectionString="<%$ ConnectionStrings:qylyConnectionString %>" SelectCommand="SELECT [userName], [gender] FROM [user]"></asp:SqlDataSource>
                    </div>
                    <%--管理员--%>
                    <div class="con-ggh">
                        <h2 class="title">管理员</h2>
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:GridView ID="adminList" CssClass="details" runat="server" CellPadding="4" ForeColor="#333333" GridLines="Vertical" PageSize="5" AutoGenerateColumns="False" AutoGenerateEditButton="True" DataSourceID="adminData">
			                    <AlternatingRowStyle BackColor="White" />                           
                                <Columns>
                                    <asp:BoundField DataField="adminName" HeaderText="adminName" SortExpression="adminName"></asp:BoundField>
                                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password"></asp:BoundField>
                                </Columns>
                                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <RowStyle BackColor="#E3EAEB" />
                            </asp:GridView>
			                <asp:SqlDataSource ID="adminData" runat="server" ConnectionString="<%$ ConnectionStrings:qylyConnectionString %>" DeleteCommand="DELETE FROM [administrator] WHERE [adminName] = @adminName" InsertCommand="INSERT INTO [administrator] ([adminName], [password]) VALUES (@adminName, @password)" SelectCommand="SELECT * FROM [administrator]" UpdateCommand="UPDATE [administrator] SET [password] = @password WHERE [adminName] = @adminName">
                                <DeleteParameters>
                                    <asp:Parameter Name="adminName" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="adminName" Type="String" />
                                    <asp:Parameter Name="password" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="password" Type="String" />
                                    <asp:Parameter Name="adminName" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            </ContentTemplate>                            
                        </asp:UpdatePanel>                        
			        </div>		        
		        </div>
	        </div>
	        <div class="clear"></div>
        </div>

    </div>
    </form>
    <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <script type="text/javascript">
        $(".main-page .nav div").mouseenter(function () {
            var $this = $(this);
            var index = $this.index();
        }).mouseleave(function () {
            var $this = $(this);
            var index = $this.index();
        }).click(function () {
            var $this = $(this);
            var index = $this.index();
            var l = -(index * 800);
            $(".main-page .nav div").removeClass("on");
            $(".main-page .nav div").eq(index).addClass("on");
            $(".main-page .content .con-ggh:eq(0)").stop().animate({ "margin-top": l }, 500);
        });
    </script>
</body>
</html>
