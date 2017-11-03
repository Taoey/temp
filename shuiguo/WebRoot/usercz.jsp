<%@ page language="java" pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
  <head>
    
    <title>发布实习信息</title>
<link href="images/ico.ico" rel="shortcut icon">
<LINK href="files/public.css" type=text/css rel=stylesheet>
<LINK href="files/user.css" type=text/css rel=stylesheet>
<LINK href="files/style.css" type=text/css rel=stylesheet>
<LINK href="files/page.css" type=text/css rel=stylesheet>

<logic:empty name="business">
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
  
  
<script type="text/javascript">
   function logout(){
     if(confirm("你确定要退出吗？")){
       window.location="business.do?method=logout&fromto=business";
     }
   }
   
 function checkAddShuiguo(){
    var areaId=document.getElementsByName("areaId")[0].value;
    var htypeId=document.getElementsByName("htypeId")[0].value;
    
    var address=document.getElementById("address").value;
    var title=document.getElementById("title").value;
    
    
    var colore=document.getElementById("colore").value;
    var sort=document.getElementById("sort").value;
    var kind=document.getElementById("kind").value;
    
    var acreage=document.getElementById("acreage").value;
    var pirce=document.getElementById("pirce").value;
    var a_p=/^\d+(\.\d+)?$/;
    
    var email=document.getElementById("email").value;
    
    var phone=document.getElementById("telePhone").value;
    
    if(areaId==0){
        alert("请选择所在区域");
        return false;
    }
    if(address==""){
        alert("请输入地址");
        return false;
    }
    if(title==""){
        alert("请输入标题");
        return false;
    }
    if(title.length<5){
        alert("标题长度不能小于5");
        return false;
    }
    
    if(colore==0 && sort==0 && kind==0){
        alert("请选择细则");
        return false;
    }
    if(htypeId==0){
        alert("请选择品种");
        return false;
    }
    
    if(acreage=="")
    {
        alert("请输入重量");
        return false;
    }
    if(!a_p.exec(acreage)){
       alert("重量输入不正确");
       return false;
    }
    
    if(pirce=="")
    {
        alert("请输入交易价格");
        return false;
    }
    if(!a_p.exec(pirce)){
       alert("交易价格输入不正确");
       return false;
    }
    
    
    var patrnP=((\d{11})|^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$) ; 
    if(phone=="")
    {
        alert("联系电话不能为空");
        return false;
    }
    if(!patrnP.exec(phone)){
       alert("联系电话输入格式不正确");
       return false;
    }
       
    var patrnE=/^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
    if(email!="" && !patrnE.exec(email))
    {
       alert("电子邮箱输入格式不正确");
       return false;
    }
     
     return true;
 }
</script>  
  
  
<BODY>

<div style="z-index: 1" id="alldiv">
<DIV id="header">
<DIV style="HEIGHT: 40px">
<DIV style="FLOAT: left; WIDTH: 300px">
<H1 title=eeju><A href="index"><IMG alt=eeju 
src="image/logo.jpg" width="230"></A></H1></DIV>
<DIV style="PADDING-RIGHT: 10px; FLOAT: right; TEXT-ALIGN: right">您好,<b>${business.uname }</b> [<A 
href="javascript:logout();">退出</A>]  <SPAN>|</SPAN> <A class=home 
style="MARGIN-TOP: 3px" href="index.jsp">返回首页</A>

</DIV>

<div><br></div>
<DIV class=header_BottomC1>
<DIV class=nav_second>
<UL>
  <LI class=nav_second1 style="WIDTH: 130px">&nbsp;</LI>
  <LI class=nav_second1 style="WIDTH: 130px"><A href="bindex.jsp">首页</A> </LI>
  <LI class=nav_second1 style="WIDTH: 130px"><A href="bindex.jsp">实习职位</A></LI>
  <LI class=nav_second1 style="WIDTH: 130px"><A href="qzbindex.jsp">找实习</A></LI>

  <LI class=nav_second1 style="WIDTH: 130px"><A href="business.jsp">个人中心</A> </LI>
</UL>
</DIV>
<div align="left">&nbsp;&nbsp;
<A href="bindex.jsp">首页</A> &gt;
<A href="business.jsp">用户中心</A> &gt;&gt;
 <font color="#0000FF">发布实习信息</font>

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
  <DD><A class=normal href="business.jsp"><SPAN 
  class=ico16>个人信息</SPAN></A> </DD>
  <DD><A class=normal href="userInfo.jsp"><SPAN 
  class=ico2>个人资料</SPAN></A> </DD>
 </DL>
<DL>
  <DT>投递统计 </DT>
  <DD><A class=normal href="chooseshuiguo.jsp"><SPAN 
  class=ico23>投递统计</SPAN></A> </DD></DL>
<DL>
  <DT>我要发布实习信息 </DT>
  <DD><A class=active href="javascript:"><SPAN 
  class=pub>发布实习信息</SPAN></A> </DD>
  
  </DL>
<DL>
  <DT>实习信息管理 </DT>
  <DD><A class=normal href="shuiguo.jsp"><SPAN 
  class=ico1>实习信息管理</SPAN></A><br><br> </DD>
  </DL>
<DIV class=adorn_bottom></DIV></DIV>

<div id=right1>

<html:form action="leaseShuiguo" method="post" enctype="multipart/form-data" onsubmit="return checkAddShuiguo();">
<input type="hidden" name="method" value="addLease">
<table width="806" border="0" align="left" cellpadding="0" cellspacing="0" class="borders1">
<tr>
<td width="806" align="center" valign="top">
 <div class="choose_wt">  
    <center><font size="5" color="#FF0099">实习信息登记</font> </center> 
</div>
<div style="height:9px"></div>
  <table width="96%" border="0" cellspacing="0" cellpadding="0" style="BORDER-BOTTOM: #f3b47c 2px solid">
    <tr>
      <td width="10%" height="27" align=center style="font-size:14px; font-weight:bold">基本资料</td>
      <td width="90%" align=left style="color:333333">(带<font class="font2">*</font>必须填写，其它选项尽量填写)</td>
    </tr>
  </table>
<div style="height:9px"></div>
  <table width="96%" border="0" cellspacing="4" cellpadding="1">
  <tr>
    <td align="right" class="font1"><font class="font2">*</font> 岗位名称</td>
    <td align="left"><input name="title" id="title" type="text" size="48" maxlength="20" class="txtinput1">　
    <font class="font3">(5-20字)</font></td>
  </tr>
  <tr>
    <td align="right" class="font1"><font class="font2">*</font>实习区域</td>
    <td align="left">
    <logic:empty name="alist">
       <logic:redirect href="leaseShuiguo.do?method=selArea"></logic:redirect>
    </logic:empty>
    <html:select property="areaId">
       <html:option value="0">请选择</html:option>
       <html:optionsCollection name="alist" value="gid" label="area"/>
    </html:select>
	  </td>
  </tr>
  <tr>
    <td align="right" class="font1"><font class="font2">*</font> 实习地址</td>
    <td align="left"><input name="address" id="address" type="text"  size="57" maxlength="50" class="txtinput1"></td>
  </tr>
   
  <tr>
    <td align="right" class="font1"><font class="font2">*</font>结账方式</td>
    <td align="left"><select name="colore" id="colore" style="FONT-SIZE: 12px; WIDTH: 40px">
						    <OPTION value="" selected>-</OPTION> <OPTION 
              value=日结>日结</OPTION> <OPTION value=日结>日结</OPTION> <OPTION 
              value=月结>月结</OPTION> <OPTION value=月结>月结</OPTION> <OPTION 
              value=年结>年结</OPTION> <OPTION value=年结>年结</OPTION> </SELECT></td>
  </tr>
  <tr>
    <td align="right" class="font1"><font class="font2">*</font>每周可工作</td>
    <td align="left"><SELECT 
            style="FONT-SIZE: 12px; WIDTH: 35px" name=sort  id=sort> <OPTION value="" 
              selected>-</OPTION> <OPTION value=1>1</OPTION> <OPTION 
              value=2>2</OPTION> <OPTION value=3>3</OPTION> <OPTION 
              value=4>4</OPTION><OPTION 
              value=5>5</OPTION><OPTION 
              value=6>6</OPTION><OPTION 
              value=7>7</OPTION></SELECT>天
              </td></tr>
  <tr>
    <td align="right" class="font1"><font class="font2">*</font>工作经验</td>
    <td align="left">  <SELECT 
            style="FONT-SIZE: 12px; WIDTH: 35px" name=kind  id=kind> <OPTION value="" 
              selected>-</OPTION> <OPTION value=不限>不限</OPTION> <OPTION value=香蕉>香蕉</OPTION> 
               <OPTION value=1个月>1个月</OPTION> 
               <OPTION value=1~3个月>1~3个月</OPTION> 
               <OPTION value=半年>半年</OPTION> 
               <OPTION value=1年>1年</OPTION> 
              </SELECT> 
              </td></tr>
<tr>
    <td align="right" class="font1">学历要求</td>
    <td align="left">
    <html:select property="htypeId">
       <html:option value="0">请选择</html:option>
       <html:optionsCollection name="hlist" value="id" label="type"/>
    </html:select>
	  </td>
  </tr>  
  
  <tr>
    <td align="right" class="font1"><font class="font2">*</font> 招聘人数</td>
    <td align="left"><input name="acreage" id="acreage" type="text" size="10" maxlength="10" class="txtinput1">
人 <font class="font3">(请用半角数字输入,如: <font color="#FF0000">138</font>)</font></td>
  </tr>
  <tr>
    <td align="right" class="font1"><font class="font2">*</font>实习工资</td>
    <td align="left"><input name="pirce" id="pirce" type="text" size="10" maxlength="10" class="txtinput1" require="true" datatype="Number2" msg="实习工资未填写或填写不正确">
元/天 <font class="font3">(请用半角数字输入,如:<font color="#FF0000">5000</font>)</font></td>
  </tr>
  <tr>
    <td align="right" class="font1">公司待遇</td>
    <td align="left">
<input name="esthments" id="esthments" type="checkbox" value="五险一金">
五险一金
<input name="esthments" id="esthments" type="checkbox" value="晋升空间大">
晋升空间大
<input name="esthments" id="esthments" type="checkbox" value="周末双休">
周末双休
<input name="esthments" id="esthments" type="checkbox" value="提供住宿">
提供住宿
<input name="esthments" id="esthments" type="checkbox" value="试用期全新">
试用期全新
 <span onclick="selAll();" style="color:#66CC33;cursor: pointer;">[全选]</span>
	<span onclick="resAll();" style="color:#66CC33;cursor: pointer;">[取消]</span>
	<script type="text/javascript">
	   function selAll(){
	       var boxs=document.getElementsByName("esthments");
	       for(var i=0;i<boxs.length;i++){
	          boxs[i].checked=true;
	       }
	   }
	   function resAll(){
	       var boxs=document.getElementsByName("esthments");
	       for(var i=0;i<boxs.length;i++){
	          boxs[i].checked=false;
	       }
	   }
	</script>
  </td>
  </tr>

  <tr>
    <td align="right" valign="top" class="font1">职位描述</td>
    <td align="left">
<textarea id="remark" name="remark" rows="15" cols="50" style="width: 530px"></textarea>

</td>
  </tr>
</table>  
  <div id="bczl">
  <table width="96%" border="0" cellspacing="0" cellpadding="0" style="BBORDER-BOTTOM: #f3b47c 2px solid">
    <tr>
      <td width="10%" height="27" align=center style="font-size:14px; font-weight:bold;BORDER-BOTTOM: #f3b47c 2px solid">上传图片</td>
      <td width="90%" align="left" style="color:333333;BORDER-BOTTOM: #f3b47c 2px solid">（上传图片可以大大提高信任度哦）</td>
    </tr>
  </table>
  <table width="96%" border="0" cellspacing="4" cellpadding="1">

  </table>
  
<SCRIPT language=javascript src="files/jquery-1.3.min.js"></SCRIPT>
<link rel="stylesheet" id='skin' type="text/css" href="files/ymPrompt.css" />


  <div id="pic_all">
   
   <div class="xiaoqu_box"><span class="pic_title">上传图片</span><div id="xiaoqu_msg">(最多可上传5张图片)&nbsp;&nbsp;
   </div>
   </div>
   <div class="uploadss">
   <span id="xq_pic_num" class="clic1" style="display:none"></span>
   <table class="upload_pics">
     <tr>
	   <td align="left" valign="top" id="td_xq_pics" style="display:none;"><div id="xq_pics" ></div></td>
	   <td valign="top" id="xq_right_pic">	   
	   <div id="xiaoqu_rm">
	     <input type="file"  id="up_xiaoqu" name="file[0]"><div id="fdiv"></div>
	  </div><div style="align:center;width:100%" id="xiaoqu_add_input">
	  <input type="button" value="添加上传" onClick="addinput('xiaoqu','5');"/></div>

<script>
//添加上传条
function addinput(name,n){
  if($("input[name='"+name+"[]']:checked").length+$('#'+name+'_rm input').length>=n){
    alert('不能再添加上传');
	return false;
  }
  
 var fname ="file["+$('#'+name+'_rm input').length+"]";
 
  var html = "<br><input type='file'  name='"+fname+"'><div></div>";
  $('#'+name+'_rm').append(html);
}
</script>
	  
	  </td>
	 </tr>
   </table></div>
   
   
   <div class="uploadss">
   <span id="hx_pic_num" style="display:none" class="clic1"></span>
   <table class="upload_pics">
     
   </table>
   </div>
  </div>

   </div>
  <table width="96%" border="0" cellspacing="0" cellpadding="0" style="BORDER-BOTTOM: #f3b47c 2px solid">
    <tr>
      <td width="10%" height="27" align=center style="font-size:14px; font-weight:bold">联系方式</td>
      <td width="90%" align=left >　<font style="color:#FF0000">(提示：联系电话和手机至少填写一项)</font></td>
    </tr>
  </table>
  <table width="96%" border="0" cellspacing="4" cellpadding="1">
    <tr>
      <td width="17%" align="right" class="font1"><font class="font2">*</font> 联 系 人</td>
      <td colspan="2" align="left">： 
            <c:if test="${business.bcontact==null }">
              ${business.uname}
            </c:if>
            <c:if test="${business.bcontact!='' }">
              ${business.bcontact }
            </c:if>     
     </td>
    </tr>
    <tr>
      <td align="right" class="font1"><font class="font2">*</font> 联系电话：</td>
      <td width="22%" align="left"><input value="${business.bphone }" name="telePhone" id="telePhone" type="text"  size="20" class="txtinput1" maxlength="11"/></td>
      <td width="61%" align=left><DIV class=errMsgDiv  id=ErrMsg2><font color="#999999">(固定电话号或手机号码）</font></DIV></td>
    </tr>
	      <tr>
      <td align="right" class="font1">E-mail：</td>
      <td colspan="2" align="left">
      <input name="email" id="email" value="${business.bemail }" type="text" size="50" class="txtinput1" maxlength="80"></td>
    </tr>
  </table>
  <table width="96%" border="0" cellspacing="4" cellpadding="1">
    <tr>
      <td width="17%" align="right" class="font1">&nbsp;
      </td>
      <td width="83%" align=left>&nbsp;
      <div class=information>
      <DIV class="info individual">
       <INPUT class=btn style="background-color:#CC66FF" type=submit value="确认发布">&nbsp;
       <INPUT class=btn  style="background-color:#CC66FF" type="reset" value="重      置">
       
      </div></div>
      </td>
    </tr>
  </table>

 <br> 
<br>
<br>
</td>
</tr>
<tr>
<td width="696" height="24" align="center" valign="middle">&nbsp;</td>
</tr>
</table>
</html:form>

</div>
<div class=clear></div>
<div class="footer">
<div style="height:10px"><span></span></div>
<DIV id=topic style="TEXT-ALIGN: center; padding-top:10px;border-top: 1px solid rgb(224, 224, 224);"></DIV>
<DIV style="TEXT-ALIGN: center; padding-top:5px">Copyright  2016 http://www.qau.edu.cn/ 
All Rights Reserved </DIV>
<div align="center" style="TEXT-ALIGN: center; padding-top:5px"> <span><A href="http://www.miibeian.gov.cn/">鲁ICP备13028537号</A></span></div>
</div> 
</body></html>
