<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hotel.aspx.cs" Inherits="hotel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>住在清远</title>
    <link rel="stylesheet" type="text/css" href="css/jquery.my-modal.1.1.winStyle.css" />
    <link href="css/hotel.css" rel="stylesheet" />
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
		                      <li><a href="eating.aspx" target="_blank">食在清远</a></li>
		                      <li><a href="#" target="_blank">旅游景点</a></li>
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
			<img src="img/hotel-1.png" width="100%" height="500px" />
		</div>

        <div class="mainbody">
        	<div class="topBody">
        	    <!--列表-->
				<div class="leftTop">住在清远<span>Zhu Zai Qing Yuan</span></div>
				<ul class="list">
					<li>清远地产</li>
					<li>星级酒店</li>
					<li>经济酒店</li>
					<li>度假村</li>
				</ul>
				<!--列表右边-->
				<div class="explanation">					
                    <div class="exLeft">
                        <p class="english">landed property</p>
					    <p class="chinese">清远地产</p>
                    </div>	
                    <div class="more"><a class="btn">Request Information <span>→</span></a></div>				
					<p class="details">清远楼市节后回暖迅速，周成交量两连升。上周（2.13-2.19）一共网签成交1517套，环比上涨14.14%，成交均价维持近几个月的稳定势头，基本不变，报5464.18元/平方米，轻微下降4.5元/平方米。根据清远住建局数据显示，在经历春节假期的低谷后，清远楼市反弹较大的，继之前急升274.37%之后，上周又有1500+套的成绩，已超过了平时的周成交量。</p>
				</div>
			</div>
			<!--恒大酒店-->
			<div class="bottomBody">
				<div class="list1">
					<div class="circle1"><img src="img/hotel-2.jpg" /></div>
					<p>清远恒大酒店——清远市首家白金七星标准的绿色国际会议度假酒店，位于中国首席4A级景区别墅典范——清远恒大金碧天下，位于清连高速门前，距白云机场只需40分钟车程，并有往返于广州和清远的穿梭巴士免费接送，交通便利至极。</p>
				</div>
			<!--喜来登酒店-->
				<div class="list2">
					<div class="circle2"><img src="img/hotel-3.jpeg" /></div>
					<p>狮子湖喜来登酒店——具有浓郁阿拉伯风情建筑的临湖度假酒店。酒店内附设购物商场、商品街、水幕电影、园林景观。酒店拥有完善的喜来登配套设施，尽显喜来登特色。狮子湖内配套设施完善齐全，渔人码头引领客人感受顶尖生活的奢华、浪漫与温馨。</p>
				</div>
			<!--三幅图-->
				<ul class="pics">
					<li><div><img src="img/hotel-4.jpg" /></div><span>维也纳酒店</span></li>
					<li><div><img src="img/hotel-5.jpg" /></div><span>广珈商务酒店</span></li>
					<li><div><img src="img/hotel-6.jpg" /></div><span>喆啡酒店</span></li>
				</ul>
			</div>
		</div>
		<p class="foot">copyright © 2016-2017 Qingyuan.com All Rights Reserved.</p>
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
