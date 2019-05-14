<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>清远旅游</title>
    <link href="css/index.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="css/jquery.my-modal.1.1.winStyle.css" />
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
		                <h3><a href="#">首页</a></h3>
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

        <!--轮播-->
        <div class="wrap">
		    <img src="img/lunbo-1.jpg" alt="" />
		    <img src="img/lunbo-2.jpg" alt="" />
		    <img src="img/lunbo-3.jpg" alt="" />
		    <img src="img/lunbo-4.jpg" alt="" />
		    <div class="follow">
		      <span></span>
		      <span></span>
		      <span></span>
		      <span></span>
		    </div>
		    <a href="javascript:;" id="leftBut" class="arrow" style="text-decoration: none;">&lt;</a>
		    <a href="javascript:;" id="rightBut" class="arrow" style="text-decoration: none;">&gt;</a>
  		</div>
        <!--轮播-->

		<div class="welcome">
	      <div>
			<p>清远旅游欢迎你！</p>
	      </div>
	    </div>

        <!--系列-->
        <div class="series">
	        <ul>
	            <li>
                    <asp:Image ID="walking" runat="server" ImageUrl="img/series-1.jpg" ToolTip="行在清远" />
	                <a href="#">行在清远</a>
	            </li>
	            <li>
                    <asp:Image ID="living" runat="server" ImageUrl="img/series-2.jpg" ToolTip="住在清远" />
	                <a href="hotel.aspx" target="_blank">住在清远</a>
	            </li>
	            <li>
                    <asp:Image ID="eating" runat="server" ImageUrl="img/series-3.jpg" ToolTip="食在清远" />
	                <a href="eating.aspx" target="_blank">食在清远</a>
	            </li>
	        </ul>
        </div>
        <!--系列-->
        
        <!--新闻-->
        <div class="news">
          <div class="newsBody">
              
            <!--左边-->
            <div class="hotNews">
                <div class="title">
                  <h2><a href="#">热点要闻</a> </h2>
                </div>
	            <div class="news_list">
	                <ul>
	                    <li>
	                        <div class="news_date"><p>&nbsp;12月5日</p></div>
	                        <div class="news_content">
	                            <h3><a href="#">江北的樱花开了，来清远看樱花</a></h3>
	                            <p><a href="#">天气虽冷，江北的樱花却开放正盛。不少市民冒雨观赏樱花，伴着樱花树...</a></p>
	                        </div>
	                    </li>
	                    <li>
	                        <div class="news_date"><p>&nbsp;12月5日</p></div>
	                        <div class="news_content">
	                            <h3><a href="#">清远高速车流总量390万车次</a></h3>
	                            <p><a href="#">春节假期清远市5大高速公路车流总量约390万车次,日均约55万车次...</a></p>
	                        </div>
	                    </li>
	                    <li>
	                        <div class="news_date"><p>&nbsp;12月5日</p></div>
	                        <div class="news_content">
	                            <h3><a href="#">“彩凤”展翅金碧辉煌 惊艳清远</a></h3>
	                            <p><a href="#">入夜后的清远江滨公园，璀璨夺目的迎春花灯将北江夜色装饰得格外喜庆...</a></p>
	                        </div>
	                    </li>
	                </ul>
	            </div>
            </div>
            <!--左边-->

            <!--右边-->
	        <div id="tab">
                <div class="tabTitle">
		            <h3 class="up" id="two1" onmouseover="setContentTab('two',1,4)"><a href="#" style="color: #fff;">清远新闻</a></h3>
		        
                    <h3 id="two2" onmouseover="setContentTab('two',2,4)"><a href="#" style="color: #fff;">广东新闻</a></h3>
                
                    <h3 id="two3" onmouseover="setContentTab('two',3,4)"><a href="#" style="color: #fff;">国内新闻</a></h3>
                
                    <h3 id="two4" onmouseover="setContentTab('two',4,4)"><a href="#" style="color: #fff;">国际新闻</a></h3>
                </div>
                <%
                    int i;
                    for (i = 0; i < this.news_title.Length; i++){                        
                %>   
                <div class="<% if (i == 0) Response.Write("block"); %> tabContent" id="con_two_<% Response.Write(i + 1); %>">                                          
		        	<ul>                                                   		                
                        <a href="javascript:;"><p class="newsTitle" ><% Response.Write(this.news_title[i]); %></p></a>
                        <p class="newsContent"><% Response.Write(this.news_content[i]); %></p>                                
		            </ul> 
                    <div style="display:<% if (i == 0) Response.Write("block"); else Response.Write("none");  %>">                    
		                <ul style="margin-top:8px;">
		                    <li>
		                        <a href="#">清远春节返程高峰各大高速未见拥堵</a>
		                        <span>2018-12-05</span>
		                    </li>
		                  
		                    <li>
		                        <a href="#">清远市规定市区网约车准入条件</a>
		                        <span>2018-12-05</span>
		                    </li>
		                  
		                    <li>
		                        <a href="#">建议省政府加强对一体化发展的统筹</a>
		                        <span>2018-12-05</span>
		                    </li>
		                  
		                    <li>
		                        <a href="#">让清远一年比一年漂亮 人民一年比一年幸福</a>
		                        <span>2018-12-05</span>
		                    </li>
		                  
		                    <li>
		                        <a href="#">省人大代表会上的“最炫民族风”</a>
		                        <span>2018-12-05</span>
		                    </li>
		                </ul> 
                    </div>
                    <div style="display:<% if (i == 1) Response.Write("block"); else Response.Write("none"); %>">                   
		                <ul style="margin-top:8px;">
		                    <li>
		                        <a href="#">罗定美味 吃定你的胃</a>
		                        <span>2018-12-05</span>
		                    </li>
		                    <li>
			                    <a href="#">莽山森林温泉推出冰雪嘉年华活动</a>
			                    <span>2018-12-05</span>
			                </li>
		                    <li>
			                    <a href="#">陈村6.8公里年花长龙迎春</a>
			                    <span>2018-12-05</span>
		                    </li>
		                    <li>
			                    <a href="#">信宜李花节开幕</a>
			                    <span>2018-12-05</span>
		                    </li>
		                    <li>
			                    <a href="#">新春到 花儿争奇斗艳</a>
			                    <span>2018-12-05</span>
		                    </li>
		                </ul>
                    </div>
                    <div style="display:<% if (i == 2) Response.Write("block"); else Response.Write("none"); %>">    
                        <ul style="margin-top:8px;">
			                <li>
				                <a href="#">新景点免门票 新春又有新玩意</a>
				                <span>2018-12-05</span>
			                </li>
		                    <li>
				                <a href="#">去冷极挑战温差50℃</a>
				                <span>2018-12-05</span>
		                    </li>
			                <li>
				                <a href="#">平遥 迎春闹社火</a>
				                <span>2018-12-05</span>
			                </li>
			                <li>
				                <a href="#">春节游香港逛玩有新意</a>
				                <span>2018-12-05</span>
			                </li>
			                <li>
				                <a href="#">超级俱乐部打造冬季沙漠徒步赛事</a>
				                <span>2018-12-05</span>
			                </li>
		                </ul>   
                     </div>
                    <div style="display:<% if (i == 3) Response.Write("block"); else Response.Write("none"); %>">   
                          <ul style="margin-top:8px;">
		                      <li>
			                    <a href="#">余音绕梁汉堡尽浪漫</a>
			                    <span>2018-12-05</span>
		                      </li>
		                      <li>
			                    <a href="#">跨半球 追天寒地冻</a>
			                    <span>2018-12-05</span>
		                      </li>
		                      <li>
			                    <a href="#">直飞航线增长30% 加拿大游跌破万元</a>
			                    <span>2018-12-05</span>
		                      </li>
		                      <li>
			                    <a href="#">香港快运航空 开通塞班岛直航航班</a>
			                    <span>2018-12-05</span>
		                      </li>
		                      <li>
			                    <a href="#">香港快运航空开通来往塞班岛直航</a>
			                    <span>2018-12-05</span>
		                      </li>
		                  </ul> 
                    </div>         
		        </div>                		     		        
                <% } %>
	        </div>
	        <!--右边-->

	      </div>
	    </div>

		<div class="footer">copyright © 2016-2018 Qingyuan.com All Rights Reserved.</div>

		<script type="text/javascript">
			var images = document.querySelectorAll('.wrap img');
			var spans = document.querySelectorAll('.follow span');
			var leftBut = document.getElementById('leftBut');
			var rightBut = document.getElementById('rightBut');
			function showImage(index) {
			    for (var i = 0; i < images.length; i++) {
			        spans[i].index = i;
			        images[i].index = i;
			        images[i].style.zIndex = 100 - i;
			        images[i].style.opacity = '0';
			        spans[i].style.background = 'gray';
			    }
			    images[index].style.opacity = '1';
			    spans[index].style.background = 'white';
			}
			showImage(0);
			var count = 1;
			function imageMove() {
			    if (count % 4 == 0) {
			        count = 0;
			    }
			    showImage(count);
			    count++;
			}
			var imageInitialMove = setInterval('imageMove()', 2000);
			leftBut.onclick = function () {
			    clearInterval(imageInitialMove);
			    if (count == 0) {
			        count = 4;
			    }
			    count--;
			    showImage(count);
			    imageInitialMove = setInterval('imageMove()', 2000);
			}
			rightBut.onclick = function () {
			    clearInterval(imageInitialMove);
			    imageMove();
			    imageInitialMove = setInterval('imageMove()', 2000);
			}
			for (var i = 0; i < spans.length; i++) {
			    spans[i].onclick = function () {
			        clearInterval(imageInitialMove);
			        count = event.target.index;
			        showImage(count);
			        imageInitialMove = setInterval('imageMove()', 2000);
			    }
			}
			function setContentTab(name, curr, n) {
			    for (i = 1; i <= n; i++) {
			        var menu = document.getElementById(name + i);
			        var cont = document.getElementById("con_" + name + "_" + i);
			        menu.className = i == curr ? "up" : "";
			        if (i == curr) {
			            cont.style.display = "block";
			        }
			        else {
			            cont.style.display = "none";
			        }
			    }
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
