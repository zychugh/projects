<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登录</title>
    <link href="css/login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="bgpic">
            <img src="img/bgpic.jpg" />
        </div>
        <div class="bgpic-cover"></div>
        <div class="content">
            <h2 class="heading">现在登录</h2>
            <div class="login-wrap">
                <asp:TextBox ID="userName" class="form-control control" placeholder="zyc" runat="server"></asp:TextBox>
                <asp:TextBox ID="password" class="form-control control" placeholder="123" runat="server" TextMode="Password"></asp:TextBox>                
                <label class="checkbox">
                    <input type="checkbox" value="remember-me" checked="checked" />
                    <font>
		                <font class="remember">记住我</font>
		                <span class="pull-right"><a href="#"></a></span>
	                </font>
                </label>
                <asp:Button ID="Button1" class="login" runat="server" Text="登录" OnClick="Button1_Click" />                          
                <p class="create"><span>还没有帐号？ </span><a href="register.aspx">创建一个账户</a></p>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
