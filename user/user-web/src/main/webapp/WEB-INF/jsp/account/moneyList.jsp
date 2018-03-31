<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <meta content="IE=Edge" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <meta name="keywords" content="千贷宝,互联网金融,产业链金融" />
    <meta name="description" content="千贷宝专注产业链金融，实缴注册资本1亿元人民币,恒丰银行资金存管。" />
    <meta name="sogou_site_verification" content="ktdkahuZOf"/>
    <meta name="shenma-site-verification" content="fef609755f54757f4d1387ad6554898d_1521021962">
    <title>
        千贷宝-专注产业链金融
    </title>
    <link rel="icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/headerfooter20170317.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/member.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/layer.css">
    <script src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/layer.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.placeholder.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/common.js"></script>
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
                        <img src="${pageContext.request.contextPath}/picture/app_qrcode.jpg" alt="">
                        <p>扫一扫下载APP</p>
                    </div>
                </a>
                <a href="javascript:;" class="weixin">
                    <div class="shareCode weixinCode">
                        <i></i>
                        <img src="${pageContext.request.contextPath}/picture/weixincode1121.jpg" alt="">
                        <p>关注千贷宝微信</p>
                    </div>
                </a>
                <a href="http://weibo.com/u/3700302517" target="_blank" class="weibo" title="微博"></a>
                <a href="https://jq.qq.com/?_wv=1027&k=4AUeFQw" target="_blank" class="qq" title="qq群"></a>
            </div>
            <div class="right">
                <a href="/about/index/vip.html" title="VIP服务" >VIP服务</a>
                <span>客服热线：400-6922-808</span>
                <a href="/account.html" class="white">jlc13758193775</a>
                |
                <a href="${pageContext.request.contextPath}/user/index.do" class="white">退出</a>

            </div>
        </div>
    </div>
    <div class="logo_nav warp">
        <h1 class="logo left" title="千贷宝 | 专注产业链金融">
            <a href="/" title="千贷宝 | 专注产业链金融">
                <img src="${pageContext.request.contextPath}/picture/logo.png" align="千贷宝 | 专注产业链金融" />
                <span>|&nbsp;&nbsp;专注产业链金融</span>
            </a>
        </h1>
        <div class="nav right">
            <ul>
                <li ><a href="${pageContext.request.contextPath}/user/index.do" title="首页">首页</a></li>
                <li ><a href="/project.html" title="固收">固收</a></li>
                <li ><a href="/jgtd.html" title="机构通道">机构通道</a></li>
                <li><a href="https://www.jinlianchu.com.cn/invest_queryLoanPlan.html?page=1" title="P2P" target="_blank">P2P</a></li>
                <li ><a href="/about/index/platform.html" title="关于我们">关于我们</a></li>
                <li><a href="${pageContext.request.contextPath}/account/account.do" title="我的账户">我的账户</a></li>
            </ul>
        </div>
    </div>
</div>
<!--头部 end -->
<div class="clear"></div>
<!--内容区-->
<div class="member clearfix">
    <!--左导航-->
    <div class="left_nav">
        <dl>
            <dt><a href="${pageContext.request.contextPath}/account/account.do" ><i class="mb_icon0"></i>账户首页</a></dt>
        </dl>
        <dl>
            <dt><span><i class="mb_icon1"></i>资金管理</span></dt>
            <dd><a href="${pageContext.request.contextPath}/account/moneyList.do" class='on'>资金明细</a></dd>
            <dd><a href="${pageContext.request.contextPath}/account/payment.do" >回款明细</a></dd>
            <dd><a href="${pageContext.request.contextPath}/account/bill.do" >账单</a></dd>
        </dl>
        <dl>
            <dt><span><i class="mb_icon2"></i>投资管理</span></dt>
            <!--<dd><a href="#">活钱宝</a></dd>-->
            <dd><a href="/account/invest/gushou.html" >固收</a></dd>

            <dd><a href="/account/invest/sanbiao.html" >散标投资</a></dd>
            <dd><a href="/account/invest/zqzr.html" >债权转让</a></dd>
            <dd><a href="/account/jbb.html" >金宝宝</a></dd>

        </dl>
        <dl>
            <dt><span><i class="mb_icon3"></i>奖励管理</span></dt>
            <!--<dd><a href="/account/reward/newhand.html" >新手福利<em class="hot"></em></a></dd>-->
            <dd><a href="${pageContext.request.contextPath}/account/myWallet.do" >我的奖励</a></dd>
        </dl>
        <dl>
            <dt><a href="/account/invite/invitefriend.html" ><i class="mb_icon4"></i>邀请好友</a></dt>
        </dl>

        <dl>
            <dt><a href="/account/news/newslist.html" ><i class="mb_icon5"></i>消息中心</a></dt>
        </dl>
        <dl>
            <dt><span><i class="mb_icon6"></i>账户管理</span></dt>
            <dd><a href="${pageContext.request.contextPath}/account/perInformation.do" >个人信息</a></dd>
            <dd><a href="${pageContext.request.contextPath}/account/accInformation.do" >账户与安全</a></dd>
        </dl>
    </div>
    <!--左导航 end-->
    <!--右内容区-->
    <div class="right_con return_money">
        <div class="section">
            <div class="crumbs">
                <span>我的账户</span>&gt;<span>资金管理</span>&gt;<span>资金明细</span>
            </div>
        </div>
        <div class="section clearfix min-height">
            <h2>
                时间：
                <input type="text" name="" id="startDate" value="" readonly="readonly" />　
                至：
                <input type="text" name="" id="endDate" value="" readonly="readonly" />
                <a href="javascript:;" onclick="nextPage(1)" class="date_btn">查询</a>
            </h2>
            <h3>
                <a href="javascript:;" class="on tradeType" name="0">全部</a>
                <a href="javascript:;" name="1">投资</a>
                <a href="javascript:;" name="2">回款</a>
                <a href="javascript:;" name="3">充值</a>
                <a href="javascript:;" name="4">提现</a>
                <!--<a href="javascript:;" name="5">奖励</a>-->
            </h3>
            <div class="rm_list" id="plainPart0">
                <table>
                    <tr>
                        <th>类型</th>
                        <th>摘要</th>
                        <th>金额(元)</th>
                        <th>可用余额(元)</th>
                        <th>账户余额(元)</th>
                        <th>时间</th>
                    </tr>
                </table>
            </div>
        </div>

    </div>
    <!--右内容区  end-->
</div>
<!--内容区 end-->
<script src="${pageContext.request.contextPath}/js/layer.js"></script>
<script src="${pageContext.request.contextPath}/js/laydate.js"></script>
<script>
    $(function () {
        laydate.render({
            elem: '#startDate'
        });
        laydate.render({
            elem: '#endDate'
        });
        $(".return_money h3 a").click(function () {
            $(this).addClass("on tradeType").siblings().removeClass("on tradeType");
            nextPage(1);
        });
    });
    function nextPage(goPage) {
        var startDate = $('#startDate').val();
        var endDate = $('#endDate').val();
        if (Date.parse(new Date(startDate)) > Date.parse(new Date(endDate))) {
            layer.msg('开始时间不能大于结束时间！', {time: 3000});
            return false;
        }
        var tradeType = $('.tradeType').attr('name');
        $.ajax({
            url: "/account/capital/fundajax.html",
            data: {goPage: goPage, tradeType: tradeType, startDate: startDate, endDate: endDate},
            async: false,
            type: "post",
            dataType: "html",
            success: function (msg) {
                $("#plainPart0").html(msg);
            }
        });
    }
</script>
<!-- 底部 -->
<div class="footer">
    <div class="footer_nav warp">
        <div class="footer_link">
            <a href="/about/index/platform.html" target="_blank">关于我们</a>
            <a href="/about/index/investstep.html" target="_blank">新手指南</a>
            <a href="/index/index/kfwd.html" target="_blank">客服问答</a>
            <a href="/about/index/dynamic.html" target="_blank">公司动态</a>
            <a href="/about/index/question.html" target="_blank">常见问题</a>
            <a href="/static/shtml/agreement_zc.html" target="_blank">用户协议</a>
            <a href="/about/index/joinus.html" target="_blank">加入我们</a>
            <a href="/about/index/achievement.html" target="_blank">业绩报告</a>
        </div>
        <div class="footer_codeimg left">
            <span><img src="${pageContext.request.contextPath}/picture/u20.png"/><br />关注千贷宝微信</span>
            <span><img src="${pageContext.request.contextPath}/picture/u25.png"/><br />下载千贷宝APP</span>
        </div>
        <div class="footer_tel right">
            <p>客服热线</p>
            <h3>400-6922-808</h3>
            <p>工作时间：9:00 - 21:00</p>
            <p>投资有风险  投资需谨慎</p>
        </div>
    </div>
    <div class="friend_link warp">
        <span class="left">友情链接：</span>
        <div class="link_list left">
            <a target="_blank" href="http://iof.hexun.com">和讯金融</a>
            <a target="_blank" href="http://www.315.com.cn/dazong/index.html">金银岛财经</a>
            <a target="_blank" href="http://www.wdzj.com">网贷之家</a>
            <a target="_blank" href="http://www.p2peye.com/">网贷天眼</a>
            <a target="_blank" href="http://finance.caijing.com.cn">财经网</a>
            <a target="_blank" href="http://finance.huanqiu.com">环球网财经</a>
            <a target="_blank" href="http://finance.ynet.com">北青财经</a>
            <a target="_blank" href="http://www.wd361.com">网贷互联</a>
            <a target="_blank" href="http://www.licaizhijia.com">理财之家</a>
            <a target="_blank" href="http://www.wdj168.com">网贷界</a>
            <a target="_blank" href="http://www.wangdaibuluo.com">网贷部落</a>
            <a target="_blank" href="http://www.wdzx.com">网贷中心</a>
        </div>
        <a href="javascript:;" class="down_link right">更多∨</a>
        <a href="javascript:;" class="up_link right">收起∧</a>
    </div>
    <div class="footer_icp warp">
        <!--<p>Copyright  &nbsp;&nbsp;©2014-2017  &nbsp;&nbsp;千贷宝（杭州）金融信息服务有限公司  版权所有    杭ICP备14021949号-1</p>-->
        <p>Copyright  &nbsp;&nbsp;©2018  &nbsp;&nbsp;千贷宝（杭州）网络科技有限公司  版权所有</p>
        <p>
            <!--<a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010502034827" target="_blank"><img src="/static/images/jgwab.png" class="jc_img">京公网安备 11010502034827 号</a>　|-->　
            <a href="${pageContext.request.contextPath}/images/icp_img.jpg" target="_blank">杭ICP证140409号</a>　|　<a href="http://www.miitbeian.gov.cn/publish/query/indexFirst.action" target="_blank">京ICP备17042235号</a>　|　机构信用代码证 91110107MA00EU339B
        </p>
        <p>
            <a id="_pingansec_bottomimagelarge_p2p" target="_blank"  title="互联网金融品牌" href="http://si.trustutn.org/info?sn=448170824000601194838&certType=4"><img src="${pageContext.request.contextPath}/picture/footer_img5.jpg"/></a>
            <a href="http://www.bjp2p.com.cn/" target="_blank" title="杭州市网贷行业协会发起会员"><img src="${pageContext.request.contextPath}/picture/footer_img1.jpg" /></a>
            <a href="http://v.pinpaibao.com.cn/authenticate/cert/?site=www.jinlianchu.com&at=business" target="_blank" title="安全联盟认证"><img src="${pageContext.request.contextPath}/picture/footer_img2.png" /></a>
            <a href="https://credit.szfw.org/CX20170913036162381669.html" target="_blank" title="诚信网站"><img src="${pageContext.request.contextPath}/picture/footer_img3.jpg" /></a>
        </p>
    </div>

</div>
<!-- 底部 end -->

<!--浮层-->
<div class="aside">
    <a class="kefu" title="在线客服" href="javascript:;"></a>
    <a class="qr_code" title="二维码" href="javascript:;">
        <div class="shareCode appCode2">
            <i></i>
            <img src="${pageContext.request.contextPath}/picture/app_qrcode.jpg" alt="">
            <p>扫一扫下载APP</p>
        </div>
    </a>
    <a class="calculator" title="收益计算" href="/index/index/calculator.html" target="_blank"></a>
    <a class="go_top" title="返回顶部" href="javascript:;"></a>
</div>
<!--浮层end-->
<script>
    $(function () {
        //二维码显示隐藏
        $(".weixin").hover(function () {
            $(".weixinCode").show();
        }, function () {
            $(".weixinCode").hide();
        });
        $(".app").hover(function () {
            $(".appCode").show();
        }, function () {
            $(".appCode").hide();
        });
        $(".qr_code").hover(function () {
            $(".appCode2").show();
        }, function () {
            $(".appCode2").hide();
        });
        $(".shareCode").mouseenter(function () {
            $(this).show();
        });
        //友情链接显示更多
        $(".down_link").click(function () {
            $(this).fadeOut(100);
            $(".up_link").fadeIn(100);
            $(".link_list").animate({"height": "68px"}, 300);
        });
        $(".up_link").click(function () {
            $(this).fadeOut(100);
            $(".down_link").fadeIn(100);
            $(".link_list").animate({"height": "34px"}, 300);
        });
        //返回顶部
        $(".go_top").click(function () {
            $("html,body").animate({scrollTop: 0}, 200);
        });
        $(window).scroll(function () {
            if ($(window).scrollTop() > 100) {
                $(".go_top").css("visibility", "visible");
            } else {
                $(".go_top").css("visibility", "hidden");
            }
        });
        //客服
        $(".kefu").click(function () {
            $("#udesk_btn a").trigger("click");
            $("#udesk_panel").css({"right": "80px"});
        });
    });</script>
<!--客服接口-->
<script type="text/javascript">
    // 参数串
    var requstStr = "";
    // 去请求签名
    function getSignature() {
        $.ajax({
            type: "GET",
            async: false,
            url: "/index/udesk/udesksign.html",
            dataType: "json",
            success: function (data) {
                if (data.code == 0) { // 成功
                    requstStr = data.result;
                } else {
                    requstStr = {};
                }
            }
        });
    }
    getSignature();
    (function (a, h, c, b, f, g) {
        a["UdeskApiObject"] = f;
        a[f] = a[f] || function () {
            (a[f].d = a[f].d || []).push(arguments)
        };
        g = h.createElement(c);
        g.async = 1;
        g.src = b;
        c = h.getElementsByTagName(c)[0];
        c.parentNode.insertBefore(g, c)
    })(window, document, "script", "https://jlckfb.udesk.cn/im_client/js/udeskApi.js", "ud");
    ud({
        "code": "9ahff2g",
        "link": "https://jlckfb.udesk.cn/im_client",
        "mobile": {
            "mode": "blank",
            "color": "#307AE8",
            "pos_flag": "srm",
            "onlineText": "在线客服",
            "offlineText": "在线客服",
            "pop": {
                "direction": "left"
            }
        },
        "mode": "blank",
        "color": "#307AE8",
        "pos_flag": "srm",
        "onlineText": "在线客服",
        "offlineText": "在线客服",
        "pop": {
            "direction": "left"
        },
        "customer": requstStr
    });</script>
<!--客服end-->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/99click.js"></script>
<script>
    var _hmt = _hmt || [];
    (function () {
        var hm = document.createElement("script");
        hm.src = "//hm.baidu.com/hm.js?fd71d77f3cc1654fb3433083a61b6305";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
<div style="display:none;">
    <script type="text/javascript">
        var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
        document.write(unescape("%3Cspan id='cnzz_stat_icon_1261970518'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s13.cnzz.com/z_stat.php%3Fid%3D1261970518%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));
    </script>
</div>
</body>
</html>
