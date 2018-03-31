<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>项目列表—千贷宝-专注互联网金融P2P 值得信赖的互联网金融平台
    </title>
    <meta name="keywords" content="千贷宝-,互联网金融,P2P,P2B" />
    <meta name="description" content="千贷宝-2014年成立，实缴注册资本1亿元人民币,北京市网贷协会创始会员。与恒丰银行已达成资金存管合作。" />
    <meta name="author" content="千贷宝-（北京）金融信息服务有限公司" />
    <link rel="icon" href="favicon.ico?0424" type="image/x-icon" />
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/favicon.ico?0424" type="image/x-icon" />
    <link href="${pageContext.request.contextPath}/css/reset.css" type="text/css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/css/commonnew0109.css" type="text/css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/css/indexcontent0109.css" type="text/css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/css/dialog.css" type="text/css" rel="stylesheet" />

    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/headerfooter20170317_6.css" />
    <link type="image/x-icon" rel="icon"  href="/template/images/favicon.ico" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/headerfooter20170317.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/global.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
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
                    token: "jinlianchu" + "BJCJhv0hcFfCGfRVKtztZQT4FQgNl8Z3vcxjrCq21V19ff1sMYSQ!1733324720!1520596090528"
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
                    token: "jinlianchu" + "BJCJhv0hcFfCGfRVKtztZQT4FQgNl8Z3vcxjrCq21V19ff1sMYSQ!1733324720!1520596090528",
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
    <script type="text/javascript" language="javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
    <script type="text/javascript">
        function beforSubmitS(i){
            var r =   /^[0-9]*[1-9][0-9]*$/;//正整数
            var flag=true;
            var investChannel=document.getElementById("investChannel"+i).value;		//项目终端
            var investCopy = document.getElementById("investCopy"+i).value;
            var castCopy=document.getElementById("castCopy"+i).value;
            var userIdVal=document.getElementById("userId"+i).value;
            var tempCopy =document.getElementById("tempCopy"+i).value;
            var placeVal = $('#investCopy'+i).attr('placeholder');

            if (investCopy == placeVal){
                investCopy = '';
            }
            if(investCopy !=''  && !r.test(investCopy)){
                flag=false;
                document.getElementById("errMsg"+i).innerHTML="输入的份额必须为正整数";
            }else{
                document.getElementById("inputCopy"+i).value=investCopy;
                if(investCopy=='') {
                    flag=true;
                    document.getElementById("inputCopy"+i).value=0;
                    //window.location.href = "/invest_detail.html?id="+i;
                } else if(parseInt(tempCopy)<parseInt(investCopy)) {
                    flag=false;
                    document.getElementById("errMsg"+i).innerHTML="您认购的份额超出可投份额";
                }else if(parseInt(investCopy)<parseInt(castCopy)) {
                    flag=false;
                    document.getElementById("errMsg"+i).innerHTML="起投份额:"+castCopy+"份";
                }else if(userIdVal==null || userIdVal=='') {
                    flag=false;
                    window.location.href = "/invest1_detail.html?id="+i+"&inputCopy="+investCopy;
                }
            }
            return flag;
        }
        function beforSubmit(i){

            var r =   /^[0-9]*[1-9][0-9]*$/;//正整数
            var flag=true;
            var investChannel=document.getElementById("investChannel"+i).value;		//项目终端
            var castCopy=document.getElementById("castCopy"+i).value;
            var userIdVal=document.getElementById("userId"+i).value;
            var tempCopy =document.getElementById("tempCopy"+i).value;

            var voteAmount=document.getElementById("voteAmount"+i).value;
            var investmentAmount=document.getElementById("investmentAmount"+i).value;
            var castAmount=document.getElementById("castAmount"+i).value;
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
                        //window.location.href = "/invest_detail.html?id="+i;
                    } else if(parseInt(voteAmount)<parseInt(investmentAmount)) {
                        flag=false;
                        document.getElementById("errMsg"+i).innerHTML="您认购的份额超出可投份额";
                    }else if(parseInt(investmentAmount)<parseInt(castAmount)) {
                        flag=false;
                        document.getElementById("errMsg"+i).innerHTML=castAmount+"元起";
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

        $(document).ready(function(){
            $('.txtipt').keydown(function(e){
                if(e.keyCode==13){
                    $(this).parent().find(':submit').click();
                    return false;
                }
            });
        });
    </script>
</head>
<body>
    <!--头部 -->
<!--通栏 -->
<div class="globalTop">
    <div class="topInner clear">
        <ul class="topSet clear">
            <li class="appIcon">
                <a href="javascript:void(0);" style="cursor: default;"><span></span>手机APP
                    <div class="shareCode appCode">
                        <b></b>
                        <img width="205" height="205" src="${pageContext.request.contextPath}/picture/app_qrcode.jpg" alt="">
                    </div>
                </a>
            </li>
            <li class="qqGroup">
                <a href="https://jq.qq.com/?_wv=1027&k=55knNyX" target="_blank"><span></span>QQ群</a>
            </li>
        </ul>
        <ul class="topLogin clear">
            <li id="memberInforeg" class="regli"><a class="rega" href="/regist_registMobile.html">注册</a></li>
            <li id="memberInfo" class="loginli"><a class="logina" href="/login.html">登录</a></li>
            <li style="color: #98cfee;">客服热线：400-6922-808</li>
            <li><span style="display: inline-block;width: 16px;height: 16px; background: url(images/rule.jpg) no-repeat; overflow: hidden;vertical-align: middle;margin: -4px 6px 0 0;"></span><a href="http://www.bjp2p.com.cn/info/tousu" style="color: #fff; font-size: 14px; cursor: pointer; padding-right: 30px;" target="_blank">违法违规行为投诉</a></li>
        </ul>
    </div>
</div>
<!--通栏 end -->
<!--头部 -->
<div class="header clear">
    <div class="headerInner clear">
        <h1>
            <a href="/static/index_index.shtml" title="千贷宝｜专注产业链金融">
                <img class="logoimg0" src="${pageContext.request.contextPath}/picture/logo170516.png" alt="金联储 | 专注产业链金融">
                <img class="logobar" src="${pageContext.request.contextPath}/picture/logobar0409.png" alt="金联储 | 专注产业链金融">
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
    <!--头部 end -->

<!--主体 -->


<div class="mainWrap new-main bgcDfe">
    <div class="projectBox projectList">
        <div class="projectCon clear">
            <div class="content plainPart left" id="plainPart0" style="display:block">
                <div>
                    <c:forEach items="${loanUserPagebean.pageData}" var="loan" varStatus="vs">
                    <div class="conItem clear">
                        <a style="color:#000" href="javascript:void(0)" onclick="alertDialog('已满标','26609','Fri Mar 09 09:52:16 CST 2018');" title="${loan.loanUse}" >
                            <div class="progress left">
                                <img src="${pageContext.request.contextPath}/picture/gongyinglian.png">
                                <p>借款项目</p>
                            </div>
                            <div class="infor left">
                                <h3>
                                    <em>${loan.loanUse}</em>
                                </h3>
                                <!-- <p class="time">剩余时间：<span class="timerCon" id="countDown0"></span>
                                </p>  -->
                                <p class="time">项目到期时间：${loan.loanLimittime}</p>
                            </div>
                            <ul class="number left clear" style="width:365px">
                              <%-- <li style="width:80px">
                                        ${loan.loanGoods}
                                    <p>借款抵押品</p>
                                </li>
                                <li class="w123 red" style="width:80px">
                                    ${loan.loanWorth}
                                      <p>抵押品估值</p>
                                 </li>--%>
                                <li class="w123 red" >
                                        ${loan.loanRate}%
                                    <p>借款年化利率</p>
                                </li>
                                <li >
                                ${loan.loanAmount}<span class="size14">万</span>
                                    <p>借款金额</p>
                                </li>
                                <li class="lastli" style="width:80px" >
                                        ${loan.loanLimittime/30}
                                    <span class="size14">个月</span>
                                    <p>借款期限</p>
                                </li>
                            </ul>
                        </a>
                        <div class="btnbox left" >
                            <!--
                            <div class="money clear"><label class="left">可投金额</label><em class="left"><b>

                            0
                            </b>元</em></div>
                            <div class="progressBg"><div class="progressBar" style="width:100%"></div></div>
                             -->
                            <div class="btndiv" >
                                <div style="width:50px">
                                <c:if test="${loan.loanOnline==1}">
                                    <div class="finish"><span>借款未发放</span></div>
                                </c:if>
                                <c:if test="${loan.loanOnline==2}">
                                    <div class="finish"><span>借款已发放</span></div>
                                </c:if>
                                <c:if test="${loan.repaymentStatus==1}">
                                    <div class="finish"><span>借款已发放，未还款</span></div>
                                </c:if>
                                <c:if test="${loan.repaymentStatus==2}">
                                    <div class="finish"><span>借款已发放，已还款</span></div>
                                </c:if>
                                </div>
                                <div>
                                    <div class="finish">
                                        <div><a href="${pageContext.request.contextPath}/loan/detail?lid=${loan.lid}"><span>查看详情</span></a></div>
                                    </div>
                                </div>
                                <!-- <form action=""><input type="text" class="txtipt left" placeholder="请输入出借金额"><input type="submit" class="btn left" value="立即出借" onclick="alertDialog('已满标');return false;"></form><p class="red" style="font-size:12px;"></p> -->
                            </div>

                        </div>
                    </div>
                    </c:forEach>
                </div>
            		<div class="pagingWrap">
            			
						
						<div class="page-box" style="line-height:23px">
                            <c:if test="${loanUserPagebean.totalCount!=0}">
                                <c:if test="${loanUserPagebean.currentPage==1}">
                                    <a>上一页</a>
                                </c:if>
                                <c:if test="${loanUserPagebean.currentPage!=1}">
                                    <a href="${pageContext.request.contextPath}/loan/touserloanlist?currentPage=${loanUserPagebean.currentPage-1}">上一页</a>
                                </c:if>
                                <c:forEach begin="${loanUserPagebean.currentPage>4?loanUserPagebean.currentPage-4:1}" end="${loanUserPagebean.currentPage+6<loanUserPagebean.totalPage?loanUserPagebean.currentPage+6:loanUserPagebean.totalPage}" var="page">
                                    <c:if test="${page==loanUserPagebean.currentPage}">
                                        <span class="current">${page}</span>
                                    </c:if>
                                    <c:if test="${page!=loanUserPagebean.currentPage}">
                                        <a href="${pageContext.request.contextPath}/loan/touserloanlist?currentPage=${page}">${page}</a>
                                    </c:if>
                                </c:forEach>
                                <c:if test="${loanUserPagebean.currentPage==loanUserPagebean.totalPage}">
                                    <a>下一页</a>
                                </c:if>
                                <c:if test="${loanUserPagebean.currentPage!=loanUserPagebean.totalPage}">
                                    <a href="${pageContext.request.contextPath}/loan/touserloanlist?currentPage=${loanUserPagebean.currentPage+1}">下一页</a>
                                </c:if>
                                <c:if test="${loanUserPagebean.currentPage!=loanUserPagebean.totalPage}">
                                    <a href="${pageContext.request.contextPath}/loan/touserloanlist?currentPage=${loanUserPagebean.totalPage}">尾页</a>
                                </c:if>
                                <c:if test="${loanUserPagebean.currentPage==loanUserPagebean.totalPage}">
                                    <a>尾页</a>
                                </c:if>
                                <span class="page-all">共${loanUserPagebean.totalPage}页</span>
                            </c:if>
        			   </div>
            	
            	
            	<!-- 特殊处理所用数据 -->
            	<input type="hidden" id="memberId" value="">
            	<input type="hidden" id="memberRealname" value="">
            	<input type="hidden" id="isAuth" value=""/>
            	<input type="hidden" id="depositStatus" value=""/>

            </div>         
        </div>        
        <!-- 项目列表 end -->
    </div>

</div>
<!--主体 end -->


	
	
<script type="text/javascript">
    /*智能客服*/

    // 参数串
    var requstStr = "";

    // 去请求签名
    function getSignature(){
        $.ajax({
            type: "GET",
            async: false,
            url: "/static/index_getSign.html",
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
        "mode": "blank",// 窗口显示模式，inner：网页内嵌模式，blank：独立窗口模式
        "color": "#307AE8",
        "pos_flag": "srm",
        "onlineText": "在线客服",
        "offlineText": "在线客服",
        "pop": {
            "direction": "left"
        },
        "customer": requstStr
    });
</script>

	<!-- 底部 -->
	





<!-- 底部 -->
<div class="footer">
    <div class="footer_news">
        <div class="news_con">
            <div class="news_left">
                <h3><a href="/news_newslist.html">更多&gt;&gt;</a>媒体看金联储</h3>
                <ul class="news_list ">
                    
                        
                            <li>
                                <a href="/news_info.html?id=1622" tltle="中国互联网金融协会公布最新会员单位名单" target="_blank">
                                        中国互联网金融协会公布最新会员单位名单
                                </a>
                            <span>
                                    2018-03-09
                            </span>
                            </li>
                        
                        
                    
                        
                        
                            <li>
                                <a href="/news_info.html?id=10880" tltle="选P2P平台：短线看备案资质，长线看资产为王" target="_blank">
                                        选P2P平台：短线看备案资质，长线看资产为王
                                </a>
                                <span>2018-03-09</span>
                            </li>
                        
                    
                        
                        
                            <li>
                                <a href="/news_info.html?id=10860" tltle="第三方测评：网贷信披持续改善，金联储等平台居TOP50" target="_blank">
                                        第三方测评：网贷信披持续改善，金联储等平台居TOP50
                                </a>
                                <span>2018-02-23</span>
                            </li>
                        
                    
                        
                        
                            <li>
                                <a href="/news_info.html?id=7844" tltle="网贷行业2017年度成绩单出炉，宜人贷、金联储等百强企业得高分" target="_blank">
                                        网贷行业2017年度成绩单出炉，宜人贷、金联储等百强企业得高分
                                </a>
                                <span>2018-01-29</span>
                            </li>
                        
                    
                        
                        
                            <li>
                                <a href="/news_info.html?id=7843" tltle="第三方机构测评 金联储评分优秀" target="_blank">
                                        第三方机构测评 金联储评分优秀
                                </a>
                                <span>2018-01-18</span>
                            </li>
                        
                    
                </ul>
            </div>
            <div class="news_right">
                <h3><a href="/notice_list.html">更多&gt;&gt;</a>平台公告
                </h3>
                <ul class="news_list">
                    
                        
                            <li>
                                <a href="/notice_info.html?id=11509" target="_blank" tltle="年化利率调整公告">
                                        年化利率调整公告
                                </a>
                                <span>2018-03-01</span>
                            </li>
                        
                        
                    
                        
                        
                            <li>
                                <a href="/notice_info.html?id=11490" target="_blank" tltle="金联储春节放假公告">
                                        金联储春节放假公告
                                </a>
                                <span>2018-02-07</span>
                            </li>
                        
                    
                        
                        
                            <li>
                                <a href="/notice_info.html?id=11475" target="_blank" tltle="系统升级公告">
                                        系统升级公告
                                </a>
                                <span>2018-02-05</span>
                            </li>
                        
                    
                        
                        
                            <li>
                                <a href="/notice_info.html?id=8471" target="_blank" tltle="网络借贷信息中介机构业务活动管理暂行办法">
                                        网络借贷信息中介机构业务活动管理暂行办法
                                </a>
                                <span>2018-01-25</span>
                            </li>
                        
                    
                        
                        
                            <li>
                                <a href="/notice_info.html?id=8470" target="_blank" tltle="关于促进互联网金融健康发展的指导意见">
                                        关于促进互联网金融健康发展的指导意见
                                </a>
                                <span>2018-01-25</span>
                            </li>
                        
                    
                </ul>
            </div>
        </div>
        <div class="link_img">
            <ul>
                <li><img src="${pageContext.request.contextPath}/picture/link_img1.jpg"/></li>
                <li><img src="${pageContext.request.contextPath}/picture/link_img2.jpg"/></li>
                <li><img src="${pageContext.request.contextPath}/picture/link_img3.jpg"/></li>
                <li><img src="${pageContext.request.contextPath}/picture/link_img4.jpg"/></li>
                <li><img src="${pageContext.request.contextPath}/picture/link_img5.jpg"/></li>
                <li><img src="${pageContext.request.contextPath}/picture/link_img6.jpg"/></li>
                <li><img src="${pageContext.request.contextPath}/picture/link_img7.jpg"/></li>
            </ul>
        </div>
    </div>
    <div class="footer_bottom">
        <div class="footer_nav">
            <div class="footer_link">
                <a href="/about_platform.html" target="_blank">信息披露</a>
                <a href="/about_riskMgt.html" target="_blank">风险管理</a>
                <a href="/static/loanagreement_fx.shtml" target="_blank">风险提示</a>
                <a href="/about_reportPerf.html" target="_blank">业绩报告</a>
                <a href="/about_agreement.html" target="_blank">用户协议</a>
                <a href="/netRisk_education.html" target="_blank">风险教育</a>
                <a href="/about_companyEvents.html" target="_blank">公司动态</a>
                <a href="/issue_getAllIssue.html" target="_blank">客服问答</a>
            </div>
            <div class="footer_codeimg"><img style="width: 111px;height: 111px;" src="picture/u25.png"/><br />下载金联储APP</div>
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
                <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010502032275" target="_blank"><img src="picture/jgwab.png" class="jc_img" />京公网安备 11010502032275号</a>　|　<a href="/template/images/icp_img.jpg" target="_blank">京ICP证140409号</a>　|　<a href="http://www.miitbeian.gov.cn/publish/query/indexFirst.action" target="_blank">京ICP备14021949号-1</a>　|　机构信用代码证 G1011010713599910X</p>
            <p>
                <a href="http://www.bjp2p.com.cn/" target="_blank" title="北京市网贷行业协会发起会员"><img src="picture/footer_img1.jpg" /></a>
                <a href="https://v.pinpaibao.com.cn/cert/site/?site=www.jinlianchu.com.cn&at=business" target="_blank" title="安全联盟认证"><img src="picture/footer_img2.jpg" /></a>
                <a href='https://credit.szfw.org/CX20170913036162381669.html' target='_blank' id='___szfw_logo___'><img src='picture/cert.png' border='0' /></a>
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
                $("#memberInfo").replaceWith('<li class="mmuser"><a href="/member_index.html" style="color:#fff282;">'+data[0].name+'</a> </li>');
                if(Number(data[0].type)==2){
                    $("#vipli").hide();
                }
            }else{
                $("#memberInforeg").replaceWith('<li id="memberInforeg" class="regli"><a class="rega" href="/regist_registMobile.html" title="会员注册">注册</a></li>');
                $("#memberInfo").replaceWith('<li id="memberInfo" class="loginli"><a class="logina" href="/login.html" title="会员登录">登录</a></li>');
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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jx.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/o_code.js" ></script>
<script type="text/javascript">
    // cnzz统计
    var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
    document.write(unescape("%3Cspan id='cnzz_stat_icon_1261970805'%3E%3C/span%3E%3Cscript src='"
            + cnzz_protocol + "s13.cnzz.com/z_stat.php%3Fid%3D1261970805%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));
    // 诚信网站认证
    (function(){document.getElementById('___szfw_logo___').oncontextmenu = function(){return false;}})();
</script>
	<!-- 底部 end -->

<script type="text/javascript" src="${pageContext.request.contextPath}/js/bannerscroll.js"></script>
<script src="${pageContext.request.contextPath}/js/lab.js" type="text/javascript"></script>
<script src="js/common-usercenter.js" type="text/javascript"></script>
<script type="text/javascript" language="javascript" src="${pageContext.request.contextPath}/js/setactive.js"></script>
<script>
    var endtimes = new Array();
    
    endtimes[0] = "03/09/2018 11:16:06";
    
    endtimes[1] = "03/08/2018 15:54:04";
    
    endtimes[2] = "03/07/2018 11:34:06";
    
    endtimes[3] = "03/06/2018 11:46:25";
    
    endtimes[4] = "03/05/2018 16:29:09";
    
    endtimes[5] = "02/28/2018 17:48:05";
    
    endtimes[6] = "02/28/2018 11:04:09";
    
    endtimes[7] = "02/27/2018 10:34:00";
    
    endtimes[8] = "02/25/2018 19:28:20";
    
    endtimes[9] = "02/25/2018 11:16:08";
    
    var num = 10;

    var nowtimes = '03/09/2018 19:48:10';

    /*倒计时*/
    givetime();

    function givetime() {
        nowtimes = new Date(nowtimes);
        window.setTimeout("DownCount()", 1000)
    }

    function DownCount() {
        nowtimes = Number(nowtimes) + 1000;
        for (var i = 0; i < num; i++) {
            var theDay = new Date(endtimes[i]);
            theDay = theDay++;

            if (theDay <= nowtimes) {
                $("#countDown" + i).html("已结束");
            } else {
                timechange(theDay, i);
            }
        }

        window.setTimeout("DownCount()", 1000)
    }

    function charLeft(n) {
        if (n < 10) {
            return "0" + n;
        } else {
            return n;
        }
    }

    function timechange(theDay, i) {
        var theDays = new Date(theDay);
        var ts = theDays - nowtimes;
        var dd = parseInt(ts / 1000 / 60 / 60 / 24, 10);
        var hh = parseInt(ts / 1000 / 60 / 60 % 24, 10);
        var mm = parseInt(ts / 1000 / 60 % 60, 10);
        var ss = parseInt(ts / 1000 % 60, 10);
        $("#countDown" + i).html(charLeft(dd) + "天" + charLeft(hh) + "时" + charLeft(mm) + "分" + charLeft(ss) + "秒");
    }

    $(function () {
        var tagA = $("#creditorRr li a");
        $.each(tagA, function () {
            $(this).click(function () {
                $(this).addClass("tagOn").siblings().removeClass("tagOn");
            });
        });
    });
</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/onlinesrv.js"></script>
<script type="text/javascript" language="javascript" src="${pageContext.request.contextPath}/js/jquery.easydrag.js"></script>
    <script type="text/javascript">
        function alertDialog(message, id, publishDate) {
            var str = document.URL;
            var sevenDate = 'Sat Mar 03 19:48:10 CST 2018';
            var memberId = $("#memberId").val();
            var memberRealname = $("#memberRealname").val();
            var isAuth = $("#isAuth").val();
            var depositStatus = $("#depositStatus").val();
            if (memberId == "") {
                if (str.indexOf("?") != -1) {
                    window.open("/invest1_queryLoanPlan.html" + str.substr(str.indexOf("?")), "_self");
                } else {
                    window.open("/invest1_queryLoanPlan.html", "_self");
                }
	  }else{
                if (isAuth != 1) {//未实名认证
              var rechrge_popHtml = '<div class="lotteryBox clear"><div class="w100 left"></div><div class="left" style="margin-left: 77px;width: 277px;"><p style="padding-top:10px;">您还没有实名认证，请实名认证后再查看项目详情</p></div></div>';
		      var applyaddDialog = JYD.dialog({
		        title :"",
		        initWidth :450,
		        content : rechrge_popHtml,
				buttonOk :  '取消',
				buttonCancel: '确认',
				buttonOkHref: 'javascript:history.go(-1)',
				buttonCancelHref: '/income_incomePage.html',
				eventOk: function(){
		        	JYD.modalClose();
				},
				eventCancel:function(){
					location.href='/income_incomePage.html';
				}
		      });

			  $('#JYD-ui-button-cancel',applyaddDialog).attr('href','javascript:history.go(-1)');
			  $(".del",applyaddDialog).css({"display": "none"});
			  $("#JYD-ui-button-cancel",applyaddDialog).css({
				  "position": "relative",
				  "padding":"0",
				  "height":"26px",
				  "color":"#000",
				  "font-family":"simsun"
			  });
			 return ;
		  }
                sevenDate = new Date(sevenDate);
                publishDate = new Date(publishDate);
		if(Number(publishDate)<Number(sevenDate)){
			  var rechrge_popHtml = '<div class="lotteryBox clear"><div class="w100 left"></div><div class="left" style="margin-left: 77px;width: 277px;"><p style="padding-top:10px;">目前仅开放一周以内的项目，已出借用户可到“出借项目”中查看</p></div></div>';
		      var applyaddDialog = JYD.dialog({
		        title :"",
		        initWidth :450,
		        content : rechrge_popHtml,
				buttonOk: '取消',
		        buttonCancel: '确定',
				buttonOkHref: 'javascript:history.go(-1)',
				buttonCancelHref: 'javascript:history.go(-1)',
				eventOk: function(){
					JYD.modalClose();
				},
				eventCancel:function(){
					JYD.modalClose();
				}
		      });

			$('#JYD-ui-button-cancel',applyaddDialog).attr('href','javascript:history.go(-1)');
			$(".del",applyaddDialog).css({"display": "none"});
			$("#JYD-ui-button-cancel",applyaddDialog).css({
				"position": "relative",
				"padding":"0",
				"height":"26px",
				"color":"#000",
				"font-family":"simsun"
			});

            return;
		}
		window.open("/invest_detail.html?id="+id,"_blank");
	  }
        }

  JYD.inputFocusBlur("form");
</script>
</body>
</html>