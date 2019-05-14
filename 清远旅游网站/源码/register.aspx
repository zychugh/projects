<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>注册</title>
    <link href="css/register.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <div class="bgpic"><img src="img/bgpic.jpg" /></div>
        <div class="bgpic-cover"></div>
	    <div class="container">
          <div class="form-signin">
            <h2 class="form-signin-heading">现在注册</h2>
            <div class="login-wrap">            
                <p>请输入您的信息</p>
                <asp:TextBox ID="userName" runat="server" class="form-control" placeholder="用户名" autofocus="autofocus"></asp:TextBox>              
                <asp:TextBox ID="password" runat="server" class="form-control" placeholder="密码" TextMode="Password"></asp:TextBox>
                <asp:TextBox ID="compare" runat="server" class="form-control" placeholder="确认密码" TextMode="Password"></asp:TextBox>                
                <asp:Label ID="error" runat="server" Text="Label" Visible="False" style="font-size:12px;color:red;display:block;"></asp:Label>
                <label class="checkbox" for="radio">
                    <input type="checkbox" id="radio" />我同意服务条款
                </label>
                <asp:Button ID="Button1" runat="server" Text="提交" class="btn btn-lg btn-login btn-block" OnClick="Button1_Click" />
                <div class="registration">
                    已经注册。
                    <a href="login.aspx">
                        登录
                    </a>
                </div>
            </div>
          </div>
        </div>

    </div>
    </form>
</body>
</html>
