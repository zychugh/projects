<%@ Page Language="C#" AutoEventWireup="true" CodeFile="introduction.aspx.cs" Inherits="introduction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>清远简介</title>
    <link rel="stylesheet" type="text/css" href="css/jquery.my-modal.1.1.winStyle.css" />
    <link href="css/introduction.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
		<!--头部-->
		<div class="top">
			<asp:HyperLink ID="HyperLink1" class="login" runat="server" NavigateUrl="login.aspx" Target="_blank">登录</asp:HyperLink>
			<%--模态框--%>
            <button class="btn1" type="button">意见反馈</button>		
		    <div class="m-modal">
			    <div class="m-modal-dialog">
				    <div class="m-top">
					    <h4 class="m-modal-title">
						    意见反馈
					    </h4>
					    <span class="m-modal-close">&times;</span>
				    </div>
				    <div class="m-middle">
					    <asp:TextBox ID="feedback" placeholder="请输入您的建议..." style="font-size: 14px; width: 460px; height:200px;" runat="server" TextMode="MultiLine"></asp:TextBox>					
				    </div>
				    <div class="m-bottom">
                        <asp:Button ID="sureBtn" class="m-btn-sure" runat="server" Text="确认" type="button" OnClick="sureBtn_Click" />
					    <button class="m-btn-cancel">取消</button>
				    </div>
			    </div>
		    </div>
            <%--模态框--%>
            <ul>
				<li><a href="#">English</a></li>
				<li><a href="#">日本語</a></li>
				<li><a href="#">عربي</a></li>
				<li><a href="#">Pусский</a></li>
				<li><a href="#">Français</a></li>
				<li><a href="#">Español</a></li>
				<li><a href="#">한국어</a></li>
				<li><a href="#">资讯网</a></li>
				<li><a href="#">政务网</a></li>
			</ul>
		</div>
		<!--头部-->

		<!--导航-->
		<div class="header">
          <div class="mainnav">

	      	<div class="search">
				<form method="get">
				  <input class="text" type="text" placeholder="请输入关键字..." /><input type="submit" class="button" value="搜索" />
				</form>
	        </div>

			<div class="navbar">
                <div class="navbar-header"></div>

				<div class="navbar-content">
		            <ul class="nav">

		              <!--首页-->
		              <li class="m on">
		                <h3><a href="index.aspx" target="_blank">首页</a></h3>
		              </li>
		              <!--首页-->

		              <!--话说广州-->
		              <li class="m">
		                <h3><a href="#">话说清远</a></h3>
		                <div class="sub">
		                  <div class="menu-show">
		                    <img alt="图片" src="img/head-1.jpg" />
		                  </div>
		                  <div class="menu">
		                    <ul>
		                      <li><a href="#" target="_blank">清远介绍</a></li>
		                      <li><a href="#">清远风俗</a></li>
		                      <li><a href="#">清远典故</a></li>
		                    </ul>
		                  </div>
		                </div>
		              </li>
		              <!--话说广州-->

		              <!--特色广州-->
		              <li class="m">
		                <h3><a href="#">清远特色</a></h3>
		                <div class="sub">
		                  <div class="menu-show">
		                    <img alt="图片" src="img/head-2.jpg" />
		                  </div>
		                  <div class="menu">
		                    <ul>
		                      <li><a href="eating.aspx" target="_blank">食在清远</a></li>
		                      <li><a href="tourist-attraction.aspx" target="_blank">旅游景点</a></li>
		                      <li><a href="hotel.aspx" target="_blank">酒店住宿</a></li>
		                      <li><a href="#">交通路线</a></li>
		                      <li><a href="#">购物天堂</a></li>
		                      <li><a href="#">休闲娱乐</a></li>
		                    </ul>
		                  </div>
		                </div>
		              </li>
		              <!--特色广州-->

		              <!--旅游新闻-->
		              <li class="m">
		                <h3><a href="#">旅游新闻</a></h3>
		                <div class="sub">
		                  <div class="menu-show">
		                    <img alt="图片" src="img/head-3.jpg" />
		                  </div>
		                  <div class="menu">
		                    <ul>
		                      <li><a href="#">清远新闻</a></li>
		                      <li><a href="#">广东新闻</a></li>
		                      <li><a href="#">国内新闻</a></li>
		                      <li><a href="#">国际新闻</a></li>
		                    </ul>
		                  </div>
		                </div>
		              </li>
		              <!--旅游新闻-->

		              <!--影像旅游-->
		              <li class="m">
		                <h3><a href="#">影像旅游</a></h3>
		                <div class="sub">
		                  <div class="menu-show">
		                    <img alt="图片" src="img/head-4.jpg" />
		                  </div>
		                  <div class="menu">
		                    <ul>
		                      <li><a href="#">畅游清远</a></li>
		                      <li><a href="#">360度叹清远</a></li>
		                      <li><a href="#">宣传片</a></li>
		                      <li><a href="#">电子杂志</a></li>
		                      <li><a href="#">精彩专题</a></li>
		                      <li><a href="#">导游词</a></li>
		                      <li><a href="#">图片廊</a></li>
		                    </ul>
		                  </div>
		                </div>
		              </li>
		              <!--影像旅游-->

		              <!--旅程推荐-->
		              <li class="m">
		                <h3><a href="#">旅程推荐</a></h3>
		                <div class="sub">
		                  <div class="menu-show">
		                    <img alt="图片" src="img/head-5.jpg" />
		                  </div>
		                  <div class="menu">
		                    <ul>
		                      <li><a href="#">一日游</a></li>
		                      <li><a href="#">二日游</a></li>
		                      <li><a href="#">乡村游</a></li>
		                    </ul>
		                  </div>
		                </div>
		              </li>
		              <!--旅程推荐-->

					  <!--旅游互动-->
		              <li class="m">
		                <h3><a href="#">旅游互动</a></h3>
		                <div class="sub">
		                  <div class="menu-show">
		                    <img alt="图片" src="img/head-6.jpg" />
		                  </div>
		                  <div class="menu">
		                    <ul>
		                      <li><a href="#">旅游微博</a></li>
		                      <li><a href="#">游记攻略</a></li>
		                      <li><a href="#">网站投票</a></li> 
		                    </ul>
		                  </div>
		                </div>
		              </li>
		              <!--旅游互动-->

		              <!--旅游服务-->
		              <li class="m">
		                <h3><a href="#">旅游服务</a> </h3>
		                <div class="sub">
		                  <div class="menu-show">
		                    <img alt="图片" src="img/head-7.jpg" />
		                  </div>
		                  <div class="menu">
		                    <ul>
		                        <li><a href="#">询问中心</a></li>
		                        <li><a href="#">温馨提示</a></li>  
		                        <li><a href="#">常见问题</a></li> 
		                        <li><a href="#">出游常识</a></li>  
		                        <li><a href="#">护照办理</a></li>
		                        <li><a href="#">A级景区名录</a></li>
		                        <li><a href="#">星级酒店名录</a></li>  
		                        <li><a href="#">旅行社名录</a></li>
		                    </ul>
		                  </div>
		                </div>
		              </li>
		              <!--旅游服务-->

		            </ul>
		        </div>
		    </div>

            <div class="logo"><a href="#"><img src="img/logo.jpg" /></a></div>
          
          </div>
        </div>
        <!--导航-->

        <!--清远介绍-->
        <div class="wrap effect">
			<h1>清远介绍</h1>
			<div class="paragraph">
				<img src="img/introduction-1.jpg" />
				<p>清远，中国广东省辖地级市。1988年1月7日经国务院批准设立，位于中国广东省中部，北江中下游，北面和东北面与韶关市为邻，东南和南面接广州市，南与佛山市接壤，西与肇庆市相连，是广东省面积最大的地级市。享有地方立法权。</p>
				<p>现辖清城区、清新区、佛冈县、阳山县、连南瑶族自治县、连山壮族瑶族自治县，并代管英德市、连州市两个县级市，共2区2市4县，总面积1.9万平方公里，2010年户籍人口约402万。</p>
				<p>清远旅游资源丰富，五大类资源各具特色，分布在各景区内的点达58处之多，是广东省旅游资源大市之一，素有“中国温泉之乡”、“中国龙舟之乡”、“中国漂流之乡”、“中国优秀旅游城市”、“中国宜居城市”等美誉。</p>
			</div>
		</div>
		<!--清远介绍-->

		<!--清远介绍三图-->
		<ul class="box">
			<li><img src="img/intro1.jpg"></li>
			<li><img src="img/intro2.jpg"></li>
			<li><img src="img/intro3.jpg"></li>
		</ul>
		<!--清远介绍三图-->

		<!--动态图标-->
		<div class="bar">
			<div class="scroll"></div>
		</div>
		<!--动态图标-->

		<!--卡片-->
		<div class="c1">
			<ul>
				<li><img src="img/introduction-2.png" /><a href="#">地理位置<span>广东省中北部</span></a></li>
			</ul>
			<ul>
				<li><img src="img/introduction-3.jpg" /><a href="#">气候条件<span>亚热带季风气候</span></a></li>
			</ul>
			<ul>
				<li><img src="img/introduction-4.jpg" /><a href="#">面积&nbsp;1.9万平方公里<span>人口&nbsp;383.45万</span></a></li>
			</ul>
			<ul>
				<li><img src="img/introduction-5.jpg" /><a href="#">市花<span>禾雀花</span></a></li>
			</ul>
		</div>
		<!--卡片-->

		<!--LOAD MORE-->
		<div class="load">
			<div class="middle"><a>LOAD MORE >></a></div>
		</div>
		<!--LOAD MORE-->

		<div class="foot"><p>copyright © 2016-2017 Qingyuan.com All Rights Reserved.</p></div>
    </div>
    </form>
    <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
	<script type="text/javascript" src="js/jquery.my-modal.1.1.js"></script>
	<script>
	    var m1 = new MyModal.modal(function () { });
	    $('.btn1').on("click", function () {
	        m1.show();
	    });
	</script>
</body>
</html>
