<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
  <meta charset="utf-8" />
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <meta content="IE=Edge" http-equiv="X-UA-Compatible">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
  <meta name="keywords" content="千贷宝金服,互联网金融,产业链金融" />
  <meta name="description" content="千贷宝金服专注产业链金融，实缴注册资本1亿元人民币,恒丰银行资金存管。" />
  <meta name="sogou_site_verification" content="ktdkahuZOf"/>
  <meta name="shenma-site-verification" content="fef609755f54757f4d1387ad6554898d_1521021962">
  <title>
    千贷宝金服-专注产业链金融
  </title>
  <link rel="icon" href="${pageContext.request.contextPath}/favicon.ico" type="image/x-icon" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/headerfooter20170317_1.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/member_1.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/layer_1.css">
  <script src="${pageContext.request.contextPath}/js/jquery-1.7.2.min_1.js"></script>
  <script src="${pageContext.request.contextPath}/js/layer_1.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.placeholder.min_1.js"></script>
  <script src="${pageContext.request.contextPath}/js/common_1.js"></script>
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
            <img src="${pageContext.request.contextPath}/picture/app_qrcode_1.jpg" alt="">
            <p>扫一扫下载APP</p>
          </div>
        </a>
        <a href="https://jq.qq.com/?_wv=1027&k=4AUeFQw" target="_blank" class="qq" title="qq群"></a>
      </div>
      <div class="right">
        <a href="/about/index/vip.html" title="VIP服务" >VIP服务</a>
        <span>客服热线：400-0066-220</span>
        <a href="/login.html" title="登录" class="white">登录</a>
        |
        <a href="/register.html" title="注册" class="white">注册</a>

      </div>
    </div>
  </div>
  <div class="logo_nav warp">
    <h1 class="logo left" title="千贷宝金服 | 专注产业链金融">
      <a href="/" title="千贷宝金服 | 专注产业链金融">
        <img src="${pageContext.request.contextPath}/picture/logo_1.png" align="千贷宝金服 | 专注产业链金融" />
        <span>|&nbsp;&nbsp;专注产业链金融</span>
      </a>
    </h1>
    <div class="nav right">
      <ul>
        <li class="on"><a href="${pageContext.request.contextPath}//" title="首页">首页</a></li>
        <li ><a href="${pageContext.request.contextPath}/project.html" title="固收">固收</a></li>
        <li ><a href="${pageContext.request.contextPath}/jgtd.html" title="机构通道">机构通道</a></li>
        <!--<li><a href="https://www.jinlianchu.com.cn/invest_queryLoanPlan.html?page=1" title="P2P" target="_blank">P2P</a></li>-->
        <li ><a href="${pageContext.request.contextPath}/about/index/platform.html" title="关于我们">关于我们</a></li>
        <li><a href="${pageContext.request.contextPath}/account.html" title="我的账户">我的账户</a></li>
      </ul>
    </div>
  </div>
</div>
<!--头部 end -->

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index2017_1.css" />
<!--焦点图 -->
<div id="slideBox" class="slideBox">
  <div class="hd"><ul></ul></div>
  <div class="bd">
    <ul>
       <c:forEach items="${contentList}" var="content" >
         <li style="background-image: url('${content.pic}'); ">
           <a href="https://f.jinlianchu.cn/FILE/html/PC//xinrenli20180321/index.shtml?source=2&token=" target="_blank"></a>
         </li>
       </c:forEach>
      <%--<li style="background-image: url('${pageContext.request.contextPath}/images/xinrenli20180321_1.jpg'); ">
        <a href="https://f.jinlianchu.cn/FILE/html/PC//xinrenli20180321/index.shtml?source=2&token=" target="_blank"></a>
      </li>
      <li style="background-image: url('${pageContext.request.contextPath}/images/pcbanner1111111_1.jpg'); ">
        <a href="https://www.jinlianchu.cn/activity/invite.html?source=2&token=" target="_blank"></a>
      </li>
      <li style="background-image: url('${pageContext.request.contextPath}/images/pcbanner8888_1.jpg'); ">
        <a href="https://f.jinlianchu.cn/FILE/html/PC//yjbg_pc/index.shtml?source=2&token=" target="_blank"></a>
      </li>--%>
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
        <a href="${pageContext.request.contextPath}/about/index/platform.html" target="_blank">
          <i class="icon1"></i>
          <p><br />实缴注册资本1亿元</p>
        </a>
      </li>
      <li>
        <a href="${pageContext.request.contextPath}/about/index/platform.html" target="_blank">
          <i class="icon2"></i>
          <p>BAST风控系统<br />专业风险流程“一票否决”制</p>
        </a>
      </li>
      <li>
        <a href="${pageContext.request.contextPath}/about/index/platform.html" target="_blank">
          <i class="icon3"></i>
          <p><br />十年风控经验</p>
        </a>
      </li>
      <li>
        <a href="${pageContext.request.contextPath}/about/index/platform.html" target="_blank">
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
            <li><a href="${pageContext.request.contextPath}/index/index/noticedetail.html?id=2629" target="_blank" tltle="金联储金服春节放假公告">金联储金服春节放假公告</a></li>
            <li><a href="${pageContext.request.contextPath}/index/index/noticedetail.html?id=2609" target="_blank" tltle="系统升级公告">系统升级公告</a></li>
            <li><a href="${pageContext.request.contextPath}/index/index/noticedetail.html?id=2589" target="_blank" tltle="小金2018年会期间客户服务安排公告">小金2018年会期间客户服务安排公告</a></li>
            <li><a href="${pageContext.request.contextPath}/index/index/noticedetail.html?id=2569" target="_blank" tltle="平台运营公告">平台运营公告</a></li>
            <li><a href="${pageContext.request.contextPath}/index/index/noticedetail.html?id=2551" target="_blank" tltle="微软云维护公告">微软云维护公告</a></li>
            <li><a href="${pageContext.request.contextPath}/index/index/noticedetail.html?id=2550" target="_blank" tltle="系统升级公告">系统升级公告</a></li>
            <li><a href="${pageContext.request.contextPath}/index/index/noticedetail.html?id=2529" target="_blank" tltle="元旦放假公告">元旦放假公告</a></li>
            <li><a href="${pageContext.request.contextPath}/index/index/noticedetail.html?id=2509" target="_blank" tltle="邀请好友活动升级公告">邀请好友活动升级公告</a></li>
            <li><a href="${pageContext.request.contextPath}/index/index/noticedetail.html?id=2469" target="_blank" tltle="”礼“惠初秋，投资得千元京东卡获奖公告">”礼“惠初秋，投资得千元京东卡获奖公告</a></li>
            <li><a href="${pageContext.request.contextPath}/index/index/noticedetail.html?id=2449" target="_blank" tltle="金联储金服6月争霸赛获奖公告">金联储金服6月争霸赛获奖公告</a></li>
          </ul>
        </div>
      </div>
      <a href="${pageContext.request.contextPath}/index/index/noticelist.html" target="_blank" class="more">更多 &gt;</a>
    </div>
    <div class="right dynamic">
      <i></i>
      <div class="txtScroll">
        <div class="bd">
          <ul class="infoList">
            <li>
              <span>8秒前</span>
              <a href="${pageContext.request.contextPath}/project/index/projectdetail/id/476751279069248" tltle="[供应链ZGXL64051ZGXL64051]用于企业经营，补充流动资金。" target="_blank">
                c**7投资了22168元[供应链ZGXL64051ZGXL64051]用于企业经营，补充流动资金。                            </a>
            </li>
            <li>
              <span>1分钟前</span>
              <a href="${pageContext.request.contextPath}/project/index/projectdetail/id/476395309359424" tltle="[供应链ZGXL61018ZGXL61018]用于企业经营，补充流动资金。" target="_blank">
                w**6投资了5540元[供应链ZGXL61018ZGXL61018]用于企业经营，补充流动资金。                            </a>
            </li>
            <li>
              <span>1分钟前</span>
              <a href="${pageContext.request.contextPath}/project/index/projectdetail/id/476395309359424" tltle="[供应链ZGXL61018ZGXL61018]用于企业经营，补充流动资金。" target="_blank">
                j**1投资了7000元[供应链ZGXL61018ZGXL61018]用于企业经营，补充流动资金。                            </a>
            </li>
            <li>
              <span>3分钟前</span>
              <a href="${pageContext.request.contextPath}/project/index/projectdetail/id/476750962547008" tltle="[供应链ZGXL30051ZGXL30051]用于企业经营，补充流动资金。" target="_blank">
                c**7投资了8093元[供应链ZGXL30051ZGXL30051]用于企业经营，补充流动资金。                            </a>
            </li>
            <li>
              <span>3分钟前</span>
              <a href="${pageContext.request.contextPath}/project/index/projectdetail/id/476569121026112" tltle="[供应链ZGXL07052ZGXL07052]用于企业经营，补充流动资金。" target="_blank">
                j**5投资了6666元[供应链ZGXL07052ZGXL07052]用于企业经营，补充流动资金。                            </a>
            </li>
            <li>
              <span>4分钟前</span>
              <a href="${pageContext.request.contextPath}/project/index/projectdetail/id/476395309359424" tltle="[供应链ZGXL61018ZGXL61018]用于企业经营，补充流动资金。" target="_blank">
                r**g投资了14109元[供应链ZGXL61018ZGXL61018]用于企业经营，补充流动资金。                            </a>
            </li>
            <li>
              <span>5分钟前</span>
              <a href="${pageContext.request.contextPath}/project/index/projectdetail/id/476569121026112" tltle="[供应链ZGXL07052ZGXL07052]用于企业经营，补充流动资金。" target="_blank">
                j**9投资了3020元[供应链ZGXL07052ZGXL07052]用于企业经营，补充流动资金。                            </a>
            </li>
            <li>
              <span>6分钟前</span>
              <a href="${pageContext.request.contextPath}/project/index/projectdetail/id/476569121026112" tltle="[供应链ZGXL07052ZGXL07052]用于企业经营，补充流动资金。" target="_blank">
                j**0投资了20337元[供应链ZGXL07052ZGXL07052]用于企业经营，补充流动资金。                            </a>
            </li>
            <li>
              <span>6分钟前</span>
              <a href="${pageContext.request.contextPath}/project/index/projectdetail/id/476395309359424" tltle="[供应链ZGXL61018ZGXL61018]用于企业经营，补充流动资金。" target="_blank">
                j**9投资了5100元[供应链ZGXL61018ZGXL61018]用于企业经营，补充流动资金。                            </a>
            </li>
            <li>
              <span>7分钟前</span>
              <a href="${pageContext.request.contextPath}/project/index/projectdetail/id/476396039977280" tltle="[供应链ZGXL58055ZGXL58055]用于企业经营，补充流动资金。" target="_blank">
                j**3投资了2610元[供应链ZGXL58055ZGXL58055]用于企业经营，补充流动资金。                            </a>
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
      <h3>投资专区</h3>
      <h4>每日首发时间 8:50</h4>
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
              <a href="${pageContext.request.contextPath}/invest/investdetail/${newProduct.pid}" target="_blank">供应链ZGXL58055</a>
              <a href="javascript:void(0);" >
                <em>新手专享</em>
              </a>
            </h3>
            <div class="profit">
              <div class="num">
                <h5>
                  <em>${newProduct.expectedRate*100}</em>%
                </h5>
                <p>预期年化收益率</p>
              </div>
              <div class="time">
                <h5>
                  <em>${newProduct.loanLimittime*30}</em>天
                </h5>
                <p>期限</p>
              </div>
            </div>
          </div>
          <div class="invest right">
            <p class="surplus_num">剩余可投：<span>${newProduct.surplusMoney}</span>元</p>
            <p class="surplus_hr"><span style="width:99%"></span></p>

            <p class="invest_btn">
              <a href="${pageContext.request.contextPath}/invest/investdetail/${newProduct.pid}" target="_blank" title="立即投资">立即投资</a>                        </p>
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
              <a href="${pageContext.request.contextPath}/invest/investdetail/${expProduct.pid}" target="_blank">体验标</a>
              <a href="javascript:;">
              </a>
            </h3>
            <div class="profit">
              <div class="num">
                <h5>
                  <em>${expProduct.expectedRate*100}</em>%
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
            <p class="surplus_num">剩余可投：<span>${expProduct.surplusMoney}</span>元</p>
            <p class="surplus_hr"><span style="width:2%"></span></p>
            <p class="invest_btn"><a href="${pageContext.request.contextPath}/invest/investdetail/${expProduct.pid}" target="_blank" title="立即投资">立即投资</a></p>
          </div>
        </li>
      </ul>
    </div>
  </div>

  <!--借款体验-->
  <div class="product_fixed clearfix">
    <div class="p_txt left">
      <i></i>
      <h3>借款</h3>
      <!--<h4>来源金融资产交易所</h4>-->
      <!--<a href="/index/jjs/intron.html" class="p_txt_btn" target="_blank">了解详情 &gt;</a>-->
      <h4>轻松解决您的借款问题</h4>
    </div>
    <div class="p_list right">
      <a href="${pageContext.request.contextPath}/loan/toloanlist" target="_blank" class="more">更多 &gt;</a>
      <ul>
        <c:forEach items="${loanList}" var="loan">
        <li>
          <div class="p_con left">
            <h3>
              <i></i>
              <a href="${pageContext.request.contextPath}/loan/toloanlist" target="_blank">借款项目</a>
              <a href="javascript:void(0);" >
              </a>
            </h3>
            <div class="profit">
              <div class="num">
                <h5>
                  <em>${loan.loanRate}</em>%
                </h5>
                <p>借款利率</p>
              </div>
              <div class="time">
                <h5><em>${loan.loanLimittime*30}</em>天</h5>
                <p>期限</p>
              </div>
            </div>
          </div>
          <div class="invest right">
            <p class="surplus_num">借款金额：<span>${loan.loanAmount}</span>万元</p>
            <p class="surplus_hr"><span style="width:17%;"></span></p>
            <p class="invest_btn">
              <a href="${pageContext.request.contextPath}/loan/addloan" target="_blank" title="立即投资">我要借款</a>                        </p>
          </div>
        </li>
        </c:forEach>
      </ul>
    </div>
  </div>

  <!--新闻-->
  <div class="news clearfix">
    <div class="media_news left">
      <h3><a href="${pageContext.request.contextPath}/about/index/medialist.html" title="查看更多" class="right"></a>媒体报道</h3>
      <ul id='mediaInfo'></ul>
    </div>
    <div class="company_dynamics right">
      <h3><a href="${pageContext.request.contextPath}/about/index/dynamic.html" title="查看更多" class="right"></a>公司动态</h3>
      <ul id='companyNews'></ul>
    </div>
  </div>

</div>
<script src="${pageContext.request.contextPath}/js/jquery.superslide.2.1.1_1.js"></script>
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
        if (msg) {
          $("#mediaInfo").html(msg);
        } else {
          $(".news").hide();
        }

      }
    });
    //公司新闻
    $.ajax({
      url: '/index/index/getcompanynews.html',
      dataType: 'html',
      success: function (msg) {
        if (msg) {
          $("#companyNews").html(msg);
        } else {
          $(".news").hide();
        }

      }
    });
  });
</script>
<!--内容区end-->
<!-- 底部 -->
<div class="footer">
  <div class="footer_nav warp">
    <div class="footer_link">
      <a href="${pageContext.request.contextPath}/about/index/platform.html" target="_blank">关于我们</a>
      <a href="${pageContext.request.contextPath}/about/index/investstep.html" target="_blank">新手指南</a>
      <a href="${pageContext.request.contextPath}/index/index/kfwd.html" target="_blank">客服问答</a>
      <a href="${pageContext.request.contextPath}/about/index/dynamic.html" target="_blank">公司动态</a>
      <a href="${pageContext.request.contextPath}/about/index/question.html" target="_blank">常见问题</a>
      <a href="${pageContext.request.contextPath}/static/shtml/agreement_zc.html" target="_blank">用户协议</a>
      <a href="${pageContext.request.contextPath}/about/index/joinus.html" target="_blank">加入我们</a>
      <a href="${pageContext.request.contextPath}/about/index/achievement.html" target="_blank">业绩报告</a>
    </div>
    <div class="footer_codeimg left">
      <span><img src="${pageContext.request.contextPath}/picture/u25_1.png"/><br />下载千贷宝金服APP</span>
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
      <!--<a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010502034827" target="_blank"><img src="picture/jgwab_1.png" class="jc_img">京公网安备 11010502034827 号</a>　|-->　
      <!--<a href="/static/images/icp_img.jpg" target="_blank">京ICP证140409号</a>　|-->　
      <a href="http://www.miitbeian.gov.cn/publish/query/indexFirst.action" target="_blank">杭ICP备17042235号</a>　|　机构信用代码证 91110107MA00EU339B
    </p>
    <p>
      <a id="_pingansec_bottomimagelarge_p2p" target="_blank"  title="互联网金融品牌" href="http://si.trustutn.org/info?sn=448170824000601194838&certType=4"><img src="picture/footer_img5_1.jpg"/></a>
      <a href="http://v.pinpaibao.com.cn/authenticate/cert/?site=www.jinlianchu.com&at=business" target="_blank" title="安全联盟认证"><img src="picture/footer_img2_1.jpg" /></a>
      <!--<a href="https://credit.szfw.org/CX20170913036162381669.html" target="_blank" title="诚信网站"><img src="picture/footer_img3_1.jpg" /></a>-->
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
      <img src="${pageContext.request.contextPath}/picture/app_qrcode_1.jpg" alt="">
      <p>扫一扫下载APP</p>
    </div>
  </a>
  <a class="calculator" title="收益计算" href="${pageContext.request.contextPath}/index/index/calculator.html" target="_blank"></a>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/99click_1.js"></script>
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
