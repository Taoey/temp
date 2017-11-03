<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//Dtd HTML 4.01 transitional//EN" "http://www.w3c.org/tr/1999/REC-html401-19991224/loose.dtd">
<HTML>
<HEAD>
<TITLE>明迪科技系统</TITLE>
<link href="images/ico.ico" rel="shortcut icon">
<META http-equiv=Content-Type content="text/html; charset=gbk">
<META http-equiv=Content-Language content=zh-CN>
<META http-equiv=pragma content=no-cache>

<!-- 相关文件引入  -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
  
    <!-- jQuery文件务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<!-- CSS代码 -->                                     
<style>
	body {
	 	padding-top: 50px; }
	.headbox{
		padding:0px 1px 5px 1px;
	}
	.blockBodor{
	    border: 1px #ccc solid;
        border-radius: 6px;
        margin: 0px 0px 5px 0px;
        
	}
	#main-attr{
		margin:15px 5px 15px 0px;
	}
	.tags { padding:5px 5px 5px 3px; }
	.tags li { float:left; margin-right:10px; display:block; white-space:nowrap; height:25px; line-height:25px; width:auto; }
	.tags li a { display:block; }
	.tags-a:hover{
		color:#fff;
	}
	.footer{
		background-color:#337ab7;
	}
	 #footer-herf{
	 	color:#dedede;
	 }
	 .shuiguo_total{
	 	margin:0px 0px 10px 0px;
	 	font-size:16px;
	 }
	 .media-li{
	 	margin:0px 0px 5px 8px;
	 }
	 .glyphicon-search{
	 	width:14px;
	 	height:20px;
	 }
	 #right-gra{
	 	margin:15px 0px 0px 0px
	 }
	 
</style>



</HEAD>
<BODY>
	<!-- 头部导航栏 -->
    <div class="container"></div>
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#example-navbar-collapse">
                <span class="sr-only">切换导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">眀迪科技</a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="index.jsp">首页</a></li>
                <li><a class= "scrollToMain" href="#">实习招聘</a>
                	<script type="text/javascript">
                		$(document).ready(function(){
                		// Scroll page to the bottom
                		$('a.scrollToMain').click(function(){
                		$('html, body, .Main').animate({scrollTop: '300px'}, 1000);
                		return false;
                		});
                		})

                	</script>
                </li>
                <li><a href="qzindex.jsp">找实习</a></li>
                <li><a href="user.jsp">个人中心</a></li>
                <li><a title=登录 href="javascript:showlog();">[登录]</a></li>
                <li><a title=免费注册 href="regUsers.jsp" target=_blank>[免费注册]</a></li>
                <logic:notEmpty name="users">                		
                			<li ><a>您好&nbsp;${users.uname}！</a></li>
							<li ><a title=退出 href="javascript:logout();">[退出]</a>
                                <script
									type="text/javascript">
                                    function logout() {
									if (confirm("确定退出吗？")) {
										window.location = "users.do?method=logout&fromto=index";
									}
								}
							    </script></li> 	
                		

                </logic:notEmpty>

            </ul>
			<div action="#" class="navbar-form navbar-right">
			                <div class="input-group">
			                    <input name="wd" type="text" class="form-control" placeholder="快速搜索"id="limit_key" maxLength=100 onBlur="isblur();" onFocus="javascript:document.getElementById('limit_key').value='';"
 value='请输入信息' name="limit_key">
			                    <span class="input-group-btn">
			                     <button class="btn btn-default" name=image onclick="selGo();"><span class="glyphicon glyphicon-search"></span></button>
			                </span>
			                </div>
			                <script>
							 function isblur(){
							    if(document.getElementById('limit_key').value==""){
								   document.getElementById('limit_key').value="请输入信息";
								}
							 }
							 function selGo(){
							    var title=document.getElementById("limit_key").value;
							    if(title=="请输入信息"){
							       alert("请输入搜索内容");
							       return;
							    }
							    window.location="leaseShuiguo.do?method=searchShuiguoIndex&showPage=1&title="+title;
							 }
							</script>
			            </div>
			        </div>
			    </div>
			</nav>
	<!-- 轮播插件 -->
	<div class="column">
			<div class="carousel slide" id="carousel-527591">
				<ol class="carousel-indicators">
					<li class="active" data-slide-to="0" data-target="#carousel-527591">
					</li>
					<li data-slide-to="1" data-target="#carousel-527591">
					</li>
					<li data-slide-to="2" data-target="#carousel-527591">
					</li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img alt="" src="pics/banner01.jpg" />
						<div class="carousel-caption">
							<h4>
								First Thumbnail label
							</h4>
<!-- 							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p> -->
						</div>
					</div>
					<div class="item">
						<img alt="" src="pics/banner01.jpg" />
						<div class="carousel-caption">
							<h4>
								Second Thumbnail label
							</h4>
<!-- 							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p> -->
						</div>
					</div>
					<div class="item">
						<img alt="" src="pics/banner01.jpg" />
						<div class="carousel-caption">
							<h4>
								Third Thumbnail label
							</h4>
<!-- 							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p> -->
						</div>
					</div>
				</div> <a class="left carousel-control" href="#carousel-527591" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-527591" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
			</div>
		</div>
	<!--主体 -->
	<div class="Main container"  id="divMain">

			<div class="shuiguo_attribute col-md-9 col-xs-12">
				<div class="shuiguo_boxC ">

					<div class="shuiguo_box1  headbox">
						<dl>
							<ul class="tags">
								<li><Strong>区域选择:</Strong></li>
								<li><a class="bg-primary tags-a" href="leaseShuiguo.do?method=showShuiguoIndex&showPage=1"><span>全部</span></a></li>
															<logic:empty name="alist">
								<jsp:forward
									page="leaseShuiguo.do?method=showShuiguoIndex&showPage=1"></jsp:forward>
							</logic:empty>
							<logic:iterate id="areas" name="alist">
								<li><A class="" title=${areas.area }
									href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${showPage }
&areaName=${areas.area }&startPrice=${leaseShuiguoform.startPrice }&
endPrice=${leaseShuiguoform.endPrice }&shuiguoType=${leaseShuiguoform.shuiguoType }&
colore=${leaseShuiguoform.colore }&orderBy=${leaseShuiguoform.orderBy }">${areas.area }</A></li>
							</logic:iterate>
							</ul>
						</dl>
					</div>

					<div class="shuiguo_box  headbox">
						<dl>
							<ul class="tags">
								<li><StrONG>每日工资:</StrONG></li>
								<li><a class="bg-primary tags-a" href="leaseShuiguo.do?method=showShuiguoIndex&showPage=1"><span>不限</span></a></li>
								<li><A class="" title="30元以下"
								href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${showPage }&areaName=${leaseShuiguoform.areaName }&endPrice=0.5&shuiguoType=${leaseShuiguoform.shuiguoType }&colore=${leaseShuiguoform.colore }&orderBy=${leaseShuiguoform.orderBy }">30元以下</A></li>
								<li>							<A class="" title="30-80元"
								href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${showPage }&
areaName=${leaseShuiguoform.areaName }&startPrice=0.5&endPrice=1&
shuiguoType=${leaseShuiguoform.shuiguoType }&
colore=${leaseShuiguoform.colore }&orderBy=${leaseShuiguoform.orderBy }">30-80元</A></li>
								<li>							<A class="" title="80-130元"
								href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${showPage }&
areaName=${leaseShuiguoform.areaName}&startPrice=1&endPrice=5&
shuiguoType=${leaseShuiguoform.shuiguoType }&
colore=${leaseMiShuiguorm.colore }&orderBy=${leaseShuiguoform.orderBy }">80-130元</A></li>
								<li>							<A class="" title=130-180元
								href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${showPage }&
areaName=${leaseShuiguoform.areaName}&startPrice=5&endPrice=10&
shuiguoType=${leaseShuiguoform.shuiguoType }&
colore=${leaseShuiguoform.colore }&orderBy=${leaseShuiguoform.orderBy }">130-180元</A></li>
								<li>							<A class="" title=180-230元
								href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${showPage }&
areaName=${leaseShuiguoform.areaName}&startPrice=10&endPrice=50&
shuiguoType=${leaseShuiguoform.shuiguoType }&
colore=${leaseShuiguoform.colore }&orderBy=${leaseShuiguoform.orderBy }">180-230元</A></li>
								<li>							<A class="" title=230-280元
								href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${showPage }&
areaName=${leaseShuiguoform.areaName }&startPrice=50&endPrice=100&
shuiguoType=${leaseShuiguoform.shuiguoType }&
colore=${leaseShuiguoform.colore }&orderBy=${leaseShuiguoform.orderBy }">230-280元</A>
								</li>
								<li>							<A class="" title=280-330元
								href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${showPage }&
areaName=${leaseShuiguoform.areaName}&startPrice=100&endPrice=500&
shuiguoType=${leaseShuiguoform.shuiguoType }&
colore=${leaseShuiguoform.colore }&orderBy=${leaseShuiguoform.orderBy }">280-330元</A></li>
								<li>							<A class="" title=330元以上
								href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${showPage }&
areaName=${leaseShuiguoform.areaName }&startPrice=500&
shuiguoType=${leaseShuiguoform.shuiguoType }&
colore=${leaseShuiguoform.colore }&orderBy=${leaseShuiguoform.orderBy }">330元以上</A></li>
							</ul>
						</dl>
					</div>

					<div class="shuiguo_box  headbox">
						<dl>
							<ul class="tags">
								<li><StrONG>结账方式:</StrONG></li>
								<li><a class="bg-primary tags-a" href="leaseShuiguo.do?method=showShuiguoIndex&showPage=1"><span>不限</span></a></li>
								<li>							<A class="" title=时结
								href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${showPage }&
areaName=${leaseShuiguoform.areaName }&startPrice=${leaseShuiguoform.startPrice }&
endPrice=${leaseShuiguoform.endPrice }&shuiguoType=${leaseShuiguoform.shuiguoType }&
colore=1&orderBy=${leaseShuiguoform.orderBy }">
								时结</A></li>
								<li>							 <A class=""  title=日结
								href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${showPage }&
areaName=${leaseShuiguoform.areaName }&startPrice=${leaseShuiguoform.startPrice }&
endPrice=${leaseShuiguoform.endPrice }&shuiguoType=${leaseShuiguoform.shuiguoType }&
colore=2&orderBy=${leaseShuiguoform.orderBy }">日结</A></li>
								<li>							<A class="" title=月结
								href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${showPage }&
areaName=${leaseShuiguoform.areaName }&startPrice=${leaseShuiguoform.startPrice }&
endPrice=${leaseShuiguoform.endPrice }&shuiguoType=${leaseShuiguoform.shuiguoType }&
colore=3&orderBy=${leaseShuiguoform.orderBy }">月结</A></li>
								<li>							<A class="" title=年结
								href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${showPage }&
areaName=${leaseShuiguoform.areaName }&startPrice=${leaseShuiguoform.startPrice }&
endPrice=${leaseShuiguoform.endPrice }&shuiguoType=${leaseShuiguoform.shuiguoType }& colore=4&
orderBy=${leaseShuiguoform.orderBy }">年结</A></li>
								<li>							<A class="" title=五室以上
								href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${showPage }&
areaName=${leaseShuiguoform.areaName }&startPrice=${leaseShuiguoform.startPrice }&
endPrice=${leaseShuiguoform.endPrice }&shuiguoType=${leaseShuiguoform.shuiguoType }&
colore=6&orderBy=${leaseShuiguoform.orderBy }">其他</A></li>								
							</ul>
						</dl>

					</div>
					<script type="text/javascript">
						function searchgo() {

							var startPrice = document
									.getElementsByName("startPrice")[0].value;
							var endPrice = document
									.getElementsByName("endPrice")[0].value;
							var pre = /^\d+(\.\d+)?$/;

							if (startPrice == "" && endPrice == "") {
								alert("请输入搜索工资水平");
								return;
							}

							if (!pre.exec(startPrice) && startPrice != ""
									|| !pre.exec(endPrice) && endPrice != "") {
								alert("搜索工资输入不正确");
								return;
							}
							window.location = "leaseShuiguo.do?method=showShuiguoIndex&showPage=1&startPrice="
									+ startPrice + "&endPrice=" + endPrice;
						}
						function order_by() {
							var orderby = document.getElementsByName("orderBy")[0].value;
							window.location = "leaseShuiguo.do?method=showShuiguoIndex&showPage=1&orderBy="
									+ orderby;
						}
						function h_type() {
							var htype = document.getElementsByName("htypeId")[0].value;

							window.location = "leaseShuiguo.do?method=showShuiguoIndex&showPage=1&shuiguoType="
									+ htype;
						}
					</script>

					<div class="rent_filter  headbox">
					<html:form action="leaseShuiguo" method="post">
						<strong class="pull-left">工资：</strong>
						<div class="pull-left">
							<html:text property="startPrice" size="5" maxlength="10" /> -
							<html:text property="endPrice" size="5" maxlength="10" />&nbsp&nbsp元&nbsp&nbsp
						</div>

						<INPUT class="pull-left" onclick="searchgo();" type=button value=筛选>
						<logic:notEmpty name="hlist">
	  					<strong class="pull-left" >&nbsp&nbsp学历:&nbsp&nbsp</strong>

	  					<div class="pull-left">
	  						<html:select property="htypeId" onchange="h_type();">
										<html:optionsCollection name="hlist" value="id" label="type" />
							</html:select>
	  					</div>
						<!-- Single button -->

						</logic:notEmpty>

						<div class="">
							<html:select property="orderBy" title="默认时发布时间从新到旧"
								onchange="order_by();">
								<html:option value="0">默认排序</html:option>
								<html:option value="acreageDESC">重量从高到低</html:option>
								<html:option value="acreage">重量从低到高</html:option>
								<html:option value="priceDESC">价格从高到低</html:option>
								<html:option value="price">价格从低到高</html:option>
								<html:option value="time">发布时间从旧到新</html:option>
							</html:select>
						</div>


					</html:form>



					</div>
				</div>
			</div>
	<!----------------------------------------------------------  -->		
			
			<div class="left col-md-9 col-xs-12 ">
				<div id= "main-attr" class=" blockBodor" >
						<div class="shuiguo_total text-center" >
							共有<StrONG>${allCount }</StrONG>条符合条件的信息
						</div>
					<div class=search_list>
						<uL id=list_box class="media-list">	
							<logic:notEmpty name="rlList">
								<logic:iterate id="shuiguo" name="rlList">
									<LI class="media media-li">
										
										<!-- 没有图片 -->
										<logic:empty name="shuiguo" property="img">
											<A class="pull-left" title="暂无图片"
												href="leaseShuiguo.do?method=getleaseShuiguo&id=${shuiguo.id }"
												target=_blank alt="通用的占位符图像"> <img src="images/no-pic2.gif" height="60" width="80">
											</A>
										</logic:empty>
										<!-- 有图片 -->
										<logic:notEmpty name="shuiguo" property="img">
											<A class="pull-left" title="${shuiguo.title }，${shuiguo.areaType.area }"
												href="leaseShuiguo.do?method=getleaseShuiguo&id=${shuiguo.id }"
												target=_blank alt="通用的占位符图像"> <img src="uploadIMG/${shuiguo.img }" height="60" width="80">
											</A>
										</logic:notEmpty>
										
										<div class="media-body">										
											<H4 class="media-heading">
												<A  title=""
													href="leaseShuiguo.do?method=getleaseShuiguo&id=${shuiguo.id }"
													target=_blank> ${shuiguo.title }，${shuiguo.areaType.area },${shuiguo.shuiguoType.type }
												</A>
											</H4>
											
												<P class=link_dark>公司待遇：${shuiguo. esthment}</P>
		
												<P>招聘人数：${shuiguo.acreage }人</P>
												<P class="link_dark">发布时间：${shuiguo.time }</P>
												
												<div class=area>
													<span>${shuiguo.colore }结账方式 &nbsp/每周可工作${shuiguo.sort
														}天 &nbsp/${shuiguo.kind }工作经验</span>
												</div>
												<div class=price>
													<StrONG>${shuiguo.pirce }</StrONG>元/天												
												</div>
												<hr>
									
										</div>
									</LI>
								</logic:iterate>
							</logic:notEmpty>	
						</uL>
					</div>
					<div class="pages_box left text-center">
					<div class="page_con">
						<span>${showPage }/${allPage }</span> <A
							href="leaseShuiguo.do?method=showShuiguoIndex&showPage=1
&areaName=${leaseShuiguoform.areaName }&startPrice=${leaseShuiguoform.startPrice }&
endPrice=${leaseShuiguoform.endPrice }&shuiguoType=${leaseShuiguoform.shuiguoType }&
colore=${leaseShuiguoform.colore }&orderBy=${leaseShuiguoform.orderBy }">首页</A>
						<logic:notEqual value="1" name="showPage">
							<A
								href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${showPage-1 }
&areaName=${leaseShuiguoform.areaName }&startPrice=${leaseShuiguoform.startPrice }&
endPrice=${leaseShuiguoform.endPrice }&shuiguoType=${leaseShuiguoform.shuiguoType }&
colore=${leaseShuiguoform.colore }&orderBy=${leaseShuiguoform.orderBy }">上一页</A>
						</logic:notEqual>
						<logic:lessThan value="${allPage}" name="showPage">
							<A
								href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${showPage+1 }
&areaName=${leaseShuiguoform.areaName }&startPrice=${leaseShuiguoform.startPrice }&
endPrice=${leaseShuiguoform.endPrice }&shuiguoType=${leaseShuiguoform.shuiguoType }&
colore=${leaseShuiguoform.colore }&orderBy=${leaseShuiguoform.orderBy }">下一页</A>
						</logic:lessThan>
						<A
							href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${allPage }
&areaName=${leaseShuiguoform.areaName }&startPrice=${leaseShuiguoform.startPrice }&
endPrice=${leaseShuiguoform.endPrice }&shuiguoType=${leaseShuiguoform.shuiguoType }&
colore=${leaseShuiguoform.colore }&orderBy=${leaseShuiguoform.orderBy }">尾页</A>

						<br>
					</div>
				</div>
				  
				</div>
			</div>
		
   			<div id="right-gra" class="right col-md-3 col-xs-12 blockBodor">

			<div class=look_shuiguo>
	<div class=right_title1>
		<H5>最近看过实习招聘信息</H5>
	</div>
	<UL>
		<logic:notEmpty name="users">
			<logic:notEmpty name="cookieShuiguo">
				<logic:iterate id="r" name="cookieShuiguo" length="10">
					<LI><A class="pull-left" title="${r.title }" href="shuiguoInfo.jsp"
						target="_blank"> ${r.areaType.area }，${r.colore }结账方式/每周可工作${r.sort }天
					</A>--<span class=pay_2>${r.pirce }元/天</span></LI>
				</logic:iterate>
			</logic:notEmpty>
		</logic:notEmpty>
	</UL>
</div>
			<div class=look_shuiguo>
	        <div class=right_title1>
		<H5>最新发布的信息</H5>
	</div>

	      <logic:notEmpty name="list">
		<logic:iterate id="tshuiguo" name="list" length="5">
			<div class=multi_pic>
				<!-- 没有图片 -->
				<logic:empty name="tshuiguo" property="img">
					<div class=multi_pic_l>
						<A class="pull-left" title="暂无图片"
							href="leaseShuiguo.do?method=getleaseShuiguo&id=${tshuiguo.id }"
							target=_blank> <img src="images/no-pic2.gif" height="60"
							width="80">
						</A>
					</div>
				</logic:empty>
				<!-- 有图片 -->
				<logic:notEmpty name="tshuiguo" property="img">
					<div class=multi_pic_l>
						<A class="pull-left" title="${tshuiguo.title }，${tshuiguo.areaType.area }"
							href="leaseShuiguo.do?method=getleaseShuiguo&id=${tshuiguo.id }"
							target=_blank> <img src="uploadIMG/${tshuiguo.img }"
							height="60" width="80"></A>
					</div>
				</logic:notEmpty>


				<div class=multi_pic_r>
					<A
						href="leaseShuiguo.do?method=getleaseShuiguo&id=${tshuiguo.id }"
						target=_blank>${tshuiguo.title }(${tshuiguo.areaType.area })</A>
					<BR> ${tshuiguo.colore }结账方式/每周可工作${tshuiguo.sort }天/${tshuiguo.kind }工作经验
					<BR>
					<span class=pay_1></span>
					<hr>
				</div>
			</div>
		</logic:iterate>
	</logic:notEmpty>

</div>

			</div>
	</div>


	<div class=clear></div>
	<div class=footer>
				<div style="HEIGHT: 10px">
					<span></span>
				</div>
				<div style="PADDING-TOP: 5px; TEXT-ALIGN: center;  color:#dedede">Copyright
					2016 http://www.qau.edu.cn/ All Rights Reserved</div>
				<div  style="PADDING-TOP: 5px; TEXT-ALIGN: center;" align=center>
					<span><A id="footer-herf" href="">鲁ICP备13028537号</A></span>
				</div>
			</div>
			
	<div id="mid"
		style="z-index: 211; position: absolute; top: 0px; left: 0px; background-color: #fff; width: 100%; height: 350%; display: none;"></div>
	<div id="log"
		style="z-index: 222; position: absolute; top: 25%; left: 30%; display: none; width: 222px;">
		<form name=form1 onSubmit="return checklogin();"
			action="users.do?method=usersLogin" method=post>
			<input type="hidden" name="fromto" value="index">
			<table style="BORDER-LEFT: #bcbcbc 1px solid" cellSpacing=0
				cellPadding=0 width=600 align=center border=0>
				<TBODY>
					<tr>
						<td width=222 background=images/img_title2.gif align="left"
							height=58><font color=#417eb2 size="4">&nbsp;&nbsp;<b>用户登录</b></font></td>
						<td align="center" width=57 background=images/img_title2.gif>
						</td>
						<td style="BORDER-RIGHT: #bcbcbc 1px solid" align=right width=210
							background=images/img_title2.gif><span onclick="hidlog();"
							style="cursor: pointer; color: #417eb2;"><img
								src="image/del.gif">[关闭]</span> &nbsp;</td>
					</tr>
					<tr>
						<td colspan=3>
							<table
								style="BORDER-RIGHT: #bcbcbc 1px solid; BORDER-TOP: #bcbcbc 1px; BORDER-BOTTOM: #bcbcbc 1px solid"
								cellSpacing=0 cellPadding=0 width="100%" align=center
								bgColor=#f4fff8 border=0>
								<TBODY>
									<tr>
										<td><BR>
											<table cellSpacing=0 cellPadding=4 width=400 align=center
												border=0>
												<TBODY>
													<tr>
														<td><IMG height=9 src="images/dot_dot01.gif" width=9
															align=absMiddle>&nbsp;&nbsp;<FONT color=#417eb2>请输入您的用户名和密码！</FONT>
														</td>
													</tr>
												</TBODY>
											</table>
											<table cellSpacing=0 cellPadding=4 width=400 align=center
												border=0>
												<TBODY>
													<tr>
														<td colspan=2 height=10></td>
													</tr>
													<tr>
														<td align=right width="40%"><FONT color=#333333>用户名：</FONT></td>
														<td align=left><INPUT class=txtinput1 tabIndex=1
															id="uname" name="uname">&nbsp;&nbsp;<A
															href="regUsers.jsp" target="_blank">立即注册</A></td>
													</tr>
													<tr>
														<td colspan=2 height=5></td>
													</tr>
													<tr>
														<td align=right><FONT color=#333333>密 码：</FONT></td>
														<td align=left><INPUT class=txtinput1 tabIndex=2
															type=password name="upwd" id="upwd">&nbsp;&nbsp;
														</td>
													</tr>
													<tr>
														<td colspan=2 height=5></td>
													</tr>
													<tr>
														<td colspan=2 height=5></td>
													</tr>
													<tr>
														<td colspan=2></td>
													</tr>
												</TBODY>
											</table></td>
									</tr>
									<tr>
										<td>
											<P>&nbsp;</P>
											<P align=center>
												<INPUT type=image width=103 src="images/btn_login.gif"
													border=0 name=imageField> <A
													onClick="return false;" href="#"><IMG
													onclick="form1.reset();return false;" height=26
													src="images/btn_reset.gif" width=103 border=0></A>
											</P>
											<P>&nbsp;</P>
										</td>
									</tr>
								</TBODY>
							</table>
						</td>
					</tr>
				</TBODY>
			</table>
		</form>
	</div>
	<script type="text/javascript">
		function showlog() {
			document.getElementById("log").style.display = "block";
			document.getElementById("mid").style.filter = "alpha(opacity=10)";
			document.getElementById("mid").style.display = "block";

		}
		function hidlog() {
			document.getElementById("log").style.display = "none";
			document.getElementById("mid").style.filter = "alpha(opacity=100)";
			document.getElementById("mid").style.display = "none";

		}
		function checklogin() {
			var uname = document.getElementById("uname");
			var upwd = document.getElementById("upwd");
			if (uname.value == "") {
				alert("请输入你的用户名!");
				uname.focus();
				return false;
			}
			if (upwd.value == "") {
				alert("请输入你的密码?");
				upwd.focus();
				return false;
			}
			return true;
		}
	</script>

</BODY>
</HTML>