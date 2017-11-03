<%@ page language="java" pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
  <head>
    
    <title>修改实习招聘信息</title>
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
<script type="text/javascript">
   function logout(){
     if(confirm("你确定要退出吗？")){
       window.location="users.do?method=logout&fromto=user";
     }
   }
function checkUpdate(){
  
    var address=document.getElementById("address").value;
    var title=document.getElementById("title").value;
    
    
    var colore=document.getElementsByName("colore")[0].value;
    var sort=document.getElementsByName("sort")[0].value;
    var kind=document.getElementsByName("kind")[0].value;
    
    var acreage=document.getElementById("acreage").value;
    var pirce=document.getElementById("pirce").value;
    var a_p=/^\d+(\.\d+)?$/;
    
    var email=document.getElementById("email").value;
    
    var phone=document.getElementById("telePhone").value;
    
     
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
        alert("请选择需要的学历");
        return false;
    }
    
    
    if(acreage=="")
    {
        alert("请输入招聘人数");
        return false;
    }
    if(!a_p.exec(acreage)){
       alert("招聘人数输入不正确");
       return false;
    }
    
    if(pirce=="")
    {
        alert("请输入实习工资");
        return false;
    }
    if(!a_p.exec(pirce)){
       alert("实习工资输入不正确");
       return false;
    }
    
    
    var patrnP=/(^(\d{3,4}-)?\d{7,8})$|(13[0-9]{9})$|(15[0-9]{9})$/; 
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
<H1 title=eeju><A href="index.jsp"><IMG alt=eeju 
src="images/logo-esf.gif"></A></H1></DIV>
<DIV style="PADDING-RIGHT: 10px; FLOAT: right; TEXT-ALIGN: right">您好,<b>${users.uname }</b> [<A 
href="javascript:logout();">退出</A>]  <SPAN>|</SPAN> <A class=home 
style="MARGIN-TOP: 3px" href="index.jsp">返回首页</A>

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
<A href="user.jsp">用户中心</A> &gt;&gt;
 <font color="#0000FF">修改实习招聘信息</font>

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
  <DT>我要找实习 </DT>
  <DD><A class=normal href="chooseshuiguo.jsp"><SPAN 
  class=ico23>求职统计</SPAN></A> </DD></DL>
<DL>
  <DT>我要发布实习信息 </DT>
  <DD><A class=normal href="usercz.jsp"><SPAN 
  class=pub>发布实习招聘信息</SPAN></A> </DD>
  <DD><A class=normal href="userqz.jsp"><SPAN 
  class=pub>发布找实习信息</SPAN></A> </DD>
  </DL>
<DL>
  <DT>实习招聘信息管理 </DT>
  <DD><A class="normal" href="shuiguo.jsp"><SPAN 
  class=ico1>实习招聘信息管理</SPAN></A> <br><br></DD>
  <br><br>
  </DL>
<DIV class=adorn_bottom></DIV></DIV>
<div id=right1>
<html:form action="leaseShuiguo" method="post" enctype="multipart/form-data" onsubmit="return checkUpdate();">
<input type="hidden" name="method" value="updateShuiguo">
<input type="hidden" name="id" value="${leaseShuiguoForm.id }">
<table width="806" border="0" align="left" cellpadding="0" cellspacing="0" class="borders1">
<tr>
<td width="806" align="center" valign="top">
 <div class="choose_wt">  
    <center><font size="5" color="#FF0099">实习招聘信息修改</font> </center> 
</div>
<div style="height:9px"></div>
  <table width="96%" border="0" cellspacing="0" cellpadding="0" style="BORDER-BOTTOM: #f3b47c 2px solid">
    <tr>
      <td width="10%" height="27" align=center style="font-size:14px; font-weight:bold">基本资料</td>
      <td width="70%" align=left style="color:333333">(带<font class="font2">*</font>必须填写，其它选项尽量填写)</td>
      <td align="right"><a href="javascript:window.history.back();" title="返回"><img src="images/back.gif"><font style="font-size:14px; font-weight:bold">返&nbsp;回</font> </a></td>
    </tr>
  </table>
<div style="height:9px"></div>
  <table width="96%" border="0" cellspacing="4" cellpadding="1">
  <tr>
    <td align="right" class="font1"><font class="font2">*</font>所在区域</td>
    <td align="left">

    <html:select property="areaId">
       <html:optionsCollection name="alist" value="gid" label="area"/>
    </html:select>
	  </td>
  </tr>
  <tr>
    <td align="right" class="font1"><font class="font2">*</font> 地址</td>
    <td align="left"><input name="address" value="${leaseShuiguoForm.address }" id="address" type="text"  size="57" maxlength="50" class="txtinput1"></td>
  </tr>
    <tr>
    <td align="right" class="font1"><font class="font2">*</font>标题</td>
    <td align="left"><input name="title" id="title" value="${leaseShuiguoForm.title}" type="text" size="48" maxlength="20" class="txtinput1">　
    <font class="font3">(5-20字)</font></td>
  </tr>
  <tr>
    <td align="right" class="font1"><font class="font2">*</font> 细则</td>
    <td align="left">
     结账方式：
 <html:select property="colore">
         		<html:option value="时结">时结</html:option>
   				 <html:option value="日结">日结</html:option>
    			<html:option value="月结">月结</html:option>
    			<html:option value="年结">年结</html:option>
    			<html:option value="其他">其他</html:option>
         		</html:select>
             	每周可工作：<html:select property="sort">
             	<html:option value="1">1</html:option>
    			<html:option value="2">2</html:option>
    			<html:option value="3">3</html:option>
    			<html:option value="4">4</html:option>
    			<html:option value="5">5</html:option>
    			<html:option value="6">6</html:option>
    			<html:option value="7">7</html:option>
             	</html:select>天
             	实习经验：<html:select property="kind">
             	<html:option value="无">无</html:option>
   				<html:option value="1">1</html:option>
   				<html:option value="2">2</html:option>
   				<html:option value="3">3</html:option>
   				<html:option value="4">4</html:option>
   				<html:option value="5">5</html:option>
   				<html:option value="6">6</html:option>
   				<html:option value="8">8</html:option>
   				<html:option value="12">12</html:option>
             	</html:select>个月
             	</TD></TR>
<tr>
    <td align="right" class="font1"><font class="font2">*</font>学历水平</td>
    <td align="left">
    <html:select property="htypeId">
       <html:optionsCollection name="hlist" value="id" label="type"/>
    </html:select>
	  </td>
  </tr>  
  
  <tr>
    <td align="right" class="font1"><font class="font2">*</font>招聘人数</td>
   <td align="left"><input name="acreage" value="${leaseShuiguoForm.acreage }" id="acreage" type="text" size="10" maxlength="10" class="txtinput1">
人<font class="font3">(请用半角数字输入,如: <font color="#FF0000">138</font>)</font></td>
  </tr>
  <tr>
    <td align="right" class="font1"><font class="font2">*</font>工资水平</td>
    <td align="left"><input name="pirce" value="${leaseShuiguoForm.pirce}" id="pirce" type="text" size="10" maxlength="10" class="txtinput1" require="true" datatype="Number2" msg="工资水平未填写或填写不正确">
元/天<font class="font3">(请用半角数字输入,如:<font color="#FF0000">5000</font>)</font></td>
  </tr>
  <tr>
    <td align="right" class="font1">公司待遇</td>
    <td align="left">
<html:multibox property="esthments" value="五险一金"></html:multibox>    
五险一金
<html:multibox property="esthments"  value="晋升空间大"></html:multibox>
晋升空间大
<html:multibox property="esthments"  value="周末双休"></html:multibox>
周末双休
<html:multibox property="esthments" value="提供住宿"></html:multibox>
提供住宿
<html:multibox property="esthments"  value="试用期全薪"></html:multibox>
试用期全薪
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
    <td align="right" valign="top" class="font1">简历</td>
    <td align="left">
<textarea id="remark" name="remark" rows="15" cols="50" style="width: 530px">
 ${leaseShuiguoForm.remark}
</textarea>

</td>
  </tr>
</table>  
  <div id="bczl">
  <table width="96%" border="0" cellspacing="0" cellpadding="0" style="BBORDER-BOTTOM: #f3b47c 2px solid">
    <tr>
      <td width="10%" height="27" align=center style="font-size:14px; font-weight:bold;BORDER-BOTTOM: #f3b47c 2px solid">图片信息</td>
      <td width="90%" align="left" style="color:333333;BORDER-BOTTOM: #f3b47c 2px solid">（上传图片可以大大提高销售率哦）
     <logic:notEqual value="0" name="imgSize">
        已有${imgSize }张图片:
     </logic:notEqual> 
      </td>
    </tr>
  </table>
  <table width="96%" border="0" cellspacing="4" cellpadding="1">

  </table>
  
<SCRIPT language=javascript src="files/jquery-1.3.min.js"></SCRIPT>
<link rel="stylesheet" id='skin' type="text/css" href="files/ymPrompt.css" />


  <div id="pic_all">
  <div>
  <logic:notEmpty name="image">
  <div align="left"><br>&nbsp; 
    <logic:iterate id="img" name="image">
      <img src="uploadIMG/${img.image }" width="250" height="200">&nbsp;
      <span style="cursor: pointer;"><img onclick="delimg(${img.id });" title="点击删除图片" src="images/010.gif"/></span>&nbsp;&nbsp;&nbsp;
    </logic:iterate>
    </div>
  </logic:notEmpty> 
   
  
   <div class="xiaoqu_box"><span class="pic_title">上传图片</span><div id="xiaoqu_msg">(最多可上传${5-imgSize }张图片)&nbsp;&nbsp;
   </div>
   </div>
   <div class="uploadss">
   <table class="upload_pics">
     <tr>
	   <td align="left" valign="top" id="td_xq_pics" style="display:none;"><div id="xq_pics" ></div></td>
	   <td valign="top" id="xq_right_pic">	   
	   <div id="xiaoqu_rm">
	     <input type="file"  id="up_xiaoqu" name="file[0]"><div id="fdiv"></div>
	  </div><div style="align:center;width:100%" id="xiaoqu_add_input">
	  <input type="button" value="添加上传" onClick="addinput('xiaoqu',${5-imgSize });"/></div>

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
function delimg(id){
   if(confirm("确定删除该图片吗？")){
      image.deleteImage(id,function(isok){
         if(isok){
           window.location.reload();
         }else{
           alert("图片删除失败");
         }
      });
      
   }
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
           <logic:notEmpty name="users">
            <c:if test="${users.truename==null}">
              ${users.uname}
            </c:if>
            <c:if test="${users.truename!='' }">
              ${users.truename }
            </c:if>     
           </logic:notEmpty>
          <logic:empty name="users">
                 ${users.uname }
          </logic:empty> 
      </td>
    </tr>
    <tr>
      <td align="right" class="font1"><font class="font2">*</font> 联系电话</td>
      <td width="22%" align="left"><input value="${users.phone }" name="telePhone" id="telePhone" type="text"  size="20" class="txtinput1" maxlength="11"/></td>
      <td width="61%" align=left><DIV class=errMsgDiv  id=ErrMsg2><font color="#999999">(固定电话号或手机号码）</font></DIV></td>
    </tr>
    <tr>
      <td align="right" class="font1">&nbsp;</td>
      <td colspan="2" align=left><font style="color:#FF0000">重要提示：凡联系电话或手机以任何形式写在联系方式以外地方的信息，水果交易网将直接注销。</font></td>
      </tr>
	      <tr>
      <td align="right" class="font1">E-mail</td>
      <td colspan="2" align="left">
      <input name="email" id="email" value="${users.email }" type="text" size="50" class="txtinput1" maxlength="80"></td>
    </tr>
  </table>
  <table width="96%" border="0" cellspacing="4" cellpadding="1">
    <tr>
      <td width="17%" align="right" class="font1">&nbsp;
      </td>
      <td width="83%" align=left>&nbsp;
     <div class=information>
      <DIV class="info individual">
       <INPUT class=btn style="background-color:#CC66FF" type=submit value="确认修改">&nbsp;
       <INPUT class=btn  style="background-color:#CC66FF" type="reset" value="重      置">
       
      </div></div>
      </td>
    </tr>
  </table>

<br>
<br>
<tr>
<td width="696" height="24" align="center" valign="middle">&nbsp;</td>
</tr>
</table>
</html:form>

</div>
<div class="clear"></div>
<div class="footer">
<div style="height:10px"><span></span></div>
<DIV id=topic style="TEXT-ALIGN: center; padding-top:10px;border-top: 1px solid rgb(224, 224, 224);"></DIV>
<DIV style="TEXT-ALIGN: center; padding-top:5px">Copyright  2013 WWW.HLAU.CN 
All Rights Reserved </DIV>
<div align="center" style="TEXT-ALIGN: center; padding-top:5px"> <span><A href="http://www.miibeian.gov.cn/">湘ICP备12345678号</A></span></div>
</div> 
</body></html>