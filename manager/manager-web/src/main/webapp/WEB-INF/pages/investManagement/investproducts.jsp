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


    <link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrapSwitch.css" rel="stylesheet" />
    <%--<link href="${pageContext.request.contextPath}/css/bootstrap-switch.min.css" rel="stylesheet" />--%>

    <%--<script src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>--%>
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrapSwitch.js"></script>
    <%--<script src="${pageContext.request.contextPath}/js/bootstrap-switch.min.js"></script>--%>


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
                    <h3 class="page-title">投资管理</h3>
                    <ul class="breadcrumb">
                        <li>
                            <a href="${pageContext.request.contextPath}/index">首页</a>
                            <span class="divider">/</span>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/index">投资管理</a>
                            <span class="divider">/</span>
                        </li>
                        <li class="active">投资产品列表</li>
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
                            <h4><i class="icon-reorder1"></i>投资产品列表</h4>
                            <span class="tools">
                                <a href="javascript:;" class="icon-chevron-down"></a>
                            </span>
                        </div>

                        <form action="">
                        <div class="widget-body">
                            <table class="table table-bordered table-hover" id="sample_1">
                                <thead>
                                <tr>
                                    <th style="width:32px;"><input type="checkbox" id="CheckAll" name="CheckAll" class="group-checkable" data-set="#sample_1 .checkboxes" /></th>
                                    <th >投资产品编号</th>

                                    <th class="hidden-phone">预期收益率</th>
                                    <th class="hidden-phone">起投金额</th>
                                    <th class="hidden-phone">还款期限</th>
                                    <th class="hidden-phone">还款日期</th>
                                    <th >还款方式</th>
                                    <th class="hidden-phone">借款公司</th>
                                    <th class="hidden-phone">剩余投资额</th>
                                    <th class="hidden-phone">确认放款</th>
                                    <th >上/下线</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${productChildList}" var="product">
                                    <tr class="odd gradeX">
                                        <%--<td><input type="checkbox" id="Check[]" name="Check[]" class="checkboxes" value="1" /></td>--%>
                                        <td><input type="checkbox" id="Check" name="Check[]" onclick="checkOneAction()" value="${product.pid}"/></td>
                                        <td id="currentpid">${product.pid}</td>
                                        <td>${product.expectedRate}</td>
                                        <td class="hidden-phone">${product.startMoney}</td>
                                            <td class="hidden-phone">${product.loanChildInfo.loanLimittimeStr}</td>

                                            <c:if test="${product.surplusMoney==0}">
                                            <td class="hidden-phone">${product.strRepaymentDate}</td>
                                            </c:if>
                                            <c:if test="${product.surplusMoney>0}">
                                                <td class="hidden-phone">招标中...</td>
                                            </c:if>

                                        <td class="hidden-phone">${product.loanChildInfo.loanPaywayString}</td>
                                        <td class="hidden-phone">${product.loanChildInfo.userChildInfo.companyInfo.companyName}有限公司</td>
                                        <td class="hidden-phone">${product.surplusMoney}</td>
                                            <c:if test="${product.surplusMoney==0}">
                                                <td class="hidden-phone" bgcolor="#ffd700"><a onclick="pushmoney('${product.pid}')">已满标</a></td>
                                            </c:if>
                                            <c:if test="${product.surplusMoney>0}">
                                                <td class="hidden-phone" bgcolor="#7fffd4"><a onclick="pushmoney('${product.pid}')">投资中</a></td>
                                            </c:if>
                                        <td>
                                            <div class="switch" data-on="success" data-off="warning">
                                                <c:if test="${product.productOnline==1}">
                                                    <input id="online" name="my-switch" type="checkbox" value="1" checked/>
                                                </c:if>
                                                <c:if test="${product.productOnline==0}">
                                                    <input id="online" name="my-switch" type="checkbox" value="0"/>
                                                </c:if>
                                            </div>
                                        </td>
                                            <td>
                                                <a class="btn btn-primary big-link" data-reveal-id="myModal" value="${product.pid}" onclick="location.href='${pageContext.request.contextPath}/investmanage/productinfo/${product.pid}'"><i class="icon-pencil"></i></a>
                                                <a class="btn btn-danger" value="${product.pid}" onclick="deleteOneAction('${product.pid}')"><i class="icon-trash "></i></a>
                                            </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        </form>
                    </div>

                    <!-- END EXAMPLE TABLE widget-->
                </div>
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

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.reveal.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.nicescroll.js" type="text/javascript"></script>
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
                "${pageContext.request.contextPath}/investmanage/deleteproduct",
                {"ids[]": checkData},
                function (data) {
                    if(data == "success") {
                        window.location.href = "${pageContext.request.contextPath}/investmanage/productsmanage";
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
                "${pageContext.request.contextPath}/investmanage/deleteproduct",
                {"ids[]": checkData},
                function (data) {
                    if(data == "success") {
                        window.location.href = "${pageContext.request.contextPath}/investmanage/productsmanage";
                    }
                },
                "text"
            );
        }
    }
</script>

<script type="text/javascript">

        $('.switch').on('switch-change', function (e, data) {
            var $el = $(data.el)
                , value = data.value;
            console.log(e, $el, value);
            if(value){
//                alert($("#currentpid").val());
                alert("修改为上线");
            }else{
                alert("修改为下线");
            }
        });

</script>

<script>
    function pushmoney(pid) {
        confirm("确定要给贷款企业放款吗？")
        $.ajax({
            //几个参数需要注意一下
            url: "${pageContext.request.contextPath}/investmanage/pushmoney" ,//url
            type: "POST",//方法类型
            dataType: "text",//预期服务器返回的数据类型
            data: {"pid":pid},
            success: function (result) {
                if (result==200) {
                    location.href="${pageContext.request.contextPath}/investmanage/productsmanage";
                    alert("放款成功！")
                }
            }
        });

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
