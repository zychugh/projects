<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tourist-attraction.aspx.cs" Inherits="tourist_attraction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>旅游景点</title>
    <link rel="stylesheet" type="text/css" href="css/jquery.my-modal.1.1.winStyle.css" />
    <link href="css/tourist-attraction.css" rel="stylesheet" />
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

        <!--广告-->
        <div id="pn">
	        <div id="white"><img id="ad" src="img/tourA-1.jpg" /></div>
      	</div>
		<div class="content">
			WELCOME TO QINGYUAN
		</div>
        <!--广告-->

        <div class="mainbody">
            <div style="overflow: hidden;">
                <!--左上-->
                <div class="leftBar">
			        <div class="leftTop">旅游景点<span>Tourist Attraction</span></div>
			        <ul class="list">
				        <li>都市风貌</li>
				        <li>自然生态</li>
				        <li>其它景点</li>
			        </ul>
                </div>
			    <!--右上-->
			    <div class="rightbar">
				    <img src="img/tourA-2.jpg" />
				    <div class="paras">
					    <p style="font-size: 18px; border-bottom: 1px dotted #000;">“ 山水湖城，岭南绿都 ”</p>
					    <p style="font-size: 20px">绿环、绿楔、河流</p>
					    <p style="font-size: 17px; font-style: italic; height: 30px; line-height: 30px;">星座城市</p>
				    </div>
			    </div>
            </div>

			<!--list-->
			<div class="tip">
				<span style="cursor: pointer;">List</span>
				<span class="b1"></span>
				<span class="b2"></span>
				<span class="b3"></span>
			</div>
			<!--list-->

			<!--菱形-->
			<ul class="triangle">
				<li class="t1"><img src="img/tourA-3.jpg" /></li>
				<li class="t2"><img src="img/tourA-4.jpg" /></li>
				<li class="t3"><img src="img/tourA-5.jpg" /></li>
				<li class="t4"><img src="img/tourA-6.jpg" /></li>
				<li class="t5"><img src="img/tourA-7.jpg" /></li>
			</ul>
			<!--菱形-->

			<!--More-->
			<div class="contain">
				<div class="blank"></div>
				<div class="diamond"><span>More</span></div>
				<div class="check">
					<div class="checkL">
						<img src="img/tourA-8.jpg" />
						<div class="explanation">
							<p class="p1">广东第一峰</p>
							<p class="p2">景点级别 AAAA级</p>
							<p class="p3">空气负离子含量为广东省之最</p>
							<div class="click">Search Now →</div>
						</div>
					</div>
					<div class="checkR">
						<ul class="pics">
							<li>
								<div><img src="img/tourA-9.jpg" /></div><span>连州地下河</span>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!--More-->
		    <div class="foot"><p>copyright © 2016-2017 Qingyuan.com All Rights Reserved.</p></div>
        
        </div>
        <script type="text/javascript">
            var h = 0;
            function addH() {
                if (h < 450) {
                    h += 5;
                    document.getElementById("pn").style.height = h + "px";
                    document.getElementById("white").style.height = h + "px";
                    document.getElementById("ad").style.height = h + "px";
                }
                else {
                    return;
                }
                setTimeout("addH()", 20);
            }
            window.onload = function showAds() {
                addH();
                setTimeout("subH()", 5000);
            }
            function subH() {
                if (h > 0) {
                    h -= 5;
                    document.getElementById("pn").style.height = h + "px";
                    document.getElementById("white").style.height = h + "px";
                    document.getElementById("ad").style.height = h + "px";
                }
                else {
                    document.getElementById("pn").style.display = "none";
                    document.getElementById("white").style.display = "none";
                    document.getElementById("ad").style.display = "none";
                    return;
                }
                setTimeout("subH()", 15);
            }
  		</script>   
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
