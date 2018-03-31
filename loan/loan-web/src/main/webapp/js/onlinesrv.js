
$(document).ready(function(){

//new在线客服
	$('.newsrvWrap').css({
				'position':'fixed',
				'top':'10px'	
			}).show();//new add 要求页面加载时就显示
	if($(window).width()<1000){
		$('.newsrvWrap').hide();
	}else{
		if($(document).scrollTop()>0){
			$('.newsrvWrap').show();
		}
	}
	$(window).resize(function(){
		if($(window).width()<1000){
			$('.newsrvWrap').hide();
		}else{
			if($(document).scrollTop()>0){
				$('.newsrvWrap').show();
			}
		}
	});

	//加hover效果
	$('.newsrvPad').hover(function () {  
                $(this).addClass("hover");  
            }, //mouseenter  
            function () {  
                 $(this).removeClass("hover");  
            }
        );//mouseleave     
	//加hover效果 end

	//new add ryq 0618

	$('.newsrvPad').click(function(){
		
		$('.newsrvWrap .newsrv-con ul').wrap("<a href='http://wpa.b.qq.com/cgi/wpa.php?ln=1&key=XzkzODAwNTc0MV8yODU4MDNfNDAwODU4OTg4Ml8yXw' target='_blank' ></a>");
		//debugger;
		// if($(this).hasClass("toservicepage")){//toservicepage 调转到出借指南页
		// 	window.location.href = '/static/about_invest_step.html?from=srv';
		// 	return;
		// }
		
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
		if($(document).scrollTop()>0){
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
				'top':'10px'
			});
		}
	});
//new在线客服 end

//BizQQWPA.addCustom
// BizQQWPA.addCustom({
// 		aty : '1',
// 		a : '1001',
// 		nameAccount : 4008589882,
// 		selector : 'BizQQWPA1'
// 	});
// 	BizQQWPA.addCustom({
// 		aty : '1',
// 		a : '1002',
// 		nameAccount : 4008589882,
// 		selector : 'BizQQWPA2'
// 	});
// 	BizQQWPA.addCustom({
// 		aty : '1',
// 		a : '1003',
// 		nameAccount : 4008589882,
// 		selector : 'BizQQWPA3'
// 	});

//BizQQWPA.addCustom end

});

