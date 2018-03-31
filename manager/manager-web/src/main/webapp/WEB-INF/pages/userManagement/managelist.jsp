<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <img src="${pageContext.request.contextPath}/img/logo.png" alt="Metro Lab" />
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
                        <%--<li><a class="" href="${pageContext.request.contextPath}/pages/userManagement/managelist">员工</a></li>--%>
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
                        <li><a class="" href="${pageContext.request.contextPath}/investmanage/productsmanage">投资产品</a></li>
                        <li><a class="" href="${pageContext.request.contextPath}/investorder/orderlist">投资订单</a></li>
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
                    <h3 class="page-title">用户管理</h3>
                    <ul class="breadcrumb">
                        <li>
                            <a href="${pageContext.request.contextPath}/index">首页</a>
                            <span class="divider">/</span>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/index">用户管理</a>
                            <span class="divider">/</span>
                        </li>
                        <li class="active">员工列表</li>
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
                            <h4><i class="icon-reorder1"></i>员工列表</h4>
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
                                    <th >姓名</th>
                                    <th class="hidden-phone">职位</th>
                                    <th class="hidden-phone">部门</th>
                                    <th class="hidden-phone">级别</th>
                                    <th class="hidden-phone">状态</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${userlist}" var="user" varStatus="vs">
                                    <tr class="odd gradeX">
                                        <%--<td><input type="checkbox" id="Check[]" name="Check[]" class="checkboxes" value="1" /></td>--%>
                                        <td><input type="checkbox" id="Check" name="Check[]" onclick="checkOneAction()" value="${user.uid}"/></td>
                                        <td>${vs.count}</td>
                                        <td>${user.realname}</td>
                                        <td class="hidden-phone">${user.vip}</td>
                                        <td class="hidden-phone">${user.score}</td>
                                        <td class="hidden-phone"><a href="mailto:${user.email}">${user.email}</a></td>
                                        <td class="hidden-phone">${user.phone}</td>
                                        <td>
                                            <a class="btn btn-primary big-link" data-reveal-id="myModal" value="${user.uid}" onclick="editOneAction('${user.uid}')"><i class="icon-pencil"></i></a>
                                            <a class="btn btn-danger" value="${user.uid}" onclick="deleteOneAction('${user.uid}')"><i class="icon-trash "></i></a>
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
                <a class="btn big-link" id="addUser" onclick="addNewUserAction()"><i class="icon-plus"></i></a>
                <div style="margin: 0 auto;">
                    <form id="editForm" method="post" class="form-horizontal" action="">
                        <div class="form-group" style="margin: auto;">
                            <label class="col-lg-3 control-label" style="text-align: right; width: 100px;">编号</label>
                            <input type="text" class="form-control" name="firstName" placeholder="纯数字" style="margin-left: 20px;" value="808098"/>
                        </div>
                        <div class="form-group" style="">
                            <label class="col-lg-3 control-label" style="text-align: right; width: 100px;">姓名</label>
                            <input type="text" class="form-control" name="firstName" placeholder="" style="margin-left: 20px"/>
                        </div>
                        <div class="form-group" style="">
                            <label class="col-lg-3 control-label" style="text-align: right; width: 100px;">密码</label>
                            <input type="password" class="form-control" name="firstName" placeholder="" style="margin-left: 20px"/>
                        </div>
                        <div class="form-group" style="">
                            <label class="col-lg-3 control-label" style="text-align: right; width: 100px;">实名</label>
                            <input type="text" class="form-control" name="firstName" placeholder="" style="margin-left: 20px"/>
                        </div>
                        <div class="form-group" style="">
                            <label class="col-lg-3 control-label" style="text-align: right; width: 100px;">身份证</label>
                            <input type="text" class="form-control" name="firstName" placeholder="" style="margin-left: 20px"/>
                        </div>
                        <div class="form-group" style="">
                            <label class="col-lg-3 control-label" style="text-align: right; width: 100px;">支付密码</label>
                            <input type="password" class="form-control" name="firstName" placeholder="" style="margin-left: 20px"/>
                        </div>
                        <div class="form-group" style="">
                            <label class="col-lg-3 control-label" style="text-align: right; width: 100px;">会员</label>
                            <input type="text" class="form-control" name="firstName" placeholder="" style="margin-left: 20px"/>
                        </div>
                        <div class="form-group" style="">
                            <label class="col-lg-3 control-label" style="text-align: right; width: 100px;">积分</label>
                            <input type="text" class="form-control" name="firstName" placeholder="" style="margin-left: 20px"/>
                        </div>
                        <div class="form-group" style="">
                            <label class="col-lg-3 control-label" style="text-align: right; width: 100px;">实名认证</label>
                            <input type="text" class="form-control" name="firstName" placeholder="" style="margin-left: 20px"/>
                        </div>
                        <div class="form-group" style="">
                            <label class="col-lg-3 control-label" style="text-align: right; width: 100px;">邮箱</label>
                            <input type="text" class="form-control" name="firstName" placeholder="" style="margin-left: 20px"/>
                        </div>
                        <div class="form-group" style="">
                            <label class="col-lg-3 control-label" style="text-align: right; width: 100px;">手机</label>
                            <input type="text" class="form-control" name="firstName" placeholder="" style="margin-left: 20px"/>
                        </div>
                        <div class="form-group" style="">
                            <label class="col-lg-3 control-label" style="text-align: right; width: 100px;">头像</label>
                            <input type="text" class="form-control" name="firstName" placeholder="" style="margin-left: 20px"/>
                        </div>
                        <div class="form-group" style="">
                            <label class="col-lg-3 control-label" style="text-align: right; width: 100px;">公司</label>
                            <input type="text" class="form-control" name="firstName" placeholder="" style="margin-left: 20px"/>
                        </div>
                        <div class="form-group" style="">
                            <label class="col-lg-3 control-label" style="text-align: right; width: 100px;">账户</label>
                            <input type="text" class="form-control" name="firstName" placeholder="" style="margin-left: 20px"/>
                        </div><br>
                        <div class="form-group" style="margin: auto">
                            <button id="addNewUserBtn" class="form-control" style="width: 100px; margin-left: 170px" hidden>新增</button>
                        </div>
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

        // alert("CheckAll");
        // alert($("input[type='checkbox']").is('checked'));
        // alert($('#CheckAll').is('checked'));

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

    // $('#sample_1').on('click', '#cancel', function(){
    //     // alert('取消');
    //     $("#aaa").replaceWith("<input type='checkbox' id='CheckAll' name='CheckAll' class='group-checkable' data-set='#sample_1 .checkboxes'/>");
    //     // alert($('#CheckAll').is('checked'));
    //     $("input[name='Check[]']").prop("checked", false);
    // });

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


<!--common script for all pages-->
<script src="${pageContext.request.contextPath}/js/common-scripts.js"></script>

<!--script for this page only-->
<script src="${pageContext.request.contextPath}/js/dynamic-table.js"></script>


<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->

</html>
