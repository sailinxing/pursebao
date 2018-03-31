
$(document).ready(function(){

//安保金余额
//bilmoney();
//安保金余额 end

//banner4扫描下载手机APP
if($("#popWrapid")){
	$("#popwxWrapA") && $("#popwxWrapA").click(function(){
		$("#popWrapid").show();
	});
	$("#popWrapid .popwx-close").click(function(){
		$("#popWrapid").hide();
	});
}
//banner4扫描下载手机APP end

function AutoLineScroll(obj){
	$(obj).find("ul:first").animate({
	marginTop:"-18px"
	},1000,function(){
	$(this).css({marginTop:"0px"}).find("li:first").appendTo(this);
	});
}
setInterval(function(){
	AutoLineScroll('#lineScrollDiv');
},8000);
//ajax查询轮播最新订单
function test() {
	$.ajax({
		type : "post",
		dataType : 'json',
		url : "/index_queryLatestOrder.html",
		data : {},
		success : function(data) {
			if(data == null ||  data[0].result == null)return false;
			//var json = JSON.parse(data[0].result);
                         var json = jQuery.parseJSON(data[0].result);
			var $parent = $("#tipScrollDiv");
			$parent.find("li").remove();
			//$parent.find("li").empty();
			for ( var i = 0; i < json.length; i++) {
				if(json[i].isOrder == 1){
					if(json[i].IsNewOnly == 3){
						if(json[i].projectType == 7 || json[i].projectType == 8) {
							$parent.append("<li><span>"+json[i].time+"前</span><a target='_blank' href='/VipArea_detail.html?id="+json[i].id+"'>"+json[i].userName +"出借了￥"+json[i].money+": <em style='color:#297bc7'>["+json[i].loanPlanName+"-"+json[i].code+"]</em></a></li>");
						}else{
							$parent.append("<li><span>"+json[i].time+"前</span><a target='_blank' href='/VipArea_detail.html?id="+json[i].id+"'>"+json[i].userName +"出借了￥"+json[i].money+": <em style='color:#297bc7'>["+json[i].loanPlanName+"-"+json[i].code+"]"+json[i].loanUse+"</em></a></li>");
						}						
					}else{
						if(json[i].projectType == 7 || json[i].projectType == 8) {
							$parent.append("<li><span>"+json[i].time+"前</span><a target='_blank' href='/invest_detail.html?id="+json[i].id+"'>"+json[i].userName +"出借了￥"+json[i].money+": <em style='color:#297bc7'>["+json[i].loanPlanName+"-"+json[i].code+"]</em></a></li>");
						}else {
							$parent.append("<li><span>"+json[i].time+"前</span><a target='_blank' href='/invest_detail.html?id="+json[i].id+"'>"+json[i].userName +"出借了￥"+json[i].money+": <em style='color:#297bc7'>["+json[i].loanPlanName+"-"+json[i].code+"]"+json[i].loanUse+"</em></a></li>");
						}						
					}
				}else{
					//debugger;
					if(json[i].projectType == 7 || json[i].projectType == 8) {
						$parent.append("<li><span>"+json[i].time+"前</span><a href='javascript:void(0);' data-type='1' onclick='alertDialog(\"已满标\",\""+json[i].projectType+"\",\""+json[i].id+"\",\""+json[i].time+"\");'>"+json[i].userName +"出借了￥"+json[i].money+": <em style='color:#297bc7'>["+json[i].loanPlanName+"-"+json[i].code+"]</em></a></li>");
					}else {
						$parent.append("<li><span>"+json[i].time+"前</span><a href='javascript:void(0);' data-type='1' onclick='alertDialog(\"已满标\",\""+json[i].projectType+"\",\""+json[i].id+"\",\""+json[i].time+"\");'>"+json[i].userName +"出借了￥"+json[i].money+": <em style='color:#297bc7'>["+json[i].loanPlanName+"-"+json[i].code+"]"+json[i].loanUse+"</em></a></li>");
					}					
				}
			}
            $(".txtScroll2").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"top",autoPlay:true});
		}
	});
}

    function infoListBy() {
        $.ajax({
            type : "post",
            dataType : 'json',
            url : "/index_queryLatestOrder.html",
            data : {},
            success : function(data) {
                if(data == null ||  data[0].result == null)return false;
                //var json = JSON.parse(data[0].result);
                var json = jQuery.parseJSON(data[0].result);
                var $parent = $("#tipScrollDiv");
                $parent.find("li").remove();
                //$parent.find("li").empty();
                for ( var i = 0; i < json.length; i++) {
                    if(json[i].isOrder == 1){
                        if(json[i].IsNewOnly == 3){
                            if(json[i].projectType == 7 || json[i].projectType == 8) {
                                $parent.append("<li><span>"+json[i].time+"前</span><a target='_blank' href='/VipArea_detail.html?id="+json[i].id+"'>"+json[i].userName +"出借了￥"+json[i].money+": <em style='color:#297bc7'>["+json[i].loanPlanName+"-"+json[i].code+"]</em></a></li>");
                            }else{
                                $parent.append("<li><span>"+json[i].time+"前</span><a target='_blank' href='/VipArea_detail.html?id="+json[i].id+"'>"+json[i].userName +"出借了￥"+json[i].money+": <em style='color:#297bc7'>["+json[i].loanPlanName+"-"+json[i].code+"]"+json[i].loanUse+"</em></a></li>");
                            }
                        }else{
                            if(json[i].projectType == 7 || json[i].projectType == 8) {
                                $parent.append("<li><span>"+json[i].time+"前</span><a target='_blank' href='/invest_detail.html?id="+json[i].id+"'>"+json[i].userName +"出借了￥"+json[i].money+": <em style='color:#297bc7'>["+json[i].loanPlanName+"-"+json[i].code+"]</em></a></li>");
                            }else {
                                $parent.append("<li><span>"+json[i].time+"前</span><a target='_blank' href='/invest_detail.html?id="+json[i].id+"'> "+json[i].userName +"出借了￥"+json[i].money+": <em style='color:#297bc7'>["+json[i].loanPlanName+"-"+json[i].code+"]"+json[i].loanUse+"</em></a></li>");
                            }
                        }
                    }else{
                        //debugger;
                        if(json[i].projectType == 7 || json[i].projectType == 8) {
                            $parent.append("<li><span>"+json[i].time+"前</span><a href='javascript:void(0);' data-type='1' onclick='alertDialog(\"已满标\",\""+json[i].projectType+"\",\""+json[i].id+"\",\""+json[i].time+"\");'>"+json[i].userName +"出借了￥"+json[i].money+": <em style='color:#297bc7'>["+json[i].loanPlanName+"-"+json[i].code+"]</em></a></li>");
                        }else {
                            $parent.append("<li><span>"+json[i].time+"前</span><a href='javascript:void(0);' data-type='1' onclick='alertDialog(\"已满标\",\""+json[i].projectType+"\",\""+json[i].id+"\",\""+json[i].time+"\");'>"+json[i].userName +"出借了￥"+json[i].money+": <em style='color:#297bc7'>["+json[i].loanPlanName+"-"+json[i].code+"]"+json[i].loanUse+"</em></a></li>");
                        }
                    }
                }
            }
        });
    }

test();
    setInterval(function(){
        infoListBy();
    }, 60000);

//ajax查询轮播最新订单 end

//ajax更新静态页面最新数据
$(function(){
	$.post('/index_reIndex.html',function(data){
		var message = data[0].message;
		if (message == 1) {
			//更新进度条
			var process = data[0].process;
			$("#tjprocess").attr("data-width",process);
			$(".processNum").html(process);
			$(".processBar").each(function(){
				processbar($(this));
			});
			//更新剩余时间
			var toLastDaysString = data[0].toLastDaysString
			$(".remainTime").html("剩余"+toLastDaysString);
			//已投
			var investedAmount = data[0].investedAmount;
			$("#yitou").html("已投" +investedAmount+ "元");
			//可投
			var newVal = data[0].newVal;
			$("#ketou").html("可投" +newVal+ "元");
			//起投
			var singleLimit = data[0].singleLimit;
			$("#qitou").html("起投" +singleLimit+ "元");
		}
		if (message == 0) {
			$("#titlebar").remove();
			$("#toplevel").remove();
		}
	},'json');

	$.ajax({
		type : "post",
		dataType : 'json',
		url : "/index_queryIndexAjax.html",
		data : {},
		success : function(data) {
            var json = jQuery.parseJSON(data[0].result);
			//var processAjax = $("#processAjax");
			//var statusAjax = $('#statusAjax');
            if(json!=null){
			for ( var i = 0; i < json.length; i++) {
				$('#statusAjax'+json[i].id).find("a").remove();
				$('#statusAjax'+json[i].id).find("span").remove();
				if(json[i].isOrder=='1'){
					$('#statusAjax'+json[i].id).append('<a class="roundPayBtn" href="/invest_detail.html?id='+json[i].id+'" target="_blank"><span>出借</span></a>');
				}else if(json[i].status=='20'){
					$('#statusAjax'+json[i].id).append('<a class="roundPayBtn greyBtn" href="/invest_detail.html?id='+json[i].id+'" target="_blank"><span>已结束</span></a>');
				}else{
					$('#statusAjax'+json[i].id).append('<a class="roundPayBtn greyBtn" href="/invest_detail.html?id='+json[i].id+'" target="_blank"><span>还款中</span></a>');
				}
				$("#processAjax"+json[i].id).attr('data-width',json[i].process+'%');
				$(".processBar").each(function(){
					processbar($(this));
				});
				
			}
            }
		}
	});
});


//new在线客服
/*
	if($(window).width()<1000){
		$('.newsrvWrap').hide();
	}else{
		if($(document).scrollTop()>260){
			$('.newsrvWrap').show();
		}
	}
	$(window).resize(function(){
		if($(window).width()<1000){
			$('.newsrvWrap').hide();
		}else{
			if($(document).scrollTop()>260){
				$('.newsrvWrap').show();
			}
		}
	});
	$('.newsrvPad').click(function(){

		if($(this).hasClass("toservicepage")){//toservicepage 调转到出借指南页
			window.location.href = '/static/about_invest_step.html';
			return false;
		}
		
		var srvB = $(this);
		if(srvB.hasClass('iSexp')){
			srvB.removeClass('iSexp');
			$('.newsrvBd').hide();
		}else{
			srvB.addClass('iSexp');
			$('.newsrvBd').show();
		}
		return false;
	});

	$(window).scroll(function(){
		var btnTop = $(document).scrollTop()+10;
		if($(document).scrollTop()>260){
			$('.newsrvWrap').css({
				'position':'fixed',
				'top':'10px'	
			});	
			$('.newsrvWrap').show();		
			var isIE = !-[1,],	// 判断IE6/7/8 不能判断IE9
			isIE6 = isIE && /msie 6/.test( navigator.userAgent.toLowerCase() ); // 判断IE6								
			if(isIE6){
				$('html').css('background','url(about:blank)')//IE6防抖动
				$('.newsrvWrap').css({'top':btnTop,'position':'absolute'})                 //IE6固定
			}	
		}else{
			$('.newsrvWrap').css({
				'position':'absolute',
				'top':'260px'
			});
		}
	});
*/
//new在线客服 end

//qrcodeWrap 浮层扫描二维码 
// $(window).resize(function(){
// 		if($(window).height()<481){
// 			$('.qrcodeWrap').css({
// 				'position':'fixed',
// 				'top':'auto',
// 				'bottom':'5px'
// 			});
// 		}else{
// 			$('.qrcodeWrap').css({
// 				'position':'fixed',
// 				'top':'320px',
// 				'bottom':'auto'
// 			});
// 		}
// 	});
//qrcodeWrap 浮层扫描二维码 end

});



function bilmoney(){//安保金余额
	
	var bilmoneyWrap = $('#bilmoneyWrapid'),
		bilmoney = bilmoneyWrap&&bilmoneyWrap.attr('data-money')||100000000,
		bilmoneyArr = bilmoney? bilmoney.toString().split(''):[],
		dldom = $('<dl class="bilmoney"><dt style="display:none;"></dt></dl>');
		if(bilmoneyArr.length==9){
			for(var i=0;i<bilmoneyArr.length;i++){
				dldom.append('<dd class="bilLi n'+ bilmoneyArr[i] +'"></dd>');
			}
			bilmoneyWrap.empty().append(dldom);
		}else{
			bilmoneyWrap.empty().html('亿元安保金不能大于或小于9位数');//100000000
		}

}