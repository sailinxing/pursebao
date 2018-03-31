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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/layer/layer.css">
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
                <a href="https://jq.qq.com/?_wv=1027&k=4AUeFQw" target="_blank" class="qq" title="qq群"></a>
            </div>
            <div class="right">
                <a href="/about/index/vip.html" title="VIP服务" >VIP服务</a>
                <span>客服热线：400-0066-220</span>
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
            <dt><a href="${pageContext.request.contextPath}/account/account.do" class="on"><i class="mb_icon0"></i>账户首页</a></dt>
        </dl>
        <dl>
            <dt><span><i class="mb_icon1"></i>资金管理</span></dt>
            <dd><a href="${pageContext.request.contextPath}/account/moneyList.do" >资金明细</a></dd>
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
            <dd><a href="${pageContext.request.contextPath}/account/accInformation.do" >个人信息</a></dd>
            <dd><a href="/account/security/index.html" >账户与安全</a></dd>
        </dl>
    </div>
    <!--左导航 end-->







    <!--右内容区-->
    <div class="right_con reCharge">
        <div class="section">
            <div class="crumbs">
                <span>我的账户</span>&gt;<span>提现</span>
            </div>
        </div>
        <div class="section section_right">
            <span><b><font id="drawal" color="red"></font></b></span>
            <div class="rz_form">
                <form id="succ" method="post">
                    <table>
                           <tr>
                               <td>金额(元)：</td>
                               <td>
                                   <input type="text" id="amount" name="accountAmount" placeholder="最高可提现金额:${sessionUserAccount.accountAmount}" class="ipt1"/>
                               </td>
                           </tr>
                           <tr>
                               <td></td>
                               <td>
                                   <button id="next_btn" onclick="fn()">提现</button>
                                   <i>提示：如果支付失败的错误码为9991，请开通“银联在线支付后再试</i>
                               </td>
                           </tr>
                           <tr>
                               <td></td>
                               <td>
                                   <input type="hidden" name="uid" value="${sessionUserAccount.uid}" class="ipt1"/>
                               </td>
                           </tr>
                           <tr>
                               <td></td>
                               <td>
                                   <input type="hidden" name="aid" value="${sessionUserAccount.aid}" class="ipt1"/>
                               </td>
                           </tr>

                    </table>
                </form>
            </div>
        </div>
    </div>
    <!--右内容区 end-->
</div>
<!--内容区 end-->


<script src="/static/js/jquery.SuperSlide.2.1.1.js"></script>
<script src="/static/js/layer.js"></script>

<script type="text/javascript">

    function fn(){

        var a = $("#amount").val();
        if(a>${sessionUserAccount.accountAmount}){
            alert("提现金额不能超过可用余额");
            $("#drawal").html("提现金额不能超过可用余额");
           return false;
        }
        if(a==0){
            alert("提现金额不能为0或空");
            $("#drawal").html("提现金额不能为0或空");
            return false;
        }
        if(a<0){
            alert("提现金额不能小于0");
            $("#drawal").html("提现金额不能小于0");
            return false;
        }

        document.forms[0].action ="${pageContext.request.contextPath}/account/withdrawalsSuccess.do";
        document.forms[0].submit();
    }


</script>












<%--<script type="text/javascript">
    var message = "";
    if (message) {
        layer.msg(message, {time: 2000});
    }

    //luhm验证银行卡号
    function luhmCheck(bankno) {
        var lastNum = bankno.substr(bankno.length - 1, 1);

        var first15Num = bankno.substr(0, bankno.length - 1);
        var newArr = new Array();
        for (var i = first15Num.length - 1; i > -1; i--) {
            newArr.push(first15Num.substr(i, 1));
        }
        var arrJiShu = new Array();
        var arrJiShu2 = new Array();

        var arrOuShu = new Array();
        for (var j = 0; j < newArr.length; j++) {
            if ((j + 1) % 2 == 1) {
                if (parseInt(newArr[j]) * 2 < 9)
                    arrJiShu.push(parseInt(newArr[j]) * 2);
                else
                    arrJiShu2.push(parseInt(newArr[j]) * 2);
            } else {
                arrOuShu.push(newArr[j]);
            }
        }

        var jishu_child1 = new Array();
        var jishu_child2 = new Array();
        for (var h = 0; h < arrJiShu2.length; h++) {
            jishu_child1.push(parseInt(arrJiShu2[h]) % 10);
            jishu_child2.push(parseInt(arrJiShu2[h]) / 10);
        }

        var sumJiShu = 0;
        var sumOuShu = 0;
        var sumJiShuChild1 = 0;
        var sumJiShuChild2 = 0;
        var sumTotal = 0;
        for (var m = 0; m < arrJiShu.length; m++) {
            sumJiShu = sumJiShu + parseInt(arrJiShu[m]);
        }

        for (var n = 0; n < arrOuShu.length; n++) {
            sumOuShu = sumOuShu + parseInt(arrOuShu[n]);
        }

        for (var p = 0; p < jishu_child1.length; p++) {
            sumJiShuChild1 = sumJiShuChild1 + parseInt(jishu_child1[p]);
            sumJiShuChild2 = sumJiShuChild2 + parseInt(jishu_child2[p]);
        }

        sumTotal = parseInt(sumJiShu) + parseInt(sumOuShu) + parseInt(sumJiShuChild1) + parseInt(sumJiShuChild2);

        var k = parseInt(sumTotal) % 10 == 0 ? 10 : parseInt(sumTotal) % 10;
        var luhm = 10 - k;

        if (lastNum == luhm) {
            return true;
        } else {
            return false;
        }
    }


    $('#firstChargeId').bind('input propertychange', function () {
        this.value = this.value.replace(/[^\dxX]/g, "");  // 清除“数字”以外的字符
    });
    $('#firstChargeCardnum').bind('input propertychange', function () {
        this.value = this.value.replace(/[^\d]/g, "");  // 清除“数字”以外的字符
    });

    $('#firstChargeNum').bind('input propertychange', function () {
        //obj.value = obj.value.replace(/[^\d\s]/g,'').replace(/(\d{4})(?=\d)/g,"$1 ");
        this.value = this.value.replace(/[^\d.]/g, "");  // 清除“数字”和“.”以外的字符
        this.value = this.value.replace(/^\./g, "");		//验证第一个字符是数字而不是.
        this.value = this.value.replace(/\.{2,}/g, ".");  //只保留第一个. 清除多余的.
        this.value = this.value.replace(".", "$#$").replace(/\./g, "").replace("$#$", ".");
        this.value = this.value.replace(/^(\-)*(\d+)\.(\d\d).*$/, '$1$2.$3');
    });

    $(function () {
        var tipflag = $("input[name=tipflag]").val();
        if (tipflag == 2 || tipflag == 3) {
            $("#next_btn").attr("disabled", true);
            $("#next_btn").css("background", "#ccc");
        }
        $('#next_btn').click(function () {
            var firstChargeName = $('#firstChargeName').val();
            var firstChargeId = $('#firstChargeId').val();
            var firstChargeCardnum = $('#firstChargeCardnum').val();
            var firstChargeNum = $('#firstChargeNum').val();
            var singleLimit = $('input[name=singleLimit]').val().replace(",", "");
            var minLimit = $('input[name=minLimit]').val().replace(",", "");
            if (firstChargeName == '') {
                $('#firstChargeName').focus();
                layer.msg('请填写姓名', {time: 2000});
                return false;
            } else if (firstChargeId == '') {
                $('#firstChargeId').focus();
                layer.msg('请填写身份证号', {time: 2000});
                return false;
            } else if (firstChargeCardnum == '') {
                $('#firstChargeCardnum').focus();
                layer.msg('请填写银行卡号', {time: 2000});
                return false;
            } else if (!luhmCheck(firstChargeCardnum)) {
                $('#firstChargeCardnum').focus();
                layer.msg('银行卡号不合法', {time: 2000});
                return false;
            } else if ($('#firstChargeNum').val() == '') {
                $('#firstChargeNum').focus();
                layer.msg('请填写充值金额', {time: 2000});
                return false;
            } else if (minLimit && (parseFloat(firstChargeNum) < parseFloat(minLimit))) {
                $('#firstChargeNum').focus();
                layer.msg('充值金额不能小于' + minLimit + '元', {time: 2000});
                return false;
            } else if (parseFloat(firstChargeNum) > parseFloat(singleLimit)) {
                $('#firstChargeNum').focus();
                layer.msg('金额不能超过单笔限额', {time: 2000});
                return false;
            }
        });

        $('input').bind('input propertychange', function () {
            var realName = $('#firstChargeName').val();
            var idNo = $('#firstChargeId').val();
            var bankCard = $('#firstChargeCardnum').val();
            var money = $("input[name=money]").val();
            var tipflag = $("input[name=tipflag]").val();
           /* if (realName && idNo && bankCard && money && (tipflag == 1)) {
                $("#next_btn").removeAttr("disabled").removeClass("disabled");
            } else {
                $("#next_btn").attr("disabled", true).addClass('disabled');
            }*/
        });

        $('#firstChargeCardnum').bind('input propertychange', function () {
            $("input[name=money]").val("");
            $("#firstChargeNum").attr("placeholder", "请输入");
            $("#bankInfo").html("该卡是您以后快捷充值和提现的唯一银行卡");
        });

        $('#firstChargeCardnum').blur(function () {
            var bankCard = $(this).val();
            if (bankCard && !luhmCheck(bankCard)) {
                $('#firstChargeCardnum').focus();
                layer.msg('银行卡号不合法', {time: 2000});
            }

            if (bankCard && luhmCheck(bankCard)) {
                $.ajax({
                    url: '/account/recharge/getbankcardinfo',
                    data: {bankCard: bankCard},
                    type: 'post',
                    dataType: 'json',
                    success: function (res) {
                        if (res.code == 0) {
                            var prompt = "请输入";
                            $("input[name=bankName]").val(res.result.bankName);
                            $("input[name=dayLimit]").val(res.result.dayLimit);
                            $("input[name=singleLimit]").val(res.result.singleLimit);
                            $("input[name=tipflag]").val(res.result.tipflag);
                            $("input[name=tip]").val(res.result.tip);
                            $("input[name=minLimit]").val(res.result.minLimit);
                            if (res.result.tipflag == 1) {
                                $("input[name=money]").val("");
                                prompt = "充值不小于" + res.result.minLimit + "元";
                            } else {
                                $("#next_btn").attr("disabled", true).addClass('disabled');
                            }
                            $("#firstChargeNum").attr("placeholder", prompt);
                            $("#bankInfo").html(res.result.tip);
                        } else {
                            layer.msg(res.message, {time: 2000});
                        }
                    }
                });
            }
        });
    });
</script>--%>
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
            <span><img src="${pageContext.request.contextPath}/picture/u25.png"/><br />下载千贷宝APP</span>
        </div>
        <div class="footer_tel right">
            <p>客服热线</p>
            <h3>400-0066-220</h3>
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
            <a target="_blank" href="https://www.mika18.com/">米咖网</a>
            <a target="_blank" href="https://www.rong360.com/licai/">融360</a>
        </div>
        <a href="javascript:;" class="down_link right">更多∨</a>
        <a href="javascript:;" class="up_link right">收起∧</a>
    </div>
    <div class="footer_icp warp">
        <!--<p>Copyright  &nbsp;&nbsp;©2014-2017  &nbsp;&nbsp;金联储（北京）金融信息服务有限公司  版权所有    京ICP备14021949号-1</p>-->
        <p>Copyright  &nbsp;&nbsp;©2018  &nbsp;&nbsp;千贷宝（杭州）网络科技有限公司  版权所有</p>
        <p>
            <!--<a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010502034827" target="_blank"><img src="/static/images/jgwab.png" class="jc_img">京公网安备 11010502034827 号</a>　|-->　
            <a href="/static/images/icp_img.jpg" target="_blank">杭ICP证140409号</a>　|　<a href="http://www.miitbeian.gov.cn/publish/query/indexFirst.action" target="_blank">杭ICP备17042235号</a>　|　机构信用代码证 91110107MA00EU339B
        </p>
        <p>
            <a id="_pingansec_bottomimagelarge_p2p" target="_blank"  title="互联网金融品牌" href="http://si.trustutn.org/info?sn=448170824000601194838&certType=4"><img src="${pageContext.request.contextPath}/picture/footer_img5.jpg"/></a>
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
<script type="text/javascript" src="/static/js/99click.js"></script>
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
