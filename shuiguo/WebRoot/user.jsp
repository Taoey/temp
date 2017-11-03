<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
	<head>

		<title>用户中心</title>
<link href="images/ico.ico" rel="shortcut icon">
		<LINK href="files/public.css" type=text/css rel=stylesheet>
		<LINK href="files/user.css" type=text/css rel=stylesheet>
		<LINK href="files/style.css" type=text/css rel=stylesheet>
		<LINK href="files/page.css" type=text/css rel=stylesheet>

		<logic:empty name="users">
			<logic:redirect href="userLogin.jsp"></logic:redirect>
		</logic:empty>
		<style type="text/css">
<!--
#shuiguoInfo {
	font-size: 12px;
	display: none;
}
-->
</style>
		<SCRIPT language=javascript src="files/Zly.js"></SCRIPT>

		<SCRIPT language=javascript src="files/ajax.js"></SCRIPT>

		<SCRIPT language=JavaScript src="files/Validator.js"></SCRIPT>

		<SCRIPT language=javascript src="files/ShuiguoAdd.js"></SCRIPT>

		<SCRIPT language=javascript src="files/fajax.js"></SCRIPT>

		<SCRIPT language=javascript src="files/comm.js"></SCRIPT>
		<!-- DWR -->
		<script type='text/javascript' src='dwr/engine.js'></script>
		<script type='text/javascript' src='dwr/interface/image.js'></script>
		<script type='text/javascript' src='dwr/interface/leaseShuiguo.js'></script>
	<BODY>

		<div style="z-index: 1" id="alldiv">
			<DIV id="header">
				<DIV style="HEIGHT: 40px">
					<DIV style="FLOAT: left; WIDTH: 300px">
						<H1 title=eeju>
							<A href="index.jsp"><IMG alt=eeju src="image/logo.jpg" width="180" height="50">
							</A>
						</H1>
					</DIV>
					<DIV style="PADDING-RIGHT: 10px; FLOAT: right; TEXT-ALIGN: right">
						您好,
						<b>${users.uname }</b> [
						<A href="javascript:logout();">退出</A>]
						<SPAN>|</SPAN>
						<A class=home style="MARGIN-TOP: 3px" href="index.jsp">返回首页</A>
						<script type="text/javascript">
   function logout(){
     if(confirm("你确定要退出吗？")){
        window.location="users.do?method=logout&fromto=user";
     }
   }
</script>
					</DIV>

					<div>
						<br>
					</div>
					<DIV class=header_BottomC1>
						<DIV class=nav_second>
							<UL>
								<LI class=nav_second1 style="WIDTH: 130px">
									&nbsp;
								</LI>
								<LI class=nav_second1 style="WIDTH: 130px">
									<A href="index.jsp">首页</A>
								</LI>
								<LI class=nav_second1 style="WIDTH: 130px">
									<A href="index.jsp">实习招聘</A>
								</LI>
								<LI class=nav_second1 style="WIDTH: 130px">
									<A href="qzindex.jsp">找实习</A>
								</LI>

								<LI class=nav_second1 style="WIDTH: 130px">
									<A href="user.jsp">个人中心</A>
								</LI>
							</UL>
						</DIV>
						<div align="left">
							&nbsp;&nbsp;
							<A href="index.jsp">首页</A> &gt;
							<A href="user.jsp">用户中心</A> &gt;&gt;
							<font color="#0000FF">个人信息</font>

						</div>
					</DIV>


					<SCRIPT src="files/jquery-1.3.min.js" type=text/javascript></SCRIPT>

					<SCRIPT language=JavaScript src="files/ymPrompt.js"></SCRIPT>
					<LINK id=skin href="files/ymPrompt.css" type=text/css
						rel=stylesheet>


					<DIV class=content>

						<DIV id="left" align="left"
							style="border-style: solid; border-width: 1px; border-color: #CCCCCC">
							<H2>
								<STRONG title=用户中心></STRONG>
								<DIV class=adorn1></DIV>
								<DIV class=adorn2></DIV>
							</H2>
							<DL>
								<DT>
									我的账户
								</DT>
								<DD>
									<A class=active href="javascript:void(0)"><SPAN class=ico16>个人信息</SPAN>
									</A>
								</DD>
								<DD>
									<A class=normal href="userInfo.jsp"><SPAN class=ico2>个人资料</SPAN>
									</A>
								</DD>
							</DL>
							<DL>
								<DT>
									我要找实习
								</DT>
								<DD>
									<A class=normal href="chooseshuiguo.jsp"><SPAN class=ico23>求职统计</SPAN>
									</A>
								</DD>
							</DL>
							<DL>
								<DT>
									我要发布实习求职信息
								</DT>
								<DD>
									<A class=normal href="userqz.jsp"><SPAN class=pub>发布实习求职信息</SPAN>
									</A>
								</DD>
							</DL>
							<DL>
								<DT>
									实习招聘信息管理
								</DT>
								<DD>
									<A class=normal href="shuiguo.jsp"><SPAN class=ico1>实习招聘信息管理</SPAN>
									</A>
									<br>
									<br>
								</DD>
							</DL>
							<DIV class=adorn_bottom></DIV>
						</DIV>

						<DIV id=right5>
							<DIV class="wrap_line margin1">
								<DIV class=public>
									<DIV class=information_index>
										<DIV class=photo>
											<P>
												<logic:notEmpty name="users" property="image">
													<c:if test="${users.image!='' }">
														<IMG alt="" src="uploadIMG/${users.image }" width=120
															height=120 />
													</c:if>
													<c:if test="${users.image=='' }">
														<IMG alt="" src="images/noavatar_middle.gif" width=120
															height=120 />
													</c:if>
												</logic:notEmpty>
												<logic:empty name="users" property="image">
													<IMG alt="" src="images/noavatar_middle.gif" width=120
														height=120 />
												</logic:empty>

											</P>
										</DIV>
										<DIV class=info>
											<logic:empty name="isinfo">
												<jsp:forward page="usersInfo.do?method=shuiguoInfo"></jsp:forward>
											</logic:empty>
											<H3 class=margin2>
												<SPAN>欢迎您，${users.uname }</SPAN>
												<A href="userInfo.jsp">编辑个人资料&gt;&gt;</A>
											</H3>
											<TABLE class=width6>
												<TBODY>
													<TR>
														<TD height=22>
															信息发布: 发布过的招聘信息(
															<SPAN class=red><A href="shuiguo.jsp">${lcount }
															</A>
															</SPAN>) 发布过的实习求职信息(
															<SPAN class=red><A
																href="begRent.do?method=selBegRent&showPage=1">${bcount
																	}</A>
															</SPAN>)
														</TD>
													</TR>
												</TBODY>
											</TABLE>
										</DIV>
									</DIV>
								</DIV>
								<DIV class=wrap_bottom></DIV>
							</DIV>
							<DIV class="wrap_line margin1">
								<DIV class=public_index>
									<DIV class=information_index>
										<H3 class=title>
											我浏览过的实习信息
										</H3>

										<logic:notEmpty name="cookieShuiguo">
											<logic:iterate id="shuiguo" name="cookieShuiguo">
												<DIV class=visited>
													<DIV class=visited_Links>
														<DIV class=visited_pic>
															<!-- 没有图片 -->
															<logic:empty name="shuiguo" property="img">
																<A title="暂无图片"
																	href="leaseShuiguo.do?method=getleaseShuiguo&id=${shuiguo.id }"
																	target=_blank> <img src="images/no-pic2.gif"
																		width="120" height="90"> </A>
															</logic:empty>
															<!-- 有图片 -->
															<logic:notEmpty name="shuiguo" property="img">
																<A title="${shuiguo.title }，${shuiguo.areaType.area }"
																	href="leaseShuiguo.do?method=getleaseShuiguo&id=${shuiguo.id }"
																	target=_blank> <img src="uploadIMG/${shuiguo.img }"
																		width="120" height="90"> </A>
															</logic:notEmpty>
														</DIV>
														<DIV class=visited_title>
															<A title="${shuiguo.title }，${shuiguo.areaType.area }"
																href="leaseShuiguo.do?method=getleaseShuiguo&id=${shuiguo.id }"
																target=_blank>${shuiguo.title }</A>
														</DIV>
														<DIV class=visited_add>
															${shuiguo.areaType.area }，${shuiguo.shuiguoType.type }
														</DIV>
														<DIV class="visited_ red">
															<font color="red">${shuiguo.pirce }</font>元/天
														</DIV>
													</DIV>
													<DIV class=clear></DIV>
												</DIV>
											</logic:iterate>
										</logic:notEmpty>


									</DIV>
									<DIV class=clear></DIV>
								</DIV>
								<DIV class=wrap_bottom></DIV>
							</DIV>
							<DIV class=clear></DIV>
							<DIV class=adorn_right1></DIV>
							<DIV class=adorn_right2></DIV>
							<DIV class=adorn_right3></DIV>
							<DIV class=adorn_right4></DIV>
						</DIV>

						<DIV class=clear></DIV>
						<DIV class=footer>
							<DIV style="HEIGHT: 10px">
								<SPAN></SPAN>
							</DIV>
							<DIV id=topic
								style="BORDER-TOP: rgb(224, 224, 224) 1px solid; PADDING-TOP: 10px; TEXT-ALIGN: center"></DIV>
							<DIV style="PADDING-TOP: 5px; TEXT-ALIGN: center">Copyright  2013 WWW.HLAU.CN  All Rights Reserved</DIV>
							<DIV style="PADDING-TOP: 5px; TEXT-ALIGN: center" align=center>
								<SPAN><A href="http://www.miibeian.gov.cn/">湘ICP备12345678号</A>
								</SPAN>
							</DIV>
						</DIV>
	</BODY>
</HTML>
