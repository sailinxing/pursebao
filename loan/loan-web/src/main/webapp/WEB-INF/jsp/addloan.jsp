<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
	<head>
        <title>我要借款—千贷宝-专注互联网金融P2P 值得信赖的互联网金融平台
        </title>
		<meta name="keywords" content="千贷宝,互联网金融,P2P,P2B" />
		<meta name="description" content="千贷宝2014年成立，实缴注册资本1亿元人民币,北京市网贷协会创始会员。与恒丰银行已达成资金存管合作。" />
		<meta name="author" content="千贷宝（北京）金融信息服务有限公司" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reset_6.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common_6.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/second_wyjk_6.css">
		<link href="${pageContext.request.contextPath}/css/commonnew0409_6.css" type="text/css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/css/alertbox_6.css" type="text/css" rel="stylesheet"/>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/valid_6.css" />
	</head>

	<body>
		<!--头部 -->
		



<link type="image/x-icon" rel="icon"  href="${pageContext.request.contextPath}/images/favicon.ico" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/headerfooter20170317_6.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.2.min_6.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/global_6.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common_6.js"></script>
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
                token: "jinlianchu" + "6pQnhvyh16p8fRHcv6b9NkdJkkfJplN3TDC26gRxYp4sZJ5DJ2yM!-795674037!1520595706433"
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
                token: "jinlianchu" + "6pQnhvyh16p8fRHcv6b9NkdJkkfJplN3TDC26gRxYp4sZJ5DJ2yM!-795674037!1520595706433",
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
		<script type="text/javascript">
			$(function(){
				$("#loanamount").blur(
						function(){
							$.get(
									"${pageContext.request.contextPath}/loan/loanrate",
									{"loanAmount":this.value,"loanLimittime":$("#loanlimittime").val()},
									function(data){
										if(data!=null){
											$("#loanrate").val(data);
										}
									},
									"text"
							);
						}
				);
			});
			$(function(){
				$("#loanlimittime").blur(
						function(){
							$.get(
									"${pageContext.request.contextPath}/loan/loanrate",
									{"loanLimittime":this.value,"loanAmount":$("#loanamount").val()},
									function(data){
										if(data!=null){
											$("#loanrate").val(data);
										}
									},
									"text"
							);
						}
				);
			});
		</script>
<!--通栏 -->
<div class="globalTop">
    <div class="topInner clear">
        <ul class="topSet clear">
            <li class="appIcon">
                <a href="javascript:void(0);" style="cursor: default;"><span></span>手机APP
                    <div class="shareCode appCode">
                        <b></b>
                        <img width="205" height="205" src="${pageContext.request.contextPath}/picture/app_qrcode_6.jpg" alt="">
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
            <li><span style="display: inline-block;width: 16px;height: 16px; background: url(${pageContext.request.contextPath}/images/rule_6.jpg) no-repeat; overflow: hidden;vertical-align: middle;margin: -4px 6px 0 0;"></span><a href="http://www.bjp2p.com.cn/info/tousu" style="color: #fff; font-size: 14px; cursor: pointer; padding-right: 30px;" target="_blank">违法违规行为投诉</a></li>
        </ul>
    </div>
</div>
<!--通栏 end -->
<!--头部 -->
<div class="header clear">
    <div class="headerInner clear">
        <h1>
            <a href="/static/index_index.shtml" title="金联储｜专注产业链金融">
                <img class="logoimg0" src="${pageContext.request.contextPath}/picture/logo170516_6.png" alt="金联储 | 专注产业链金融">
                <img class="logobar" src="${pageContext.request.contextPath}/picture/logobar0409_6.png" alt="金联储 | 专注产业链金融">
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
		<div class="main clear mart50"  style="width: 970px;margin: 0 auto">
			<div class="main-top"></div>
			<div class="main-con">
				<!--借款步骤-->
				<h2 class="h2title">
					借款步骤
				</h2>
				<!-- <ul class="clear ul_list">
					<li class="left liback">
						1.提交申请
					</li>
					<li class="liback01 left"></li>
					<li class="left liback">
						2.资质审核
					</li>
					<li class="liback01 left"></li>
					<li class="left liback">
						3.发布借款信息
					</li>
					<li class="liback01 left"></li>
					<li class="left liback">
						4.收到借款
					</li>
				</ul> -->
				<p class="jkstep" style="width:20px;  height:84px;margin-top:10px;padding-left: 66px;">
			      <img src="${pageContext.request.contextPath}/picture/jkstep-3_6.jpg" />
			    </p>
				<!--借款步骤 end-->
				<!--借款条件-->
				<h2 class="h2title">
					借款条件
				</h2>
				<div class="clear ul_list01 c666">
					<ul class="left w252">
						<li>
							<input type="hidden">
								具有合法的经营资质
						</li>
						<li class="mart10">
							<input type="hidden">
								有实物抵（质）押
						</li>
					</ul>
					<ul class="left w210">
						<li>
							<input type="hidden">
								信用记录良好
						</li>
						<li class="mart10">
							<input type="hidden">
								业内口碑良好
						</li>
					</ul>
					<ul class="left w210">
						<li>
							<input type="hidden">
								经营状况良好
						</li>
						<li class="mart10">
							<input type="hidden">
								实力雄厚
						</li>
					</ul>
					<ul class="left">
						<li>
							<input type="hidden">
								无任何不良记录
						</li>
					</ul>
				</div>
				<!--借款条件 end-->
				<!--借款申请表--><!--
				<form action="loan_addLoanApply.html" method="get" id="addLoanApplyFrom" >
				-->
				<form action="${pageContext.request.contextPath}/loan/addloan" method="post" id="submitAll" >
				<%--<form action="loan_addLoanApply.html" method="get" id="submitAll" onsubmit="return validateParams()" >--%>
				<%--<input type="hidden"  name="loanPlanApplyDO.id"  id="" value='' />--%>
					<h2 class="h2title01">
						借款申请表
					</h2>
					<h3 class="h3title">
						<span>借款信息</span>
					</h3>
					<div class=" mar45 c333 jkxx">
						<dl class="clear">
							<dt class="w340 left">
								借款用途：
							</dt>
							<dd class="left dd01">
								<input maxlength="50" type="text" name="loanUse" id="loanUse"  value="" >
							</dd>
						</dl>

						<dl class="clear mart20">
							<dt class="w340 left">
								拟借款金额：
							</dt>
							<dd class="left dd02">
								<input maxlength="10"  type="text"  name="loanAmount" id="loanamount"
									   value="" >&nbsp;&nbsp;&nbsp;&nbsp;万元
							</dd>
						</dl>
						<dl class="clear mart20">
							<dt class="w340 left">
								借款期限：
							</dt>
							<dd class="left dd02" style="hight:100px;width:395px">
								<%--<div style="float:left;" >
									<select id="loanType" name="" onchange="loanTypeChange()" >
										<option selected = "selected"
												value = "0" >定期还款</option>
										<option  value = "1" >弹性还款</option>
									</select>
								</div>--%>
								<div  id="gdsy" style="display:block;float:left;width:290px;"
										>
									<input maxlength="5" type="text"  id="loanlimittime" name="loanLimittime"
										   value="" onblur="checkInteger(this)"/>&nbsp;&nbsp;&nbsp;月
									<%--<select id="limitUnit" name = ''>
										<!-- <option value = ''>单位</option> -->
										<option  value = 'D'>天</option>
										<option  value = 'M'>月</option>
									</select>--%>
								</div>
								<%--<div id="txsy"
                                            style="display:none;float:left;">
                                    <input maxlength="5" style="width:100px;" type="text"  id="repayBeginNum" name="loanPlanApplyDO.loanPlanApplySubDO.repayBeginNum"
                                        value="" onblur="checkPositiveIntegerBegin(this)"/>
                                    <select id=" " name="">
                                           <option selected = "selected" value = "D">天</option>
                                           <!-- <option value = "M">月</option> -->
                                    </select>至
                                    <input maxlength="5" type="text" style="width:100px;"  id="repayEndNum" name="loanPlanApplyDO.loanPlanApplySubDO.repayEndNum"
                                        value="" onblur="checkPositiveIntegerEnd(this)"/>
                                    <select id="" name="">
                                           <option selected = "selected" value = "D">天</option>
                                           <!-- <option value = "M">月</option> -->
                                    </select>
                                 </div>--%>
							</dd>
						</dl>
						<dl class="clear mart20">
							<dt class="w340 left">
								还款方式：
							</dt>
							<dd class="left dd02">
								<select id="repay_Way" name="loanPayway">

									<option  value = '1'>一次性还本付息</option>

									<option  value = '2'>按月付息，到期还本</option>

								</select>
							</dd>
						</dl>
						<dl class="clear mart20">
							<dt class="w340 left">
								借款利率：
							</dt>
							<dd class="left dd02" >
								<input maxlength="10" style="width: 40px" type="text"  name="loanRate" id="loanrate" value="">%
							</dd>
						</dl>

						<dl class="clear mart20">
							<dt class="w340 left">
								拟抵（质）押品：
							</dt>
							<dd class="left dd01">
								<input maxlength="50" type="text" name="loanGoods" id="loanGoods"  value="" >
							</dd>
						</dl>
						<dl class="clear mart20">
							<dt class="w340 left">
								抵（质）押品预估值：
							</dt>
							<dd class="left dd03">
								<input maxlength="10" type="text" id="amount"   name="loanWorth" value="0.0" />
								&nbsp;&nbsp;&nbsp;&nbsp;万元
								<%--<span style="color: red; padding:10px" class="error-cdzys"></span>--%>
							</dd>
						</dl>

					</div>
					<!--借款申请表 end-->

					<!--公司信息-->
					<h3 class="h3title">
						<span>联系信息</span>
					</h3>
					<div class=" mar45 c333 jkxx">
						<dl class="clear">
							<dt class="w340 left">
								公司名称：
							</dt>
							<dd class="left dd01">
								<input type="text" maxlength="50"  class="inpt wd200 required" name="companyName" id="loanCompName" class="required"  value=""/>
							</dd>
						</dl>
						<dl class="clear mart20">
							<dt class="w340 left">
								公司地址：
							</dt>
							<dd class="left dd01">
								<input type="text" maxlength="50" class="required" id="addr" name="companyAddress" value="" />

							</dd>
						</dl>
						<%--<dl class="clear mart20">
							<dt class="w340 left">
								联系人：
							</dt>
							<dd class="left dd02">
								<input type="text" maxlength="50" class="required" id="nectpeople" name="loanPlanApplyDO.contact" value="" />

							</dd>
						</dl>--%>
						<%--<dl class="clear mart20">
							<dt class="w340 left">
								联系电话：
							</dt>
							<dd class="left dd02"><!--
							<input type="text" id="nectTel" class="inpt wd200 required chkmobile" name="loanPlanApplyDO.tel"  value="" />
						-->
								<input type="text" maxlength="11" name="loanPlanApplyDO.tel" id="validatePhone" value="" />
							</dd>
						</dl>--%>
						<dl class="clear mart20">
							<dt class="w340 left">
								补充说明：
							</dt>
							<dd class="left dd05">
								<textarea id="textA" maxlength="200" name="caseComplaint"></textarea>
							</dd>
						</dl>
					</div>

					<div class=" mar45 c333 jkxx">
						<dl class="clear mart20">
							<dt class="w340 left">
								&nbsp;
							</dt>
							<dd class="left dd05">

								<input type="hidden" name="struts.token.name" value="token" />
								<input type="hidden" name="token" value="DQ5M9QKXW2Z953AZDZLPO9F1U4PU2DCR" />
								<%--<input  type="submit" value="提交">--%>
								<button id="submitButten" class="imgRoundBtn" ><span>提交</span></button>
							</dd>
						</dl>
					</div>
				</form>
				<!--联系信息 end-->
				<!--温馨提示-->
				<dl class="clear wxts ">
					<dt class="w340 left">
						&nbsp;
					</dt>
					<dd class="left mart20">
						<h3 class="h3title01">
							温馨提示
						</h3>
						<p>
							提交需求后，金联储资深顾问将会和您联系，辅助您完成借款的准备工作：
						</p>
						<p>
							1、对贵公司的资质审查；
						</p>
						<p>
                            2、预期年化利率的确定；
						</p>
						<p>
							3、抵（质）押品的评估和监管。
						</p>
					</dd>
				</dl>
				<!--温馨提示 end-->
			</div>
			<div class="main-btm marb100"></div>
		</div>
		<!--主体 end -->
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
                <li><img src="${pageContext.request.contextPath}/picture/link_img1_6.jpg"/></li>
                <li><img src="${pageContext.request.contextPath}/picture/link_img2_6.jpg"/></li>
                <li><img src="${pageContext.request.contextPath}/picture/link_img3_6.jpg"/></li>
                <li><img src="${pageContext.request.contextPath}/picture/link_img4_6.jpg"/></li>
                <li><img src="${pageContext.request.contextPath}/picture/link_img5_6.jpg"/></li>
                <li><img src="${pageContext.request.contextPath}/picture/link_img6_6.jpg"/></li>
                <li><img src="${pageContext.request.contextPath}/picture/link_img7_6.jpg"/></li>
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
            <div class="footer_codeimg"><img style="width: 111px;height: 111px;" src="${pageContext.request.contextPath}/picture/u25_6.png"/><br />下载金联储APP</div>
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
                <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010502032275" target="_blank"><img src="picture/jgwab_6.png" class="jc_img" />京公网安备 11010502032275号</a>　|　<a href="/template/images/icp_img.jpg" target="_blank">京ICP证140409号</a>　|　<a href="http://www.miitbeian.gov.cn/publish/query/indexFirst.action" target="_blank">京ICP备14021949号-1</a>　|　机构信用代码证 G1011010713599910X</p>
            <p>
                <a href="http://www.bjp2p.com.cn/" target="_blank" title="北京市网贷行业协会发起会员"><img src="picture/footer_img1_6.jpg" /></a>
                <a href="https://v.pinpaibao.com.cn/cert/site/?site=www.jinlianchu.com.cn&at=business" target="_blank" title="安全联盟认证"><img src="picture/footer_img2_6.jpg" /></a>
                <a href='https://credit.szfw.org/CX20170913036162381669.html' target='_blank' id='___szfw_logo___'><img src='picture/cert_6.png' border='0' /></a>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jx_6.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/o_code_6.js" ></script>
<script type="text/javascript">
    // cnzz统计
    var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
    document.write(unescape("%3Cspan id='cnzz_stat_icon_1261970805'%3E%3C/span%3E%3Cscript src='"
            + cnzz_protocol + "s13.cnzz.com/z_stat.php%3Fid%3D1261970805%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));
    // 诚信网站认证
    (function(){document.getElementById('___szfw_logo___').oncontextmenu = function(){return false;}})();
</script>
		<!-- 底部 end -->
	<script>
	    //点击提交按钮
		//$("#submitButten").live("click",function(){
	
			//$("#submitAll").submit("loan_addLoanApply.html");
		
		//})
		$(document).ready(function(){
			var type = '3';
			if(type==1){
				alert("出借方不可借款");
			}
//			关闭弹窗
			$(".closeBtn").hover(function(){
				$(this).find('img').attr("src","${pageContext.request.contextPath}/images/close_act.png")
			},function(){
				$(this).find('img').attr("src","${pageContext.request.contextPath}/images/close_normal.png")
			});
			$(".closeBtn").on('click',function(){
				$(this).parent().parent().parent().hide();
			});
			$(".closeBtn1,#closeBtn").on('click',function(){
				$("#alert_toBePerfected").hide();
				$(this).parent().parent().hide();
			});
        });
		
		/*function validateParams(){
		
			var type = '3'
			if(type==1){
				alert("出借方不可借款");
				return false;
			}else{

				var loanUse = $("#loanUse").val();
				var loanAmount = $("#loanAmount").val();
				var loanLimit = $("#loanLimit").val();
				var amount = $("#amount").val();
				var loanCompName = $("#loanCompName").val();
				var addr = $("#addr").val();
				var nectpeople = $("#nectpeople").val();
				var nectTel = $("#validatePhone").val();
				var textA = $("#textA").val();
				$("#loanUse1").remove();
				if($("#loanUse").length > 0  && stringIsEmpty(loanUse)){
					$("#loanUse").parent("dd").append("<span id='loanUse1' style='display: block;color:red'>必选字段不能为空</span>");
					 return false;
				}
				if($("#loanUse").length > 0  && loanUse.length>50){
					$("#loanUse").parent("dd").append("<span id='loanUse1' style='display: block;color:red'>50个字符以内</span>");
					 return false;
				}

				
				//var negex = /^[1-9][0-9]*$/;
// 				var negex = /^\d+\.?\d*$/;
				var negex = /^\d+\.?\d*$/;
				var dd_loanAmount = $("#loanAmount").parent("dd");
				$("#loanAmount1").remove();
				if(stringIsEmpty(loanAmount)){
					dd_loanAmount.append("<span id='loanAmount1' style='display: block;color:red'>必选字段不能为空</span>"); 
					return false;
				}
				if(parseFloat(loanAmount) <= 0){
					dd_loanAmount.append("<span id='loanAmount1' style='display: block;color:red'>请输入大于0的有效金额</span>"); 
					return false;
				}
				if(loanAmount.length>10||!negex.test(loanAmount)){
					dd_loanAmount.append("<span id='loanAmount1' style='display: block;color:red'>请输入10位以内的数字</span>"); 
					return false;
				}
				if($("#ownAmount").length > 0 && $("#ownAmount").val() != "" 
						&& parseFloat($("#ownAmount").val())/10000 < parseFloat(loanAmount)){
					dd_loanAmount.append("<span id='loanAmount1' style='display: block;color:red'>授信余额不足，为"+parseFloat($("#ownAmount").val())/10000+"万元</span>"); 
					//授信余额不足 不要改动 用户添加写的数据
					//$("#loanAmount").val(parseFloat($("#ownAmount").val())/10000);
					
					return false;
				}
				
				$("#loanLimit1").remove();
				$("#repayBeginNum1").remove();
				$("#repayEndNum1").remove();
				if($("#loanType").val()=='0'){
					if(stringIsEmpty(loanLimit)){
						$("#loanLimit").parent().parent("dd").append("<span id='loanLimit1' style='display: block;color:red'>必选字段不能为空</span>");
						return false;
					}
					if(loanLimit.length>5||!negex.test(loanLimit)){
						$("#loanLimit").parent().parent("dd").append("<span id='loanLimit1' style='display: block;color:red'>请输入5位以内的数字</span>");
						return false;
					}
					
					if($("#limitUnit").val() == ''){
					     $("#loanLimit").parent().parent("dd").append("<span id='loanLimit1' style='display: block;color:red'>请选择借款日期单位</span>");
						 return false;
					}
				}else{
					var repayBeginNum = $("#repayBeginNum").val(); //弹性还款开始天数
					var repayEndNum = $("#repayEndNum").val(); //弹性还款结束天数
					
					var dd_repayBeginNum = $("#repayBeginNum").parent().parent("dd");
					var dd_repayEndNum = $("#repayEndNum").parent().parent("dd");
					
					if(stringIsEmpty(repayBeginNum)){
						dd_repayBeginNum.append("<span id='repayBeginNum1' style='display: block;color:red'>必选字段不能为空</span>");
                        return false;
					}
					if( parseInt(repayBeginNum) < 15 || parseInt(repayBeginNum) >= 180  ){
						dd_repayBeginNum.append("<span id='repayBeginNum1' style='display: block;color:red'>请输入15~180之间的数字</span>");
						return false;
					}
					
					if(stringIsEmpty(repayEndNum)){
						dd_repayEndNum.append("<span id='repayEndNum1' style='display: block;color:red'>必选字段不能为空</span>");
						return false;
					}
					if( parseInt(repayEndNum) <= 15 || parseInt(repayEndNum) > 180  ){
						dd_repayEndNum.append("<span id='repayEndNum1' style='display: block;color:red'>请输入15~180之间的数字</span>");
						return false;
					}
					
					if(parseInt(repayBeginNum) >= parseInt(repayEndNum) ){
						dd_repayEndNum.parent().append("<span id='repayEndNum1' style='display: block;color:red'>开始天数应小于结束天数</span>");
						return false;
					}
					
					$("#limitUnit").val('D'); //弹性散标期限的单位为天
				}*/
				
				/*$("#repayWay1").remove();
				var inputRepayWayValue = $("#input_repay_way").val();
				if(!inputRepayWayValue){
					$("#repay_Way").parent("dd").append("<span id='repayWay1' style='display: block;color:red'>必选字段不能为空</span>");
					return false;
				}*/
				
				/*$("#amount1").remove();
				if($("#amount").length > 0  && stringIsEmpty(amount)){
					$("#amount").parent("dd").append("<span id='amount1' style='display: block;color:red'>必选字段不能为空</span>");
					return false;
				}
				if($("#amount").length > 0  && (amount.length>10||!negex.test(amount))){
					$("#amount").parent("dd").append("<span id='amount1' style='display: block;color:red'>请输入10位以内的数字</span>");
					return false;
				}
				$("#loanCompName1").remove();
				if($("#loanCompName").length > 0  && stringIsEmpty(loanCompName)){
					$("#loanCompName").parent("dd").append("<span id='loanCompName1' style='display: block;color:red'>必选字段不能为空</span>");
					return false;
				}
				if($("#loanCompName").length > 0  && loanCompName.length>50){
					$("#loanCompName").parent("dd").append("<span id='loanCompName1' style='display: block;color:red'>50个字符以内的信息</span>");
					return false;
				}
				$("#addr1").remove();
				if($("#addr").length > 0  && stringIsEmpty(addr)){
					$("#addr").parent("dd").append("<span id='addr1' style='display: block;color:red'>必选字段不能为空</span>");
					return false;
				}
				if($("#addr").length > 0  && addr.length>50){
					$("#addr").parent("dd").append("<span id='addr1' style='display: block;color:red'>请输入50个字符以内的信息</span>");
					return false;
				}
				$("#nectpeople1").remove();
				if($("#nectpeople").length > 0  && stringIsEmpty(nectpeople)){
					$("#nectpeople").parent("dd").append("<span id='nectpeople1' style='display: block;color:red'>必选字段不能为空</span>");
					return false;
				}
				if($("#nectpeople").length > 0  && nectpeople.length>15){
					$("#nectpeople").parent("dd").append("<span id='nectpeople1' style='display: block;color:red'>请输入15个字符内的信息</span>");
					return false;
				}
				$("#validatePhone1").remove();
				if($("#validatePhone").length > 0){
					if(stringIsEmpty(nectTel)){
						$("#validatePhone").parent("dd").append("<span id='validatePhone1' style='display: block;color:red'>必选字段不能为空</span>");
						return false;
					}else{
						var phoneRegex = /^1[3|4|5|7|8][0-9]\d{4,8}$/;	//手机号验证
						var boo = phoneRegex.test($("#validatePhone").val());
						if(!boo){
							$("#validatePhone").parent("dd").append("<span id='validatePhone1' style='display: block;color:red'>请填写正确的手机号</span>");
							return false;
						}
					}
				}*/
				/*if($("#textA").length > 0  && textA.length>500){
					$("#textA").parent("dd").append("<span id='nectpeople1' style='display: block;color:red'>请输入500个字符以内的信息</span>");
					return false;
				}*/
				//$("#submitAll").submit();
				//弹窗
			/*	var flag = true;
				var userClass = null;
				if(userClass){//登录状态
					var memberId = 'null';
					$.ajax({
						url:"/member_getCardStatusByUserId.html",
						data:{"userId": memberId},
						type:"post",
						async:false,
						dataType:"json",
						success:function(data){
                            var depositStatus =data[0].depositStatus;
                            var status =data[0].status;

                            if(userClass == 3){		//企业用户
                                if(depositStatus == 0){		//未开户
                                    if(status == 3){	//3 待提交  4,5,6资料审核中  7资料驳回
                                        $("#alert_toBePerfected").show();
                                        flag= false;
                                    }else if(status == 4 || status == 5 || status == 6){ //资料审核中
                                        $("#alert_dataAudit").show();
                                        flag=false;
                                    }else if(status == 7){ 	//资料驳回
                                        $("#alert_dataFail").show();
                                        flag=false;
                                    } else if(status == 1){ //可开户状态
                                        $("#isAuthorize").attr("checked", false);
                                        $("#alert_open_cancelAutoAuth").show();
                                        flag=false;
                                    }
                                }
                                if(depositStatus == 1){
                                    $("#alert1_2").show();
                                    flag=false;
                                }
                                if(depositStatus == 2){	//开户审核中
                                    $("#alert_accountAudit").show();
                                    flag=false;
                                }
                                if (depositStatus == 3) {	//审核被退回
                                    $("#alert_accountReturn").show();
                                    flag=false;
                                }
                                if(depositStatus == 4){	//审核被驳回
                                    $("#alert_disabled").show();
                                    flag=false;
                                }
                                if(depositStatus == 5){
                                }
                            }else{
                                if(depositStatus == 0){
                                    $("#alert0").show();
                                    flag= false;
                                }
                                if(depositStatus == 1){
                                    $("#alert1").show();
                                    flag= false;
                                }
                                if(depositStatus == 5){
                                }
                            }
                        }
					});

				}
				return flag;
			}
		}*/
	
		//点击手机号失去焦点
		/*$("#validatePhone").live("blur",function(){
			var phoneRegex = /^1[3|4|5|7|8][0-9]\d{4,8}$/;	//手机号验证
			var boo = phoneRegex.test($("#validatePhone").val());
			if(!boo){
				$("#validatePhone").parent("dd").children("span").remove();
				$("#validatePhone").parent("dd").append("<span id='validatePhone1' style='display: block;color:red'>请填写正确的手机号</span>");
			}else{
				$("#validatePhone").parent("dd").children("span").remove();
			}
		})*/
		/**判断字符是否为空
		 * @param str 字符串
		 * @return true 为null或“”或undefined
		 * @return false 不为null或“”或undefined
		 */
		function stringIsEmpty(str){
			if(str==null||str==""||typeof(str)==undefined){
				return true;
			}
			return false;
		}
		
		function checkInteger(obj){
		   var ovalue = obj.value;
		   if(ovalue == '')return false;
		   var startChar = /^[0-9]*[1-9][0-9]*$/;
		   if(startChar.test(ovalue)){
		      return true;
		   }
		   alert("请输入整数");
		   obj.value = '';
		   return false;
		}
		
		function checkPositiveIntegerBegin(obj){
	    	$("#repayBeginNum2").remove();
		    var ovalue = obj.value;
		    
		    if(ovalue == ''){
				$("#repayBeginNum").parent().parent("dd")
					.append("<span id='repayBeginNum2' class='repayBeginNum2' style='margin-left:80px;'>必选字段不能为空</span>");
				return false;
		    }
		   
		    var startChar = /^[0-9]{1,3}$/;
		    if(startChar.test(ovalue)){
				if( parseInt(ovalue) >= 15 && parseInt(ovalue) < 180 ){	//[15,180)
					$("#repayBeginNum2").remove();
				    return true;
				}else{
					$("#repayBeginNum").parent().parent("dd")
						.append("<span id='repayBeginNum2' class='repayBeginNum2' style='' >借款周期限15天到180天内</span>");
				 	obj.value = '';
				    return false;
				}
		    }
		    obj.value = '';
		    return false;
		}
		
		function checkPositiveIntegerEnd(obj){
			$("#repayEndNum2").remove();
		    var $_append_obj = $("#repayBeginNum2").val()?$("#repayBeginNum2"):$("#repayEndNum").parent().parent("dd");

		    var ovalue = obj.value;
		   	if(ovalue == ''){
				$_append_obj.append("<span id='repayEndNum2' class='repayEndNum2' style='margin-left:30px' >必选字段不能为空</span>");
		   		return false;
		   	}
			var startChar = /^[0-9]{1,3}$/;
			if(startChar.test(ovalue)){
				if( parseInt(ovalue) > 15 && parseInt(ovalue) <= 180 ){	//(15,180]
					$("#repayEndNum2").remove();			       
					return true;
				}else{
					$_append_obj.append("<span id='repayEndNum2' class='repayEndNum2' style='margin-left:2px' >借款周期限15天到180天内</span>");
					obj.value = '';
					return false;
				}
		    }
		    obj.value = '';
		    return false;
		}
		
		function loanTypeChange(){
			if($("#loanType").val()=='0'){
				$("#gdsy").show();
				$("#txsy").hide();

				$("#input_repay_way").remove();
				document.getElementById("repay_Way").disabled=false;

				var loanLimitVal = "";
				if( "" == loanLimitVal ){
					// 定期散标申请时，默认借款期限为“月”(M)
					document.getElementById("limitUnit").options[1].selected=true; 
					// 按日计息，按月付息，到期还本
					changeRepayWay("141"); 
				}
				
				var repayWayId = "";
				if( "" !=  repayWayId )
					changeRepayWay(repayWayId, false);
				
				$("#repayBeginNum1").remove();
				$("#repayEndNum1").remove();
				$("#repayBeginNum2").remove();
				$("#repayEndNum2").remove();
				
			}else if($("#loanType").val()=='1'){
				$("#gdsy").hide();
				$("#txsy").show();
				
				$("#input_repay_way").remove();
				$("#repay_Way").parent("dd").prepend
					(" <input type='hidden' id='input_repay_way' name='repayWay' value='161' > "); 
				changeRepayWay("161",true); // 按日计息，到期还本付息
				
				$("#loanLimit1").remove();
			}
		}
		
		function changeRepayWay(valueId, isDisable){
			var val = valueId;
			if(val){
				var selectObj = document.getElementById("repay_Way");
// 				var loanType = "";
				for(var i=0;i<selectObj.length;i++){
					if(val == selectObj.options[i].value){
						selectObj.options[i].selected=true;
						if( isDisable && "161" == val)
							selectObj.disabled=true;
					}
				}
			}
		}
	</script>
	
	<script type="text/javascript">
		var loanType = "";
		if( "1" == loanType ) changeRepayWay("161", true);
		
// 		var isFirst = true;
// 		if(isFirst){
			var loanLimitVal = "";
			var sub = "";
			if( "" == loanLimitVal && !sub ){
				// 定期散标申请时，默认借款期限为“月”(M)
				document.getElementById("limitUnit").options[1].selected=true; 
				// 按日计息，按月付息，到期还本
				changeRepayWay("141"); 
			}
			
// 			isFirst = false;
// 		}



	</script>

		
		<!-- 新用户开户提示弹窗 -->
<div id="alert0" class="alert_box">
    <div class="cg_detal">
        <a class="closeBtn1" href="javascript:;"><img src="${pageContext.request.contextPath}/picture/close_6.png"></a>
        <div class="ban1">
            <img src="${pageContext.request.contextPath}/picture/kgpic_6.jpg"/>
        </div>
        <div>
            <p>您需要先开通存管账户，才能进行充值、提现等交易操作。</p>
            <button class="int_btn" onclick="toPersonOpenOrActive()">现在开通</button>
        </div>
    </div>
</div>

<script type="text/javascript">
    function toPersonOpenOrActive(){
        window.location.href="/depository_toPersonOpenOrActive.html";
    }
</script>

		<!-- 企业开户提示弹框 -->
<div class="alert_box" id="alert0_2">
    <div style="height: 395px;" class="cg_detal">
        <a class="closeBtn1" href="javascript:;"><img src="${pageContext.request.contextPath}/picture/close_6.png"></a>
        <div class="ban1">
            <img src="${pageContext.request.contextPath}/picture/qypic_6.jpg"/>
        </div>
        <div>
            <p>您需要先开通存管账户，才能进行充值、提现等交易操作。</p>
            <button class="int_btn" onclick="toEnterpriseOpenOrActive1()">现在开通</button>
        </div>
    </div>
</div>

<script type="text/javascript">
    function toEnterpriseOpenOrActive1() {
        window.location.href = "/depository_toEnterpriseOpenOrActive.html";
    }
</script>

		<!-- 存量用户账户升级提示弹框 -->
<div class="alert_box" id="alert1">
    <div class="cg_detal">
        <a class="closeBtn1" href="javascript:;"> <img
                src="${pageContext.request.contextPath}/picture/close_6.png">
        </a>
        <div class="ban1">
            <img src="${pageContext.request.contextPath}/picture/qypic_6.jpg" />
        </div>
        <div>
            <p>为保障您的资金安全，须升级存管账户才能进行充值、提现等交易操作。</p>
            <button class="int_btn" onclick="toPersonOpenOrActive()">立即升级存管账户</button>
        </div>
    </div>
</div>

<script type="text/javascript">
    function toPersonOpenOrActive(){
        window.location.href="/depository_toPersonOpenOrActive.html";
    }
</script>
		<!-- 存量用户账户升级提示弹框 -->
<div class="alert_box" id="alert1_2">
    <div class="cg_detal">
        <a class="closeBtn1" href="javascript:;"> <img
                src="${pageContext.request.contextPath}/picture/close_6.png">
        </a>
        <div class="ban1">
            <img src="${pageContext.request.contextPath}/picture/qypic_6.jpg" />
        </div>
        <div>
            <p>为保障您的资金安全，须升级存管账户才能进行充值、提现等交易操作。</p>
            <button class="int_btn" onclick="toEnterpriseOpenOrActive()">立即升级存管账户</button>
        </div>
    </div>
</div>

<script type="text/javascript">
    function toEnterpriseOpenOrActive(){
        window.location.href="/depository_toEnterpriseOpenOrActive.html";
    }
</script>
		
<!-- 用户换卡审核中 -->
<div id="alert_014" class="alert_box">
    <div class="detal">
        <h1>提示<a class="closeBtn" href="javascript:;"><img src="${pageContext.request.contextPath}/picture/close_normal_6.png"></a></h1>
        <div class="text">
            <p>用户换卡审核中,请稍后再试 !</p>
            <p>如有疑问请联系客服：400-6922-808</p>
        </div>
        <div class="btnAera">
            <button class="aright" onclick="close014();">知道了</button>
        </div>
    </div>
</div>

<script type="text/javascript">
    function close014(){
        $("#alert_014").hide();
    }
</script>

		<!-- 企业开户提示弹框-待完善 -->
<div id="alert_toBePerfected" class="alert_box">
    <div style="height: 395px;" class="cg_detal">
        <a class="closeBtn1" href="javascript:;">
            <img src="${pageContext.request.contextPath}/picture/close_6.png">
        </a>
        <div class="ban1">
            <img src="${pageContext.request.contextPath}/picture/qypic_6.jpg"/>
        </div>
        <div>
            <p style="line-height: 22px;">
                企业需联系客服完成企业实名认证后，才能开通存管账户 <br/> 客服电话：400 - 6922 - 808
            </p>
            <button id="closeBtn" class="int_btn" onclick="closeBtn3();">好的</button>
        </div>
    </div>
</div>

<script type="text/javascript">
    function closeBtn3(){
        $("#alert_toBePerfected").hide();
    }
</script>

		<!-- 账户不可用提示弹框 -->
<%--<div class="alert_box" id="alert_disabled">
    <div class="detal">
        <h1>
            提示
            <a id="zhbky_a" class="closeBtn" href="javascript:;">
                <img src="${pageContext.request.contextPath}/picture/close_normal_6.png">
            </a>
        </h1>
        <div class="text">
            <p>您的存管开户申请被银行驳回，该账号不可再使用！如有疑问请联系客服。</p>
            <p>客服电话：400 - 6922 - 808</p>
        </div>
        <div class="btnAera">
            <button id="alert_" class="aright" onclick="closeBtn();">知道了</button>
        </div>
    </div>
</div>--%>

<script type="text/javascript">
    function closeBtn(){
        $("#alert_disabled").hide();
    }
</script>

		<!-- 账户不可用提示弹框 -->
<%--
<div class="alert_box" id="alert_dataAudit">
    <div class="detal">
        <h1>
            提示
            <a id="zhbky_a" class="closeBtn" href="javascript:;">
                <img src="${pageContext.request.contextPath}/picture/close_normal_6.png">
            </a>
        </h1>
        <div class="text">
            <p>您提交的资料正在审核中，正常情况下资料提交后的1-3个工作日可处理完毕。如有异常情况，您也可主动联系客服了解情况。</p>
            <p>客服电话：400 - 6922 - 808</p>
        </div>
        <div class="btnAera">
            <button id="alert_" class="aright" onclick="closeBtn456();">知道了</button>
        </div>
    </div>
</div>
--%>

<script type="text/javascript">
    function closeBtn456(){
        $("#alert_dataAudit").hide();
    }
</script>

		<!-- 账户不可用提示弹框 -->
<%--
<div class="alert_box" id="alert_accountAudit">
    <div class="detal">
        <h1>
            提示
            <a id="zhbky_a" class="closeBtn" href="javascript:;">
                <img src="${pageContext.request.contextPath}/picture/close_normal_6.png">
            </a>
        </h1>
        <div class="text">
            <p>银行正在处理您的开户申请，正常情况下资料提交后的1-3个工作日可处理完毕。如有异常情况，您也可主动联系客服了解情况。</p>
            <p>客服电话：400 - 6922 - 808</p>
        </div>
        <div class="btnAera">
            <button id="alert_" class="aright" onclick="closeBtn0();">知道了</button>
        </div>
    </div>
</div>
--%>

<script type="text/javascript">
    function closeBtn0(){
        $("#alert_accountAudit").hide();
    }
</script>

		<!-- 账户不可用提示弹框 -->
<%--<div class="alert_box" id="alert_dataFail">
    <div class="detal">
        <h1>
            提示
            <a id="zhbky_a" class="closeBtn" href="/logout.html?fromUrl=member_index.html">
                <img src="${pageContext.request.contextPath}/picture/close_normal_6.png">
            </a>
        </h1>
        <div class="text">
            <p>您提交的资料被驳回，如有异常情况，您也可主动联系客服了解情况。</p>
            <p>客服电话：400 - 6922 - 808</p>
        </div>
        <div class="btnAera">
            <button id="alert_" class="aright" onclick="closeBtn7();">知道了</button>
        </div>
    </div>
</div>--%>

<script type="text/javascript">
    function closeBtn7(){
        window.location.href="/logout.html?fromUrl=member_index.html";
    }
</script>

		<!-- 账户不可用提示弹框 -->
<div class="alert_box" id="alert_accountReturn">
    <div class="detal">
        <h1>
            提示
            <a id="zhbky_a" class="closeBtn" href="javascript:;">
                <img src="${pageContext.request.contextPath}/picture/close_normal_6.png">
            </a>
        </h1>
        <div class="text">
            <p>您的开户申请已被银行退回，如有需要客服会与您取得联系，您也可主动联系客服了解情况。</p>
            <p>客服电话：400 - 6922 - 808</p>
        </div>
        <div class="btnAera">
            <button id="alert_" class="aright" onclick="closeBtn_accountReturn();">知道了</button>
        </div>
    </div>
</div>

<script type="text/javascript">
    function closeBtn_accountReturn(){
        $("#alert_accountReturn").hide();
    }
</script>

		<!-- 企业开户提示弹框 -->
<div class="alert_box" id="alert_open_cancelAutoAuth">
    <div style="height: 395px;" class="cg_detal">
        <a class="closeBtn1" href="javascript:;"><img src="${pageContext.request.contextPath}/picture/close_6.png"></a>
        <div class="ban1">
            <img src="${pageContext.request.contextPath}/picture/qypic_6.jpg"/>
        </div>
        <div class="cgtips">
            <p>您需要先开通存管账户，才能进行充值、提现等交易操作。</p>
            <p style="font-size: 12px; color: #999; padidng:0;"><input name="isAuthorize" id="isAuthorize" style="position: relative;top: 1px;"
                                                                       type="checkbox"/>
                申请开通自动还款，勾选表示您已阅读并同意<a style="text-decoration: none;" href="/static/template/autoAuthorize_agreement_sq.shtml" target="_blank">《授权协议》</a>
            </p>
            <button class="int_btn" onclick="toEnterpriseOpenOrActive2()">现在开通</button>
        </div>
    </div>
</div>

<script type="text/javascript">
    function toEnterpriseOpenOrActive2() {
        var isAuthorize = $("#isAuthorize").is(':checked');
        window.location.href = "/depository_toEnterpriseOpenOrActive.html?isAuthorize=" + Boolean(isAuthorize);
    }
</script>

	</body>

</html>
