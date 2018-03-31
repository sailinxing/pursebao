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
    <title>千贷宝-专注产业链金融</title>

    <link rel="icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/headerfooter20170317.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/member.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/layer.css">

    <script src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/layer.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.placeholder.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/common.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/messages_zh.js"></script>

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
                <a href="${pageContext.request.contextPath}/user/login.do" title="登录" class="white">登录</a>
                |
                <a href="" title="注册" class="white">注册</a>

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
                <li><a href="${pageContext.request.contextPath}/user/login.do" title="我的账户">我的账户</a></li>
            </ul>
        </div>
    </div>
</div>
<!--头部 end -->
<div class="clear"></div>




<!--内容区-->
<div class="regNew">
    <form id="userReg" action="${pageContext.request.contextPath}/user/userReg.do" method="post">
       <div class="reg_form">
           <p class="title">注册</p>
           <p><label><input id="regiPhone" name="phone" type="text" placeholder="请输入手机号" /><span id="mess" style="color: red"></span></label></p>
           <p><lable><input id="pwd1" name="password" type="password" placeholder="密码:6-16位数字、字母或符号" maxlength="16"/></label></p>
           <p><lable><input id="pwd2" name="repassword" type="password" placeholder="请输入确认密码"/></label></p>
           <p><label><input id="phoneCode" name="checkPassword" type="text" placeholder="请输入短信验证码"/><span id="getCode" class="getCode">获取短信验证码</span></label></p>
           <p class="xy"><label><input type="checkbox" checked="checked"> 我已阅读并同意<a href="/static/shtml/agreement_zc.html" target="_blank" id="zcxy">《会员服务协议》</a></label></p>
           <button type="submit">立 即 注 册</button>
           <i>已有账号？<a style="color: #F55837;" href="${pageContext.request.contextPath}/user/login.do">立即登录>></a></i>
       </div>
    </form>
</div>

<%--表单验证，用户注册验证--%>
<script type="text/javascript">
    $(function () {
        $("#userReg").validate({
            rules:{
                phone:{required:true},
                password:{required:true,minlength:6,maxlength:16},
                repassword:{required:true,equalTo:$("input[name='password']")},
                checkPassword:{required:true}
            },
            messages:{
                phone:{required:"手机号不能为空"},
                password:{required:"密码不能为空",minlength:"不少于6位",maxlength:"不大于16位"},
                repassword:{required:"确认密码不能为空",equalTo:"确认密码与登录密码要一致"},
                checkPassword:{required:"验证码不能为空"}
            }
        });
    });

    /*判断用户名是否重复,失去焦点验证*/
    $("#regiPhone").blur(function () {
        var phonenum = $("#regiPhone").val();
         $.get(
             "${pageContext.request.contextPath}/user/chekUsername.do",
             {"phone":this.value},
            function (rec) {
                     if(rec=="0"){
                         $("#mess").html("此号已被注册");
                     }
                     if(rec=="1"){
                         $("#mess").html(" ");
                     }
             },
            "text"
         );
    });
</script>







<%--<div class="reg regNew">
    <div class="reg_form">
        <p class="title">注册</p>
        <p><label><input id="regiPhone" type="text" onkeyup="this.value = this.value.replace(/[^\d]/g, '');" placeholder="请输入手机号" maxlength="11" /></label></p>
        <p>
            <label>
                <input id="pwd" type="password" placeholder="6~16位数字、字母或符号" maxlength="16" />
            </label>
        </p>
        <p><label><input type="text" id="phoneCode" placeholder="请输入短信验证码" maxlength="6" onkeyup="this.value = this.value.replace(/[^\d]/g, '');" /> <span id="getCode" class="getCode" name="0">获取短信验证码</span></label></p>
        <i>收不到短信?使用<a href="javascript:void(0);" id="voiceCode" class="getCode" name="1">语音验证码</a></i>
        <p class="yqm"><label><input id="inviteCode" value="" type="text" placeholder="邀请码选填"></label></p>
        <p class="xy"><label><input type="checkbox" checked="checked"> 我已阅读并同意<a href="/static/shtml/agreement_zc.html" target="_blank" id="zcxy">《会员服务协议》</a></label></p>
        <button class="reg_btn" id="reg_btn">立 即 注 册</button>
        <i>已有账号？<a style="color: #F55837;" href="/login.html">立即登录>></a></i>
    </div>
</div>--%>


<script type="text/javascript">
    var time = 0;
    $(function () {
        $(document).keyup(function (e) {
            if (e.keyCode == 13) {
                $("#reg_btn").click();
            }
        });

        $("#reg_btn").click(function () {
            var phonenum = $("#regiPhone").val();
            var pwd = $("#pwd").val();
            var phoneCode = $('#phoneCode').val();
            var inviteCode = $('#inviteCode').val();
            if (!phonenum) {
                layer.tips('手机号不能为空', '#regiPhone', {tips: [2, '#1e89e0']});
                return false;
            }
            var reg = /^(13[0-9]|15[0-9]|18[0-9]|14[0-9]|17[0-9]|16[0-9]|19[0-9]|12[0-9])\d{8}$/;
            if (!reg.test(phonenum)) {
                layer.tips('手机号为11位数字', '#regiPhone', {tips: [2, '#1e89e0']});
                return false;
            }

            $("#pwd").focus();
            var mylength = pwd.length;
            if (mylength < 6 || mylength > 16) {
                layer.tips('密码长度为6-16个字符之间', '#pwd', {tips: [2, '#1e89e0']});
                return false;
            }
            var regPwd = "^[a-zA-Z0-9]{6,16}$",
                regex = new RegExp(regPwd);
            var re = /^[\u4e00-\u9fa5]$/;
            if (!regex.test(pwd) || re.test(pwd)) {
                layer.tips('6~16位字符，支持数字，英文或符号', '#pwd', {tips: [2, '#1e89e0']});
                return false;
            }

            if (!phoneCode) {
                layer.tips('短信验证码不能为空', '#phoneCode', {tips: [2, '#1e89e0']});
                return false;
            }
            if (!$("input[type='checkbox']").is(':checked')) {
                layer.tips('尚未勾选注册服务用户协议', '#zcxy', {tips: [2, '#1e89e0']});
                return false;
            }
            $.ajax({
                url: '/register.html',
                data: {phone: phonenum, pwd: pwd, phoneCode: phoneCode, inviteCode: inviteCode},
                type: 'post',
                async: false,
                dataType: 'json',
                success: function (msg) {
                    if (msg.code == 0) {
                        window.location.href = '/register/index/regsuccess.html?memberCount=' + msg.memberCount + '&phone=' + msg.phone;
                        return false;
                    } else {
                        layer.tips(msg.message, '#reg_btn', {tips: [3, '#1e89e0']});
                        return false;
                    }
                }
            });
        });
        $(".getCode").click(function () {
            var phonenum = $("#regiPhone").val();
            if (!phonenum) {
                layer.tips('请输入手机号', '#regiPhone', {tips: [2, '#1e89e0']});
                return false;
            }
            var reg = /^1[0-9]{10}$/;
            if (reg.test(phonenum) === false) {
                layer.tips('手机号码格式不正确', '#regiPhone', {tips: [2, '#1e89e0']});
                return false;
            }
            var type = $(this).attr('name');
            if (time == 0) {
                sendCode(type);
            }
        });
        function sendCode(type) {
            var phone = $("#regiPhone").val();
            $.ajax({
                url: '/register/index/check_regphone.html',
                data: {phone: phone, send_code_type: type},
                type: 'post',
                async: false,
                dataType: 'json',
                success: function (msg) {
                    if (msg.code == 0) {
                        layer.tips('该手机号已注册', '#regiPhone', {tips: [2, '#1e89e0']});
                        return false;
                    }
                    if (msg.code == 1) {
                        if (type == 0) {
                            time = 60;
                            timedown();
                            return false;
                        } else {
                            time = 60;
                            timedown();
                            layer.tips('电话拨打中，请注意接听', '#voiceCode', {tips: [3, '#1e89e0']});
                            return false;
                        }
                    }
                    layer.tips(msg.message, '#phoneCode', {tips: [2, '#1e89e0']});
                    return false;
                }
            });
        }
        function timedown() {
            $("#getCode").html('获取验证码(' + time + 's)')
            time = time - 1;
            if (time > 0) {
                setTimeout(function () {
                    timedown(time);
                }, 1000);
            } else {
                $("#getCode").html("重新获取验证码")
            }
        }
    });
    $('input').placeholder();
</script>
<!---同盾--->
<script type="text/javascript">
    (function () {
        _fmOpt = {
            partner: 'jinlianchu',
            appName: 'jinlianchu_web',
            token: 'f8f6d0656e685f09b0e505617713fb8e'};
        var cimg = new Image(1, 1);
        cimg.onload = function () {
            _fmOpt.imgLoaded = true;
        };
        cimg.src = "https://fp.fraudmetrix.cn/fp/clear.png?partnerCode=jinlianchu&appName=jinlianchu_web&tokenId=" + _fmOpt.token;
        var fm = document.createElement('script');
        fm.type = 'text/javascript';
        fm.async = true;
        fm.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'static.fraudmetrix.cn/fm.js?ver=0.1&t=' + (new Date().getTime() / 3600000).toFixed(0);
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(fm, s);
    })();
</script>
<!---同盾--->
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
<div class="footer login_footer">
    <div class="footer_icp warp" style="padding: 20px 0;">
        <p>Copyright  &nbsp;&nbsp;©2018  &nbsp;&nbsp;千贷宝（杭州）网络科技有限公司 版权所有  杭ICP备17042235号
            <a id="_pingansec_bottomimagelarge_p2p" target="_blank"  title="互联网金融品牌" href="http://si.trustutn.org/info?sn=448170824000601194838&certType=4"><img src="${pageContext.request.contextPath}/picture/footer_img5.jpg" style="width:80px;"/></a>
            <a href="http://www.bjp2p.com.cn/" target="_blank" title="杭州市网贷行业协会发起会员"><img src="${pageContext.request.contextPath}/picture/footer_img1.jpg" style="width:80px;"/></a>
            <a href="http://v.pinpaibao.com.cn/authenticate/cert/?site=www.jinlianchu.cn&amp;at=business" target="_blank" title="安全联盟认证"><img src="${pageContext.request.contextPath}/picture/footer_img2.png" style="width:80px;"></a>
            <a href="http://www.cn-ecusc.org.cn/cert/aqkx/site/?site=www.jinlianchu.cn" target="_blank"><img src="${pageContext.request.contextPath}/picture/aqkx.png" style="width:80px;"></a>
        </p>
    </div>
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
        })
    });
</script>
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
