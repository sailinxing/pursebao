// JavaScript Document
(function($){	//tab标签切换
	$.fn.tabs = function(targetBtn,eventTrigger,curClass,showBox,funMore){		
		return this.each(function(){
			var tBtn = $(this).find(targetBtn).children(),
			   tShow = $(this).find(showBox),
			   index = $(this).find("."+curClass).index();
			   tShow.eq(index).css('display','block');
			tBtn.bind(eventTrigger,function(){
				var tabIndex = $(this).index();
				tBtn.eq(tabIndex).siblings().removeClass(curClass).end().addClass(curClass);
				tShow.eq(tabIndex).siblings().hide().end().show();
				funMore ();
			});
		});
	}
})(jQuery);

(function($){	//输入框计数
	$.fn.txtCount = function(options){
		var defaultVal = {
			txtBox :$('.txtNum'),   //对照结构重置
			txtColor :'#F63',
			normalTxt :'还能输入',			
			overTxt :'已超出'
		};
		var newVal = $.extend(defaultVal,options);
		return this.each(function(){
			var targetObj = $(this),
			    resultNum = newVal.txtBox.children('span').text(),	
			  resultColor = newVal.txtBox.children('span').css('color');	
			targetObj.keyup(function(){
				var targetVal = targetObj.val(),				
				          str = (targetVal.replace(/\w/g,"")).length,//汉字
				    targetNum = Math.round((targetVal.length - str)/2 + str);
				if(resultNum >= targetNum){
					newVal.txtBox.html(newVal.txtBox.html().replace(newVal.overTxt,newVal.normalTxt));
					newVal.txtBox.children('span').text(resultNum-targetNum);	
					newVal.txtBox.children('span').css('color',resultColor);				
				}else{
					newVal.txtBox.html(newVal.txtBox.html().replace(newVal.normalTxt,newVal.overTxt));
					newVal.txtBox.children('span').text(targetNum-resultNum);
					newVal.txtBox.children('span').css('color', newVal.txtColor);
				}
			});	
		});
	}
})(jQuery);


$(function(){
	//出借方借款方头部提示
	var usertipP = $(".userTip").parent("b");
	$(".userTip").css({'left':usertipP.width()+5});

		//进度条
$(".processBar").each(function(){
	processbar($(this));
});
function processbar(curdom){
	var isAnimate = false;//默认无动画
	var curWidthData = curdom.attr("data-width"),
		curWidth = curWidthData && (parseFloat(curWidthData)).toFixed(1);
	// curdom.corner();
	// $(".finish",curdom).corner();
	if(!isAnimate){
		$(".finish",curdom).css("width", curWidth + "%");
		$(".processNum",curdom.parent()).html(parseFloat(curWidth) + "%");
		return;
	}
	var i = 0;
	var timer = setInterval(function(){
		$(".finish",curdom).css("width", i + "%");
		$(".processNum",curdom.parent()).html(i.toFixed(1) + "%");
		//i++;
		i=i+0.1;
		if (i >= curWidth) {
			clearInterval(timer);
			$(".processNum",curdom.parent()).html(curWidth + "%");					
		}
	}, 5);
}
//进度条 end
	
	
	//sidebar  footer居底
	function autoHeight (addHeight){		
		$('.sidebar').height('auto');
			
		var rightHeight = $('.rightCon').height(),
		     leftHeight = $('.sidebar').height(),
			 mainHeight = $('.mainContainer').height(),
			  addHeight = $(window).height()-$('body').height(),
		  computeHeight = Math.max(leftHeight,rightHeight);
		  
		addHeight >= 0 ? $('.sidebar').height(computeHeight+addHeight-2) : $('.sidebar').height(computeHeight-2);		
	}
	autoHeight ();
	
	//sidebar  点击展开收起
	$('.sidebar dt').click(function(){
		//$(this).parent('dl').toggleClass('hideAll');
		//$(this).find('em').toggleClass('closeIcon');
		////if($(this).parent('dl').hasClass('hideAll')){
		//	$(this).find('b').removeClass('up').addClass('down');
		//}else{
		//	$(this).find('b').removeClass('down').addClass('up');
		//}
		//
		//autoHeight ();
	});
	
	// 个人中心 标签切换	
	//$('.boxTab')&&$('.boxTab').tabs($('.tabTitle'),'click','cur',$('.tabCon'),autoHeight);
	autoHeight ();

	
	
	
	
	// 数字转成大写 function
	function upDigit(n){    
		var fraction = ['角', '分'];  
		var digit = ['零', '壹', '贰', '叁', '肆', '伍', '陆', '柒', '捌', '玖'];  
		var unit = [ ['元', '万', '亿'], ['', '拾', '佰', '仟']  ];  
		var head = n < 0? '欠': '';  
		n = Math.abs(n); 
		var s = '';  
		for (var i = 0; i < fraction.length; i++) {        
			s += (digit[Math.floor(n * 10 * Math.pow(10, i)) % 10] + fraction[i]).replace(/零./, '');  
		}  
		s = s || '整';  
		n = Math.floor(n);  
		for (var i = 0; i < unit[0].length && n > 0; i++){  
			var p = '';  
			for (var j = 0; j < unit[1].length && n > 0; j++)   
			{  
				p = digit[n % 10] + unit[1][j] + p;  
				n = Math.floor(n / 10);  
			}  
			s = p.replace(/(零.)*零$/, '').replace(/^$/, '零')  + unit[0][i] + s;  
		}  
		return head + s.replace(/(零.)*零元/, '元').replace(/(零.)+/g, '零').replace(/^整$/, '零元整');  
	} 	
	function toChinese (){
		var txtChinese ;
		$('.toChinese').keyup(function(){
			var re = /^([1-9][0-9]*|[1-9][0-9]*\.[0-9]{1,2}|0\.[0-9]{1,2})$/,	//待定
		  checkVal = re.test($(this).val());	
			txtChinese = upDigit($(this).val());			
			if (checkVal) {
				$('.txtChinese').text(txtChinese);
			}else{
				$('.txtChinese').text('　');
			}
		});		
	}
	toChinese ();
	
	//个人卡充值 选中
	for (var i = 0, len = $('.bankPersonal li').length; i < len; i++) {
		if ($('.bankPersonal li').eq(i).find('input').attr('checked') == 'checked') {
			$('.bankPersonal li').eq(i).addClass('cur');
		}
	}
	$('.bankPersonal li').click(function(){
		$('.bankPersonal li').removeClass('cur');
		$(this).addClass('cur');
	});
	
	//个人中心 信息更改
	$('#changeCompany').on('click',function(){	//企业认证信息修改
		var btnTxt = $(this).text(),
	   description = $(this).parent().next('.tableMsg').find('.showArea').find('td').eq(1).text().replace(/\s/g,'');
	   		
		if (btnTxt == '修改企业简介>>') {
			$(this).html('保存<span class="saveIcon">>></span>');
			$(this).parent().next('.tableMsg').find('.changeArea').find('.textareaMsg').val(description);
			$(this).parent().next('.tableMsg').find('.changeArea').show().end().find('.showArea').hide();
			return false;
		} else {
			var txtNew = $(this).parent().next('.tableMsg').find('.changeArea').find('.textareaMsg').val().replace(/\s/g,'')
			if ( txtNew == '' || txtNew == description) {
				$(this).parent().next('.tableMsg').find('.showArea').show().end().find('.changeArea').hide();
				$(this).html('修改企业简介>>');
			}else{
				$(this).parent().next('.tableMsg').find('.showArea').find('td').eq(1).html('<p class="first">'+txtNew+'</p>');
				$(this).parent().next('.tableMsg').find('.changeArea').hide().end().find('.showArea').show();
				$(this).html('修改企业简介>>');
				alert('txtNew内为新输入内容:'+txtNew)
			}
			return false;
		}	
	});
	
	if ($('#showArea').length != 0) {
		function showMsg(){
			for (var i = 0, len = $('#showArea').find('tr').length; i < len; i++) {
				if ($('#showArea').find('tr').eq(i).children('td').eq(1).text() == '') {
					$('#showArea').find('tr').eq(i).hide();
				} 
				$('#showArea').find('tr').children('td').find('span').hide();
			}
			autoHeight();
		}
		showMsg();
		
		$('.required').bind('blur',function(){
			var requiredVal = $(this).val().replace(/\s/g,'');
			requiredVal == '' ? ($(this).siblings('.errorMsg').length == '0' ? $(this).after('<span class="errorMsg">此处不能为空</span>') : '') : $(this).siblings('.errorMsg').remove();
		});
		$('.mobilePhone').bind('blur',function(){
			var reg = /^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/,
			 newVal = $(this).val().replace(/\s/g,''),
			 telVal = reg.test($(this).val());
			if ($(this).hasClass('required')) {
				newVal == '' ?	($(this).siblings('.errorMsg').length == '0' ? $(this).after('<span class="errorMsg">此处不能为空</span>') : $('.errorMsg').text('此处不能为空')) : (!telVal ? ($(this).siblings('.errorMsg').length == '0' ? $(this).after('<span class="errorMsg">请输入有效的手机号码</span>') : '') : $(this).siblings('.errorMsg').remove());		
			} else {
			!telVal ? ($(this).siblings('.errorMsg').length == '0' ? $(this).after('<span class="errorMsg">请输入有效的手机号码</span>') : '') : $(this).siblings('.errorMsg').remove();			
			}
		});
		$('.tel').bind('blur',function(){
			var reg = /^((0\d{2,3})-)(\d{7,8})(-(\d{3,}))?$/,
			 telVal = reg.test($(this).val());
			!telVal ? ($(this).siblings('.errorMsg').length == '0' ? $(this).after('<span class="errorMsg">请输入有效的电话号码</span>') : '') : $(this).siblings('.errorMsg').remove();
		});	
		
		$('#changePerson').on('click',function(){	//企业认证信息修改	
			var btnTxt = $(this).text(),
			  showArea = $(this).parent().siblings().find('.showArea'),
			changeArea = $(this).parent().siblings().find('.changeArea'),
			     infor = [];
			for (var i = 0,len = $('#showArea').find('tr').length; i < len; i++) {	//获取默认信息
				var value = $('#showArea').find('tr').eq(i).children('td').eq(1).text();
				infor.push(value);
			}				
			 			 
			if (btnTxt == '修改>>') {
				$(this).html('保存<span class="saveIcon">>></span>');
				for (var i = 0, len = $('#showArea').find('tr').length; i < len; i++) {
					$('#showArea').find('tr').eq(i).show();
					$('#showArea').find('tr').children('td').find('span').show();
					changeArea.eq(i).find('input').val(showArea.eq(i).text());
				}
				autoHeight();
				changeArea.show();
				showArea.hide();
				return false;
			} else {				
				if ($('.errorMsg').length == '0') {
					$(this).html('修改>>');
					for (var i = 0, len = $('#showArea').find('tr').length; i < len; i++) {					
						showArea.eq(i).text(changeArea.eq(i).find('input').val());
					}
					showMsg();
					changeArea.hide();
					showArea.show();
					//获取新信息
					var arrInfor = [];
					for (var i = 0,len = $('#showArea').find('tr').length; i < len; i++) {
						var value = $('#showArea').find('tr').eq(i).children('td').eq(1).text();
						arrInfor.push(value);
					}
					infor.toString() != arrInfor.toString() ? alert('请保存新数据：'+arrInfor) :''; 
				}
				return false;
			}			
		});
	}

	//选择其他网上银行 展开
	var otherBankShowLi = $('#otherBankShow').closest('li'),
		otherBankShowPNT = $('#otherBankShow').closest('ul.bankPersonal');
	otherBankShowPNT.find('li:gt(5)').hide();
	otherBankShowLi.show();
	$('#otherBankShow').on('click',function(){
		otherBankShowPNT.find('li:gt(5)').show();
		otherBankShowLi.hide();
	});
	//选择其他网上银行 展开 end




	//hiddenTable

	$('.hiddenTable').on('mouseover',function(){
		$(this).closest('td').find('.floatTable').show();
	});
	$('.hiddenTable').on('mouseout',function(){
		$(this).closest('td').find('.floatTable').hide();
	});
	//hiddenTable end


	//userIco tip
	$('.userInfor .tishi').hide();
	$('.userIco').on('mouseover',function(){
		$(this).closest('li').find('.tishi').show();
	});
	$('.userIco').on('mouseout',function(){
		$(this).closest('li').find('.tishi').hide();
	});

	$('.userIphone').on('mouseover',function(){
		$(this).closest('li').find('.tishi').show();
	});
	$('.userIphone').on('mouseout',function(){
		$(this).closest('li').find('.tishi').hide();
	});
	
	$('.userEmai').on('mouseover',function(){
		$(this).closest('li').find('.tishi').show();
	});
	$('.userEmai').on('mouseout',function(){
		$(this).closest('li').find('.tishi').hide();
	});
	
	$('.userCard').on('mouseover',function(){
		$(this).closest('li').find('.tishi').show();
	});
	$('.userCard').on('mouseout',function(){
		$(this).closest('li').find('.tishi').hide();
	});
	
	///////////////////
	$('.userInfor .tishi3').hide();
	$('.userIco').on('mouseover',function(){
		$(this).closest('li').find('.tishi3').show();
	});
	$('.userIco').on('mouseout',function(){
		$(this).closest('li').find('.tishi3').hide();
	});

	$('.userIphone').on('mouseover',function(){
		$(this).closest('li').find('.tishi3').show();
	});
	$('.userIphone').on('mouseout',function(){
		$(this).closest('li').find('.tishi3').hide();
	});
	
	$('.userEmai').on('mouseover',function(){
		$(this).closest('li').find('.tishi3').show();
	});
	$('.userEmai').on('mouseout',function(){
		$(this).closest('li').find('.tishi3').hide();
	});
	
	$('.userCard').on('mouseover',function(){
		$(this).closest('li').find('.tishi3').show();
	});
	$('.userCard').on('mouseout',function(){
		$(this).closest('li').find('.tishi3').hide();
	});
	//userIco tip end

	//tishi2
	$('.account ul li .tishi2').hide();
	$('.account ul li span a').on('mouseover',function(){
		$(this).closest('span').find('.tishi2').show();
	});
	$('.account ul li span a').on('mouseout',function(){
		$(this).closest('span').find('.tishi2').hide();
	});

	//tishi2

	//资产记录
	$('.sum .tishi2').hide();
	$('.sum sup').on('mouseover',function(){
		$(this).closest('li').find('.tishi2').show();
	});
	$('.sum sup').on('mouseout',function(){
		$(this).closest('li').find('.tishi2').hide();
	});


//add or del placeholder
	$('form').each(function(){

		var placeholderint = $(this).find("input[placeholder],textarea[placeholder]"),
			len = placeholderint.length;
			
			$("input[type='text']").not('.tmpinput').each(function(ind,el){
				
				var pwdVal  = $(this).attr('placeholder');
				if(pwdVal && $(this).val() != ""){
					if ($(this).val().indexOf(pwdVal)==-1) {
						$(this).removeClass("placeholder").css("color","#000");
					}
				}else{
					if ($(this).val() != ""){
						$(this).removeClass("placeholder").css("color","#000");
					}
					
				}
				
			});

			if(len<=0){
				$("input[type='text']").on("focus", function(e) {
	                if ($(this).val() == "") {
				        $(this).addClass('placeholder').css("color","#C4C4C4");
				    }else{
				    	$(this).removeClass("placeholder").css("color","#000");
				    }
	            });
				$("input[type='text']").on("blur", function(e) {
						var pwdVal  = $(this).attr('placeholder');
				        $(this).removeClass("placeholder");
					    if ($(this).val() == ""||$(this).val().indexOf(pwdVal)!=-1) {
					        $(this).addClass('placeholder').css("color","#C4C4C4");
					    }else{
					    	$(this).removeClass("placeholder").css("color","#000");
					    }
					});
				$("input[type='text']").on("keyup", function(e) {
				        $(this).removeClass("placeholder");
					    if ($(this).val() == "") {
					        $(this).addClass('placeholder').css("color","#C4C4C4");
					    }else{
					    	$(this).removeClass("placeholder").css("color","#000");
					    }
					});
			}else{

				$(this).find("input[placeholder],textarea[placeholder]").on("focus", function(e) {
	                if ($(this).val() == "") {
				        $(this).addClass('placeholder').css("color","#C4C4C4");
				    }else{
				    	$(this).removeClass("placeholder").css("color","#000");
				    }
	            });
				$(this).find("input[placeholder],textarea[placeholder]").on("blur", function(e) {
			        var pwdVal  = $(this).attr('placeholder');
			        $(this).removeClass("placeholder").css("color","#000");
				    if ($(this).val() == ""||$(this).val().indexOf(pwdVal)!=-1) {
				        $(this).addClass('placeholder').css("color","#C4C4C4");
				    }else{
				    	$(this).removeClass("placeholder").css("color","#000");
				    }
				});
				$(this).find("input[placeholder],textarea[placeholder]").on("keyup", function(e) {
			        $(this).removeClass("placeholder");
				    if ($(this).val() == "") {
				        $(this).addClass('placeholder').css("color","#C4C4C4");
				    }else{
				    	$(this).removeClass("placeholder").css("color","#000");
				    }
				});
			}
			
		});
		//add or del placeholder end


		//toLowerCase OR toUpperCase
		$('#email,input[name="email"]').on("keyup", function(e) { 
			 this.value = this.value.toLowerCase();
			 //this.value = this.value.toUpperCase(); 
		});
		//toLowerCase OR toUpperCase end
		
	});

//获取验证码
function getCode(time){
	if(time == 'undefined')
		time = 60;
	$("#randomCode").show();
	$("#sendMoblie").hide();
	$("#randomCode").html(time + 's');
	time--;
	if(time >= 0){
		setTimeout(function(){
			getCode(time);
		},100);
	}else{
		$("#randomCode").hide();
		$("#sendMoblie").css("display","inline-block").html('重新发送');	
	}
}
function sentCode(){
	var phoneNum = $("#acct_mobile").val();
	var ab = /^1[0-9]{10}$/;
	if(ab.test(phoneNum)){
		getCode(60);
		$("#acct_phNum").show().html("（短信验证码已发到您的手机，请注意查收）").css("color","#fc8800");
	}else{
		console.log(1);
		$("#acct_phNum").show().html("请输入正确的手机号！").css("color","red");
	}
}
$(function(){
	$("#sendMoblie").on("click",function(){
		sentCode();
	})
})


//处理左侧菜单选中问题
function curselA(str){
    var arr = $("#submenu-list a");
    if(arr){
        var url = window.location.href;
        $.each(arr,function(i,n){
            //debugger;
            var ntxt = $(n).html();
            if(ntxt.indexOf(str)>-1){
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
//curselA("充值");
//处理左侧菜单选中问题 end
