<%@ Page Language="C#" AutoEventWireup="true" CodeFile="eating.aspx.cs" Inherits="eating" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>食在清远</title>    
    <link rel="stylesheet" type="text/css" href="css/jquery.my-modal.1.1.winStyle.css" />
    <link href="css/eating.css" rel="stylesheet" />
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
		                      <li><a href="introduction.aspx" target="_blank">清远介绍</a></li>
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
		                      <li><a href="#">食在清远</a></li>
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

		<div class="topPic">
			<img src="img/eatingBgp.png" width="100%" height="500px" />
		</div>

		<div class="mainbody">
		    <!--列表-->
			<div class="leftTop">食在清远<span>Shi Zai Qing Yuan</span></div>
			<ul class="list">
				<li>清远小吃</li>
				<li>美食名店</li>
				<li>美食街区</li>
			</ul>
			<!--列表-->
			<!--清远特产-->
			<div class="pictures">
				<div class="sticker example-1"></div>
				<ul class="heading">九龙豆腐<span></span>
					<li>九龙豆腐是九龙镇的特产，以当地特有山水磨豆制成，吃来口感嫩滑、豆香盈口，在英德人人皆知。如果要吃到正宗的九龙豆腐就必须到九龙镇。</li>
				</ul>
	    		<div class="sticker example-2"></div>
	    		<ul class="heading">清远麻鸡<span></span>
	    			<li>清远美食特产白切鸡的独特的做法保持了清远鸡的原味，香、滑、爽兼俱，可算得上“清远第一菜”。到了清远，一定要吃一道正宗的清远白切鸡。</li>
	    		</ul>
	    		<div class="sticker example-3"></div>
	    		<ul class="heading">东乡蒸肉<span></span>
	    			<li>东乡蒸肉是英德乡一带的客家风味美食，将猪腩肉（或猪蹄）先用油炸一炸，然后加入烧酒等调料，再放到蒸笼中蒸透，拌上炒芝麻，吃起来香滑却不肥腻。</li>
	    		</ul>
	    		<div class="more">&nbsp;&nbsp;&nbsp;MORE>></div>
			</div>
			<!--清远特产-->
        </div>
	
	    <div class="foot"><p>copyright © 2016-2017 Qingyuan.com All Rights Reserved.</p></div>
    </div>	
    </form>
    <script src="js/sticker.min.js"></script>
    <script type="text/javascript">
    	window.onload = function () {
    	    Sticker.init('.sticker');
    	}
    </script>
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
