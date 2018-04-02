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
                <i class="white">欢迎您:</i><a href="${pageContext.request.contextPath}/account/account.do" class="white">${sessionUserAccount.username}</a>
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
                <li ><a href="http://localhost:85/pursebao/portal/index?uid=${sessionUserAccount.uid}" title="首页">首页</a></li>
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
            <dd><a href="${pageContext.request.contextPath}/account/myWallet.do" >我的奖励</a></dd>
        </dl>

        <dl>
            <dt><span><i class="mb_icon6"></i>账户管理</span></dt>
            <dd><a href="${pageContext.request.contextPath}/account/perInformation.do" >个人信息</a></dd>
            <dd><a href="${pageContext.request.contextPath}/account/accInformation.do" >账户与安全</a></dd>
        </dl>
    </div>
    <!--左导航 end-->
    <!--右内容区-->
    <div class="right_con member_index">
        <div class="section mb_ms">
            <div class="mb_name clearfix">
                <div class="user_img">
                    <img src="${pageContext.request.contextPath}/picture/user_img.jpg"/>
                </div>
                <div class="user_name">
                    <h3>您好，<span class="orange">${sessionUserAccount.username}</span></h3>
                    <p>
                        <a href="/account/recharge.html" class="user_icon user_icon1">
                            <span class="tips_text yellow"><em></em>设置银行卡可提高账号安全</span>
                        </a>
                        <a href="/account/security/updatepaypwd.html"  class="user_icon user_icon2">
                            <span class="tips_text yellow"><em></em>设置资金密码可提高账号安全</span>
                        </a>
                        <a href="https://m.jinlianchu.cn/account/security/measurement.html?source=2&token=EC65E02D66A640D800DD34E65F595F8F,1654014"  class="user_icon user_icon3">
                            <span class="tips_text yellow"><em></em>设置风险测评可提高账号安全</span>
                        </a>

                    </p>
                </div>
                <div class="user_btns">
                    <a href="">消息</a>
                    <a href="${pageContext.request.contextPath}/account/bill.do">账单</a>
                </div>
            </div>
            <div class="mb_balance clearfix">
                <div class="left_num">
                    <h3>可用余额：<span class="orange">${sessionUserAccount.accountAmount}</span> 元</h3>
                    <p>
                        <a href="${pageContext.request.contextPath}/account/recharge.do" class="on">充值</a>
                        <a href="${pageContext.request.contextPath}/account/withdrawals.do" id="draw_button">提现</a>
                    </p>
                </div>
                <%--<div class="right_num">
                    <a href="/account/reward/myhb.html"><p><i>可用红包：</i><span class="orange">888.00</span> 元</p></a>
                    <a href="/account/reward/myjxq.html"><p><i>可用加息券：</i><span class="orange">0</span> 张</p></a>
                    <a href="/account/reward/myfxq.html"><p><i>可用返现券：</i><span class="orange">0</span> 张</p></a>
                    <a href="/account/reward/mytyj.html"><p><i>可用体验金：</i><span class="orange">10,000.00</span> 元</p></a>
                </div>--%>
            </div>
            <div class="mb_money clearfix">
                <ul>
                    <li>
                        <h4>总资产（元）</h4>
                        <p>${sessionUserAccount.totalAssets}</p>
                        <p><i class="down_arrow"></i></p>
                        <div class="money_hide">
                            可用余额：${sessionUserAccount.accountAmount}元<br />
                            待收本金：${sessionUserAccount.expectedCapital}元<br />
                            所有产品当前总收益：${sessionUserAccount.currentTotalIncrease}元<br />
                            提现处理中金额：${sessionUserAccount.cashAmount}元<br />
                        </div>
                    </li>
                    <li>
                        <h4>昨日收益（元）<i class="help"><span class="tips_text tips_text2 blue"><em></em>昨日收益=平台在投项目昨日一天的收益合计。</span></i></h4>
                        <p>${sessionUserAccount.dailyTotalincrease}</p>
                    </li>
                    <li>
                        <h4>累计收益（元）<i class="help"><span class="tips_text tips_text2 blue"><em></em>累计收益＝平台已收收益合计</span></i></h4>
                        <p>${sessionUserAccount.totalincreasement}</p>
                    </li>
                    <li>
                        <h4>待收本金（元）</h4>
                        <p>${sessionUserAccount.expectedCapital}</p>
                    </li>
                </ul>
            </div>
        </div>
        <%--<div class="section investment clearfix">
            <h2><span>投资分布</span></h2>
            <div id="mb_charts"></div>
            <div class="right_table">
                <table>
                    <thead>
                    <tr>
                        <th>资产类型</th>
                        <th>在投金额(元)</th>
                        <th>待收收益(元)</th>
                    </tr>
                    </thead>
                    <tbody>
                    <!--<tr>
                        <td>活钱宝</td>
                        <td>1000</td>
                        <td>100</td>
                    </tr>-->
                    <tr>

                        <td><a href="/account/invest/gushou.html">固收</a></td>
                        <td><a href="/account/invest/gushou.html">0.00</a></td>
                        <td><a href="/account/invest/gushou.html">0.00</a></td>

                    </tr>
                    <tr>
                        <td><a href="/account/jbb.html">金宝宝</a></td>
                        <td><a href="/account/jbb.html">0.00</a></td>
                        <td><a href="/account/jbb.html">0.00</a></td>
                    </tr>
                    </tbody>
                    <tfoot>
                    <tr class="orange">
                        <td>合计</td>
                        <td>0.00</td>
                        <td>0.00</td>
                    </tr>
                    </tfoot>
                </table>
            </div>
        </div>
        <div class="section clearfix">
            <h2>
                <span>回款日历</span>
                <a href="/account/capital/paymentdetails.html" class="gray">回款明细 &gt;</a>
            </h2>
            <div class="ca_con">
                <div id="ca"></div>
                <div class="ca_tips">回款日历仅支持查询<br />当前时间<em class="orange"> 前6个月 </em>和<em class="orange"> 后12个月 </em>的回款数据。</div>
                <div class="ca_txt">
                    <div class="txt">
                        <h3><span class="y"></span>年<span class="m"></span>月<span class="d"></span>日回款本息（元）</h3>
                        <p class="num" id='dayTotal'>0.00</p>
                        <div class="hide_txt">
                            <ul>
                                <li>
                                    <h4>本日回款本金（元）</h4>
                                    <p id='dayPrincipal'>0.00</p>
                                </li>
                                <li>
                                    <h4>本日回款利息（元）</h4>
                                    <p id='dayInterest'>0.00</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="txt">
                        <h3><span class="y"></span>年<span class="m"></span>月回款本息（元）</h3>
                        <p class="num" id='monthTotal'>0.00</p>
                        <div class="hide_txt">
                            <ul>
                                <li>
                                    <h4>本月回款本金（元）</h4>
                                    <p id='monthPrincipal'>0.00</p>
                                </li>
                                <li>
                                    <h4>本月回款利息（元）</h4>
                                    <p id='monthInterest'>0.00</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>
        </div>--%>
    </div>
    <!--右内容区 end-->
</div>
<!--内容区 end-->
<script src="${pageContext.request.contextPath}/js/jquery.countup.js"></script>
<script src="${pageContext.request.contextPath}/js/echarts.min.js"></script>
<script src="${pageContext.request.contextPath}/js/calendar.js"></script>
<script src="${pageContext.request.contextPath}/js/layer.js"></script>
<script type="text/javascript">
    var isRequesting = false;
    function numchange() {
        $(".num").countTo({
            lastSymbol: " ", //显示在最后的字符
            from: 0, // 开始时的数字
            speed: 2000, // 总时间
            refreshInterval: 100, // 刷新一次的时间
            beforeSize: 0, //小数点前最小显示位数，不足的话用0代替
            decimals: 2, // 小数点后的位数，小数做四舍五入
            onUpdate: function () {
            }, // 更新时回调函数
            onComplete: function () {
                for (i in arguments) {
                    //console.log(arguments[i]);
                }
            }
        });
    }

    $(document).on('click', '#draw_button', function () {
        /*if (!"") {
            layer.msg('您的账户还未实名认证，为保障您的账户资产安全，请先充值绑卡', {time: 3000});
            return false;
        }
        if ("0" == 0) {
            layer.msg('为保障您的资金安全，请先设置资金密码', {time: 3000});
            return false;
        }*/
        /*window.location.href = '/account/index/draw.html';*/
    });

    //$(function () {

    //日历
    $('#ca').calendar({
        width: 340,
        height: 340,
        //修改月份事件
        viewChange: function (view, y, m) {
            getInfo(y, m, 1);
            numchange();
        },
        //修改日期事件
        onSelected: function (view, date, data) {
            var year = date.getFullYear();
            var month = parseInt(date.getMonth()) + 1;
            var day = date.getDate();
            getInfo(year, month, day);
            $(".num").eq(0).countTo({
                lastSymbol: " ", //显示在最后的字符
                from: 0, // 开始时的数字
                speed: 2000, // 总时间
                refreshInterval: 100, // 刷新一次的时间
                beforeSize: 0, //小数点前最小显示位数，不足的话用0代替
                decimals: 2, // 小数点后的位数，小数做四舍五入
                onUpdate: function () {
                }, // 更新时回调函数
                onComplete: function () {
                    for (i in arguments) {
                        //console.log(arguments[i]);
                    }
                }
            });
        }
    });

    $(".ca_txt .txt").hover(function () {
        var $this = $(this);
        //	    	$(".ca_txt .txt h3,.ca_txt .txt .hide_txt").stop(true,true);
        $this.find("h3").animate({"padding-top": "14px"}, 250);
        $this.find(".hide_txt").slideDown();
    }, function () {
        var $this = $(this);
        //	    	$(".ca_txt .txt h3,.ca_txt .txt .hide_txt").stop(true,true);
        $this.find("h3").animate({"padding-top": "55px"}, 250);
        $this.find(".hide_txt").slideUp();
    });
    // });
    function liAddClass(day, type) {
        $(".days:eq(1) li").not(".new,.old").each(function () {
            if (type == 1) {
                if ($(this).text() == day) {
                    $(this).addClass("y")
                }
            } else {
                if ($(this).text() == day) {
                    $(this).addClass("b")
                }
            }
        });
    }

    function getInfo(ye, mo, da) {
        if (isRequesting == true) {
            return false;
        } else {
            isRequesting = true;
        }
        $(".ca_txt .y").text(ye);
        $(".ca_txt .m").text(mo);
        $(".ca_txt .d").text(da);
        var d = ye + '/' + mo + '/' + da;
        $.ajax({
            url: '/account/index/huikuan.html',
            data: {d: d},
            type: 'post',
            dataType: 'json',
            async: false,
            success: function (msg) {
                if (msg.code == 99) {
                    $('.ca_tips').show();
                } else {
                    $('.ca_tips').hide();
                    calendarInfo(msg);
                }
                isRequesting = false;
            }
        });
    }

    function calendarInfo(info) {
        $('#dayTotal').html(toMoney(info.day.total));
        $('#dayPrincipal').html(toMoney(info.day.principal));
        $('#dayInterest').html(toMoney(info.day.interest));

        $('#monthTotal').html(toMoney(info.month.total));
        $('#monthPrincipal').html(toMoney(info.month.principal));
        $('#monthInterest').html(toMoney(info.month.interest));

        $('.days .y').removeClass('y');
        $('.days .b').removeClass('b');
        for (var i = 0; i < info.month.huikuan.length; i++) {
            var selfDate = new Date(info.month.huikuan[i]);
            liAddClass(selfDate.getDate(), 1);
        }
        for (var i = 0; i < info.month.fuxi.length; i++) {
            var selfDate = new Date(info.month.fuxi[i]);
            liAddClass(selfDate.getDate(), 2);
        }
    }
    var myDate = new Date();
    getInfo(myDate.getFullYear(), parseInt(myDate.getMonth()) + 1, myDate.getDate());

    var mb_charts = echarts.init(document.getElementById('mb_charts'));
    var legendData = [{name: '固收', icon: 'circle'}];
    var seriesData = [{value: "0.00", name: '固收'}];

    if ("0" > 0) {
        legendData.push({name: '散标', icon: 'circle'});
        seriesData.push({value: "0.00", name: '散标'});
    }

    if ("0" > 0) {
        legendData.push({name: '已认购债权', icon: 'circle'});
        seriesData.push({value: "0.00", name: '已认购债权'});
    }
    legendData.push({name: '金宝宝', icon: 'circle'});
    seriesData.push({value: "0.00", name: '金宝宝'});
    var option = {
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b}: {c} ({d}%)"
        },
        legend: {
            orient: 'horizontal',
            x: 'center',
            y: 'bottom',
            itemWidth: 10,
            itemHeight: 10,
            //		        data:['活钱宝','固收','散标','债权转让','金宝宝']
            data: legendData
        },
        series: [
            {
                name: '投资分布',
                type: 'pie',
                radius: ['40%', '70%'],
                avoidLabelOverlap: false,
                label: {
                    normal: {
                        show: false,
                        position: 'center'
                    },
                    emphasis: {
                        show: true,
                        textStyle: {
                            fontSize: '24',
                            fontWeight: 'bold'
                        }
                    }
                },
                labelLine: {
                    normal: {
                        show: false
                    }
                },
                data: seriesData
            }
        ],
        color: ["#5db0ff", "#ff706f", "#5fd4ba", "#ba8cd5", "#ffb109"]
    };
    mb_charts.setOption(option);
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
            <span><img src="${pageContext.request.contextPath}/picture/u20.png"/><br />关注金联储金服微信</span>
            <span><img src="${pageContext.request.contextPath}/picture/u25.png"/><br />下载金联储金服APP</span>
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
            <a href="/static/images/icp_img.jpg" target="_blank">杭ICP证140409号</a>　|　<a href="http://www.miitbeian.gov.cn/publish/query/indexFirst.action" target="_blank">杭ICP备17042235号</a>　|　机构信用代码证 91110107MA00EU339B
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
