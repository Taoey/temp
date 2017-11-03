<%@ page language="java" pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html:html lang="true">
  <head>
    
    <title>信息单</title>
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
#shuiguoInfo{
     font-size: 12px;
     display:none;
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
<H1 title=eeju><A href="index.jsp"><IMG alt=eeju src="image/logo.jpg" width="180" height="50"></A></H1></DIV>
<DIV style="PADDING-RIGHT: 10px; FLOAT: right; TEXT-ALIGN: right">您好,<b>${users.uname }</b> [<A 
href="javascript:logout();">退出</A>]  <SPAN>|</SPAN> <A class=home 
style="MARGIN-TOP: 3px" href="index.jsp">返回首页</A>
<script type="text/javascript">
   function logout(){
     if(confirm("你确定要退出吗？")){
        window.location="users.do?method=logout&fromto=user";
     }
   }
</script>
</DIV>

<div><br></div>
<DIV class=header_BottomC1>
<DIV class=nav_second>
<UL>
  <LI class=nav_second1 style="WIDTH: 130px">&nbsp;</LI>
  <LI class=nav_second1 style="WIDTH: 130px"><A href="index.jsp">首页</A> </LI>
  <LI class=nav_second1 style="WIDTH: 130px"><A href="index.jsp">实习招聘</A></LI>
  <LI class=nav_second1 style="WIDTH: 130px"><A href="qzindex.jsp">找实习</A></LI>

  <LI class=nav_second1 style="WIDTH: 130px"><A href="user.jsp">个人中心</A> </LI>
</UL>
</DIV>
<div align="left">&nbsp;&nbsp;
<A href="index.jsp">首页</A> &gt;
 <A href="user.jsp">用户中心</a> &gt;&gt;
 <font color="#0000FF">信息单</font> 

</div>
</DIV> 


<SCRIPT src="files/jquery-1.3.min.js" type=text/javascript></SCRIPT>

<SCRIPT language=JavaScript src="files/ymPrompt.js"></SCRIPT>
<LINK id=skin href="files/ymPrompt.css" type=text/css 
rel=stylesheet>
<SCRIPT>
//全选
function checkall( o ){
  $('input:[name="checkkey"]').attr('checked',$(o).attr('checked'));
  $('input:[name="check_all"]').attr('checked',$(o).attr('checked'));
}
</SCRIPT>

<DIV class=content>
 
<DIV id="left" align="left" style="border-style:solid;border-width:1px; border-color:#CCCCCC">
<H2><STRONG title=用户中心></STRONG>
<DIV class=adorn1></DIV>
<DIV class=adorn2></DIV></H2>
<DL>
  <DT>我的账户 </DT>
  <DD><A class=normal href="user.jsp"><SPAN 
  class=ico16>个人信息</SPAN></A> </DD>
  <DD><A class=normal href="userInfo.jsp"><SPAN 
  class=ico2>个人资料</SPAN></A> </DD>
 </DL>
<DL>
  <DT>我要找实习</DT>
  <DD><A class=active href="javascript:"><SPAN 
  class=ico23>应聘统计</SPAN></A> </DD></DL>
<DL>
  <DT>我要发布信息 </DT>
  <DD><A class=normal href="userqz.jsp"><SPAN 
  class=pub>发布找实习信息</SPAN></A> </DD>
  </DL>
<DL>
  <DT>实习招聘信息管理 </DT>
  <DD><A class=normal href="shuiguo.jsp"><SPAN 
  class=ico1>实习招聘信息管理</SPAN></A><br><br> </DD>
  </DL>
<DIV class=adorn_bottom></DIV></DIV>
<SCRIPT type=text/javascript src="files/jquery-1.3.min.js"></SCRIPT>

<SCRIPT language=JavaScript src="files/ymPrompt.js"></SCRIPT>
<LINK id=skin rel=stylesheet type=text/css 
href="files/ymPrompt.css"><LINK rel=stylesheet type=text/css 
href="files/style.css"><LINK rel=stylesheet type=text/css 
href="files/user.css">
<SCRIPT>
//全选
function checkall( o ){
  $('input:[name="checkkey"]').attr('checked',$(o).attr('checked'));
  $('input:[name="check_all"]').attr('checked',$(o).attr('checked'));
}
</SCRIPT>

<DIV id=right5>
<DIV class=right_con>
<UL class=tab><LI class=active>所选信息
  </LI></UL>
<DIV class=wrap>
<DIV style="FONT: 0px Arial; HEIGHT: 6px" class=clear></DIV>
<TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
  <TBODY>
  <TR>
    <TH width=41 scope=col><LABEL><INPUT onclick=checkall(this) type=checkbox 
      name=check_all> </LABEL></TH>
    <TH class=right_edit colSpan=2 scope=col align=left>&nbsp;&nbsp;<A 
      class=delete href="javascript:delprompt()"></A></TH>
    <TH width=164 scope=col>&nbsp;</TH>
    <TH colSpan=2 scope=col>&nbsp;</TH></TR>
<logic:empty name="islist">
   <jsp:forward page="chooseShuiguo.do?method=showChooseshuiguo&showPage=1"></jsp:forward>
</logic:empty>
 <logic:notEmpty name="crlist">
   <logic:iterate id="cr" name="crlist">
       <TR name="tr_12840">
	    <TD rowSpan=4 align=middle><LABEL><INPUT value=12840 type=checkbox 
	      name=checkkey> </LABEL></TD>
	    <TD rowSpan=4 width=93 align=middle>
	    <A href="leaseShuiguo.do?method=getleaseShuiguo&id=${cr.leaseShuiguo.id }" target=_blank>
	    	
	        <c:if test="${cr.leaseShuiguo.img==''}">
	    		<img src="images/no-pic2.gif"/>
	    	</c:if>
	    	<c:if test="${cr.leaseShuiguo.img!=''}">
	    		<img src="uploadIMG/${cr.leaseShuiguo.img }" width="80" height="60"/>
	    	</c:if>
	    </A></TD>
	    <TD class=shuiguo_tile width=688>
	    <A href="leaseShuiguo.do?method=getleaseShuiguo&id=${cr.leaseShuiguo.id }" target=_blank>${cr.leaseShuiguo.title }</A></TD>
	    <TD rowSpan=4>招聘${cr.leaseShuiguo.acreage}人</TD>
	    <TD rowSpan=4 width=173><STRONG class=orange>${cr.leaseShuiguo.pirce}</STRONG> 元/天 
	   
	    </TD>
	    <TD rowSpan=4 width=72 align=middle><A class=delete 
	      href="chooseShuiguo.do?method=delchooseshuiguo&id=${cr.leaseShuiguo.id }">删除</A></TD></TR>
	         
	  <TR name="tr_11824">
	    <TD>${cr.leaseShuiguo.address}</TD></TR>
	  <TR name="tr_11824">
	    <TD>${cr.leaseShuiguo.colore}结账方式/每周可工作${cr.leaseShuiguo.sort}天/${cr.leaseShuiguo.kind}工作经验，
	   ${cr.leaseShuiguo.time}发布
	    </TD>
	  </TR>
	  <TR name="tr_11824">
	    <TD></TD></TR>
	   
   </logic:iterate>
 </logic:notEmpty>
    
    
  <TR>
    <TD colSpan=2 align=middle><A 
    href="javascript:delallprompt()"></A></TD></TR></TBODY></TABLE>
<DIV class=wrap_bottom></DIV></DIV></DIV><!--分页-->
<DIV class=pages_box>
<DIV class=page_con>
<DIV>
共有${chooseShuiguoForm.allCount }条记录，当前第${chooseShuiguoForm.showPage }页，共${chooseShuiguoForm.allPage }页
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<A href="chooseShuiguo.do?method=showChooseshuiguo&showPage=1"><font color="#FF8000">首页</font></A>
<logic:notEqual name="chooseShuiguoForm" property="showPage" value="1">
   <A href="chooseShuiguo.do?method=showChooseshuiguo&showPage=${chooseShuiguoForm.showPage-1 }"><font color="#FF8000">上一页</font></A> 
</logic:notEqual>
<logic:lessThan name="chooseShuiguoForm" property="showPage" value="${chooseShuiguoForm.allPage}">
   <A href="chooseShuiguo.do?method=showChooseshuiguo&showPage=${chooseShuiguoForm.showPage+1 }"><font color="#FF8000">下一页</font> </A>
</logic:lessThan> 
<A href="chooseShuiguo.do?method=showChooseshuiguo&showPage=${chooseShuiguoForm.allPage }"><font color="#FF8000">尾页 </font></A>
</DIV></DIV></DIV>
<DIV class=clear></DIV></DIV>
<DIV class=clear></DIV>
<DIV class=footer>
<DIV style="HEIGHT: 10px"><SPAN></SPAN></DIV>

<DIV style="TEXT-ALIGN: center; PADDING-TOP: 5px">Copyright Copyright 2016 http://www.qau.edu.cn/  
All Rights Reserved </DIV>
<DIV style="TEXT-ALIGN: center; PADDING-TOP: 5px" align=center><SPAN><A 
href="http://www.miibeian.gov.cn/">鲁ICP备13028537号</A></SPAN></DIV></DIV></DIV></BODY>
</html:html>
