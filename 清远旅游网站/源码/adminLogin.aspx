<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminLogin.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>管理员登录</title>
    <link href="css/login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="bgpic">
            <img src="img/adminBgp.jpg" />
        </div>
        <div class="bgpic-cover"></div>
        <div class="content">
            <h2 class="heading">管理员登录</h2>
            <div class="login-wrap">
                <asp:TextBox ID="adminName" class="form-control control" placeholder="admin" runat="server"></asp:TextBox>
                <asp:TextBox ID="password" class="form-control control" placeholder="123" runat="server" TextMode="Password"></asp:TextBox>
                <asp:Button ID="Button1" class="login" runat="server" Text="登录" OnClick="Button1_Click" />
            </div>
        </div>
    </div>
    </form>
</body>
</html>
