(function($){	//发送验证码
	
	var InterValObj, //timer变量，控制时间
		count = 10, //间隔函数，1秒执行
		curCount,//当前剩余秒数
		code = "", //验证码
		codeLength = 6,//验证码长度
		msgtxt = {
			start : '正在发送验证码',
			// beforetxt : "请在",
			beforetxt : "获取验证码(",
			// aftertxt : "秒内输入验证码",
			aftertxt : "s)",
			resendtxt : "重发验证码"
		},
		btnSendCode,//发送验证码 按钮
		btntagname;

	$.fn.sendVerifyCodeToMobile = function(obj) {
		curCount = count;
		btnSendCode = obj;
		btntagname = (btnSendCode[0].tagName).toLowerCase();
		var mobile=$("#acct_mobile").val();//用户手机
		// var dealType; //验证方式
		// var uid=$("#uid").val();//用户uid
		// if ($("#isPhone").attr("checked") == true) {
		//     dealType = "phone";
		// }
		// else {
		//     dealType = "email";
		// }

		//产生验证码
		// for (var i = 0; i < codeLength; i++) {
		//     code += parseInt(Math.random() * 9).toString();
		// }
		//产生验证码 end

		
		//向后台发送处理数据
	    $.ajax({
	        type: "post", //用POST方式传输
	        dataType: "json", //数据格式:JSON
	        url: 'js/tel.json', //目标地址
	        //data: "dealType=" + dealType +"&uid=" + uid + "&code=" + code,
	        data: {mobile:mobile},
	        error: function (XMLHttpRequest, textStatus, errorThrown) { },
	        success: function (res){
	        	//debugger;
	        	if(res.msg_code==0){
	        		//设置button效果，开始计时
				    btnSendCode.attr("disabled", "true").addClass('disabled');
				    btnSendCode.val(msgtxt.beforetxt+curCount+msgtxt.aftertxt);
				    if(btntagname =="button"){
				    	btnSendCode.html(msgtxt.beforetxt+curCount+msgtxt.aftertxt);
				    }
				    InterValObj = window.setInterval(SetRemainTime, 1000); //启动计时器，1秒执行一次
	        	}
	        	
	        }
	    });
	}
	//timer处理函数
	function SetRemainTime() {
		//debugger;
	    if (curCount == 0) {                
	        window.clearInterval(InterValObj);//停止计时器
	        btnSendCode.removeAttr("disabled");//启用按钮
	        btnSendCode.removeClass('disabled');//删除样式
	        btnSendCode.val(msgtxt.resendtxt);
	        if(btntagname =="button"){
		    	btnSendCode.html(msgtxt.resendtxt);
		    }
	        code = ""; //清除验证码。如果不清除，过时间后，输入收到的验证码依然有效    
	    }
	    else {
	        curCount--;
	        btnSendCode.val(msgtxt.beforetxt+curCount+msgtxt.aftertxt);
	        if(btntagname =="button"){
		    	btnSendCode.html(msgtxt.beforetxt+curCount+msgtxt.aftertxt);
		    }
	        
	    }
	}

	//验证 验证码
	$.fn.ckeckVerifyCode = function(codeDom,curform){
			var self = this,
				isChecked = false,
				code = codeDom.val(),
				randomCode = $('#randomCode');
			var errorHtml = '<div class="error" style="display: block; position: relative; margin-top: 5px;">'+
							'{errMsg}<span class="val_corner"></span></div>';
			
			var errorTip = codeDom.closest('li').find('.errorTip');
			var error = $(codeDom).parent().find('.error');
			 if(error.length!=0){
			 	error.remove();
			 }
    		//var olderrorTip = errorTip.html();	
				if(!code){	
        			//errorTip.html('验证码为空，请输入验证码').css('color','red');
        			var error = $(codeDom).parent().find('.error');
        			if(error.length==0){
        				$(errorHtml.replace('{errMsg}','验证码为空，请输入验证码')).insertBefore(errorTip);
        			}
    				$(codeDom).parent().find('.error').click(function(){
					 	$(this).remove();
					 });
        			
        			return false;

				}
			
				//开始验证 验证码
				var sendParams = {
					ckeckCode : code,
					randomCode : randomCode
				};
				$.ajax({
					type: "post", //用POST方式传输
			        dataType: "json", //数据格式:JSON
			        url: 'js/ckecktel.json', //目标地址
					params : sendParams,
					beforeSend: function(){
	                    
	                },
					success : function(res) {
						if(res.msg_code==-1){//验证失败
			        		
		        			//errorTip.html('验证码错误').css('color','red');
		        			//$(errorHtml.replace('{errMsg}','验证码错误')).insertBefore(errorTip);
		        			var error = $(codeDom).parent().find('.error');
		        			if(error.length==0){
		        				$(errorHtml.replace('{errMsg}','验证码错误')).insertBefore(errorTip);
		        			}
	        				$(codeDom).parent().find('.error').click(function(){
							 	$(this).remove();
							 });
		        				

		        			
		        			
		        			isChecked = false;
						    //return false;
			        	}
			        	else if(res.msg_code==0){//验证成功
			        		isChecked = true;
			        		if(curform){
			        			curform.submit();
			        		}
			        		//return true;
			        	}
						
					},
					failure : function(res) {
						return false;
					}
				});
				//开始验证 验证码 end
				//return isChecked;
		}

})(jQuery);

	

$(document).ready(function(){

	//客服问答-FAQ
	var faqListDom = $('#faqList');
	if(faqListDom){
		$('#faqList li h3').on('click',function(){
			var bt = $('.upArr',this);
			if($(this).parent().hasClass('hide')){
				$(this).parent().removeClass('hide');
			}else{
				$(this).parent().addClass('hide');
			}	
				
		});
	}
	//客服问答-FAQ end

	//进度条
$(".processBar").each(function(){
	processbar($(this));
});

//toLowerCase OR toUpperCase
$('#email').on("keyup", function(e) { 
	 this.value = this.value.toLowerCase();
	 //this.value = this.value.toUpperCase(); 
});
//toLowerCase OR toUpperCase end


//hiddenTable

$('.hiddenTable').on('mouseover',function(){
	$(this).closest('td').find('.floatTable').show();
});
$('.hiddenTable').on('mouseout',function(){
	$(this).closest('td').find('.floatTable').hide();
});




/* for ie6 */ 
var isIE = !-[1,],  //
    isIE6 = isIE && /msie 6/.test( navigator.userAgent.toLowerCase() ); // 
    if(isIE6){
      // alert('您的浏览器版本太低，<a href="http://www.skycn.com/soft/appid/880.html">点此升级浏览器</a>');
         //查看合同
        var popHtml = '<div style="background:#fff;width:400px;height:200px;padding:50px; text-align:center; vertical-align: middle; font-size:20px;">您的浏览器版本太低，<a href="http://www.skycn.com/soft/appid/880.html">点此升级浏览器</a></div>';
        
            var applyaddDialog = JYD.dialog({
              title :"",//合同
            initWidth :600,
            height:250,
            content : popHtml,
            buttonOk: '关闭',
            buttonCancel: '',
            eventOk: function(){
              window.location = "http://www.skycn.com/soft/appid/880.html";
            }
          });   
          $("#JYD-ui-modal .JYD-ui-content",applyaddDialog).css({"border-spacing": "0px"});
   
    }
    /* for ie6 end */ 


//toLowerCase OR toUpperCase
	$('#email,#acct_name,input[name="email"]').on("keyup", function(e) { 
		 this.value = this.value.toLowerCase();
		 //this.value = this.value.toUpperCase(); 
	});
	//toLowerCase OR toUpperCase end






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

//tab 选项卡
function tabs(targetBtn,showBox,eventTrigger,curClass){
	var tBtn = $(targetBtn).children(),
	    tShow = $(targetBtn).parent().find(showBox);
	tBtn.bind(eventTrigger,function(){
		var tabIndex = $(this).index();
		$(this).addClass(curClass).siblings().removeClass(curClass);
		tShow.hide().eq(tabIndex).show();
	});
}

function selectTag(showContent,selfObj,tagId,showList){
     var tag = document.getElementById(tagId).getElementsByTagName("a");
     var taglength = tag.length;
     for(i=0; i<taglength; i++){
      tag[i].parentNode.className = "";
     }
     selfObj.parentNode.className = "active";

     for(i=0; j=document.getElementById(showList+i); i++){
      j.style.display = "none";
     }
     document.getElementById(showContent).style.display = "block";

    	//new add 
  //   	var pntul,pntulleft;
		// if(selfObj.parentNode.parentNode){
		// 	pntul = selfObj.parentNode.parentNode;
		// 	pntulleft = pntul.style.left;
		// 	selfObj.href=selfObj.href + "&left="+pntulleft;
			
		// 	for(i=0; i<taglength; i++){
		//       if(tag[i].parentNode.className == "active"){
		//       	selfObj.href=selfObj.href + "&actnd="+i;
		//       }
		//      }
		// }
		//new add end

    }

 //列表页tab滚动
 $(function(){
        var proTab = $("#projectTab");
        var proWidth = $(".protabDiv").width();
        var tabLength = proTab.find("li").length;
        var tabWidth = proTab.find("li").width() * tabLength;
        var moveWidth = tabWidth - proWidth;
        proTab.width(tabWidth);
        $("#tabNext").hover(function(){
            $(this).hide();
            proTab.animate({left:-moveWidth + "px"},500,function(){
                $("#tabPrev").show();
            });
        })
        $("#tabPrev").hover(function(){
            $(this).hide();
            proTab.animate({left:"0"},500,function(){
                $("#tabNext").show();
            });
        })
    })   