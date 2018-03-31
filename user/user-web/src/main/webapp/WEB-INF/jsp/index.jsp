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
                        <p>千贷宝微信</p>
                    </div>
                </a>
                <a href="http://weibo.com/u/3700302517" target="_blank" class="weibo" title="微博"></a>
                <a href="https://jq.qq.com/?_wv=1027&k=4AUeFQw" target="_blank" class="qq" title="qq群"></a>
            </div>
            <div class="right">
                <a href="/" title="VIP服务" >VIP服务</a>
                <span>客服热线：400-6922-808</span>
                <a href="${pageContext.request.contextPath}/user/login.do" title="登录" class="white">登录</a>
                |
                <a href="${pageContext.request.contextPath}/user/register.do" title="注册" class="white">注册</a>

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
                <li class="on"><a href="" title="首页">首页</a></li>
                <li ><a href="/project.html" title="固收">固收</a></li>
                <li ><a href="/jgtd.html" title="机构通道">机构通道</a></li>
                <li><a href="https://www.jinlianchu.com.cn/invest_queryLoanPlan.html?page=1" title="P2P" target="_blank">P2P</a></li>
                <li ><a href="/about/index/platform.html" title="关于我们">关于我们</a></li>
                <li><a href="${pageContext.request.contextPath}/user/login.do" title="我的账户">我的账户</a></li>
            </ul>
        </div>
    </div>
</div>
<!--头部 end -->

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index2017.css" />
<!--焦点图 -->
<div id="slideBox" class="slideBox">
    <div class="hd"><ul></ul></div>
    <div class="bd">
        <ul>
            <li style="background-image: url('${pageContext.request.contextPath}/images/pcbanner.jpg'); ">
                <a href="https://www.jinlianchu.cn/activity/invite.html?source=2&token=" target="_blank"></a>
            </li>
            <li style="background-image: url('${pageContext.request.contextPath}/images/xinrenli20180321.jpg'); ">
                <a href="https://f.jinlianchu.cn/FILE/html/PC//pc-2017102620/index.shtml?source=2&token=" target="_blank"></a>
            </li>
        </ul>
    </div>
    <a class="prev" href="javascript:;" title="上一张"></a>
    <a class="next" href="javascript:;" title="下一张"></a>
</div>
<!--焦点图 end -->
<!--内容区-->
<div class="article warp">
    <div class="jlc_data clearfix" id='total'></div>
    <div class="advantage clearfix">
        <ul>
            <li>
                <a href="/about/index/platform.html" target="_blank">
                    <i class="icon1"></i>
                    <p>恒丰银行存管<br />实缴注册资本1亿元</p>
                </a>
            </li>
            <li>
                <a href="/about/index/platform.html" target="_blank">
                    <i class="icon2"></i>
                    <p>企业资质<br />中国互联网金融协会首批会员</p>
                </a>
            </li>
            <li>
                <a href="/about/index/platform.html" target="_blank">
                    <i class="icon3"></i>
                    <p>亿元安保金<br />银行存管，先行垫付</p>
                </a>
            </li>
            <li>
                <a href="/about/index/platform.html" target="_blank">
                    <i class="icon4"></i>
                    <p>百亿财产险<br />由中国人保和平安保险承保</p>
                </a>
            </li>
        </ul>
    </div>
    <!--滚动新闻-->
    <div class="scroll_news clearfix">
        <div class="left notice">
            <i></i>
            <div class="txtScroll">
                <div class="bd">
                    <ul class="infoList">
                        <li><a href="/index/index/noticedetail.html?id=2629" target="_blank" tltle="金联储金服春节放假公告">金联储金服春节放假公告</a></li>
                        <li><a href="/index/index/noticedetail.html?id=2609" target="_blank" tltle="系统升级公告">系统升级公告</a></li>
                        <li><a href="/index/index/noticedetail.html?id=2589" target="_blank" tltle="小金2018年会期间客户服务安排公告">小金2018年会期间客户服务安排公告</a></li>
                        <li><a href="/index/index/noticedetail.html?id=2569" target="_blank" tltle="平台运营公告">平台运营公告</a></li>
                        <li><a href="/index/index/noticedetail.html?id=2551" target="_blank" tltle="微软云维护公告">微软云维护公告</a></li>
                        <li><a href="/index/index/noticedetail.html?id=2550" target="_blank" tltle="系统升级公告">系统升级公告</a></li>
                        <li><a href="/index/index/noticedetail.html?id=2529" target="_blank" tltle="元旦放假公告">元旦放假公告</a></li>
                        <li><a href="/index/index/noticedetail.html?id=2509" target="_blank" tltle="邀请好友活动升级公告">邀请好友活动升级公告</a></li>
                        <li><a href="/index/index/noticedetail.html?id=2469" target="_blank" tltle="”礼“惠初秋，投资得千元京东卡获奖公告">”礼“惠初秋，投资得千元京东卡获奖公告</a></li>
                        <li><a href="/index/index/noticedetail.html?id=2449" target="_blank" tltle="金联储金服6月争霸赛获奖公告">金联储金服6月争霸赛获奖公告</a></li>
                    </ul>
                </div>
            </div>
            <a href="/index/index/noticelist.html" target="_blank" class="more">更多 &gt;</a>
        </div>
        <div class="right dynamic">
            <i></i>
            <div class="txtScroll">
                <div class="bd">
                    <ul class="infoList">
                        <li>
                            <span>2分钟前</span>
                            <a href="/project/index/projectdetail/id/475314215227456" tltle="[供应链ZGXL25025ZGXL25025]用于企业经营，补充流动资金。" target="_blank">
                                z**8投资了35394元[供应链ZGXL25025ZGXL25025]用于企业经营，补充流动资金。                            </a>
                        </li>
                        <li>
                            <span>3分钟前</span>
                            <a href="/project/index/projectdetail/id/475505599678528" tltle="[供应链ZGXL43010ZGXL43010]用于企业经营，补充流动资金。" target="_blank">
                                j**7投资了1026元[供应链ZGXL43010ZGXL43010]用于企业经营，补充流动资金。                            </a>
                        </li>
                        <li>
                            <span>3分钟前</span>
                            <a href="/project/index/projectdetail/id/475505599678528" tltle="[供应链ZGXL43010ZGXL43010]用于企业经营，补充流动资金。" target="_blank">
                                j**6投资了1010元[供应链ZGXL43010ZGXL43010]用于企业经营，补充流动资金。                            </a>
                        </li>
                        <li>
                            <span>3分钟前</span>
                            <a href="/project/index/projectdetail/id/475323101532224" tltle="[供应链ZGXL50050ZGXL50050]用于企业经营，补充流动资金。" target="_blank">
                                丫**头投资了6666元[供应链ZGXL50050ZGXL50050]用于企业经营，补充流动资金。                            </a>
                        </li>
                        <li>
                            <span>4分钟前</span>
                            <a href="/project/index/projectdetail/id/475505599678528" tltle="[供应链ZGXL43010ZGXL43010]用于企业经营，补充流动资金。" target="_blank">
                                j**8投资了2599元[供应链ZGXL43010ZGXL43010]用于企业经营，补充流动资金。                            </a>
                        </li>
                        <li>
                            <span>6分钟前</span>
                            <a href="/project/index/projectdetail/id/475323101532224" tltle="[供应链ZGXL50050ZGXL50050]用于企业经营，补充流动资金。" target="_blank">
                                j**7投资了2000元[供应链ZGXL50050ZGXL50050]用于企业经营，补充流动资金。                            </a>
                        </li>
                        <li>
                            <span>6分钟前</span>
                            <a href="/project/index/projectdetail/id/475505599678528" tltle="[供应链ZGXL43010ZGXL43010]用于企业经营，补充流动资金。" target="_blank">
                                j**4投资了1000元[供应链ZGXL43010ZGXL43010]用于企业经营，补充流动资金。                            </a>
                        </li>
                        <li>
                            <span>6分钟前</span>
                            <a href="/project/index/projectdetail/id/475505599678528" tltle="[供应链ZGXL43010ZGXL43010]用于企业经营，补充流动资金。" target="_blank">
                                j**6投资了10238元[供应链ZGXL43010ZGXL43010]用于企业经营，补充流动资金。                            </a>
                        </li>
                        <li>
                            <span>7分钟前</span>
                            <a href="/project/index/projectdetail/id/475148694427712" tltle="[供应链ZGXL42037ZGXL42037]用于企业经营，补充流动资金。" target="_blank">
                                j**3投资了6884元[供应链ZGXL42037ZGXL42037]用于企业经营，补充流动资金。                            </a>
                        </li>
                        <li>
                            <span>7分钟前</span>
                            <a href="/project/index/projectdetail/id/475505599678528" tltle="[供应链ZGXL43010ZGXL43010]用于企业经营，补充流动资金。" target="_blank">
                                z**9投资了26547元[供应链ZGXL43010ZGXL43010]用于企业经营，补充流动资金。                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!--新手-->
    <div class="product_novice clearfix">
        <div class="p_txt left">
            <i></i>
            <h3>新手专区</h3>
            <h4>轻松开启您的理财之旅</h4>
            <!--            <em class="hb_ico"></em>
                        <em class="light_ico"></em>
                        <h5>新手注册即送</h5>-->
            <p><a href="https://f.jinlianchu.cn/FILE/html/PC//pc-2017102620/index.shtml" target="_blank">888元红包 +1万元体验金</a></p>
        </div>
        <div class="p_list right">
            <ul>
                <li>
                    <div class="p_con left">
                        <h3>
                            <i></i>
                            <a href="/project/index/projectdetail/id/475311744819264" target="_blank">供应链ZGXL30043</a>
                            <a href="javascript:void(0);" >
                                <em>新手专享</em>
                            </a>
                        </h3>
                        <div class="profit">
                            <div class="num">
                                <h5>
                                    <em>10</em>%
                                </h5>
                                <p>预期年化收益率</p>
                            </div>
                            <div class="time">
                                <h5>
                                    <em>30</em>天                                </h5>
                                <p>期限</p>
                            </div>
                        </div>
                    </div>
                    <div class="invest right">
                        <p class="surplus_num">剩余可投：<span>129</span>元</p>
                        <p class="surplus_hr"><span style="width:99%"></span></p>

                        <p class="invest_btn">
                            <a href="/project/index/projectdetail/id/475311744819264" target="_blank" title="立即投资">立即投资</a>                        </p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <!--体验标-->
    <div class="product_experience clearfix">
        <div class="p_txt left">
            <i class="line"></i>
            <i class="hammer"></i>
            <h3>体验标</h3>
            <h4>零成本体验投资</h4>
        </div>
        <div class="p_list right">
            <ul>
                <li>
                    <div class="p_con left">
                        <h3>
                            <i></i>
                            <a href="/project/tyj/invest/id/7727" target="_blank">体验标</a>
                            <a href="javascript:;">
                            </a>
                        </h3>
                        <div class="profit">
                            <div class="num">
                                <h5>
                                    <em>10</em>%
                                </h5>
                                <p>预期年化收益率</p>
                            </div>
                            <div class="time">
                                <h5><em style="font-size:18px;">由体验金期限而定</em></h5>
                                <p>期限</p>
                            </div>
                        </div>
                    </div>
                    <div class="invest right">
                        <p class="surplus_num">剩余可投：<span>1750000</span>元</p>
                        <p class="surplus_hr"><span style="width:13%"></span></p>
                        <p class="invest_btn"><a href="/project/tyj/invest/id/7727" target="_blank" title="立即投资">立即投资</a></p>
                    </div>
                </li>
            </ul>
        </div>
    </div>

    <!--固收-->
    <div class="product_fixed clearfix">
        <div class="p_txt left">
            <i></i>
            <h3>固收</h3>
            <!--<h4>来源金融资产交易所</h4>-->
            <!--<a href="/index/jjs/intron.html" class="p_txt_btn" target="_blank">了解详情 &gt;</a>-->
            <p>每日首发时间 8:50</p>
        </div>
        <div class="p_list right">
            <a href="/project.html" target="_blank" class="more">更多 &gt;</a>
            <ul>
                <li>
                    <div class="p_con left">
                        <h3>
                            <i></i>
                            <a href="/project/index/projectdetail/id/475323418614080" target="_blank">供应链ZGXL12059</a>
                            <a href="javascript:void(0);" >
                            </a>
                        </h3>
                        <div class="profit">
                            <div class="num">
                                <h5>
                                    <em>12</em>%
                                </h5>
                                <p>预期年化收益率</p>
                            </div>
                            <div class="time">
                                <h5><em>360</em>天</h5>
                                <p>期限</p>
                            </div>
                        </div>
                    </div>
                    <div class="invest right">
                        <p class="surplus_num">剩余可投：<span>1000000</span>元</p>
                        <p class="surplus_hr"><span style="width:0%;"></span></p>
                        <p class="invest_btn">
                            <a href="/project/index/projectdetail/id/475323418614080" target="_blank" title="立即投资">立即投资</a>                        </p>
                    </div>
                </li>
                <li>
                    <div class="p_con left">
                        <h3>
                            <i></i>
                            <a href="/project/index/projectdetail/id/475505599678528" target="_blank">供应链ZGXL43010</a>
                            <a href="javascript:void(0);" >
                            </a>
                        </h3>
                        <div class="profit">
                            <div class="num">
                                <h5>
                                    <em>9</em>%
                                </h5>
                                <p>预期年化收益率</p>
                            </div>
                            <div class="time">
                                <h5><em>30</em>天</h5>
                                <p>期限</p>
                            </div>
                        </div>
                    </div>
                    <div class="invest right">
                        <p class="surplus_num">剩余可投：<span>684747</span>元</p>
                        <p class="surplus_hr"><span style="width:32%;"></span></p>
                        <p class="invest_btn">
                            <a href="/project/index/projectdetail/id/475505599678528" target="_blank" title="立即投资">立即投资</a>                        </p>
                    </div>
                </li>
            </ul>
        </div>
    </div>

    <!--新闻-->
    <div class="news clearfix">
        <div class="media_news left">
            <h3><a href="/about/index/medialist.html" title="查看更多" class="right"></a>媒体报道</h3>
            <ul id='mediaInfo'></ul>
        </div>
        <div class="company_dynamics right">
            <h3><a href="/about/index/dynamic.html" title="查看更多" class="right"></a>公司动态</h3>
            <ul id='companyNews'></ul>
        </div>
    </div>

</div>
<script src="${pageContext.request.contextPath}/js/jquery.superslide.2.1.1.js"></script>
<script type="text/javascript">
    $(function () {
        //banner
        $(".slideBox").slide({titCell: ".hd ul", mainCell: ".bd ul", autoPage: true, effect: "left", autoPlay: true});
        //新闻滚动
        $(".txtScroll").slide({titCell: ".hd ul", mainCell: ".bd ul", autoPage: true, effect: "topLoop", autoPlay: true});

        //累计数据
        $.ajax({
            url: '/index/index/gettotal.html',
            dataType: 'html',
            success: function (msg) {
                $("#total").html(msg);
            }
        });
        //媒体看金联储
        $.ajax({
            url: '/index/index/getmediainfo.html',
            dataType: 'html',
            success: function (msg) {
                $("#mediaInfo").html(msg);
            }
        });
        //公司新闻
        $.ajax({
            url: '/index/index/getcompanynews.html',
            dataType: 'html',
            success: function (msg) {
                $("#companyNews").html(msg);
            }
        });
    });
</script>
<!--内容区end-->
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
        <!--<p>Copyright  &nbsp;&nbsp;©2014-2017  &nbsp;&nbsp;金联储（北京）金融信息服务有限公司  版权所有    京ICP备14021949号-1</p>-->
        <p>Copyright  &nbsp;&nbsp;©2018  &nbsp;&nbsp;千贷宝（杭州）网络科技有限公司  版权所有</p>
        <p>
            <!--<a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010502034827" target="_blank"><img src="picture/jgwab.png" class="jc_img">京公网安备 11010502034827 号</a>　|-->　
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
<script type="text/javascript" src="js/99click.js"></script>
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