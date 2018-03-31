<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8" />
    <title>钱袋宝后台管理系统</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap-fileupload.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/css/style-responsive.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/css/style-default.css" rel="stylesheet" id="style_color" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reveal.css">
    <link href="${pageContext.request.contextPath}/assets/fancybox/source/jquery.fancybox.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/uniform/css/uniform.default.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrapSwitch.css" />

    <style type="text/css">
        .widget-body td {
            text-align: center;
        }
        .widget-body th {
            text-align: center;
        }
        .form-group label {
            color: #3b3431;
        }
        .form-group input {
            color: #3b3431;
        }
    </style>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="fixed-top">
<!-- BEGIN HEADER -->
<div id="header" class="navbar navbar-inverse navbar-fixed-top">
    <!-- BEGIN TOP NAVIGATION BAR -->
    <div class="navbar-inner">
        <div class="container-fluid">
            <!--BEGIN SIDEBAR TOGGLE-->
            <div class="sidebar-toggle-box hidden-phone">
                <div class="icon-reorder tooltips" data-placement="right" data-original-title="切换导航"></div>
            </div>
            <!--END SIDEBAR TOGGLE-->
            <!-- BEGIN LOGO -->
            <a class="brand" href="${pageContext.request.contextPath}/index" style="width: 200px; height: 100%;">
                <img src="${pageContext.request.contextPath}/img/logo.png" height="180" width="200" alt="Metro Lab" />
            </a>
            <!-- END LOGO -->
            <!-- BEGIN RESPONSIVE MENU TOGGLER -->
            <a class="btn btn-navbar collapsed" id="main_menu_trigger" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="arrow"></span>
            </a>
            <!-- END RESPONSIVE MENU TOGGLER -->
            <div class="top-nav ">
                <ul class="nav pull-right top-menu" >
                    <!-- BEGIN SUPPORT -->
                    <li class="dropdown mtop5">

                        <a class="dropdown-toggle element" data-placement="bottom" data-toggle="tooltip" href="#" data-original-title="Chat">
                            <i class="icon-comments-alt"></i>
                        </a>
                    </li>
                    <li class="dropdown mtop5">
                        <a class="dropdown-toggle element" data-placement="bottom" data-toggle="tooltip" href="#" data-original-title="Help">
                            <i class="icon-headphones"></i>
                        </a>
                    </li>
                    <!-- END SUPPORT -->
                    <!-- BEGIN USER LOGIN DROPDOWN -->
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="${pageContext.request.contextPath}/img/avatar-mini.png" alt="">
                            <span class="username">${manager.managerName}</span>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu extended logout">
                            <li><a href="#"><i class="icon-user"></i>个人信息</a></li>
                            <li><a href="#"><i class="icon-cog"></i>设置</a></li>
                            <li><a href="login.html"><i class="icon-key"></i>退出</a></li>
                        </ul>
                    </li>
                    <!-- END USER LOGIN DROPDOWN -->
                </ul>
                <!-- END TOP NAVIGATION MENU -->
            </div>
        </div>
    </div>
    <!-- END TOP NAVIGATION BAR -->
</div>
<!-- END HEADER -->

<!-- BEGIN CONTAINER -->
<div id="container" class="row-fluid">
    <!-- BEGIN SIDEBAR -->
    <div class="sidebar-scroll">
        <div id="sidebar" class="nav-collapse collapse">

            <!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
            <div class="navbar-inverse">
                <form class="navbar-search visible-phone">
                    <input type="text" class="search-query" placeholder="Search" />
                </form>
            </div>
            <!-- END RESPONSIVE QUICK SEARCH FORM -->
            <!-- BEGIN SIDEBAR MENU -->
            <ul class="sidebar-menu">
                <li class="sub-menu active">
                    <a href="javascript:;" class="">
                        <i class="icon-user"></i>
                        <span>用户管理</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub">
                        <li class="active"><a class="" href="${pageContext.request.contextPath}/pages/index">客户</a></li>
                       <%-- <li><a class="" href="${pageContext.request.contextPath}/pages/userManagement/managelist">员工</a></li>--%>
                    </ul>
                </li>

                <li class="sub-menu">
                    <a href="javascript:;" class="">
                        <i class="icon-fire"></i>
                        <span>贷款管理</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub">
                        <li><a class="" href="${pageContext.request.contextPath}/loanmanagement/loan">贷款</a></li>
                    </ul>
                </li>

                <li class="sub-menu">
                    <a href="javascript:;" class="">
                        <i class="icon-fire"></i>
                        <span>投资管理</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub">
                        <li><a class="" href="${pageContext.request.contextPath}/pages/investManagement/investproducts">投资产品</a></li>
                        <li><a class="" href="${pageContext.request.contextPath}/pages/investManagement/investorders">投资订单</a></li>
                    </ul>
                </li>

                <li class="sub-menu">
                    <a href="javascript:;" class="">
                        <i class="icon-fire"></i>
                        <span>合同管理</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub">
                        <li><a class="" href="${pageContext.request.contextPath}/pages/contractManagement/contractlist">合同</a></li>
                    </ul>
                </li>
            </ul>
            <!-- END SIDEBAR MENU -->
        </div>
    </div>
    <!-- END SIDEBAR -->
    <!-- BEGIN PAGE -->
    <div id="main-content">
        <!-- BEGIN PAGE CONTAINER-->
        <div class="container-fluid">
            <!-- BEGIN PAGE HEADER-->
            <div class="row-fluid">
                <div class="span12">
                    <!-- BEGIN THEME CUSTOMIZER-->
                    <div id="theme-change" class="hidden-phone">
                        <i class="icon-cogs"></i>
                        <span class="settings">
                            <span class="text">Theme Color:</span>
                            <span class="colors">
                                <span class="color-default" data-style="default"></span>
                                <span class="color-green" data-style="green"></span>
                                <span class="color-gray" data-style="gray"></span>
                                <span class="color-purple" data-style="purple"></span>
                                <span class="color-red" data-style="red"></span>
                            </span>
                        </span>
                    </div>
                    <!-- END THEME CUSTOMIZER-->
                    <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                    <h3 class="page-title">贷款管理</h3>
                    <ul class="breadcrumb">
                        <li>
                            <a href="${pageContext.request.contextPath}/index">首页</a>
                            <span class="divider">/</span>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/index">贷款管理</a>
                            <span class="divider">/</span>
                        </li>
                        <li class="active">贷款列表</li>
                        <li class="pull-right search-wrap">
                            <form action="search_result.html" class="hidden-phone">
                                <div class="input-append search-input-area">
                                    <input class="" id="appendedInputButton" type="text" placeholder="">
                                    <button class="btn" type="button"><i class="icon-search"></i> </button>
                                </div>
                            </form>
                        </li>
                    </ul>
                    <!-- END PAGE TITLE & BREADCRUMB-->
                </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN ADVANCED TABLE widget-->
            <div class="row-fluid">
                <div class="span12">
                    <!-- BEGIN EXAMPLE TABLE widget-->
                    <div class="widget red">
                        <div class="widget-title">
                            <h4><i class="icon-reorder1"></i>贷款列表</h4>
                            <span class="tools">
                                <a href="javascript:;" class="icon-chevron-down"></a>
                            </span>
                        </div>
                        <div class="widget-body">
                            <table class="table table-bordered table-hover" id="sample_1">
                                <thead>
                                <tr>
                                    <th style="width:32px;"><input type="checkbox" id="CheckAll" name="CheckAll" class="group-checkable" data-set="#sample_1 .checkboxes" /></th>
                                    <th >编号</th>
                                    <th >贷款人</th>
                                    <th class="hidden-phone">借款金额（万元）</th>
                                    <th class="hidden-phone">借款期限（月）</th>
                                    <th class="hidden-phone">抵押品</th>
                                    <th class="hidden-phone">抵押品估值（万元）</th>
                                    <th class="hidden-phone">借款时间</th>
                                    <th class="hidden-phone">放款时间</th>
                                    <th class="hidden-phone">贷款利率（%）</th>
                                    <th class="hidden-phone">上下架</th>
                                    <th class="hidden-phone">审核日期</th>
                                    <th class="hidden-phone">发布日期</th>
                                    <th>操作</th>
                                </tr>>
                                </thead>
                                <tbody>
                                <c:forEach items="${loanlist}" var="loan"  varStatus="vs">
                                    <tr class="odd gradeX" id="${loan.lid}">
                                        <td><input type="checkbox" id="Check" name="Check[]" onclick="checkOneAction()" value="${loan.lid}"/></td>
                                        <td>${vs.count}</td>
                                        <td>${loan.realname}</td>
                                        <td class="hidden-phone">${loan.loanAmount}</td>
                                        <td class="hidden-phone">${loan.loanLimittime}</td>
                                        <td class="hidden-phone">${loan.loanGoods}</td>
                                        <td class="hidden-phone">${loan.loanWorth}</td>
                                        <td class="hidden-phone"><fmt:formatDate value="${loan.loanBegintime}" pattern="yyyy-MM-dd"/></td>
                                        <td class="hidden-phone"><fmt:formatDate value="${loan.loanGettime}" pattern="yyyy-MM-dd"/></td>
                                        <td class="hidden-phone">${loan.loanRate}</td>
                                        <td class="hidden-phone">
                                            <div class="switch switch-small"><input type="checkbox" checked /></div>
                                        </td>
                                        <td class="hidden-phone"><fmt:formatDate value="${loan.productChecked}" pattern="yyyy-MM-dd"/></td>
                                        <td class="hidden-phone"><fmt:formatDate value="${loan.productPublish}" pattern="yyyy-MM-dd"/></td>
                                        <td>
                                            <%--<a class="btn btn-primary big-link" data-reveal-id="myModal" value="${loan.uid}" onclick="editOneAction('${loan.uid}')"><i class="icon-pencil"></i></a>--%>
                                            <%--<a class="btn btn-danger" value="${loan.uid}" onclick="deleteOneAction('${loan.uid}')"><i class="icon-trash "></i></a>--%>
                                            <a class="btn btn-primary btn-xs big-link" data-reveal-id="myModal" style="width: 26px; height: 18px; font-size: small;" value="" onclick="checkLoanAction('${loan.lid}')">审核</a>
                                            <a class="btn btn-danger btn-xs big-link" data-reveal-id="myModal" style="width: 26px; height: 18px; font-size: small;" value="" onclick="publishAction('${loan.lid}')">发布</a>
                                            <a class="btn btn-danger btn-xs" style="width: 26px; height: 18px;" value="" onclick="deleteOneAction('${loan.lid}')"><i class="icon-trash "></i></a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- END EXAMPLE TABLE widget-->
                </div>
            </div>
            <div id="myModal" class="reveal-modal">
                <%--<a class="btn big-link" id="addUser" onclick="addNewUserAction()"><i class="icon-plus"></i></a>--%>
                <div style="margin: 0 auto;">
                    <%--审核--%>
                    <form id="editForm1" method="post" class="form-horizontal" action="${pageContext.request.contextPath }/loanmanagement/check">
                        <table id="mtb1" class="check"  border="1" align="center"  style="cellpadding:0px; cellspacing:0px;" hidden>
                            <caption>审核贷款</caption>
                            <tr >
                                <td width="20%" align="center">贷款人</td>
                                <td width="80%" >
                                    <span id="realname">
                                        ${loan.realname}
                                    </span>
                                </td>
                            </tr>
                            <tr >
                                <td width="20%" align="center">贷款金额</td>
                                <td width="80%" >
                                    <span id="loanAmount">
                                      ${loan.loanAmount}&nbsp;&nbsp;&nbsp;&nbsp;万元
                                    </span>
                                </td>
                            </tr>
                            <tr >
                                <td width="20%" align="center">贷款时间</td>
                                <td width="80%" >
                                    <span id="beginTimeStr">
                                        ${loan.beginTimeStr}
                                    </span>
                                </td>
                            </tr>
                            <tr >
                                <td width="20%" align="center">贷款期限</td>
                                <td width="80%" >
                                    <span id="loanLimittime">
                                      ${loan.loanLimittime}月
                                    </span>
                                </td>
                            </tr>
                            <tr >
                                <td width="20%" align="center">还款方式</td>
                                <td width="80%" >
                                    <span id="loanPayway">
                                        ${loan.loanPayway==1?"一次性还本付息":"按月付息，到期还本"}
                                    </span>
                                </td>
                            </tr>
                            <tr >
                                <td width="20%" align="center">借款利率：</td>
                                <td width="80%" >
                                    <span id="loanRate">
                                      ${loan.loanRate}%
                                    </span>
                                </td>
                            </tr>
                            <tr >
                                <td width="20%" align="center">抵押品：</td>
                                <td width="80%" >
                                    <span id="loanGoods">
                                        ${loan.loanGoods}
                                    </span>
                                </td>
                            </tr>
                            <tr >
                                <td width="20%" align="center">抵押品价值：</td>
                                <td width="80%" >
                                    <span id="loanWorth">
                                        ${loan.loanWorth}&nbsp;&nbsp;&nbsp;万元
                                    </span>
                                </td>
                            </tr>
                            <tr >
                                <td width="20%" align="center">资质审核</td>
                                <td width="80%" >
                                    <select name="check">
                                        <option>--请选择--</option>
                                        <option value="1">通过</option>
                                        <option value="2">未通过</option>
                                    </select>
                                </td>
                            </tr>
                            <tr >
                                <td width="20%" align="center">是否完成授信</td>
                                <td width="80%" >
                                    <select name="credit">
                                        <option>--请选择--</option>
                                        <option value="1">已完成</option>
                                        <option value="2">未完成</option>
                                    </select>
                                </td>
                            </tr>
                            <tr >
                                <td width="20%" align="center">是否办理抵押</td>
                                <td width="80%" >
                                    <select name="diya">
                                        <option>--请选择--</option>
                                        <option value="1">已办理</option>
                                        <option value="2">未办理</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input id="lid" type="hidden" name="lid"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" width="100%" height="120px">
                                    <table style="width:100%">
                                        <tr>
                                            <td width="50%"  align="right">
                                                <%--<input type="button" value="审核通过" onclick="verifyAction('${loan.lid}')"/>--%>
                                                <input type="submit" value="审核通过" />
                                            </td>
                                            <td width="50%" align="left">
                                                <button type="button" onclick="refuseCheckAction('${loan.lid}')">审核不通过</button>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </form>

                    <%--投资--%>
                    <form id="editForm2" method="post" class="form-horizontal">
                        <table id="mtb2" class="invest"  border="1" align="center"  style="cellpadding:0px; cellspacing:0px" hidden>
                            <caption>发布投资</caption>
                            <tr >
                                <td width="20%" align="center">贷款人</td>
                                <td width="80%" >
                                    <span id="realname1">
                                        ${loan.realname}
                                    </span>
                                </td>
                            </tr>
                            <%--<tr >--%>
                            <%--<td width="20%" align="center">贷款用途</td>--%>
                            <%--<td width="80%" >--%>
                            <%--<span>--%>
                            <%--${loan.loanUse}--%>
                            <%--</span>--%>
                            <%--</td>--%>
                            <%--</tr>--%>
                            <tr >
                                <td width="20%" align="center">贷款金额</td>
                                <td width="80%" >
                                    <span id="loanAmount1">
                                      ${loan.loanAmount}&nbsp;&nbsp;&nbsp;&nbsp;万元
                                    </span>
                                </td>
                            </tr>
                            <tr >
                                <td width="20%" align="center">贷款时间</td>
                                <td width="80%" >
                                    <span id="beginTimeStr1">
                                        ${loan.beginTimeStr}
                                    </span>
                                </td>
                            </tr>
                            <tr >
                                <td width="20%" align="center">贷款期限</td>
                                <td width="80%" >
                                    <span id="loanLimittime1">
                                      ${loan.loanLimittime}月
                                    </span>
                                </td>
                            </tr>
                            <tr >
                                <td width="20%" align="center">还款方式</td>
                                <td width="80%" >
                                    <span id="loanPayway1">
                                        ${loan.loanPayway==1?"一次性还本付息":"按月付息，到期还本"}
                                    </span>
                                </td>
                            </tr>
                            <tr >
                                <td width="20%" align="center">借款利率：</td>
                                <td width="80%" >
                                    <span id="loanRate1">
                                      ${loan.loanRate}%
                                    </span>
                                </td>
                            </tr>
                            <tr >
                            <td width="20%" align="center">拟抵（质）押品：</td>
                            <td width="80%" >
                                <span id="loanGoods1">
                                    ${loan.loanGoods}
                                </span>
                            </td>
                            </tr>
                            <tr >
                                <td width="20%" align="center">抵（质）押品价值：</td>
                                <td width="80%" >
                                    <span id="loanWorth1">
                                        ${loan.loanWorth}&nbsp;&nbsp;&nbsp;万元
                                    </span>
                            </td>
                            </tr>
                            <tr >
                                <td width="20%" align="center">产品是否通过审核：</td>
                                <td width="80%" >
                                    <span id="productChecked">
                                        ${loan.productChecked==null?"未审核":"已审核"}
                                    </span>
                                </td>
                            </tr>
                            <tr >
                                <td width="20%" align="center">发布投资年利率：</td>
                                <td width="80%" >
                                    <input id="expectedRate" type="text" name="expectedRate" />%
                                </td>
                            </tr>
                            <tr >
                                <td width="20%" align="center">起投金额：</td>
                                <td width="80%" >
                                    <input id="startMoney" type="text" name="startMoney" />元
                                </td>
                            </tr>
                            <tr >
                                <td width="20%" align="center">产品介绍：</td>
                                <td width="80%" >
                                    <input id="productIntroduce" type="text" name="productIntroduce" value=""/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input id="lid1" type="hidden" name="lid" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input id="surplusMoney" type="hidden" name="surplusMoney" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" width="100%" height="100px" style="text-align: center;">
                                    <input type="button" id="yescheck" value="生成合同" onclick="makecontract()" />&nbsp;&nbsp;&nbsp;
                                    <input type="button"  id="nocheck" value="产品发布" onclick="publish()" />&nbsp;&nbsp;&nbsp;
                                    <%--<input type="submit" value="产品发布"/>&nbsp;&nbsp;&nbsp;--%>
                                    <button type="button" onclick="back()">产品不发布</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
                <i id="addNewUser" class="close-reveal-modal" style="font-size: 30px">&#215;</i>
            </div>
            <!-- END ADVANCED TABLE widget-->
        </div>
        <!-- END PAGE CONTAINER-->
    </div>
    <!-- END PAGE -->
</div>
<!-- END CONTAINER -->

<!-- BEGIN FOOTER -->
<div id="footer">
    2018 &copy; 钱袋宝💰
</div>
<!-- END FOOTER -->

<!-- BEGIN JAVASCRIPTS -->
<!-- Load javascripts at bottom, this will reduce page load time -->
<script src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>

<%--<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.2.min.js"></script>--%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.reveal.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.nicescroll.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.blockui.js"></script>


<script type="text/javascript">

    $('#sample_1').on('click', '#CheckAll', function(){

        // 全选后全不选
        $("input[name='Check[]']").prop("checked", !$('#CheckAll').is('checked'));
        if (!$('#CheckAll').is('checked')) {
            $('#CheckAll').replaceWith("<a id='aaa' style='text-decoration: none;'><span id='delete' class='icon-trash' style='color: red; font-size: 15px;'/>\n&nbsp;" + "<span id='cancel' class='icon-remove' style='color: red; font-size: 15px;'/></a>");
        } else {

        }
    });

    // 删除
    $('#sample_1').on('click', '#delete', function(){
        var result = confirm('确定删除?');
        if (result) { // 确定
            var checklist = $("input[name='Check[]']:checked");
            if(checklist.length == 0){
                alert('未选中任何项！');
                return false;
            }

            // 将获取的值存入数组
            var checkData = [];
            checklist.each(function(){
                checkData.push($(this).val());
            });

            $.post(
                "${pageContext.request.contextPath}/usermanagement/delete",
                {"ids[]": checkData},
                function (data) {
                    if(data == "success") {
                        window.location.href = "${pageContext.request.contextPath}/index";
                    }
                },
                "text"
            );
        } else { // 取消

        }
    });

    // 取消选择
    $('#sample_1').on('click', '#cancel', function(){
        // alert('取消');
        $("#aaa").replaceWith("<input type='checkbox' id='CheckAll' name='CheckAll' class='group-checkable' data-set='#sample_1 .checkboxes'/>");
        // alert($('#CheckAll').is('checked'));
        $("input[name='Check[]']").prop("checked", false);
    });

    // 选择单个
    function checkOneAction() {
        // alert("Check");
        $('#CheckAll').replaceWith("<a id='aaa' style='text-decoration: none;'><span id='delete' class='icon-trash' style='color: red; font-size: 15px;'/>\n&nbsp;" + "<span id='cancel' class='icon-remove' style='color: red; font-size: 15px;'/></a>");

    }

    // 删除单个
    function deleteOneAction(uid) {
        var result = confirm("确定删除吗?");
        var checkData = [];
        checkData.push(uid);
        if (result) {
            $.post(
                "${pageContext.request.contextPath}/usermanagement/delete",
                {"ids[]": checkData},
                function (data) {
                    if(data == "success") {
                        window.location.href = "${pageContext.request.contextPath}/index";
                    }
                },
                "text"
            );
        }
    }

    // 编辑
    function editOneAction(uid) {
        $(".form-control").prop("disabled", "disabled");
    }

    // 添加新用户
    function addNewUserAction() {
        $(".form-control").prop("disabled", false);
        $("#addNewUserBtn").prop("hidden", false);
    }

    // 点击弹出审核弹窗
    function checkLoanAction(lid) {
        $(".check").prop("hidden", false);
        $(".invest").prop("hidden", true);
        var tr = document.getElementById(lid);
        var re = tr.getElementsByTagName("td");
        $("#realname").html(re.item(2).innerText);
        $("#loanAmount").html(re.item(3).innerText + "元");
        $("#beginTimeStr").html(re.item(7).innerText);
        $("#loanLimittime").html(re.item(4).innerText + "天");
        // $("#loanPayway").html(re.item(2).innerText);
        $("#loanRate").html(re.item(9).innerText + "%");
        // $("#loanGoods").html(re.item(5).innerText);
        // $("#loanWorth").html(re.item(6).innerText);
        $("lid").html(lid);
    }

    // 审核
    <%--function verifyAction(lid) {--%>
        <%--alert("审核通过" + lid);--%>
        <%--if ($("")) {--%>
            <%--$.ajax({--%>
                <%--url:"${pageContext.request.contextPath}/loanmanagement/tocheck",--%>
                <%--type:"POST",--%>
                <%--async:false,--%>
                <%--data:{--%>
                    <%--"lid":lid--%>
                <%--},--%>
                <%--dataType:"json",--%>
                <%--success:function (data) {--%>
                    <%--alert(data);--%>
                <%--}--%>
            <%--});--%>
        <%--}--%>

    <%--}--%>

    // 拒绝审核
    function refuseCheckAction (lid) {
        alert("审核不通过" + lid);
        $.ajax({
            url:"${pageContext.request.contextPath}/loanmanagement/refusecheck",
            type:"POST",
            async:false,
            data:{
                "lid":lid
            },
            dataType:"json",
            success:function (data) {
                alert(data);
            }
        });
    }

    // 点击弹出发布弹窗
    function publishAction(lid) {
        $(".check").prop("hidden", true);
        $(".invest").prop("hidden", false);

        var tr = document.getElementById(lid);
        var re = tr.getElementsByTagName("td");
        $("#realname1").html(re.item(2).innerText);
        $("#loanAmount1").html(re.item(3).innerText + "元");
        $("#beginTimeStr1").html(re.item(7).innerText);
        $("#loanLimittime1").html(re.item(4).innerText + "天");
        // $("#loanPayway").html(re.item(2).innerText);
        $("#loanRate1").html(re.item(9).innerText + "%");
        $("lid1").html(lid);
        $("surplusMoney").html(re.item(3).innerText);
    }

    // 生成合同
    function makecontract() {
        alert("生成合同");
        if ($("#expectedRate").val() != "" && $("#expectedRate").val() != null) {
            document.forms[1].action="${pageContext.request.contextPath }/loanmanagement/contract";
            document.forms[1].submit();
        } else {
            alert("发布投资年利率不能为空!");
        }
    }

    // 产品发布
    function publish() {
        alert("产品发布");
        if ($("#expectedRate").val() != null || $("#startMoney").val() != null || $("#productIntroduce").val() != null) {
            document.forms[1].action="${pageContext.request.contextPath }/loanmanagement/publish";
            document.forms[1].submit();
        }
    }


    // 产品不发布
    function back() {
        alert("产品不发布");


    }



</script>


<!-- ie8 fixes -->
<!--[if lt IE 9]>
<script src="${pageContext.request.contextPath}/js/excanvas.js"></script>
<script src="${pageContext.request.contextPath}/js/respond.js"></script>
<![endif]-->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/uniform/jquery.uniform.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/data-tables/jquery.dataTables.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/data-tables/DT_bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.scrollTo.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrapSwitch.js"></script>


<!--common script for all pages-->
<script src="${pageContext.request.contextPath}/js/common-scripts.js"></script>

<!--script for this page only-->
<script src="${pageContext.request.contextPath}/js/dynamic-table.js"></script>


<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->

</html>
