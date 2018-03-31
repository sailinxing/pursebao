<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <!-- <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> -->
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
    <meta content="IE=Edge" http-equiv="X-UA-Compatible">
    <meta name="keywords" content="千贷宝,互联网金融,P2P,P2B" />
    <meta name="description" content="千贷宝2014年成立，实缴注册资本1亿元人民币,北京市网贷协会创始会员。与恒丰银行已达成资金存管合作。" />
    <title>千贷宝-专注互联网金融P2P 值得信赖的互联网金融平台</title>
</head>
<body>
    <!--首页弹窗 开始-->
    
    <!--<div id="yq_box" style="position: fixed; top: 0; left: 0; height: 100%; width: 100%;z-index: 1001;">
        <div style="width: 578px; height: 100%; margin:0 auto; position: relative;">
            <a style="position: absolute; top: 50%; left: 0;z-index: 1002; margin-top: -300px;" target="_blank"
               href="https://f.jinlianchu.com/FILE/html/PC/pc_38funvjie/index.shtml"
               onclick='document.getElementById("yq_box").style.display="none";document.getElementById("yq_box_bg").style.display="none";'>
            <img src="picture/nrj_2017_1.png"/>
            </a>
            <a style="position: absolute;right: 0; top: 50%; margin-top: -308px; z-index: 1003; display: block; width: 54px;
                height: 54px; cursor: pointer; background:url(about:blank);"href="javascript:;"
                onclick='document.getElementById("yq_box").style.display="none";document.getElementById("yq_box_bg").style.display="none";' title="关闭" ></a>
            <a target="_blank" style="position: absolute;left: 159px; top: 50%; margin-top: 134px; z-index: 1004; display: block;
                width:218px; height: 71px; background:url(about:blank);"href="https://f.jinlianchu.com/FILE/html/PC/pc_38funvjie/index.shtml"
                title="立即出借" onclick='document.getElementById("yq_box").style.display="none";document.getElementById("yq_box_bg").style.display="none";'></a>
        </div>
    </div>
    <div id="yq_box_bg" style="position: fixed; top: 0; left: 0; height: 100%; width: 100%; background: #000;
        filter:alpha(opacity=50);-moz-opacity:0.5; opacity: 0.5; z-index: 1000; "></div>
    -->
    <!--首页弹窗 结束-->
    <!--头部 -->
    



<link type="image/x-icon" rel="icon"  href="${pageContext.request.contextPath}/images/favicon.ico" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/headerfooter20170317_1.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.2.min_1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/global_1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common_1.js"></script>
<script type="text/javascript">
    function toTargetUrl(){
        var urldata =['www.jinbashi.com',
            'www.zuanke8.com',
            'www.jia41.com',
            'bbs.zhuankebar.com',
            'www.ymxfl.com',
            'bbs.xunbaoge.com'];
        for(var i=0;i<urldata.length;i++){
            var cururl = document.referrer;
            if(cururl.indexOf(urldata[i]) != -1){
                window.location.href = 'http://'+urldata[i];
            }
        }
    }
    toTargetUrl();
</script>



<script type="text/javascript">
    var enableTD = '1';
    (function() {
        if(enableTD && enableTD == 1){ // 同盾正式环境配置
            _fmOpt = {
                partner: 'jinlianchu',
                appName: 'jinlianchu_web',
                token: "jinlianchu" + "gTTyhv0P9JQJfvt71KYp4TZ4xQq59pV9PMMQQdKW77xy8RCRH1T3!-795674037!1520596015069"
            };
            var cimg = new Image(1,1);
            cimg.onload = function() {
                _fmOpt.imgLoaded = true;
            };
            cimg.src = "https://fp.fraudmetrix.cn/fp/clear.png?partnerCode=jinlianchu&appName=jinlianchu_web&tokenId=" + _fmOpt.token;
            var fm = document.createElement('script'); fm.type = 'text/javascript'; fm.async = true;
            fm.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'static.fraudmetrix.cn/fm.js?ver=0.1&t=' + (new Date().getTime()/3600000).toFixed(0);
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(fm, s);
        }else{ // 同盾test环境配置
            _fmOpt = {
                partner: 'jinlianchu',
                appName: 'jinlianchu_web',
                token: "jinlianchu" + "gTTyhv0P9JQJfvt71KYp4TZ4xQq59pV9PMMQQdKW77xy8RCRH1T3!-795674037!1520596015069",
                fpHost: 'https://fptest.fraudmetrix.cn',
                staticHost: 'statictest.fraudmetrix.cn',
                tcpHost: 'fpflashtest.fraudmetrix.cn',
                wsHost: 'fptest.fraudmetrix.cn:9090'
            };
            var cimg = new Image(1,1);
            cimg.onload = function() {
                _fmOpt.imgLoaded = true;
            };
            cimg.src = "https://fptest.fraudmetrix.cn/fp/clear.png?partnerCode=jinlianchu&appName=jinlianchu_web&tokenId=" + _fmOpt.token;
            var fm = document.createElement('script'); fm.type = 'text/javascript'; fm.async = true;
            fm.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'statictest.fraudmetrix.cn/fm.js?ver=0.1&t=' + (new Date().getTime()/3600000).toFixed(0);
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(fm, s);
        }
    })();
</script>
<!--通栏 -->
<div class="globalTop">
    <div class="topInner clear">
        <ul class="topSet clear">
            <li class="appIcon">
                <a href="javascript:void(0);" style="cursor: default;"><span></span>手机APP
                    <div class="shareCode appCode">
                        <b></b>
                        <img width="205" height="205" src="picture/app_qrcode_1.jpg" alt="">
                    </div>
                </a>
            </li>
            <li class="qqGroup">
                <a href="https://jq.qq.com/?_wv=1027&k=55knNyX" target="_blank"><span></span>QQ群</a>
            </li>
        </ul>
        <ul class="topLogin clear">
            <li id="memberInforeg" class="regli"><a class="rega" href="${pageContext.request.contextPath}/static/regist_registMobile.html">注册</a></li>
            <li id="memberInfo" class="loginli"><a class="logina" href="${pageContext.request.contextPath}/static/login.html">登录</a></li>
            <li style="color: #98cfee;">客服热线：400-6922-808</li>
            <li><span style="display: inline-block;width: 16px;height: 16px; overflow: hidden;vertical-align: middle;margin: -4px 6px 0 0;"></span><a href="http://www.bjp2p.com.cn/info/tousu" style="color: #fff; font-size: 14px; cursor: pointer; padding-right: 30px;" target="_blank">违法违规行为投诉</a></li>
        </ul>
    </div>
</div>
<!--通栏 end -->
<!--头部 -->
<div class="header clear">
    <div class="headerInner clear">
        <h1>
            <a href="${pageContext.request.contextPath}/static/index_index.shtml" title="千贷宝｜专注产业链金融">
                <img class="logoimg0" src="${pageContext.request.contextPath}/picture/logo170516_1.png" alt="千贷宝 | 专注产业链金融">
                <img class="logobar" src="${pageContext.request.contextPath}/picture/logobar0409_1.png" alt="千贷宝 | 专注产业链金融">
                <h3 class="logotext">专注产业链金融</h3>
            </a>
        </h1>
        <ul class="menu clear">
            <li ><a id="mytouzi" href="${pageContext.request.contextPath}/loan/touserloanlist">我的借款</a></li>
            <li ><a href="${pageContext.request.contextPath}/loan/toaddloan">我要借款</a></li>
            <li ><a href="${pageContext.request.contextPath}/loan/toloanlist">借款列表</a></li>
            <li class="cur"><a href="${pageContext.request.contextPath}/loan/index">首页</a></li>
        </ul>
    </div>
    <div class="headerBottom"></div>
    <input type="hidden" id="ozs" name="ozs" value="null">
</div>
<!--头部 end -->
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/index20170317_1.css" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/dialog_1.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/index2_1.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/index0928_1.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/highcharts0109_1.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/exporting0109_1.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.superslide.2.1.1_1.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.placeholder.min_1.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common-usercenter_1.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/indextogetplatforminfo_1.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.easydrag_20150921_1.js" ></script>
    <script type="text/javascript">
        $(function() {
            //banner
            $(".slideBox").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"fade",autoPlay:true});
            //新闻滚动
            $(".txtScroll1").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"topLoop",autoPlay:true});
            //兼容IE placeholder
            $('input, textarea').placeholder();

            toTargetUrl();
        });

        function toTargetUrl(){
            var urldata =['www.jinbashi.com',
                'www.zuanke8.com',
                'www.jia41.com',
                'bbs.zhuankebar.com',
                'bbs.xunbaoge.com'
            ];
            for(var i=0;i<urldata.length;i++){
                //var cururl = window.location.href;
                var cururl = document.referrer;
                if(cururl.indexOf(urldata[i]) != -1){
                    window.location.href = 'http://'+urldata[i];
                }
            }
        }

        //判断是否是PC端打开
        function IsPC() {
            var userAgentInfo = navigator.userAgent;
            var Agents = ["Android", "iPhone", "SymbianOS", "Windows Phone", "iPod"];
            var flag = true;
            for (var v = 0; v < Agents.length; v++) {
                if (userAgentInfo.indexOf(Agents[v]) > 0) {
                    flag = false;
                    break;
                }
            }
            return flag;
        }
        var getHref = window.location.href;
        if (!IsPC()) {
//            window.location.href = "https://wx.jinlianchu.cn";
        }

        function beforSubmit(i){
            var r =   /^[0-9]*[1-9][0-9]*$/;//正整数
            var flag=true;
            var voteAmount=document.getElementById("voteAmount"+i).value;
            var investChannel=document.getElementById("investChannel"+i).value;		//项目终端
            var investmentAmount=document.getElementById("investmentAmount"+i).value;
            var castAmount=document.getElementById("castAmount"+i).value;
            var userIdVal=document.getElementById("userId"+i).value;
            var placeVal = $('#investmentAmount'+i).attr('placeholder');
            if (investmentAmount == placeVal){
                investmentAmount = '';
            }
            if(parseInt(investChannel)==2) {
                flag=false;
                document.getElementById("errMsg"+i).innerHTML="该项目仅限APP出借，快去下载金联储APP出借吧~";
            }else{
                if(investmentAmount !=''  && !r.test(investmentAmount)){
                    flag=false;
                    document.getElementById("errMsg"+i).innerHTML="输入的金额必须为正整数";
                }else{
                    document.getElementById("inputAmount"+i).value=investmentAmount;
                    if(investmentAmount=='') {
                        flag=true;
                        document.getElementById("inputAmount"+i).value=0;
                    } else if(parseInt(voteAmount)<parseInt(investmentAmount)) {
                        flag=false;
                        document.getElementById("errMsg"+i).innerHTML="您认购的份额超出可投份额";
                    }else if(parseInt(investmentAmount)<parseInt(castAmount)) {
                        flag=false;
                        document.getElementById("errMsg"+i).innerHTML = "" + castAmount + "元起";
                    }else if(userIdVal==null || userIdVal=='') {
                        flag=false;
                        window.location.href = "/invest1_detail.html?id="+i+"&inputAmount="+investmentAmount;
                    }
                }
            }
            return flag;
        }

        function clearMsg(i){
            document.getElementById("errMsg"+i).innerHTML="";
        }
    </script>
    <!--头部 end -->
    <!--主体内容 -->
    <!--轮播图 -->
    <div id="slideBox" class="slideBox">
        <div class="hd"><ul></ul></div>
        <div class="bd">
            <ul>
                
                    <li style="background-image: url(${pageContext.request.contextPath}/images/web_hfcg_banner_1.jpg);">
                        <a href="https://f.jinlianchu.com.cn/FILE/html/PC//pc_bank_0104/index.shtml" target="_blank"></a>
                    </li>
                
                    <li style="background-image: url(${pageContext.request.contextPath}/images/pcbanner_1.jpg);">
                        <a href="https://f.jinlianchu.com.cn/FILE/html/PC//yjbg_pc/index.shtml" target="_blank"></a>
                    </li>
                
                    <li style="background-image: url(${pageContext.request.contextPath}/images/pcbanner_1.jpg);">
                        <a href="https://f.jinlianchu.com.cn/FILE/html/PC//yjbg_pc/index.shtml" target="_blank"></a>
                    </li>
                
            </ul>
        </div>
        <a class="prev" href="javascript:;" title="上一张"></a>
        <a class="next" href="javascript:;" title="下一张"></a>
    </div>
    <!--轮播图 end -->
    <!--统计数-->
    <div class="jlc_data clearfix">
        <ul>
            <li>
                <h4>累计用户人数</h4>
                <p><em id="dataUsers">0</em>万</p>
            </li>
            <li>
                <h4>累计出借金额</h4>
                <p><em id="dataLoanAmount">0</em>亿元</p>
            </li>
            <li>
                <h4>已为用户赚取</h4>
                <p><em id="dataIncomeAmount">0</em>亿元</p>
            </li>
            <li>
                <h4>安全运营</h4>
                <p><em id="dataSaftyDays">0</em>天</p>
            </li>
        </ul>
    </div>
    <!--统计数-->
    <!--公司简介-->
    <div class="article warp">
        <div class="advantage clearfix">
            <ul>
                <li>
                    <i class="icon4"></i>
                    <p>恒丰银行资金存管<br />用户资金有效隔离</p>
                </li>
                <li>
                    <i class="icon1"></i>
                    <p>北京市互联网金融行业协会创始会员<br />实缴注册资本1亿元</p>
                </li>
                <li>
                    <i class="icon2"></i>
                    <p>中国互联网金融协会<br />首批会员</p>
                </li>
                <li>
                    <i class="icon3"></i>
                    <p>通过公安部信息系统安全<br />等级保护三级备案证明</p>
                </li>
            </ul>
        </div>
        <!--公司简介end-->
        <!--滚动新闻-->
        <div class="scroll_news clearfix">
            <div class="left notice">
                <i>公告：</i>
                <div class="txtScroll txtScroll1">
                    <div class="bd">
                        <ul class="infoList">
                        
                            <li>
                                <a href="${pageContext.request.contextPath}/static/notice_info.html?id=11509" target="_blank"
                                   tltle="年化利率调整公告" class="newstxt">年化利率调整公告</a>
                            </li>
                        
                        </ul>
                    </div>
                </div>
                <a href="${pageContext.request.contextPath}/static/notice_list.html" class="newsmore" target="_blank">更多<em>&gt;&gt;</em></a>
            </div>
            <div class="right dynamic">
                <i>动态：</i>
                <div class="txtScroll txtScroll2">
                    <div class="bd">
                        <ul class="infoList" id="tipScrollDiv">
                            <li></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--滚动新闻end-->
        <!--项目列表-->
        <div class="projectCon clear">
            <div class="content">
                <div class="projectTop clear">
                    <div class="firstLi noBorder left"><a href="${pageContext.request.contextPath}/static/invest_queryLoanPlan.html?page=1" target="_blank">项目列表</a></div>
                    <ul class="projectTab left">
                        <li class="w841"></li>
                    </ul>
                    <a href="${pageContext.request.contextPath}/static/invest_queryLoanPlan.html?page=1" class="all" target="_blank">全部</a>
                    <span class="startingtime">每日项目首发时间：<em>8:50</em><label style="margin-left: 65px;">出借有风险，选择需谨慎</label></span>
                </div>
                <input type="hidden" id="isAuth" value=""/>
                <input type="hidden" id="sevenDate" value=""/>
                <input type="hidden" id="memberId" value=""/>
                
                    <div class="conItem clear">
                        
                        
                        
                            
                                <a class="adv" style="color: #000;" href="javascript:void(0);" onclick="alertDialog('已满标',0,'26609','Fri Mar 09 09:52:16 CST 2018');">
                            
                            
                        
                        <div class="progress left"><img src="${pageContext.request.contextPath}/picture/gongyinglian_1.png"><p>供应链</p></div>
                        <div class="infor left">
                            
                            
                            
                                <h3>
                                    <em class="sptt">金属借款A01046-01</em></span>
                                    
                                </h3>
                            
                            <p class="time">剩余时间：
                                
                                
                                    <em>已结束</em>
                                
                            </p>
                        </div>
                        <ul class="number left clear" style ="width:380px">
                            
                            
                                
                                
                                    
                                        <li class="w123 red">8%<p>预期年化利率</p></li>
                                    
                                    
                                
                            
                            
                            
                                
                                
                                    <li>100<span class="size14">万</span><p>借款金额</p></li>
                                
                            
                            <li class="lastli" style="width:90px">
                                
                                
                                    3<span class="size14">个月</span>
                                
                                <p>借款期限</p>
                            </li>
                        </ul>
                        </a>
                        <div class="btnbox left">
                            
                            
                            
                                <div class="btndiv">
                                    <div class="finish ">
                                        <span>
                                            已满标
                                            
                                        </span>
                                    </div>
                                </div>
                            
                        </div>
                    </div>
                
                    <div class="conItem clear">
                        
                        
                        
                            
                                <a class="adv" style="color: #000;" href="javascript:void(0);" onclick="alertDialog('已满标',0,'26607','Thu Mar 08 10:13:06 CST 2018');">
                            
                            
                        
                        <div class="progress left"><img src="${pageContext.request.contextPath}/picture/gongyinglian_1.png"><p>供应链</p></div>
                        <div class="infor left">
                            
                            
                            
                                <h3>
                                    <em class="sptt">金属借款A01067-02</em></span>
                                    
                                </h3>
                            
                            <p class="time">剩余时间：
                                
                                
                                    <em>已结束</em>
                                
                            </p>
                        </div>
                        <ul class="number left clear" style ="width:380px">
                            
                            
                                
                                
                                    
                                        <li class="w123 red">8%<p>预期年化利率</p></li>
                                    
                                    
                                
                            
                            
                            
                                
                                
                                    <li>100<span class="size14">万</span><p>借款金额</p></li>
                                
                            
                            <li class="lastli" style="width:90px">
                                
                                
                                    3<span class="size14">个月</span>
                                
                                <p>借款期限</p>
                            </li>
                        </ul>
                        </a>
                        <div class="btnbox left">
                            
                            
                            
                                <div class="btndiv">
                                    <div class="finish ">
                                        <span>
                                            已满标
                                            
                                        </span>
                                    </div>
                                </div>
                            
                        </div>
                    </div>
                
                    <div class="conItem clear">
                        
                        
                        
                            
                                <a class="adv" style="color: #000;" href="javascript:void(0);" onclick="alertDialog('已满标',0,'26574','Wed Mar 07 10:01:23 CST 2018');">
                            
                            
                        
                        <div class="progress left"><img src="${pageContext.request.contextPath}/picture/gongyinglian_1.png"><p>供应链</p></div>
                        <div class="infor left">
                            
                            
                            
                                <h3>
                                    <em class="sptt">能源借款A01068-01</em></span>
                                    
                                </h3>
                            
                            <p class="time">剩余时间：
                                
                                
                                    <em>已结束</em>
                                
                            </p>
                        </div>
                        <ul class="number left clear" style ="width:380px">
                            
                            
                                
                                
                                    
                                        <li class="w123 red">8%<p>预期年化利率</p></li>
                                    
                                    
                                
                            
                            
                            
                                
                                
                                    <li>100<span class="size14">万</span><p>借款金额</p></li>
                                
                            
                            <li class="lastli" style="width:90px">
                                
                                
                                    3<span class="size14">个月</span>
                                
                                <p>借款期限</p>
                            </li>
                        </ul>
                        </a>
                        <div class="btnbox left">
                            
                            
                            
                                <div class="btndiv">
                                    <div class="finish ">
                                        <span>
                                            已满标
                                            
                                        </span>
                                    </div>
                                </div>
                            
                        </div>
                    </div>
                
                    <div class="conItem clear">
                        
                        
                        
                            
                                <a class="adv" style="color: #000;" href="javascript:void(0);" onclick="alertDialog('已满标',0,'26604','Tue Mar 06 09:14:27 CST 2018');">
                            
                            
                        
                        <div class="progress left"><img src="${pageContext.request.contextPath}/picture/gongyinglian_1.png"><p>供应链</p></div>
                        <div class="infor left">
                            
                            
                            
                                <h3>
                                    <em class="sptt">金属借款A01039-01</em></span>
                                    
                                </h3>
                            
                            <p class="time">剩余时间：
                                
                                
                                    <em>已结束</em>
                                
                            </p>
                        </div>
                        <ul class="number left clear" style ="width:380px">
                            
                            
                                
                                
                                    
                                        <li class="w123 red">8%<p>预期年化利率</p></li>
                                    
                                    
                                
                            
                            
                            
                                
                                
                                    <li>100<span class="size14">万</span><p>借款金额</p></li>
                                
                            
                            <li class="lastli" style="width:90px">
                                
                                
                                    3<span class="size14">个月</span>
                                
                                <p>借款期限</p>
                            </li>
                        </ul>
                        </a>
                        <div class="btnbox left">
                            
                            
                            
                                <div class="btndiv">
                                    <div class="finish ">
                                        <span>
                                            已满标
                                            
                                        </span>
                                    </div>
                                </div>
                            
                        </div>
                    </div>
                
                    <div class="conItem clear">
                        
                        
                        
                            
                                <a class="adv" style="color: #000;" href="javascript:void(0);" onclick="alertDialog('已满标',0,'26605','Mon Mar 05 09:29:26 CST 2018');">
                            
                            
                        
                        <div class="progress left"><img src="${pageContext.request.contextPath}/picture/gongyinglian_1.png"><p>供应链</p></div>
                        <div class="infor left">
                            
                            
                            
                                <h3>
                                    <em class="sptt">金属借款B01035-01</em></span>
                                    
                                </h3>
                            
                            <p class="time">剩余时间：
                                
                                
                                    <em>已结束</em>
                                
                            </p>
                        </div>
                        <ul class="number left clear" style ="width:380px">
                            
                            
                                
                                
                                    
                                        <li class="w123 red">8%<p>预期年化利率</p></li>
                                    
                                    
                                
                            
                            
                            
                                
                                
                                    <li>100<span class="size14">万</span><p>借款金额</p></li>
                                
                            
                            <li class="lastli" style="width:90px">
                                
                                
                                    3<span class="size14">个月</span>
                                
                                <p>借款期限</p>
                            </li>
                        </ul>
                        </a>
                        <div class="btnbox left">
                            
                            
                            
                                <div class="btndiv">
                                    <div class="finish ">
                                        <span>
                                            已满标
                                            
                                        </span>
                                    </div>
                                </div>
                            
                        </div>
                    </div>
                
                <p class="checkMore"><a href="${pageContext.request.contextPath}/static/invest_queryLoanPlan.html?page=1" target="_blank">查看更多&gt;&gt;</a></p>
            </div>
        </div>
        <!--项目列表end-->
    </div>
    <!--主体内容end-->
<script>
    $(function () {
        setInterval(function () {
            AutoLineScroll("#scrollList", "-44px");
        }, 4000);

        var max = parseFloat(100);
        var max1 = parseFloat(100);
        max = parseFloat($("#max").val());
        max1 = parseFloat($("#max1").val());
        var categories1 = $('#categories').val();
        var cate = "";
        if(categories1 && categories1.indexOf(",") != -1){
            cate = categories1.split(",");
        }
        var data1 = $('#datas1').val();
        var da1 = arrayChange(data1);
        var data2 = $('#datas2').val();
        var da2 = arrayChange(data2);

        var cate11 = [];
        if(cate){
            $.each(cate, function (k, v) {
                cate11.push(v.replace("2015-", ""));
            });
        }

        if (data1 == "" || data2 == "") {
            $("#noData").show();
        }
    });

    function AutoLineScroll(obj, rollHeight) {
        $(obj).find("ul:first").animate({
            marginTop: rollHeight
        }, 1000, function () {
            $(this).css({marginTop: "0px"}).find("li:first").appendTo(this);
        });
    }

    function arrayChange(string) {
        var arr = "";
        if(string && string.indexOf(",")){
            arr = string.split(",");
        }
        var arrTarget = [];
        if(arr){
            for (var i = 0; i <= arr.length - 1; i++) {
                arrTarget.push(parseFloat(arr[i]));
            }
        }
        return arrTarget;
    }

</script>

<script type="text/javascript">
    var num = 5 ;
    var nowtimes='03/09/2018 19:46:55';
    var endtimes = new Array();
    
        endtimes[0] = "03/09/2018 11:16:06";
    
        endtimes[1] = "03/08/2018 15:54:04";
    
        endtimes[2] = "03/07/2018 11:34:06";
    
        endtimes[3] = "03/06/2018 11:46:25";
    
        endtimes[4] = "03/05/2018 16:29:09";
    

    /*倒计时*/
    givetime();
    function givetime(){
        nowtimes = new Date(nowtimes);
        window.setTimeout("DownCount()",1000)
    }
    function DownCount(){
        //debugger;
        nowtimes = Number(nowtimes) + 1000;
        for(var i=0;i<num;i++){
            var theDay = new Date(endtimes[i]);
            theDay = theDay++;
            if(theDay <= nowtimes){
                $("#time"+i).text("已结束");
            }else{
                timechange(theDay,i);
            }
        }
        window.setTimeout("DownCount()",1000)
    }

    function timechange(theDay,i){
        //debugger;
        var theDays=new Date(theDay);
        var ts = theDays - nowtimes;
        var dd = parseInt(ts / 1000 / 60 / 60 / 24, 10);
        var hh = parseInt(ts / 1000 / 60 / 60 % 24, 10);
        var mm = parseInt(ts / 1000 / 60 % 60, 10);
        var ss = parseInt(ts / 1000 % 60, 10);
        $("#time"+i).text(charLeft(dd) + "天" + charLeft(hh) + "时" + charLeft(mm) + "分" + charLeft(ss) + "秒");
    }

    function charLeft(n){
        if(n < 10){
            return "0" + n;
        }else{
            return n;
        }
    }

    
    
    
    
    
    //债转倒计时
//    givetime1();
    /*function givetime1(){
        nowtimes1=new Date(nowtimes1);
        window.setTimeout("DownCount1()",1000)
    }*/

    /*function DownCount1(){
        //debugger;
        nowtimes1=Number(nowtimes1)+1000;
        for(var i=0;i<num;i++){

            var theDay=new Date(endtimes1[i]);
            theDay=theDay++;
            if(theDay<=nowtimes){
                $("#time1"+i).text("已结束");
            }else{
                timechange1(theDay,i);
            }
        }

        window.setTimeout("DownCount1()",1000)
    }*/

    /*function timechange1(theDay,i){

        var theDays=new Date(theDay);
        var ts = theDays - nowtimes1;
        var dd = parseInt(ts / 1000 / 60 / 60 / 24, 10);
        var hh = parseInt(ts / 1000 / 60 / 60 % 24, 10);
        var mm = parseInt(ts / 1000 / 60 % 60, 10);
        var ss = parseInt(ts / 1000 % 60, 10);
        $("#time1"+i).text(charLeft(hh) + "时" + charLeft(mm) + "分" + charLeft(ss) + "秒");
    }*/

     $(function(){
        var tagA = $("#creditorRr li a");
        $.each(tagA, function(){
            $(this).click(function(){
                $(this).addClass("tagOn").siblings().removeClass("tagOn");
            })
        })
      });


    //统计数
    /*$(function(){
        $.ajax({
            type : "POST",
//            async : true,
            url : "/index_toGetPlatformInfo.shtml",
            dataType : "json",
            success : function(data) {
                $("#dataUsers").shtml(data[0].userCount);
                $("#dataLoanAmount").shtml(data[0].loanAmount);
                $("#dataIncomeAmount").shtml(data[0].incomeAmount);
                $("#dataSaftyDays").shtml(data[0].saftyDays);
            },
            error : function() {
                $("#dataUsers").shtml(0);
                $("#dataLoanAmount").shtml(0.00);
                $("#dataIncomeAmount").shtml(0.00);
                $("#dataSaftyDays").shtml(0);
                console.error("获取平台数据异常！");
            }
        });
    });*/
</script>
<!-- 底部 -->






<!-- 底部 -->
<div class="footer">
    <div class="footer_news">
        <div class="news_con">
            <div class="news_left">
                <h3><a href="${pageContext.request.contextPath}/static/news_newslist.html">更多&gt;&gt;</a>媒体看金联储</h3>
                <ul class="news_list ">
                    
                        
                            <li>
                                <a href="${pageContext.request.contextPath}/static/news_info.html?id=1622" tltle="中国互联网金融协会公布最新会员单位名单" target="_blank">
                                        中国互联网金融协会公布最新会员单位名单
                                </a>
                            <span>
                                    2018-03-09
                            </span>
                            </li>
                        
                        
                    
                        
                        
                            <li>
                                <a href="${pageContext.request.contextPath}/static/news_info.html?id=10880" tltle="选P2P平台：短线看备案资质，长线看资产为王" target="_blank">
                                        选P2P平台：短线看备案资质，长线看资产为王
                                </a>
                                <span>2018-03-09</span>
                            </li>
                        
                    
                        
                        
                            <li>
                                <a href="${pageContext.request.contextPath}/static/news_info.html?id=10860" tltle="第三方测评：网贷信披持续改善，金联储等平台居TOP50" target="_blank">
                                        第三方测评：网贷信披持续改善，金联储等平台居TOP50
                                </a>
                                <span>2018-02-23</span>
                            </li>
                        
                    
                        
                        
                            <li>
                                <a href="${pageContext.request.contextPath}/static/news_info.html?id=7844" tltle="网贷行业2017年度成绩单出炉，宜人贷、金联储等百强企业得高分" target="_blank">
                                        网贷行业2017年度成绩单出炉，宜人贷、金联储等百强企业得高分
                                </a>
                                <span>2018-01-29</span>
                            </li>
                        
                    
                        
                        
                            <li>
                                <a href="${pageContext.request.contextPath}/static/news_info.html?id=7843" tltle="第三方机构测评 金联储评分优秀" target="_blank">
                                        第三方机构测评 金联储评分优秀
                                </a>
                                <span>2018-01-18</span>
                            </li>
                        
                    
                </ul>
            </div>
            <div class="news_right">
                <h3><a href="${pageContext.request.contextPath}/static/notice_list.html">更多&gt;&gt;</a>平台公告
                </h3>
                <ul class="news_list">
                    
                        
                            <li>
                                <a href="${pageContext.request.contextPath}/static/notice_info.html?id=11509" target="_blank" tltle="年化利率调整公告">
                                        年化利率调整公告
                                </a>
                                <span>2018-03-01</span>
                            </li>
                        
                        
                    
                        
                        
                            <li>
                                <a href="${pageContext.request.contextPath}/static/notice_info.html?id=11490" target="_blank" tltle="金联储春节放假公告">
                                        金联储春节放假公告
                                </a>
                                <span>2018-02-07</span>
                            </li>
                        
                    
                        
                        
                            <li>
                                <a href="${pageContext.request.contextPath}/static/notice_info.html?id=11475" target="_blank" tltle="系统升级公告">
                                        系统升级公告
                                </a>
                                <span>2018-02-05</span>
                            </li>
                        
                    
                        
                        
                            <li>
                                <a href="${pageContext.request.contextPath}/static/notice_info.html?id=8471" target="_blank" tltle="网络借贷信息中介机构业务活动管理暂行办法">
                                        网络借贷信息中介机构业务活动管理暂行办法
                                </a>
                                <span>2018-01-25</span>
                            </li>
                        
                    
                        
                        
                            <li>
                                <a href="${pageContext.request.contextPath}/static/notice_info.html?id=8470" target="_blank" tltle="关于促进互联网金融健康发展的指导意见">
                                        关于促进互联网金融健康发展的指导意见
                                </a>
                                <span>2018-01-25</span>
                            </li>
                        
                    
                </ul>
            </div>
        </div>
        <div class="link_img">
            <ul>
                <li><img src="${pageContext.request.contextPath}/picture/link_img1_1.jpg"/></li>
                <li><img src="${pageContext.request.contextPath}/picture/link_img2_1.jpg"/></li>
                <li><img src="${pageContext.request.contextPath}/picture/link_img3_1.jpg"/></li>
                <li><img src="${pageContext.request.contextPath}/picture/link_img4_1.jpg"/></li>
                <li><img src="${pageContext.request.contextPath}/picture/link_img5_1.jpg"/></li>
                <li><img src="${pageContext.request.contextPath}/picture/link_img6_1.jpg"/></li>
                <li><img src="${pageContext.request.contextPath}/picture/link_img7_1.jpg"/></li>
            </ul>
        </div>
    </div>
    <div class="footer_bottom">
        <div class="footer_nav">
            <div class="footer_link">
                <a href="${pageContext.request.contextPath}/static/about_platform.html" target="_blank">信息披露</a>
                <a href="${pageContext.request.contextPath}/static//about_riskMgt.html" target="_blank">风险管理</a>
                <a href="${pageContext.request.contextPath}/static/loanagreement_fx.shtml" target="_blank">风险提示</a>
                <a href="${pageContext.request.contextPath}/static//about_reportPerf.html" target="_blank">业绩报告</a>
                <a href="${pageContext.request.contextPath}/static/about_agreement.shtml" target="_blank">用户协议</a>
                <a href="${pageContext.request.contextPath}/static/netRisk_education.html" target="_blank">风险教育</a>
                <a href="${pageContext.request.contextPath}/static//about_companyEvents.html" target="_blank">公司动态</a>
                <a href="${pageContext.request.contextPath}/static/issue_getAllIssue.html" target="_blank">客服问答</a>
            </div>
            <div class="footer_codeimg"><img style="width: 111px;height: 111px;" src="${pageContext.request.contextPath}/picture/u25_1.png"/><br />下载金联储APP</div>
            <div class="footer_tel">
                <p>客服热线</p>
                <h3>400-6922-808</h3>
                <p>工作时间：9:00 - 21:00</p>
                <p>出借有风险，选择需谨慎</p>
            </div>

        </div>
        <div class="footer_icp">
            <p>Copyright © 2014-2018 &nbsp;&nbsp;金联储（北京）金融信息服务有限公司 版权所有 &nbsp;&nbsp;</p>
            <p>
                <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010502032275" target="_blank"><img src="picture/jgwab_1.png" class="jc_img" />京公网安备 11010502032275号</a>　|　<a href="/static/template/images/icp_img.jpg" target="_blank">京ICP证140409号</a>　|　<a href="http://www.miitbeian.gov.cn/publish/query/indexFirst.action" target="_blank">京ICP备14021949号-1</a>　|　机构信用代码证 G1011010713599910X</p>
            <p>
                <a href="http://www.bjp2p.com.cn/" target="_blank" title="北京市网贷行业协会发起会员"><img src="picture/footer_img1_1.jpg" /></a>
                <a href="https://v.pinpaibao.com.cn/cert/site/?site=www.jinlianchu.com.cn&at=business" target="_blank" title="安全联盟认证"><img src="picture/footer_img2_1.jpg" /></a>
                <a href='https://credit.szfw.org/CX20170913036162381669.html' target='_blank' id='___szfw_logo___'><img src='picture/cert_1.png' border='0' /></a>
            </p>
        </div>
    </div>
</div>
<!-- 底部 end -->

<script type="text/javascript">
    //判断是否是PC端打开
    function IsPC() {
        var userAgentInfo = navigator.userAgent;
        var Agents = ["Android", "iPhone", "SymbianOS", "Windows Phone", "iPod"];
        var flag = true;
        for (var v = 0; v < Agents.length; v++) {
            if (userAgentInfo.indexOf(Agents[v]) > 0) {
                flag = false;
                break;
            }
        }
        return flag;
    }
    if (!IsPC()) {
//        window.location.href = "https://wx.jinlianchu.cn";
    }

    //客服接口
    // 参数串
    var requstStr = "";

    // 去请求签名
    function getSignature(){
        $.ajax({
            type: "GET",
            async: false,
            url: "/index_getSign.html",
            dataType: "json",
            success: function(data) {
                if (data.code == 0) { // 成功
                    requstStr = data.result;
                }else{
                    requstStr = {};
                }
            }
        });
    }
    getSignature();

    (function(a, h, c, b, f, g) {
        a["UdeskApiObject"] = f;
        a[f] = a[f] || function() {
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
        "mode": "inner",
        "color": "#307AE8",
        "pos_flag": "srm",
        "onlineText": "在线客服",
        "offlineText": "在线客服",
        "pop": {
            "direction": "left"
        },
        "customer": requstStr
    });
    //客服end

    $(document).ready(function(){
        //登录验证123
        login();

        //静态页左侧选中
        selA();

        $('.add-weixin').click(function(){
            var locT = $(this).position().top;
            var locL = $(this).position().left;
            $('.icon-QR').css({
                'top':locT+36,
                'left':locL-20
            }).show();
        });

        $('.close-QR').click(function(){
            $('.icon-QR').hide();
        });

        /* bbsSynLogin(); */
        $('#mytouzi').click(function(){
            var url = "memberAsyn_checkIsLogin.html";
            $.post(url,function(data){
                if (data) {
                    window.location.href = "/member_index.html";
                }else{
                    window.location.href = "/login.html";
                }
            },'json');
        })
    });

    function login(){
        var url = "memberAsyn_checkIsLogin.html";
        $.post(url,function(data){
            if (data) {
                $("#memberInforeg").replaceWith('<li id="memberInforeg"><a class="outa"  onclick="javascript:logout()"; title="退出">退出</a></li>');
                $("#memberInfo").replaceWith('<li class="mmuser"><a href="/static/member_index.html" style="color:#fff282;">'+data[0].name+'</a> </li>');
                if(Number(data[0].type)==2){
                    $("#vipli").hide();
                }
            }else{
                $("#memberInforeg").replaceWith('<li id="memberInforeg" class="regli"><a class="rega" href="/static/regist_registMobile.html" title="会员注册">注册</a></li>');
                $("#memberInfo").replaceWith('<li id="memberInfo" class="loginli"><a class="logina" href="/static/login.html" title="会员登录">登录</a></li>');
            }
        },'json');
    }

    function logout(){
        var fromUrl = "member_index.html";
        var parm = window.location.search;
        var url = "logout.html?fromUrl="+fromUrl+parm;
        window.location.href=url;
    }

    function selA(){
        var arr = $("#submenu-list a");
        if(arr){
            var url = window.location.href;
            $.each(arr,function(i,n){
                if(url.indexOf(n)>-1){
                    /* $(n).parent().addClass("cur") */
                    if($(n).parent().is('dd')){
                        $(n).parent().addClass("cur");
                        $(n).parent().parent().children("dt").addClass("curpnt");
                    }
                    else if($(n).parent().is('dt'))
                        $(n).parent().addClass("curpnt");
                }
            });
        }
    }
</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jx_1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/o_code_1.js" ></script>
<script type="text/javascript">
    // cnzz统计
    var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
    document.write(unescape("%3Cspan id='cnzz_stat_icon_1261970805'%3E%3C/span%3E%3Cscript src='"
            + cnzz_protocol + "s13.cnzz.com/z_stat.php%3Fid%3D1261970805%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));
    // 诚信网站认证
    (function(){document.getElementById('___szfw_logo___').oncontextmenu = function(){return false;}})();
</script>
<!-- 底部 end -->
</body>
</html>
