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
<div class="member clearfix myHb">
    <!--左导航-->
    <div class="left_nav">
        <dl>
            <dt><a href="${pageContext.request.contextPath}/account/account.do" ><i class="mb_icon0"></i>账户首页</a></dt>
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
            <dd><a href="${pageContext.request.contextPath}/account/myWallet.do" class='on'>我的奖励</a></dd>
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
    <div class="right_con">
        <div class="section">
            <div class="crumbs">
                <span>我的账户</span>&gt;<span>奖励管理</span>&gt;<span>我的奖励</span>
            </div>
        </div>
        <div class="section section_right">
            <ul class="proj_tit">
                <li><a href="/account/reward/myfxq.html">我的返现券 <em class="red">(0)</em></a></li>
                <li><a href="/account/reward/myjxq.html">我的加息券 <em class="red">(0)</em></a></li>
                <li class="on"><a href="/account/reward/myhb.html">我的红包 <em class="red">(9)</em></a></li>
                <li><a href="/account/reward/mytyj.html">我的体验金 <em class="red">(1)</em></a></li>
            </ul>
            <div class="pre_del">
                <!-- 红包 -->
                <div class="jx_del hb_del">
                    <p class="tips"><a class="info" href="javascript:void(0);">使用说明</a></p>
                    <div style="clear: both;"></div>
                    <div class="sytable">
                        <ul>
                            <li>可用红包金额</li>
                            <li><span>888.00</span> 元</li>
                        </ul>
                        <ul>
                            <li>已使用红包金额</li>
                            <li><span>0</span> 元</li>
                        </ul>
                    </div>
                    <div class="box_del" id='plainPart0'>
                        <div class="jx_box" >                                <div class="jx_top">
                            <h2>新手红包</h2>
                            <h1><em>￥</em>200</h1>
                            <p>【满60000元可用】</p>
                            <p>限180天及以上固收（非新手项）使用。</p>
                        </div>
                            <div class="jx_bot">
                                <p><span>还有82天过期</span></p>
                                <p>有效期：2018-03-13至2018-06-05</p>
                                <a href="/project.html" class="jx_btn">立即使用</a>
                            </div>
                        </div>
                        <div class="jx_box" >                                <div class="jx_top">
                            <h2>新手红包</h2>
                            <h1><em>￥</em>200</h1>
                            <p>【满60000元可用】</p>
                            <p>限180天及以上固收（非新手项）使用。</p>
                        </div>
                            <div class="jx_bot">
                                <p><span>还有72天过期</span></p>
                                <p>有效期：2018-03-13至2018-05-26</p>
                                <a href="/project.html" class="jx_btn">立即使用</a>
                            </div>
                        </div>
                        <div class="jx_box" >                                <div class="jx_top">
                            <h2>新手红包</h2>
                            <h1><em>￥</em>188</h1>
                            <p>【满37600元可用】</p>
                            <p>限180天及以上固收（非新手项）使用。</p>
                        </div>
                            <div class="jx_bot">
                                <p><span>还有62天过期</span></p>
                                <p>有效期：2018-03-13至2018-05-16</p>
                                <a href="/project.html" class="jx_btn">立即使用</a>
                            </div>
                        </div>
                        <div class="jx_box" >                                <div class="jx_top">
                            <h2>新手红包</h2>
                            <h1><em>￥</em>100</h1>
                            <p>【满20000元可用】</p>
                            <p>限90天及以上固收（非新手项）使用。</p>
                        </div>
                            <div class="jx_bot">
                                <p><span>还有52天过期</span></p>
                                <p>有效期：2018-03-13至2018-05-06</p>
                                <a href="/project.html" class="jx_btn">立即使用</a>
                            </div>
                        </div>
                        <div class="jx_box" >                                <div class="jx_top">
                            <h2>新手红包</h2>
                            <h1><em>￥</em>100</h1>
                            <p>【满10000元可用】</p>
                            <p>限180天及以上固收（非新手项）使用。</p>
                        </div>
                            <div class="jx_bot">
                                <p><span>还有42天过期</span></p>
                                <p>有效期：2018-03-13至2018-04-26</p>
                                <a href="/project.html" class="jx_btn">立即使用</a>
                            </div>
                        </div>
                        <div class="jx_box" >                                <div class="jx_top">
                            <h2>新手红包</h2>
                            <h1><em>￥</em>50</h1>
                            <p>【满5000元可用】</p>
                            <p>限固收（非新手项目）、金宝宝使用，金宝宝锁定期内转出后红包回收</p>
                        </div>
                            <div class="jx_bot">
                                <p><span>还有32天过期</span></p>
                                <p>有效期：2018-03-13至2018-04-16</p>
                                <a href="/project.html" class="jx_btn">立即使用</a>
                            </div>
                        </div>
                        <div class="jx_box" >                                <div class="jx_top">
                            <h2>新手红包</h2>
                            <h1><em>￥</em>20</h1>
                            <p>【满2000元可用】</p>
                            <p>限固收（非新手项目）、金宝宝使用，金宝宝锁定期内转出后红包回收</p>
                        </div>
                            <div class="jx_bot">
                                <p><span>还有22天过期</span></p>
                                <p>有效期：2018-03-13至2018-04-06</p>
                                <a href="/project.html" class="jx_btn">立即使用</a>
                            </div>
                        </div>
                        <div class="jx_box" >                                <div class="jx_top">
                            <h2>新手红包</h2>
                            <h1><em>￥</em>20</h1>
                            <p>【满2000元可用】</p>
                            <p>限固收（非新手项目）、金宝宝使用，金宝宝锁定期内转出后红包回收</p>
                        </div>
                            <div class="jx_bot">
                                <p><span>还有12天过期</span></p>
                                <p>有效期：2018-03-13至2018-03-27</p>
                                <a href="/project.html" class="jx_btn">立即使用</a>
                            </div>
                        </div>
                        <div class="jx_box" >                                <div class="jx_top">
                            <h2>新手红包</h2>
                            <h1><em>￥</em>10</h1>
                            <p>【满100元可用】</p>
                            <p>限固收、金宝宝使用，金宝宝锁定期内转出后红包回收</p>
                        </div>
                            <div class="jx_bot">
                                <p><span>还有4天过期</span></p>
                                <p>有效期：2018-03-13至2018-03-19</p>
                                <a href="/project.html" class="jx_btn">立即使用</a>
                            </div>
                        </div>

                        <div style="clear: both;"></div>
                        <div class="pagingWrap">
                            <span class="current">1</span>
                            <span class="page-all">共1页</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--红包说明-->
    <div class="hb_info">
        <div class="hb_info_del">
            <h1>使用说明 <span class="close"><img src="${pageContext.request.contextPath}/picture/close_icon3.jpg"/></span></h1>
            <h2>使用规则</h2>
            <p>1. 仅限在投资时按照红包使用条件进行使用；</p>
            <p>2. 每笔投资只能使用一个红包；</p>
            <p>3. 单个红包只能一次性使用完，不支持部分使用；</p>
            <p>4. 红包不支持购买债转项目；</p>
            <p>5. 使用红包后，投资到期后即可提现。</p>
            <h2>获取途径</h2>
            <p>红包可通过参与金联储金服活动获得。您可以登录金联储金服官网查看相关活动。</p>
            <h2>回收规则</h2>
            <p>项目发生债转或金宝宝项目锁定期内转出，对应的红包金额一次性全额扣除。</p>
        </div>
    </div>
    <!--右内容区 end-->
</div>
<!--内容区 end-->
<!--分享红包弹窗-->
<div class="fx_box">
    <div class="taps">
        <h1>请选择发红包方式<em><img class="closebtn" src="/static/images/member/close.png"></em></h1>
        <ul>
            <li>
                <dl>
                    <a href="javascript:;" class="weixin1">
                        <dt><img src="/static/images/member/codes1.png"></dt>
                        <dd>微信</dd>
                        <div class="weixinQR"><img id='weixin1' src="#######" /></div>
                    </a>
                </dl>
            </li>
            <li>
                <dl>
                    <dt><a href="javascript:void(0);" onclick="toWeibo();" id="myWeibo" target="_blank"><img src="/static/images/member/codes2.png"></a></dt>
                    <dd>微博</dd>
                </dl>
            </li>
            <li>
                <dl>
                    <dt><a href="javascript:void(0);" id="myQzone"  onclick="toQzone()" target="_blank"><img src="/static/images/member/codes3.png"></a></dt>
                    <dd>QQ空间</dd>
                </dl>
            </li>
            <li>
                <dl>
                    <dt><a href="javascript:void(0);" id="myQQ" target="_blank" onclick="toQQwebsite()"><img src="/static/images/member/codes4.png"></a></dt>
                    <dd>QQ</dd>
                </dl>
            </li>
            <li>
                <dl>
                    <a href="javascript:;" data-clipboard-action="copy" data-clipboard-target="#foo" class="copy_btn">
                        <dt><img src="/static/images/member/codes5.png"></dt>
                        <dd>复制链接<input type="text" name="" id="foo" class="copy_input" value="" style="height: 1px; width: 1px; border: 0;background: none; overflow: hidden;" /></dd>
                    </a>
                </dl>
            </li>
        </ul>
        <p>将红包发给好友们一起抢吧，你也可以抢一个呦！</p>
    </div>
</div>
</div>
</div>
<input type="hidden" id="title" />
<input type="hidden" id="shareLink" />
<input type="hidden" id="shareImg"/>
<script src="/static/js/layer.js"></script>
<script src="/static/js/clipboard.min.js"></script>
<script>
    function nextPage(goPage) {
        $.ajax({
            url: "/account/reward/myhbajax.html",
            data: {goPage: goPage},
            async: false,
            type: "post",
            dataType: "html",
            success: function (msg) {
                $("#plainPart0").html(msg);
            }
        });
    }

    function myBrowser() {
        var userAgent = navigator.userAgent;
        var isOpera = userAgent.indexOf("Opera") > -1;
        var isFirefox = userAgent.indexOf("Firefox") > -1;
        var isChrome = userAgent.indexOf("Chrome") > -1;
        var isSafari = userAgent.indexOf("Safari") > -1;
        if (isOpera || isFirefox || isChrome || isSafari) {
            return true;
        }
    }

    //分享红包
    function fxHb(shareLink, title, shareImg,base64_shareLink) {
        $('#title').val(title);
        $('#shareLink').val(shareLink);
        shareImg = shareImg ? shareImg : 'https://www.jinlianchu.cn/static/images/logo2.png';
        $('#shareImg').val(shareImg);

        $('.copy_input').val(shareLink);//复制
        $('#weixin1').attr('src', '/index/index/makecode.html?url=' + base64_shareLink);//微信分享
        $(".fx_box").fadeIn();
    }
    $(function () {
        $(".info").click(function () {
            $(".hb_info").show();
        });
        $(".close").click(function () {
            $(this).parent().parent().parent().hide();
        });


        $(".closebtn").click(function () {
            $(".fx_box").fadeOut();
        });
        var mb = myBrowser();
        if (mb) {
            var clipboard = new Clipboard('.copy_btn');
            $(".copy_btn").click(function () {
                layer.tips('复制成功', '.copy_btn dt', {tips: [3, '#1e89e0']});
            });
        } else {
            $('.copy_btn').zclip({
                path: '/static/js/ZeroClipboard.swf',
                copy: $('.copy_input').val(),
                beforeCopy: function () {
                },
                afterCopy: function () {
                    layer.tips('复制成功', '.copy_btn dt', {tips: [3, '#1e89e0']});
                }
            });
        }
    });


    // 微博分享
    function toWeibo() {
        var title = $('#title').val();
        var shareLink = $('#shareLink').val();
        var shareImg = $('#shareImg').val();
        var p = {
            /*count=表示是否显示当前页面被分享数量(1显示)(可选，允许为空)
             &url=将页面地址转成短域名，并显示在内容文字后面。(可选，允许为空)
             &appkey=用于发布微博的来源显示，为空则分享的内容来源会显示来自互联网。(可选，允许为空)
             &title=分享时所示的文字内容，为空则自动抓取分享页面的title值(可选，允许为空)
             &pic=自定义图片地址，作为微博配图(可选，允许为空)
             &ralateUid=转发时会@相关的微博账号(可选，允许为空)
             &language=语言设置(zh_cn|zh_tw)(可选)*/
            count: 1,
            url: shareLink, /*获取URL，可加上来自分享到QQ标识，方便统计*/
            appkey: '金联储',
            title: title, /*分享标题(可选)*/
            pic: shareImg, /*分享图片(可选)*/
            ralateUid: '',
            language: 'zh_cn'
        };
        var s = '';
        for (var i in p) {
            s += i;
            s += '=';
            s += encodeURIComponent(p[i] || '');
            s += '&';
        }
        s = s.substring(0, s.length - 1);
        $("#myWeibo").attr("href", "http://service.weibo.com/share/share.php?url=" + s);
    }

    // QQ空间分享
    function toQzone() {
        var title = $('#title').val();
        var shareLink = $('#shareLink').val();
        var shareImg = $('#shareImg').val();
        var p = {
            /*url=分享的网址
             &desc=默认分享理由(可选)
             &summary=分享摘要(可选)
             &title=分享标题(可选)
             &site=分享来源 如：腾讯网(可选)
             &pics=分享图片的路径(可选)*/
            url: shareLink, /*获取URL，可加上来自分享到QQ标识，方便统计*/
            desc: '', /*分享理由(风格应模拟用户对话),支持多分享语随机展现（使用|分隔）*/
            summary: '', /*分享摘要(可选)*/
            title: title, /*分享标题(可选)*/
            site: '金联储', /*分享来源(可选) 如：QQ分享*/
            pics: shareImg, /*分享图片(可选)*/
        };
        var s = '';
        for (var i in p) {
            s += i;
            s += '=';
            s += encodeURIComponent(p[i] || '');
            s += '&';
        }
        s = s.substring(0, s.length - 1);
        $("#myQzone").attr("href", "http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?" + s);
    }

    // QQ好友分享
    function toQQwebsite() {
        var title = $('#title').val();
        var shareLink = $('#shareLink').val();
        var shareImg = $('#shareImg').val();
        var p = {
            url: shareLink, /*获取URL，可加上来自分享到QQ标识，方便统计*/
            desc: '', /*分享理由(风格应模拟用户对话),支持多分享语随机展现（使用|分隔）*/
            title: title, /*分享标题(可选)*/
            summary: '', /*分享摘要(可选)*/
            pics: shareImg, /*分享图片(可选)*/
            flash: '', /*视频地址(可选)*/
            site: '金联储', /*分享来源(可选) 如：QQ分享*/
            style: '101',
            width: 96,
            height: 24
        };
        var s = '';
        for (var i in p) {
            s += i;
            s += '=';
            s += encodeURIComponent(p[i] || '');
            s += '&';
        }
        s = s.substring(0, s.length - 1);
        $("#myQQ").attr("href", "http://connect.qq.com/widget/shareqq/index.html?" + s);
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
            <span><img src="${pageContext.request.contextPath}/picture/u25.png"/><br />下载金联储金服APP</span>
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
        <p>Copyright  &nbsp;&nbsp;©2018  &nbsp;&nbsp;千贷宝（北京）网络科技有限公司  版权所有</p>
        <p>
            <!--<a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010502034827" target="_blank"><img src="/static/images/jgwab.png" class="jc_img">京公网安备 11010502034827 号</a>　|-->　
            <a href="${pageContext.request.contextPath}/images/icp_img.jpg" target="_blank">杭ICP证140409号</a>　|　<a href="http://www.miitbeian.gov.cn/publish/query/indexFirst.action" target="_blank">京ICP备17042235号</a>　|　机构信用代码证 91110107MA00EU339B
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
            <img src="/static/images/app_qrcode.jpg" alt="">
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