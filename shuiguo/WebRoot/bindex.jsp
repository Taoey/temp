<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML><HEAD><TITLE>明迪科技系统</TITLE>
<link href="images/ico.ico" rel="shortcut icon">
<META http-equiv=Content-Type content="text/html; charset=gbk">
<META http-equiv=Content-Language content=zh-CN>
<META http-equiv=pragma content=no-cache>
<LINK rev=stylesheet href="files/public.css" type=text/css rel=stylesheet></LINK>
<LINK rev=stylesheet href="files/rent.css" type=text/css rel=stylesheet></LINK>

</HEAD>
<BODY>
<div style="z-index: 1"> 
<div class=header>
<div class=top>
<div class=loginBar>
<div class=loginList>
<LI>您好&nbsp;${business.uname }！欢迎来到明迪科技 </LI>
<LI><A title=登录 href="javascript:showlog();">[登录]</A></LI>
<logic:notEmpty name="business">
<LI><A title=退出 href="javascript:logout();">[退出]</A>
<script type="text/javascript">
   function logout(){
      if(confirm("确定退出吗？")){
        window.location="business.do?method=logout&fromto=bindex";
      }
   }
</script>
</LI>
</logic:notEmpty>
<LI><A title=免费注册 href="regUsers.jsp" target=_blank>[免费注册]</A> </LI>
</div>
</div>
<div class=logo><A href="bindex.jsp"><IMG alt=eeju src="image/logo.jpg" width="180" height="50"></A></div>
</div>
<div class=header_BottomL></div>
<div class=header_BottomC>
<div class=nav_second>
<UL>
  <LI class=nav_second1 style="WIDTH: 130px"><A href="bindex.jsp">首页</A> </LI>
  <LI class=nav_second1 style="WIDTH: 130px"><A href="bindex.jsp">实习招聘</A></LI>
  <LI class=nav_second1 style="WIDTH: 130px"><A href="qzbindex.jsp">找实习</A></LI>

  <LI class=nav_second1 style="BACKGROUND: none transparent scroll repeat 0% 0%; WIDTH: 130px"><A 
  href="business.jsp">个人中心</A> </LI>
</UL>
</div>
<div class=seach_box>

<div class=seach_this>
<div class=current_option main="rent">找实习</div></div>
<INPUT class="txtbox" id="limit_key" maxLength=100 onBlur="isblur();" onFocus="javascript:document.getElementById('limit_key').value='';"
size=56 value='请输入信息' name="limit_key">
<INPUT type=image alt=搜索 src="images/seach.gif" align=left name=image onclick="selGo();"> 
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
<div class=header_BottomR></div>
</div>


<div class=Main>

<div class=shuiguo_attribute>
<div class=shuiguo_boxL>
<div class=shuiguo_boxLL></div>
<div class=shuiguo_boxLC></div>
<div class=shuiguo_boxLR></div></div>

<div class=shuiguo_boxC>
<div class=shuiguo_box1>
<div class=attribute_title><STRONG>区域:</STRONG></div>
<div class=attribute><a href="leaseShuiguo.do?method=showShuiguoIndex&showPage=1"><SPAN>全部</SPAN></a> 
<logic:empty name="alist">
   <jsp:forward page="leaseShuiguo.do?method=showShuiguoIndex&showPage=1"></jsp:forward>
</logic:empty>
<logic:iterate id="areas" name="alist">
  <A title=${areas.area } 
  href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${showPage }
&areaName=${areas.area }&startPrice=${leaseShuiguoForm.startPrice }&
endPrice=${leaseShuiguoForm.endPrice }&shuiguoType=${leaseShuiguoForm.shuiguoType }&
colore=${leaseShuiguoForm.colore }&orderBy=${leaseShuiguoForm.orderBy }">${areas.area }</A> 
</logic:iterate>
</div>
</div>

<div class=shuiguo_box>
<div class=attribute_title><STRONG>工资/每天:</STRONG></div>
<div class=attribute><a href="leaseShuiguo.do?method=showShuiguoIndex&showPage=1"><SPAN>不限</SPAN></a>
<A title="30元以下" href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${showPage }&areaName=${leaseShuiguoForm.areaName }&endPrice=0.5&shuiguoType=${leaseShuiguoForm.shuiguoType }&colore=${leaseShuiguoForm.colore }&orderBy=${leaseShuiguoForm.orderBy }">30元以下</A> 
  
<A title="30-80元" href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${showPage }&
areaName=${leaseShuiguoForm.areaName }&startPrice=0.5&endPrice=1&
shuiguoType=${leaseShuiguoForm.shuiguoType }&
colore=${leaseShuiguoForm.colore }&orderBy=${leaseShuiguoForm.orderBy }">30-80元</A> 
  
<A title="80-130元" href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${showPage }&
areaName=${leaseShuiguoForm.areaName}&startPrice=1&endPrice=5&
shuiguoType=${leaseShuiguoForm.shuiguoType }&
colore=${leaseMiShuiguorm.colore }&orderBy=${leaseShuiguoForm.orderBy }">80-130元</A> 


<A title=130-180元 href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${showPage }&
areaName=${leaseShuiguoForm.areaName}&startPrice=5&endPrice=10&
shuiguoType=${leaseShuiguoForm.shuiguoType }&
colore=${leaseShuiguoForm.colore }&orderBy=${leaseShuiguoForm.orderBy }">130-180元</A> 
  
<A title=180-230元 href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${showPage }&
areaName=${leaseShuiguoForm.areaName}&startPrice=10&endPrice=50&
shuiguoType=${leaseShuiguoForm.shuiguoType }&
colore=${leaseShuiguoForm.colore }&orderBy=${leaseShuiguoForm.orderBy }">180-230元</A> 

<A title=230-280元 href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${showPage }&
areaName=${leaseShuiguoForm.areaName }&startPrice=50&endPrice=100&
shuiguoType=${leaseShuiguoForm.shuiguoType }&
colore=${leaseShuiguoForm.colore }&orderBy=${leaseShuiguoForm.orderBy }">230-280元</A> 

<A title=280-330元 href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${showPage }&
areaName=${leaseShuiguoForm.areaName}&startPrice=100&endPrice=500&
shuiguoType=${leaseShuiguoForm.shuiguoType }&
colore=${leaseShuiguoForm.colore }&orderBy=${leaseShuiguoForm.orderBy }">280-330元</A> 

<A title=330元以上 href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${showPage }&
areaName=${leaseShuiguoForm.areaName }&startPrice=500&
shuiguoType=${leaseShuiguoForm.shuiguoType }&
colore=${leaseShuiguoForm.colore }&orderBy=${leaseShuiguoForm.orderBy }">330元以上</A> 

</div></div>

<div class=shuiguo_box>
<div class=attribute_title><STRONG>结账方式:</STRONG></div>
<div class=attribute><a href="leaseShuiguo.do?method=showShuiguoIndex&showPage=1"><SPAN>不限</SPAN></a>
<A title=时结 href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${showPage }&
areaName=${leaseShuiguoForm.areaName }&startPrice=${leaseShuiguoForm.startPrice }&
endPrice=${leaseShuiguoForm.endPrice }&shuiguoType=${leaseShuiguoForm.shuiguoType }&
colore=1&orderBy=${leaseShuiguoForm.orderBy }"> 时结</A> 

<A title=日结 href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${showPage }&
areaName=${leaseShuiguoForm.areaName }&startPrice=${leaseShuiguoForm.startPrice }&
endPrice=${leaseShuiguoForm.endPrice }&shuiguoType=${leaseShuiguoForm.shuiguoType }&
colore=2&orderBy=${leaseShuiguoForm.orderBy }">日结</A> 

<A title=月结 href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${showPage }&
areaName=${leaseShuiguoForm.areaName }&startPrice=${leaseShuiguoForm.startPrice }&
endPrice=${leaseShuiguoForm.endPrice }&shuiguoType=${leaseShuiguoForm.shuiguoType }&
colore=3&orderBy=${leaseShuiguoForm.orderBy }">月结</A> 

<A title=年结 href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${showPage }&
areaName=${leaseShuiguoForm.areaName }&startPrice=${leaseShuiguoForm.startPrice }&
endPrice=${leaseShuiguoForm.endPrice }&shuiguoType=${leaseShuiguoForm.shuiguoType }& colore=4&
orderBy=${leaseShuiguoForm.orderBy }">年结</A> 



<A title=五室以上 href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${showPage }&
areaName=${leaseShuiguoForm.areaName }&startPrice=${leaseShuiguoForm.startPrice }&
endPrice=${leaseShuiguoForm.endPrice }&shuiguoType=${leaseShuiguoForm.shuiguoType }&
colore=6&orderBy=${leaseShuiguoForm.orderBy }">其他</A> 
</div></div>
<script type="text/javascript">
function searchgo(){
   
	var startPrice= document.getElementsByName("startPrice")[0].value;
	var endPrice= document.getElementsByName("endPrice")[0].value;
	var pre=/^\d+(\.\d+)?$/;
	
	if(startPrice=="" && endPrice==""){
        alert("请输入搜索工资");
        return;
    }
	
	if(!pre.exec(startPrice)&& startPrice!="" || !pre.exec(endPrice)&& endPrice!=""){
        alert("搜索工资输入不正确");
        return;
    }
	window.location="leaseShuiguo.do?method=showShuiguoIndex&showPage=1&startPrice="+startPrice+"&endPrice="+endPrice;
}
function order_by(){
  var orderby=document.getElementsByName("orderBy")[0].value;
  window.location="leaseShuiguo.do?method=showShuiguoIndex&showPage=1&orderBy="+orderby;
}
function h_type(){
  var htype=document.getElementsByName("htypeId")[0].value;
  
  window.location="leaseShuiguo.do?method=showShuiguoIndex&showPage=1&shuiguoType="+htype;
}
</script>

<div class=rent_filter>
<html:form action="leaseShuiguo" method="post">
工资要求：
<html:text property="startPrice" size="5" maxlength="10" /> - 
<html:text property="endPrice" size="5" maxlength="10"/>元
<INPUT onclick="searchgo();" type=button value=筛选>&nbsp;&nbsp; 
  <logic:notEmpty name="hlist"> 
  学历： 
  <html:select property="htypeId" onchange="h_type();">
    <html:optionsCollection name="hlist" value="id" label="type"/>
  </html:select>
</logic:notEmpty>


<html:select property="orderBy" title="默认时发布时间从新到旧" onchange="order_by();">
 <html:option value="0">默认排序</html:option>
 <html:option value="acreageDESC">重量从高到低</html:option>
 <html:option value="acreage">重量从低到高</html:option>
 <html:option value="priceDESC">价格从高到低</html:option>
 <html:option value="price">价格从低到高</html:option>
 <html:option value="time">发布时间从旧到新</html:option>
</html:select>

</html:form>



</div></div>

<div class=shuiguo_boxR>
<div class=shuiguo_boxRL></div>
<div class=shuiguo_boxRC></div>
<div class=shuiguo_boxRR></div></div></div>
<div class=left>
<div class=search_bar>
<div class=search_top>
<UL>
  <LI class=tab_current><SPAN>实习信息</SPAN></LI>
</UL>

<div class="page_con"><SPAN class=page-info>${showPage }/${allPage }</SPAN>
<A href="leaseShuiguo.do?method=showShuiguoIndex&showPage=1
&areaName=${leaseShuiguoForm.areaName }&startPrice=${leaseShuiguoForm.startPrice }&
endPrice=${leaseShuiguoForm.endPrice }&shuiguoType=${leaseShuiguoForm.shuiguoType }&
colore=${leaseShuiguoForm.colore }&orderBy=${leaseShuiguoForm.orderBy }">首页</A> 
<logic:notEqual value="1" name="showPage">
<A href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${showPage-1 }
&areaName=${leaseShuiguoForm.areaName }&startPrice=${leaseShuiguoForm.startPrice }&
endPrice=${leaseShuiguoForm.endPrice }&shuiguoType=${leaseShuiguoForm.shuiguoType }&
colore=${leaseShuiguoForm.colore }&orderBy=${leaseShuiguoForm.orderBy }">上一页</A> 
</logic:notEqual>
<logic:lessThan value="${allPage}" name="showPage">
<A href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${showPage+1 }
&areaName=${leaseShuiguoForm.areaName }&startPrice=${leaseShuiguoForm.startPrice }&
endPrice=${leaseShuiguoForm.endPrice }&shuiguoType=${leaseShuiguoForm.shuiguoType }&
colore=${leaseShuiguoForm.colore }&orderBy=${leaseShuiguoForm.orderBy }">下一页</A> 
</logic:lessThan>
<A href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${allPage }
&areaName=${leaseShuiguoForm.areaName }&startPrice=${leaseShuiguoForm.startPrice }&
endPrice=${leaseShuiguoForm.endPrice }&shuiguoType=${leaseShuiguoForm.shuiguoType }&
colore=${leaseShuiguoForm.colore }&orderBy=${leaseShuiguoForm.orderBy }">尾页</A> 
</div></div>
<div class=search_bottom>
<div class=shuiguo_total>共有<STRONG>${allCount }</STRONG>条符合条件的信息 </div></div></div>
<div class=search_list>
<OL id=list_box>

<logic:notEmpty name="rlList">
 <logic:iterate id="shuiguo" name="rlList">
  <LI>
	  <div class=photo>
	  <!-- 没有图片 -->
	  <logic:empty name="shuiguo" property="img">
	    <A title="暂无图片" href="leaseShuiguo.do?method=getleaseShuiguo&id=${shuiguo.id }" target=_blank>
	    <img src="images/no-pic2.gif"> </A>
	  </logic:empty>
	   <!-- 有图片 -->
	  <logic:notEmpty name="shuiguo" property="img">
	    <A title="${shuiguo.title }，${shuiguo.areaType.area }" href="leaseShuiguo.do?method=getleaseShuiguo&id=${shuiguo.id }" target=_blank>
	    <img src="uploadIMG/${shuiguo.img }"> </A>
	  </logic:notEmpty>
	  </div>
	  
	  <div class=information>
	  <H4>
	  <A title="" href="leaseShuiguo.do?method=getleaseShuiguo&id=${shuiguo.id }" target=_blank>
	    ${shuiguo.title }，${shuiguo.areaType.area },${shuiguo.shuiguoType.type }
	  </A> </H4>
	  <P class=link_dark>
	  运送方式：${shuiguo. esthment}</P>
	   
	  <P>招聘人数：${shuiguo.acreage }人</P>
	  <P class="link_dark">发布时间：${shuiguo.time }</P></div>
	  <div class=area><SPAN>${shuiguo.colore }结账方式 &nbsp /每周可工作${shuiguo.sort }天 &nbsp/ ${shuiguo.kind }实习经验</SPAN> </div>
	  <div class=price><STRONG>${shuiguo.pirce }</STRONG>元/天</div>
  </LI>
 </logic:iterate>
</logic:notEmpty>


  </OL>
</div>
<div class=pages_box>
<div class="page_con">
<SPAN>${showPage }/${allPage }</SPAN>
<A href="leaseShuiguo.do?method=showShuiguoIndex&showPage=1
&areaName=${leaseShuiguoForm.areaName }&startPrice=${leaseShuiguoForm.startPrice }&
endPrice=${leaseShuiguoForm.endPrice }&shuiguoType=${leaseShuiguoForm.shuiguoType }&
colore=${leaseShuiguoForm.colore }&orderBy=${leaseShuiguoForm.orderBy }">首页</A> 
<logic:notEqual value="1" name="showPage">
<A href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${showPage-1 }
&areaName=${leaseShuiguoForm.areaName }&startPrice=${leaseShuiguoForm.startPrice }&
endPrice=${leaseShuiguoForm.endPrice }&shuiguoType=${leaseShuiguoForm.shuiguoType }&
colore=${leaseShuiguoForm.colore }&orderBy=${leaseShuiguoForm.orderBy }">上一页</A> 
</logic:notEqual>
<logic:lessThan value="${allPage}" name="showPage">
<A href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${showPage+1 }
&areaName=${leaseShuiguoForm.areaName }&startPrice=${leaseShuiguoForm.startPrice }&
endPrice=${leaseShuiguoForm.endPrice }&shuiguoType=${leaseShuiguoForm.shuiguoType }&
colore=${leaseShuiguoForm.colore }&orderBy=${leaseShuiguoForm.orderBy }">下一页</A> 
</logic:lessThan>
<A href="leaseShuiguo.do?method=showShuiguoIndex&showPage=${allPage }
&areaName=${leaseShuiguoForm.areaName }&startPrice=${leaseShuiguoForm.startPrice }&
endPrice=${leaseShuiguoForm.endPrice }&shuiguoType=${leaseShuiguoForm.shuiguoType }&
colore=${leaseShuiguoForm.colore }&orderBy=${leaseShuiguoForm.orderBy }">尾页</A>

<br>
</div></div></div>
<div class=right><!--右侧载入-->
<div class=transactions><A href="usercz.jsp"><IMG 
alt=免费发布实习信息 src="images/rent_btn.gif"></A> </div>


  
  
</div>
<div class=clear></div>
<div class=footer>
  <div style="HEIGHT: 10px"><SPAN></SPAN></div>
  <div style="PADDING-TOP: 5px; TEXT-ALIGN: center">Copyright 2016 http://www.qau.edu.cn/ 
All Rights Reserved </div>
<div style="PADDING-TOP: 5px; TEXT-ALIGN: center" align=center><SPAN><A 
href="">鲁ICP备13028537号</A></SPAN></div></div>
</div></div>
<div id="mid" style="z-index:211;position: absolute;top: 0px;left:0px;
   background-color:black;width: 100%;height: 350%;display: none;"></div>
   
<div id="log" style="z-index: 222; position: absolute; top:25%; left: 30%;display: none;width: 222px;">
<FORM name=form1 onSubmit="return checklogin();"
			action="business.do?method=usersLogin" method=post>  
   <input type="hidden" name="fromto" value="bindex">
   <TABLE style="BORDER-LEFT: #bcbcbc 1px solid" cellSpacing=0 cellPadding=0 
      width=600 align=center border=0>
        <TBODY>
        <TR>
          <TD width=222 background=images/img_title2.gif  align="left"
          height=58><font color=#417eb2 size="4">&nbsp;&nbsp;<b>用户登录</b></font></TD>
          <TD align="center" width=57  background=images/img_title2.gif>
          </TD>
          <TD style="BORDER-RIGHT: #bcbcbc 1px solid" align=right width=210 
          background=images/img_title2.gif>
         <span onclick="hidlog();" style="cursor: pointer;color:#417eb2; "><img src="image/del.gif">[关闭]</span>
          &nbsp;</TD></TR>
        <TR>
          <TD colSpan=3>
            <TABLE 
            style="BORDER-RIGHT: #bcbcbc 1px solid; BORDER-TOP: #bcbcbc 1px; BORDER-BOTTOM: #bcbcbc 1px solid" 
            cellSpacing=0 cellPadding=0 width="100%" align=center 
            bgColor=#f4fff8 border=0>
              <TBODY>
              <TR>
                <TD><BR>
                  <TABLE cellSpacing=0 cellPadding=4 width=400 align=center 
                  border=0>
                    <TBODY>
                    <TR>
                      <TD><IMG height=9 src="images/dot_dot01.gif" 
                        width=9 align=absMiddle>&nbsp;&nbsp;<FONT 
                        color=#417eb2>请输入您的用户名和密码！</FONT> </TD></TR></TBODY></TABLE>
                  <TABLE cellSpacing=0 cellPadding=4 width=400 align=center 
                  border=0>
                    <TBODY>
                    <TR>
                      <TD colSpan=2 height=10></TD></TR>
                    <TR>
                      <TD align=right width="40%"><FONT 
                        color=#333333>用户名：</FONT></TD>
                      <TD align=left><INPUT class=txtinput1 tabIndex=1 id="uname"
                        name="uname">&nbsp;&nbsp;<A 
                        href="regUsers.jsp" target="_blank">立即注册</A></TD></TR>
                    <TR>
                      <TD colSpan=2 height=5></TD></TR>
                    <TR>
                      <TD align=right><FONT color=#333333>密　码：</FONT></TD>
                      <TD align=left><INPUT class=txtinput1 tabIndex=2 
                        type=password  name="upwd" id="upwd">&nbsp;&nbsp;
                      </TD></TR>
                    <TR>
                      <TD colSpan=2 height=5></TD></TR>
                    <TR>
                      <TD colSpan=2 height=5></TD></TR>
                    <TR>
                      <TD colSpan=2></TD></TR></TBODY></TABLE></TD></TR>
              <TR>
                <TD>
                  <P>&nbsp;</P>
                  <P align=center><INPUT type=image width=103 
                  src="images/btn_login.gif" border=0 name=imageField> 　 
                  <A onClick="return false;" href="#"><IMG 
                  onclick="form1.reset();return false;" height=26 
                  src="images/btn_reset.gif" width=103 border=0></A> </P>
                  <P>&nbsp;</P></TD></TR></TBODY></TABLE></TD></TR></TBODY>
                  </TABLE>
      </FORM>
</div>
<script type="text/javascript">
    function showlog(){
      document.getElementById("log").style.display = "block";
      document.getElementById("mid").style.filter="alpha(opacity=10)";
      document.getElementById("mid").style.display = "block";
       
    }
    function hidlog(){
       document.getElementById("log").style.display = "none";
       document.getElementById("mid").style.filter="alpha(opacity=100)";
       document.getElementById("mid").style.display = "none";
       
    }
    function checklogin() 
	{
		    var uname=document.getElementById("uname");
		    var upwd=document.getElementById("upwd");
			if (uname.value=="")
			{
				alert("请输入你的用户名!");
				uname.focus();
				return false;
			}
           if (upwd.value=="")
			{
				alert("请输入你的密码?");
				upwd.focus();
				return false;
			}
			return true;
	}
</script>

</BODY></HTML>