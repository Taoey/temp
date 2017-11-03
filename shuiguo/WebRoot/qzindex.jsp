<%@ page language="java" pageEncoding="utf-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html:html lang="true">
    <HEAD><TITLE>明迪科技系统</TITLE>
        <link href="images/ico.ico" rel="shortcut icon">

        <META http-equiv=Content-Type content="text/html; charset=gbk">
        <META http-equiv=Content-Language content=zh-CN>
        <META http-equiv=pragma content=no-cache>
        <LINK href="index.jsp" type=image/ico rel=icon></LINK>
        <LINK href="index.jsp" rel="shortcut icon"></LINK>
        <!-- 相关文件引入  -->
        <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

        <!-- jQuery文件务必在bootstrap.min.js 之前引入 -->
        <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
        <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
        <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    </HEAD>
    <BODY>
    <div style="z-index: 1">
        <DIV class=header>
            <DIV class=top>
                <DIV class=loginBar>
                    <DIV class=loginList>
                        <LI>您好&nbsp;${users.uname }！欢迎来到明迪科技！</LI>
                        <LI><A title=登录 href="javascript:showlog();">[登录]</A></LI>
                        <logic:notEmpty name="users">
                            <LI><A title=退出 href="javascript:logout();">[退出]</A>
                                <script type="text/javascript">
                                    function logout() {
                                        if (confirm("确定退出吗？")) {
                                            window.location = "users.do?method=logout&fromto=index";
                                        }
                                    }
                                </script>
                            </LI>
                        </logic:notEmpty>
                        <LI><A title=免费注册 href="regUsers.jsp" target=_blank>[免费注册]</A></LI>
                    </DIV>
                </DIV>
                <DIV class=logo><A href="index.jsp"><IMG alt=eeju src="image/logo.jpg" width="180"></A></DIV>
            </DIV>
            <DIV class=header_BottomL></DIV>
            <DIV class=header_BottomC>

                <DIV class=nav_second>
                    <UL>
                        <LI class=nav_second1 style="WIDTH: 130px"><A href="index.jsp">首页</A></LI>
                        <LI class=nav_second1 style="WIDTH: 130px"><A href="index.jsp">实习职位</A></LI>
                        <LI class=nav_second1 style="WIDTH: 130px"><A href="qzindex.jsp">找实习</A></LI>

                        <LI class=nav_second1 style="BACKGROUND: none transparent scroll repeat 0% 0%; WIDTH: 130px"><A
                                href="user.jsp">个人中心</A></LI>
                    </UL>
                </DIV>
                <DIV class=seach_box>
                    <FORM id=form1 onSubmit="return chaecksearch()" action="#" method=post>
                        <DIV class=seach_this>
                            <DIV class=current_option main="rent">找实习</DIV>
                        </DIV>
                        <INPUT class="txtbox" id="limit_key" maxLength=100 onBlur="isblur();"
                               onFocus="javascript:document.getElementById('limit_key').value='';"
                               size=56 value='请输入……' name="limit_key">
                        <INPUT type=image alt=搜索 src="images/seach.gif" align=left name=image>
                        <script>
                            function isblur() {
                                if (document.getElementById('limit_key').value == "") {
                                    document.getElementById('limit_key').value = "请输入...";
                                }
                            }
                        </script>
                    </FORM>
                </DIV>
            </DIV>
        </DIV>
        <DIV class=Main>

            <DIV class=shuiguo_attribute>
                <DIV class=shuiguo_boxL>
                    <DIV class=shuiguo_boxLL></DIV>
                    <DIV class=shuiguo_boxLC></DIV>
                    <DIV class=shuiguo_boxLR></DIV>
                </DIV>

                <DIV class=shuiguo_boxC>
                    <DIV class=shuiguo_box1>
                        <logic:empty name="alist">
                            <logic:redirect action="begRent.do?method=selectBeanByPage&showPage=1"></logic:redirect>
                        </logic:empty>


                        <DIV class=attribute_title><STRONG>区域:</STRONG></DIV>
                        <DIV class=attribute><SPAN>全部</SPAN>
                            <logic:iterate id="areas" name="alist">
                                <A href="begRent.do?method=selectBeanByPage&aid=${areas.gid }&showPage=1">${areas.area
                                    }</A>
                            </logic:iterate>
                        </DIV>
                    </DIV>

                    <DIV class=shuiguo_box>
                        <DIV class=attribute_title><STRONG>工资/每天:</STRONG></DIV>
                        <DIV class=attribute><SPAN>不限</SPAN>
                            <A title=30元以下 href="begRent.do?method=selectBeanByPage&minprice=0.5&showPage=1">30元以下</A>
                            <A title="{$limit_jg2_1}>-1元"
                               href="begRent.do?method=selectBeanByPage&minprice=0.5&maxprice=1&showPage=1">30-80元</A>
                            <A title="{$limit_jg2_2}>-5元"
                               href="begRent.do?method=selectBeanByPage&minprice=1&maxprice=5&showPage=1">80-130元</A>
                            <A title=130-180元
                               href="begRent.do?method=selectBeanByPage&minprice=5&maxprice=10&showPage=1">130-180元</A>
                            <A title=180-230元
                               href="begRent.do?method=selectBeanByPage&minprice=10&maxprice=50&showPage=1">180-230元</A>
                            <A title=230-280元
                               href="begRent.do?method=selectBeanByPage&minprice=50&maxprice=100&showPage=1">230-280元</A>
                            <A title=280-330元
                               href="begRent.do?method=selectBeanByPage&minprice=100&maxprice=500&showPage=1">280-330元</A>
                            <A title=330元以上 href="begRent.do?method=selectBeanByPage&maxprice=500&showPage=1">330元以上</A>
                        </DIV>
                    </DIV>

                    <DIV class=shuiguo_box>
                        <DIV class=attribute_title><STRONG>结账方式:</STRONG></DIV>
                        <DIV class=attribute><SPAN>不限</SPAN>
                            <A title=时结 href="begRent.do?method=selectBeanByPage&hid=1&showPage=1">时结</A>
                            <A title=日结 href="begRent.do?method=selectBeanByPage&hid=2&showPage=1">日结</A>
                            <A title=月结 href="begRent.do?method=selectBeanByPage&hid=3&showPage=1">月结</A>
                            <A title=年结 href="begRent.do?method=selectBeanByPage&hid=4&showPage=1">年结</A>

                            <A title=其他 href="">其他</A>
                        </DIV>
                    </DIV>

                    <DIV class=rent_filter><LABEL>工资水平：</LABEL>
                        <INPUT class=inputprice id=sml_pay type="text"> -
                        <INPUT class=inputprice id=big_pay type="text"> <LABEL>元</LABEL>
                        <INPUT onclick=pirceSelect(); type=button value=筛选>&nbsp;&nbsp;

                        <script type="text/javascript">
                            function pirceSelect() {
                                var sml_pay = document.getElementById("sml_pay").value;
                                var big_pay = document.getElementById("big_pay").value;

                                window.location = "begRent.do?method=selectBeanByPage&showPage=1&minprice=" + sml_pay + "&maxprice=" + big_pay;

                            }

                            function hidselect() {
                                var hids = document.getElementById("hid").value;

                                window.location = "begRent.do?method=selectBeanByPage&showPage=1&shuiguoid=" + hids;
                            }
                        </script>

                        <SELECT class=yn-long onChange="hidselect();" id="hid">

                            <OPTION value="">学历水平</OPTION>
                            <logic:iterate id="shuiguos" name="hlist">
                                <OPTION value="${shuiguos.id }">${shuiguos.type }</OPTION>
                            </logic:iterate>
                        </SELECT>

                    </DIV>
                </DIV>

                <DIV class=shuiguo_boxR>
                    <DIV class=shuiguo_boxRL></DIV>
                    <DIV class=shuiguo_boxRC></DIV>
                    <DIV class=shuiguo_boxRR></DIV>
                </DIV>
            </DIV>
            <DIV class=left>
                <DIV class=search_bar>
                    <DIV class=search_top>
                        <UL>
                            <LI class=tab_current><SPAN>求职信息</SPAN></LI>
                        </UL>

                        <DIV class=page-top><SPAN class=page-info>${showPage}/${allPage }</SPAN>

                        </DIV>
                    </DIV>
                    <DIV class=search_bottom>
                        <DIV class=taxis>&nbsp;
                            <SELECT onChange="">
                                <OPTION value="" selected>默认排序</OPTION>
                                <OPTION value="">面积从大到小</OPTION>
                                <OPTION value="">面积从小到大</OPTION>
                                <OPTION value="">租金从高到低</OPTION>
                                <OPTION value="">租金从低到高</OPTION>
                                <OPTION value="">发布时间从新到旧</OPTION>
                            </SELECT>
                        </DIV>
                        <DIV class=shuiguo_total>共有<STRONG>${allCount }</STRONG>条符合条件的信息</DIV>
                    </DIV>
                </DIV>
                <DIV class=search_list>
                    <OL id=list_box>
                        <!-- -------------------------------------------------------- -->


                        <logic:iterate id="br" name="brlist">

                            <DIV class=rent_info>
                                <DIV class=rent_info_dt><A class=list_title
                                                           href="begRent.do?method=showInfo&bid=${br.id }"
                                                           target=_blank>${br.address }</A></DIV>
                                <DIV id=hz_price class=rent_info_ds>${br.minprice } - ${br.maxprice }元/斤
                                </DIV>
                                <DIV class=rent_info_dd>${br.colore }结账方式 /可工作${br.sort }天/周 ${br.kind }工作经验 ${br.time
                                    }
                                </DIV>
                            </DIV>

                        </logic:iterate>

                        <!-- -------------------------------------------------------- -->
                    </OL>
                </DIV>
                <DIV class=pages_box>
                    <DIV class=page_con>

                        <A href="begRent.do?method=selectBeanByPage&showPage=1">首 页</A>
                        <logic:notEqual value="1" name="showPage">
                            <A href="begRent.do?method=selectBeanByPage&showPage=${showPage-1 }">上一页</A>
                        </logic:notEqual>
                        <logic:lessThan value="${allPage}" name="showPage">
                            <A href="begRent.do?method=selectBeanByPage&showPage=${showPage+1 }">下一页</A>
                        </logic:lessThan>
                        <A href="begRent.do?method=selectBeanByPage&showPage=${allPage }">尾 页</A>

                    </DIV>
                </DIV>
            </DIV>
            <DIV class=right><!--右侧载入-->
                <DIV class=transactions><A href="usercz.jsp"><IMG
                        alt=免费发布实习招聘信息 src="images/rent_btn.gif"></A></DIV>
                <SCRIPT>
                    function run_space(url) {
                        window.open(url, "");
                    }
                </SCRIPT>

                <DIV class=look_shuiguo>
                    <DIV class=right_title1>
                        <H5>最近看过的信息</H5></DIV>
                    <UL>
                        <logic:notEmpty name="users">
                            <logic:notEmpty name="cookieShuiguo">
                                <logic:iterate id="r" name="cookieShuiguo" length="10">
                                    <LI>
                                        <A title="${r.title }" href="shuiguoInfo.jsp" target="_blank">
                                            ${r.areaType.area }，${r.colore }结账方式/可工作${r.sort }天/每周 </A>--工资<SPAN
                                            class=pay_2>${r.pirce }元/天</SPAN>
                                    </LI>
                                </logic:iterate>
                            </logic:notEmpty>
                        </logic:notEmpty>
                    </UL>
                </DIV>
                <DIV class=look_shuiguo>
                    <DIV class=right_title1>
                        <H5>最新发布的信息</H5>
                    </DIV>

                    <logic:notEmpty name="list">
                        <logic:iterate id="tshuiguo" name="list">
                            <DIV class=multi_pic>
                                <!-- 没有图片 -->
                                <logic:empty name="tshuiguo" property="img">
                                    <DIV class=multi_pic_l>
                                        <A title="暂无图片" href="begRent.do?method=showByPage&id=${tshuiguo.id }"
                                           target=_blank>
                                            <img src="images/no-pic2.gif" height=60 width="80"> </A></DIV>
                                </logic:empty>
                                <!-- 有图片 -->
                                <logic:notEmpty name="tshuiguo" property="img">
                                    <DIV class=multi_pic_l>
                                        <A title="${tshuiguo.title }，${tshuiguo.areaType.area }"
                                           href="begRent.do?method=showByPage&id=${tshuiguo.id }" target=_blank>
                                            <img src="uploadIMG/${tshuiguo.img }" height=60 width="80"></A></DIV>
                                </logic:notEmpty>


                                <DIV class=multi_pic_r>
                                    <A href="begRent.do?method=showByPage&id=${tshuiguo.id }" target=_blank>${tshuiguo.title
                                        }(${tshuiguo.areaType.area })</A>
                                    <BR>
                                    ${tshuiguo.colore }结账方式/每周可工作${tshuiguo.sort }天/${tshuiguo.kind }工作经验
                                    /招聘${tshuiguo.acreage }人<BR><SPAN class=pay_1>${tshuiguo.pirce }</SPAN></DIV>
                            </DIV>
                        </logic:iterate>
                    </logic:notEmpty>


                </DIV>
            </DIV>
            <DIV class=clear></DIV>
            <DIV class=footer>
                <DIV style="HEIGHT: 10px"><SPAN></SPAN></DIV>
                <DIV style="PADDING-TOP: 5px; TEXT-ALIGN: center">Copyright 2016 http://www.qau.edu.cn/
                    All Rights Reserved
                </DIV>
                <DIV style="PADDING-TOP: 5px; TEXT-ALIGN: center" align=center><SPAN><A
                        href="http://www.miibeian.gov.cn/">鲁ICP备13028537号</A></SPAN></DIV>
            </DIV>

        </DIV>
    </div>
    <div id="mid" style="z-index:211;position: absolute;top: 0px;left:0px;
   background-color:black;width: 100%;height: 200%;display: none;"></div>

    <div id="log" style="z-index: 222; position: absolute; top:25%; left: 30%;display: none;width: 222px;">
        <FORM name=form1 onSubmit="return checklogin();"
              action="users.do?method=usersLogin" method=post>
            <input type="hidden" name="fromto" value="index">
            <TABLE style="BORDER-LEFT: #bcbcbc 1px solid" cellSpacing=0 cellPadding=0
                   width=600 align=center border=0>
                <TBODY>
                <TR>
                    <TD width=222 background=images/img_title2.gif align="left"
                        height=58><font color=#417eb2 size="4">&nbsp;&nbsp;<b>用户登录</b></font></TD>
                    <TD align="center" width=57 background=images/img_title2.gif>
                    </TD>
                    <TD style="BORDER-RIGHT: #bcbcbc 1px solid" align=right width=210
                        background=images/img_title2.gif>
                        <span onclick="hidlog();" style="cursor: pointer;color:#417eb2; "><img src="image/del.gif">[关闭]</span>
                        &nbsp;</TD>
                </TR>
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
                                                    color=#417eb2>请输入您的用户名和密码！</FONT></TD>
                                        </TR>
                                        </TBODY>
                                    </TABLE>
                                    <TABLE cellSpacing=0 cellPadding=4 width=400 align=center
                                           border=0>
                                        <TBODY>
                                        <TR>
                                            <TD colSpan=2 height=10></TD>
                                        </TR>
                                        <TR>
                                            <TD align=right width="40%"><FONT
                                                    color=#333333>用户名：</FONT></TD>
                                            <TD align=left><INPUT class=txtinput1 tabIndex=1 id="uname"
                                                                  name="uname">&nbsp;&nbsp;<A
                                                    href="regUsers.jsp" target="_blank">立即注册</A></TD>
                                        </TR>
                                        <TR>
                                            <TD colSpan=2 height=5></TD>
                                        </TR>
                                        <TR>
                                            <TD align=right><FONT color=#333333>密　码：</FONT></TD>
                                            <TD align=left><INPUT class=txtinput1 tabIndex=2
                                                                  type=password name="upwd" id="upwd">&nbsp;&nbsp;
                                            </TD>
                                        </TR>
                                        <TR>
                                            <TD colSpan=2 height=5></TD>
                                        </TR>
                                        <TR>
                                            <TD colSpan=2 height=5></TD>
                                        </TR>
                                        <TR>
                                            <TD colSpan=2></TD>
                                        </TR>
                                        </TBODY>
                                    </TABLE>
                                </TD>
                            </TR>
                            <TR>
                                <TD>
                                    <P>&nbsp;</P>
                                    <P align=center><INPUT type=image width=103
                                                           src="images/btn_login.gif" border=0 name=imageField> 　
                                        <A onClick="return false;" href="#"><IMG
                                                onclick="form1.reset();return false;" height=26
                                                src="images/btn_reset.gif" width=103 border=0></A></P>
                                    <P>&nbsp;</P></TD>
                            </TR>
                            </TBODY>
                        </TABLE>
                    </TD>
                </TR>
                </TBODY>
            </TABLE>
        </FORM>
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
</html:html>
