<!doctype html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta content="IE=Edge" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <meta name="keywords" content="千贷宝金服,互联网金融,产业链金融"/>
    <meta name="description" content="千贷宝金服专注产业链金融，实缴注册资本1亿元人民币,恒丰银行资金存管。"/>
    <title>
        千贷宝金服-专注产业链金融
        千贷宝金服-专注产业链金融
    </title>
    <link rel="icon" href="/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="/static/css/headerfooter20170317_1.css"/>
    <link rel="stylesheet" href="/static/css/member_1.css"/>
    <link rel="stylesheet" href="/static/css/layer_1.css">
    <script src="/static/js/jquery-1.7.2.min_1.js"></script>
    <script src="/static/js/layer_1.js"></script>
    <script type="text/javascript"
            src="/static/js/jquery.placeholder.min_1.js"></script>
    <script src="/static/js/common_1.js"></script>

    <link rel="stylesheet" href="/static/css/member.css"/>
    <link rel="stylesheet" href="/static/css/layer.css">
    <link rel="stylesheet" href="/static/css/layui.css" media="all">

    <link rel="stylesheet" href="/static/css/font.css">
    <link rel="stylesheet" href="/static/css/weadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="/lib/layui/layui.js" charset="utf-8"></script>

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
                        <img src="/static/picture/app_qrcode_1.jpg" alt="">
                        <p>扫一扫下载APP</p>
                    </div>
                </a>
                <a href="javascript:;" class="weixin">
                    <div class="shareCode weixinCode">
                        <i></i>
                        <img src="/static/picture/weixincode1121_1.jpg" alt="">
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
        <h1 class="logo left" title="钱贷宝 | 你的钱袋是个宝">
            <a href="/" title="钱贷宝 | 你的钱袋是个宝">
                <img src="/static/picture/logo_1.png" align="钱贷宝 | 你的钱袋是个宝"/>
                <span>|&nbsp;&nbsp;你的钱袋是个宝</span>
            </a>
        </h1>
        <div class="nav right">
            <ul>
                <li><a href="/" title="首页">首页</a></li>
                <li class="on"><a href="/invest/investlist" title="固收">投资</a></li>
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
<link href="/static/css/indexcontent20170317_1.css" type="text/css" rel="stylesheet"/>
<link rel="stylesheet" href="css/layer_1.css"/>
<script src="/static/js/layer_1.js"></script>
<!--主体部分-->
<div class="invesMainWrap">
    <div class="invesMain clear">
        <div class="introduce clear">
            <div class="left">
                <div class="introduceText">
                    <div class="introduceText_top">
                        <h2>
                            ${product.pid}
                            <a href="javascript:void(0);"><i class="nuM">新手专享</i></a>
                        </h2>
                        <p>
                            <!--<span>当日计息 <em><i></i>投资当日开始计息</em></span>-->
                            <span>不可转让<em><i></i>本产品不支持债权转让</em></span>
                        </p>
                    </div>
                    <ul class="list">
                        <li><p class="num red">
                            <em>${product.expectedRate}</em>%
                        </p>
                            <p class="label">预期年化收益率</p>
                        </li>
                        <li><p class="num"><em>${product.loanLimittime}</em>天</p>
                            <p class="label">产品期限</p></li>
                        <li><p class="num"><em>${product.startMoney}</em>元</p>
                            <p class="label">起投金额</p></li>
                      <#--  <li style="width:37%"><p class="num">${product.loanChildInfo.loanPaywayString}</p>-->
                            <p class="label">还款方式</p></li>
                    </ul>
                    <div class="introduceText_footer">
                        <span>产品规模：<em>${product.loanAmount}元</em></span>
                    </div>
                </div>
            </div>
            <div class="inright">
                <div class="price">剩余可投：<em>${product.surplusMoney}</em>元</div>

                <c:if test="true">
                    <div class="price">
                        <a href="javascript:void(0);" onclick="recharge();" class="right orange">充值</a>
                        账户余额：<em></em>元
                    </div>
                </c:if>

                <div class="pay">
                    <input type="text" value="" name="investMoney" placeholder="${product.startMoney}元起投"/>
                </div>
                <div class="payBtn">
                    <a href="javascript:void(0);" id="goInvest">立即投资</a>
                </div>
                <div class="tips" style="display:none;"></div>
            </div>
        </div>
        <div class="productBox  productInfo">
            <h4><i class="p_blue"></i><em>产品动态</em></h4>
            <ul>
                <li>
                    <img src="/static/picture/bg1.jpg" alt=""/>
                    <!--1：散标 2：金交所 3：活期宝-->
                    <p> 产品通过风控系统审核
                        <span></span></p>
                </li>
                <li>
                    <img src="/static/picture/bg2.jpg" alt=""/>
                    <p>产品正式在金联储金服发布 <span></span></p>
                </li>
                <li>
                    <img src="/static/picture/bg3.jpg" alt=""/>
                    <p>产品还款日期 <span></span></p>
                </li>
            </ul>
        </div>
        <div class="productBox productIntro">
            <h4><i class="p_blue"></i><em>产品介绍</em></h4>
            <h5>产品信息</h5>
            <p style="word-break:break-all;">
                ${product.productIntroduce}
                该产品是投资人（委托人）通过平台自愿将合法所有的资金委托资产管理机构对特定项目进行投资，受托资产管理机构以委托人利益最大化为原则对定向委托投资资金按约定进行定向投资管理，以获取投资收益。本项目暂不对投资人（委托人）收取管理费。</p>
            <h5>融资方信息</h5>
            <p style="word-break:break-all;">
                基本信息<br>借款企业。<br>涉诉情况<br><br>根据全国法院被执行人信息查询系统及互联网搜索，未发现借款企业不良涉诉信息。<br>资金用途<br>用于企业经营，补充流动资金。<br>还款来源<br>企业经营性收入。
            </p>
            <h5>增信措施</h5>
            <p style="word-break:break-all;">
                融资方以自有货物提供质押担保，货物进入指定监管库由监管公司监管，并由个人王**提供连带责任保证担保。如发生逾期，处置货物所得款项或担保人进行代偿将融资方应付款项返还投资人。</p>
            <h5>风险提示</h5>
            <p style="word-break:break-all;">项目风险提示<br>一、项目风险<br>该投资标的投资资金还款依赖于融资方的企业营业或个人收入情况。<br>二、政策风险<br>因国家法律、法规、行政规章或政策发生重大调整、变化或其他不可预知的意外事件，可能导致本委托投资的有效性发生变化，从而可能导致委托人无法实现预期收益乃至本金遭受损失。<br>三、行业风险<br>委托投资标的投资收益受到所投资行业运行状况、发展周期、行业政策等影响。<br>四、市场风险<br>资金市场供求关系的变化、货币政策、财政政策、行业政策等因素的变化，以及整体经济形势的变化，可能会对利率、汇率、资金成本和商品价格等因素产生负面影响，从而不利于委托人实现预期收益乃至本金遭受损失。<br>五、管理风险<br>在委托财产管理运作过程中，受托人的管理能力可能会影响委托投资资金的收益水平，此外，受托人对委托投资盈利机会的判断是否准确、投资决策所需获取的信息是否完整、投资操作是否出现失误等，都会对委托投资资金的预期收益形成不利影响乃至本金遭受损失。<br>六、信用风险<br>无论何种原因，当最终使用委托投资资金并承担偿还责任的融资方不能按时偿付本金和收益，将导致委托人无法实现预期收益，甚至本金遭受损失。<br>七、延期实现预期收益的风险<br>委托投资到期时，若发生前述信用风险，受托人将根据委托人的授权或约定，使用受托人认为适当的方式对融资方进行追索，在此过程中，委托人有可能延期实现预期收益乃至本金遭受损失。
            </p>
            <h5> 相关协议 </h5>
            <p>
                <!--<a href="https://f.jinlianchu.cn/file/agreement/1487154919192.html" target="_blank">《平台协议》</a>-->
                <a href="https://f.jinlianchu.cn/file/loanagreement/474249018574912.html" target="_blank">《产品协议》</a>
            </p>
        </div>
        <div class="productBox investmentRecords">
            <h4><i class="p_blue"></i><em>投资记录</em></h4>
            <div class="labContent" id="investRecord">
                <table width="100%" border="0" cellpadding="0" cellspacing="0" class="invoteList">
                    <tbody id="recodelist">
                    <%--<tr class="tab_bg">
                        <th width="30%">投资人</th>
                        <th width="30%">投资金额（元）</th>
                        <th width="30%">投资时间</th>
                    </tr>--%>


                    </tbody>
                </table>
            </div>
            <div id="recodePage" align="center"></div>
        </div>
    </div>
</div>


<div class="invest_box">
    <div class="invest_box_con">
        <h2>确认信息<a href="javascript:;" class="close_box">×</a></h2>
        <div class="invest_num">
            <dl>
                <dt>投资金额：</dt>
                <dd><span id="investMoney"></span></dd>
            </dl>
            <dl>
                <dt>预期收益：</dt>
                <dd id="interest"></dd>
            </dl>
        </div>
        <div class="invest_form">
            <dl id="reward">
                <dt>使用奖励：</dt>
                <dd>
                    <div class="jl_select">
                        <span id="changeReward">请选择奖励（<em class="orange">2个</em>可用）</span>
                        <i></i>
                    </div>
                    <div class="jl_option">
                        <i class="i1"></i>
                        <i class="i2"></i>
                        <ul id="rewardList">
                            <li>请选择奖励（<em class="orange">2个</em>可用）</li>
                            <li class="hb"><em class="orange">20元红包</em> | 满5000元至500000元可用<br/>剩15天过期</li>
                            <li class="coupon"><em class="blue">15%加息劵(10天)</em> | 满5000元可用<br/>剩15天过期</li>
                            <li class="hb"><em class="orange">20元红包</em> | 满5000元可用<br/>剩15天过期</li>
                            <li class="coupon"><em class="blue">15%加息劵(10天)</em> | 满5000元可用<br/>剩15天过期</li>
                            <li class="gray">15%加息劵(10天) | 满5000元可用<br/>已过期</li>
                        </ul>
                    </div>
                </dd>
            </dl>
            <dl>
                <dt>资金密码：</dt>
                <dd>
                    <input type="password" name="" class="ipt1" placeholder="请输入资金密码" id="zj_pwd"/>　
                    <a href="javascript:void(0);" onclick="forgetPwd();" class="blue">
                        设置资金密码
                    </a>
                </dd>
            </dl>
            <p>
                <label id="checbox_lable">
                    <input type="checkbox" name="" id="xy_chekbox" value=""/>
                    同意
                    <a href="https://f.jinlianchu.cn/file/loanagreement/474249018574912.html" target="_blank"
                       class="blue">《产品协议》</a>
                </label>
            </p>
            <p>
                <a href="javascript:void(0);" class="invest_btn">确认投资</a>
            </p>
        </div>
    </div>
</div>

<%--投资历史记录分页--%>

<%--立即投资--%>

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
            <span><img src="/static/picture/u20_1.png"/><br/>关注金联储金服微信</span>
            <span><img src="/static/picture/u25_1.png"/><br/>下载金联储金服APP</span>
        </div>
        <div class="footer_tel right">
            <p>客服热线</p>
            <h3>400-6922-808</h3>
            <p>工作时间：9:00 - 21:00</p>
            <p>投资有风险 投资需谨慎</p>
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
        <p>Copyright &nbsp;&nbsp;©2018 &nbsp;&nbsp;金联储（北京）网络科技有限公司 版权所有</p>
        <p>
            <!--<a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010502034827" target="_blank"><img src="picture/jgwab_1.png" class="jc_img">京公网安备 11010502034827 号</a>　|-->
            　
            <a href="/static/images/icp_img.jpg" target="_blank">京ICP证140409号</a>　|　<a
                href="http://www.miitbeian.gov.cn/publish/query/indexFirst.action" target="_blank">京ICP备17042235号</a>　|　机构信用代码证
            91110107MA00EU339B
        </p>
        <p>
            <a id="_pingansec_bottomimagelarge_p2p" target="_blank" title="互联网金融品牌"
               href="http://si.trustutn.org/info?sn=448170824000601194838&certType=4"><img
                    src="/static/picture/footer_img5_1.jpg"/></a>
            <a href="http://www.bjp2p.com.cn/" target="_blank" title="北京市网贷行业协会发起会员"><img
                    src="/static/picture/footer_img1_1.jpg"/></a>
            <a href="http://v.pinpaibao.com.cn/authenticate/cert/?site=www.jinlianchu.com&at=business" target="_blank"
               title="安全联盟认证"><img src="/static/picture/footer_img2_1.jpg"/></a>
            <a href="https://credit.szfw.org/CX20170913036162381669.html" target="_blank" title="诚信网站"><img
                    src="/static/picture/footer_img3_1.jpg"/></a>
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
            <img src="/static/picture/app_qrcode_1.jpg" alt="">
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
<script type="text/javascript" src="js/99click_1.js"></script>
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