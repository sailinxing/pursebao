<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta content="IE=Edge" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <meta name="keywords" content="金联储金服,互联网金融,产业链金融"/>
    <meta name="description" content="金联储金服专注产业链金融，实缴注册资本1亿元人民币,恒丰银行资金存管。"/>
    <title>
        金联储金服-专注产业链金融
    </title>
    <link rel="icon" href="/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/headerfooter20170317_1.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member_1.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/layer_1.css">
    <script src="${pageContext.request.contextPath}/static/js/jquery-1.7.2.min_1.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/layer_1.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/static/js/jquery.placeholder.min_1.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/common_1.js"></script>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/weadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>

    <script>

        if (isMobile()) {
            window.location.href = "https://m.jinlianchu.cn";
        }

        //手机端判断各个平台浏览器及操作系统平台
        function isMobile() {
            if (/android/i.test(navigator.userAgent)) {
                //document.write("This is Android'browser.");//这是Android平台下浏览器
                return true;
            }
            if (/(iPhone|iPad|iPod|iOS)/i.test(navigator.userAgent)) {
                //document.write("This is iOS'browser.");//这是iOS平台下浏览器
                return true;
            }
            if (/Linux/i.test(navigator.userAgent)) {
                //document.write("This is Linux'browser.");//这是Linux平台下浏览器
                return true;
            }
            if (/Linux/i.test(navigator.platform)) {
                //document.write("This is Linux operating system.");//这是Linux操作系统平台
                return true;
            }
            if (/MicroMessenger/i.test(navigator.userAgent)) {
                //document.write("This is MicroMessenger'browser.");//这是微信平台下浏览器
                return true;
            }

            return false;
        }
    </script>
</head>

<body>
<!--头部 -->
<div class="header">
    <div class="top_nav">
        <div class="warp">
            <div class="left">
                <a href="javascript:;" class="app">
                    <div class="shareCode appCode">
                        <i></i>
                        <img src="${pageContext.request.contextPath}/static/picture/app_qrcode_1.jpg" alt="">
                        <p>扫一扫下载APP</p>
                    </div>
                </a>
                <a href="javascript:;" class="weixin">
                    <div class="shareCode weixinCode">
                        <i></i>
                        <img src="${pageContext.request.contextPath}/static/picture/weixincode1121_1.jpg" alt="">
                        <p>关注金联储微信</p>
                    </div>
                </a>
                <a href="http://weibo.com/u/3700302517" target="_blank" class="weibo" title="微博"></a>
                <a href="https://jq.qq.com/?_wv=1027&k=4AUeFQw" target="_blank" class="qq" title="qq群"></a>
            </div>
            <div class="right">
                <a href="/about/index/vip.html" title="VIP服务">VIP服务</a>
                <span>客服热线：400-6922-808</span>
                <a href="/login.html" title="登录" class="white">登录</a>
                |
                <a href="/register.html" title="注册" class="white">注册</a>

            </div>
        </div>
    </div>
    <div class="logo_nav warp">
        <h1 class="logo left" title="金联储金服 | 专注产业链金融">
            <a href="/" title="金联储金服 | 专注产业链金融">
                <img src="${pageContext.request.contextPath}/static/picture/logo_1.png" align="金联储金服 | 专注产业链金融"/>
                <span>|&nbsp;&nbsp;专注产业链金融</span>
            </a>
        </h1>
        <div class="nav right">
            <ul>
                <li><a href="/" title="首页">首页</a></li>
                <li class="on"><a href="${pageContext.request.contextPath}/invest/investlist" title="固收">投资</a></li>
                <li><a href="/jgtd.html" title="机构通道">机构通道</a></li>
                <li><a href="https://www.jinlianchu.com.cn/invest_queryLoanPlan.html?page=1" title="P2P"
                       target="_blank">借款</a></li>
                <li><a href="/about/index/platform.html" title="关于我们">关于我们</a></li>
                <li><a href="/account.html" title="我的账户">我的账户</a></li>
            </ul>
        </div>
    </div>
</div>
<!--头部 end -->
<link href="${pageContext.request.contextPath}/static/css/indexcontent20170317_1.css" type="text/css" rel="stylesheet"/>
<link rel="stylesheet" href="css/layer_1.css"/>
<script src="${pageContext.request.contextPath}/static/js/layer_1.js"></script>
<!--主体部分-->
<div class="invesMainWrap">
    <div class="invesMain clear">
        <div class="introduce clear">
            <div class="left">
                <div class="introduceText">
                    <div class="introduceText_top">
                        <h2>${findproduct.pid}<a href="javascript:void(0);">
                            <i class="nuM">新手专享</i>
                        </a>
                        </h2>
                        <p>
                            <!--<span>当日计息 <em><i></i>投资当日开始计息</em></span>-->
                            <span>不可转让<em><i></i>本产品不支持债权转让</em></span>
                        </p>
                    </div>
                    <ul class="list">
                        <li><p class="num red">
                            <em>${findproduct.expectedRate*100}</em>%
                        </p>
                            <p class="label">预期收益率</p>
                        </li>
                        <li><p class="num"><em>${investMoney}</em>元</p>
                            <p class="label">投资金额</p></li>
                        <li ><p class="num">${findproduct.strRepaymentDate}</p>
                            <p class="label">还款日期</p></li>
                        <li style="width:37%"><p class="num">${findproduct.loanChildInfo.loanPaywayString}</p>
                            <p class="label">还款方式</p></li>



                    </ul>
                    <div>
                        <div class="introduceText_footer">
                            <span><a href="https://f.jinlianchu.cn/file/loanagreement/474249018574912.html" target="_blank">《产品协议》</a></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="inright">
                <div class="price">投资金额：<em>${investMoney}</em>元</div>

                <div class="payBtn">
                    <a href="javascript:void(0);" id="pay">立即支付</a>
                </div>
                <div class="tips" style="display:none;"></div>

                <div class="payBtn">
                    <a href="javascript:history.back(-1);" id="">取消</a>
                </div>
            </div>
        </div>

    </div>
</div>



<script type='text/javascript'>
    $(function () {
        $(document).on("click", "#pay", function () {

            var investMoney = ${investMoney};
            var investPid = "${findproduct.pid}";
            var uid = "222";

            $.ajax({
                url: '${pageContext.request.contextPath}/invest/gopay',
                data: {
                    investMoney: investMoney,
                    investPid: investPid,
                    investorId: uid
                },
                type: 'post',
                dataType: 'text',
                async: false,
                success: function (msg) {
                    if (msg == 1) {
                        alert("投资成功！");
                    } else {
                        alert("投资失败！");
                    }
                }
            });
        });
    });

</script>

</body>
</html>