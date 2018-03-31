jyd = function() {
}
var JYD = new jyd();
var isIE = !-[1,],	// 判断IE6/7/8 不能判断IE9
	isIE6 = isIE && /msie 6/.test( navigator.userAgent.toLowerCase() ); // 判断IE6
    isIE7 = isIE && /msie 7/.test( navigator.userAgent.toLowerCase() ); // 判断IE7  new add

//判断是否是搜狗浏览器
function navTest(){
    return navigator.userAgent.toLowerCase().indexOf('se 2.x')>-1 ? true : false
}
/**
 * dialog
 */
function reinitIframe(){
   
    var iframe = document.getElementById("JYD-ui-model-iframe");
    try{
        var bHeight = iframe.contentWindow.document.body.scrollHeight;
        var dHeight = iframe.contentWindow.document.documentElement.scrollHeight;
        var height = Math.max(bHeight, dHeight);
        iframe.height =  height;
        
        // if(isIE6 || isIE7){//new add
        //     iframe.height =  500;
        //     //var qz_tbdom =iframe.contentWindow.document.getElementById("qz_tb");
        //     //qz_tbdom.style.position = "static";// 同时把rel_box的relative;改为static
        // }
    }catch (ex){}
}

$.extend(JYD, {
    modelSettings : {
        drag:true,
		fixed:true,
        initWidth: 600,
        marginTop: 100,
		marginLeft: 0,
        container: '努力加载中...',
        allowClickOverlayToCancel: false,
        overlayOpacity: 0.3,
		thOverlayOpacity: 0.5,
        eventClose: function(){},
        showButtonDelete: true
    },
    iframeSettings : {
		fixed:true,
        initWidth: 780,
        initHeight:'',
		marginLeft: 0,
        src: '',
        width : '100%',
        height : '100%',
        overlayOpacity: 0,
		thOverlayOpacity: 0.5
    },
    dialogSettings : {
        initWidth: 330,
        initHeight:'',
        title : null,
        content : null,
        level : false,
        buttonOk: '确定',
        buttonCancel: '取消',
        buttonOkHref: '###',
		buttonCancelHref: '###',
        eventOk: function(){},
        eventCancel: function(){},
        dialogAfter: function(){},//ryq
        isMobile:true,//ryq
		showButton:true
    },
    modal: function(settings) {
        var settings = $.extend({}, JYD.modelSettings, settings);
        if ($('#JYD-ui-overlay').length != 0) {
            JYD.modalClose();
        }
		$('body').prepend('<div id="JYD-ui-overlay"/>');
        var modal = '<div id="JYD-ui-modal" >' +
        '<table>' + 
        '<tr><th style="border-top-left-radius: 4px;"></th><th></th><th style="border-top-right-radius: 4px;"></th></tr>';
        if (settings.title && settings.title.length > 0) modal += '<tr><th></th><td id="h2Title" class="h2_wrap"><h2>' + settings.title + '</h2></td><th></th></tr>';
        modal += '<tr><th>&nbsp;</th><td id="JYD-ui-modal-container"  width="' + settings.initWidth + '" height="' + settings.initHeight + '" ></td><th>&nbsp;</th></tr>' +
        '<tr><th style="border-bottom-left-radius: 4px;"></th><th></th><th style="border-bottom-right-radius: 4px;"></th></tr>' +
        '</table>';
        if(settings.showButtonDelete == true) modal += '<span class="del cursor"></span>';	
        modal += '</div>';
        $('body').prepend(modal);
        $('#JYD-ui-overlay').css({
            height: $(document).height(),
            width: '100%',
            opacity: 0,
            position: isIE6 || !settings.fixed ? 'absolute' : 'fixed',
            zIndex: 1200,
            left: 0,
            top: 0,
            background: '#000000'
        }).animate({
            opacity: settings.overlayOpacity
        });
		$('#JYD-ui-modal th').animate({
            opacity: settings.thOverlayOpacity
        },200);
        if (typeof($('.main_l')[0]) != "undefined" )
        {
			settings.marginLeft = 168/2;
        }
                
        if (typeof settings.container == 'string') {
            $('#JYD-ui-modal-container').html(settings.container);
        }
		
		$('#JYD-ui-modal').css({
            zIndex: 1201,
            position: (isIE6 || !settings.fixed) ? 'absolute' : 'fixed',
            width: settings.initWidth+20,
            left: ($(document).width() - settings.initWidth) / 2 + settings.marginLeft,
            top: (isIE6 || !settings.fixed) ? (settings.marginTop + document.documentElement.scrollTop + document.body.scrollTop) : ($(window).height() /2) - $('#JYD-ui-modal').outerHeight() / 2
        });
		
        if (typeof settings.container == 'function') {
            var e = $('#JYD-ui-modal-container');
            e.holder = $('#JYD-ui-modal');
            settings.container(e);
        }
        if (settings.allowClickOverlayToCancel) {
            $('#JYD-ui-overlay').click(function(){
                JYD.modalClose();
            });
        }
        $('#JYD-ui-modal .del').click(function(){
			settings.eventClose();
            JYD.modalClose();
        });
        if(settings.drag){
			$("#JYD-ui-modal").easydrag();   
	        $("#JYD-ui-modal").setHandler("h2Title");
	       // $('#JYD-ui-modal').draggable({axis:null,handle:'#h2Title'});
           //add by ryq
           JYD.modalresize(settings);
           // $("#JYD-ui-modal").ondrag(function(){
           //      //JYD.modalresize(settings);
           // });
           //add by ryq end
	        
        }
        if(isIE6){
		    //$("#JYD-ui-modal").bgiframe();//new alert 
		}
		//窗体改变大小
		$(window).resize(function() {
			JYD.modalresize(settings);//modify by ryq
		});
		//$( "#JYD-ui-modal" ).draggable();
		
    },
    modalresize: function(settings){//add by ryq
        if (typeof settings == 'string') {
            settings = {
                content:settings
            };
        }
        var settings = $.extend({}, JYD.dialogSettings, settings);
        if(typeof($('#JYD-ui-modal')[0]) != "undefined") {
                //console.log($(window).width() / 2-$('#JYD-ui-modal').outerWidth() / 2 + 153/2)
                if(isIE6){
                    $('#JYD-ui-modal').css({
                        left: ($(window).width() / 2) - $('#JYD-ui-modal').outerWidth() / 2 + settings.marginLeft,
                        top: ($(window).height() /2) - $('#JYD-ui-modal').outerHeight() / 2 + document.documentElement.scrollTop + document.body.scrollTop
                    });
                }else{
                    $('#JYD-ui-modal').css({
                        left: ($(window).width() / 2) - $('#JYD-ui-modal').outerWidth() / 2 + settings.marginLeft,
                        top: ($(window).height() /2) - $('#JYD-ui-modal').outerHeight() / 2
                    });
                }
            }
    },
    modalClose: function() {
        if(!navTest()){//不是是搜狗浏览器
	        $('#JYD-ui-overlay').remove();
	        $('#JYD-ui-modal').remove();
        }else{
	        $('#JYD-ui-overlay').hide();
	        $('#JYD-ui-modal').hide();
        }
    },
    modalParentClose: function() {
		window.parent.$('#JYD-ui-overlay').remove();
		window.parent.$('#JYD-ui-modal').remove();
    },
    // iframe window
    // JYD.ifrmame('http://xx')
    // JYD.ifrmame({src:'', title:'xx'})
    iframe: function(settings) {
        if (typeof settings == 'string') {
            settings = {
                src:settings
            };
        }
        var settings = $.extend({}, JYD.iframeSettings, settings);
        var zoom = 1;
        if(settings.zoom){
            zoom = settings.zoom;
        }
        settings.container = '<iframe id="JYD-ui-model-iframe" src="' + settings.src + '" width="' + settings.width + '" height="' + settings.height + '" frameborder="0" scrolling="no" style="zoom:'+zoom+'"></iframe>';
        if (JYD.iframeSettings.width != settings.width)
        {
            settings.initWidth = settings.width;
        }
		
        if (typeof($('.main_l')[0]) != "undefined" )
        {
			settings.marginLeft = 168/2;
        }
        JYD.modal(settings);
        //自适应高度
        $('#JYD-ui-model-iframe').load(function(){
            reinitIframe();
			if(isIE6){
				$('#JYD-ui-modal').css({
					left: ($(window).width() / 2) - $('#JYD-ui-modal').outerWidth() / 2 + settings.marginLeft,
					top: ($(window).height() /2) - $('#JYD-ui-modal').outerHeight() / 2 + document.documentElement.scrollTop + document.body.scrollTop
				});
			}else{
				$('#JYD-ui-modal').css({
					left: ($(window).width() / 2) - $('#JYD-ui-modal').outerWidth() / 2 + settings.marginLeft,
					top: ($(window).height() /2) - $('#JYD-ui-modal').outerHeight() / 2
				});
			}

			
			$('#JYD-ui-overlay').css({
				height: $(document).height()
			})
            //window.setInterval("reinitIframe()", 200);
        });
        if ($.browser.msie && $.browser.version < 7 || navigator.userAgent.indexOf("TencentTraveler")>0)
        {
            setTimeout(function(){
                $('#JYD-ui-model-iframe').attr('src', settings.src)
                }, 10);
        }
		

    },
    dialog: function(settings) {
        if (typeof settings == 'string') {
            settings = {
                content:settings
            };
        }
        var settings = $.extend({}, JYD.dialogSettings, settings);
        if (settings.title == null || settings.title == undefined) {
            if (settings.level == 'sucess') {
                settings.title = '提示';
            } else if (settings.level == 'error') {
                settings.title = '错误';
            } else {
                settings.title = '提示';
            }
        }
        //settings.container = '<h2>' + settings.title + '</h2>';
        settings.container = '<table class="JYD-ui-content" cellspacing="20"><tr>';
        if (settings.level){
            settings.container += '<td valign="top"><div class="' + settings.level + '"></div></td>';
        }
        settings.container += '<td class="ui-content">' + settings.content + '</td></tr></table>';
        settings.container += '<div class="JYD-ui-button">';
        if (settings.showButton == true){
            if (settings.isMobile == true){// add by ryq
                if (settings.buttonCancel) {
                    settings.container += '<button id="JYD-ui-button-cancel">' + settings.buttonCancel + '</button>';
                }
                settings.container += '<button id="JYD-ui-button-ok">' + settings.buttonOk + '</button>';
            }else{
                settings.container += '<button id="JYD-ui-button-ok">' + settings.buttonOk + '</button>';
                if (settings.buttonCancel) {
                    settings.container += '<button id="JYD-ui-button-cancel">' + settings.buttonCancel + '</button>';
                }
            }
        }
        settings.container += '</div>';

        JYD.modal(settings);
        $('#JYD-ui-button-ok').click(function(){
            if(settings.eventOk()||settings.eventOk()==undefined){// modify by ryq
                JYD.modalClose();
            }
        });
        if (settings.buttonCancel) {
            $('#JYD-ui-button-cancel').click(function(){
                settings.eventCancel();
                JYD.modalClose();
            });
        }
        
        return false;
    },
    freedialog: function(settings) {
        if (typeof settings == 'string') {
            settings = {
                content:settings
            };
        }
        var settings = $.extend({}, JYD.dialogSettings, settings);
        if (settings.title == null || settings.title == undefined) {
            if (settings.level == 'sucess') {
                settings.title = '提示';
            } else if (settings.level == 'error') {
                settings.title = '错误';
            } else {
                settings.title = '提示';
            }
        }
        //settings.container = '<h2>' + settings.title + '</h2>';
        settings.container = '<table class="JYD-ui-content" cellspacing="20"><tr>';
		if (settings.level){
            settings.container += '<td valign="top"><div class="' + settings.level + '"></div></td>';
		}
        settings.container += '<td class="ui-content">' + settings.content + '</td></tr></table>';
        settings.container += '<div class="JYD-ui-button">';
		if (settings.showButton == true){
			settings.container += '<button id="JYD-ui-button-ok">' + settings.buttonOk + '</button>';
			if (settings.buttonCancel) {
				settings.container += '<a id="JYD-ui-button-cancel" href="javascript:void(0)">' + settings.buttonCancel + '</a>';

			}
		}
        settings.container += '</div>';

        JYD.modal(settings);
        $('#JYD-ui-button-ok').click(function(){
            settings.eventOk();
			
        });
        if (settings.buttonCancel) {
            $('#JYD-ui-button-cancel').click(function(){
                settings.eventCancel();
                JYD.modalClose();
            });
        }
        return false;
    },
    // Usage: <a href="http://baidu.com/" onclick="return JYD.confirmEvent(event, {title:'危险',content:'你确认继续吗?'});">
    confirmEvent: function(event, settings) {
        event = event || window.event;
        if (typeof settings == 'string') {
            settings = {
                content:settings
            };
        }
        settings = settings || {};
        var eventType = event.type;
        var element = event.target || event.srcElement;
        settings.eventOk = function() {
            if (eventType == 'click') {
                window.location = element.href;
            } else {
                element[eventType]();
            }
        };
        settings.level = 'sucess';
        JYD.dialog(settings);
        return false;
    },
    info: function(settings) {
        if (typeof settings == 'string') {
            settings = {
                content:settings
            };
        }
        settings.level = 'info';
		if (settings.buttonCancel === undefined){
            settings.buttonCancel = false;
		}
        return JYD.dialog(settings);
    },
    sucess: function(settings) {
        if (typeof settings == 'string') {
            settings = {
                content:settings
            };
        }
        settings.level = 'sucess';
		if (settings.buttonCancel === undefined){
            settings.buttonCancel = false;
		}
        return JYD.dialog(settings);
    },
    error: function(settings) {
        if (typeof settings == 'string') {
            settings = {
                content:settings
            };
        }
        settings.level = 'error';
		if (settings.buttonCancel === undefined){
            settings.buttonCancel = false;
		}
        return JYD.dialog(settings);
    },
    loading: function(settings) {
        if (typeof settings == 'string') {
            settings = {
                content:settings
            };
        }
        settings.level = 'loading';
        return JYD.dialog(settings);
    },
    //new add by ryq
    /**
     * 针对password支持placeholder
     * @author ryq
     * @return {Boolean} 是否支持
     */
    passwordplaceholder:function(){
        function isPlaceholder(){
            var input = document.createElement('input');
            return 'placeholder' in input;
        }
        if (!isPlaceholder()) {
            var pwdField = $("input[type=password]");
            if(pwdField.length>0){
                pwdField.each(function(indx){
                    var _this = this;
                    var pwdVal  = $(_this).attr('placeholder');
                    var pwdFieldId = $(_this).attr('id');
                    //add 0820
                    var curformid = $(_this).closest('form').attr('id'),
                        styleset = '';
                    if(curformid=="regForm"||curformid=="emailForm"){
                        styleset ='position:absolute;top:0px;';
                    }
                    //alert(styleset);
                    //add 0820 end
                    if (typeof(pwdVal) == 'undefined') {
                        pwdVal = "";
                    }
                    $(_this).after('<input id="'+ pwdFieldId+indx + 'New" style="'+ styleset +'" class="tmpinput acctInpt inpt placeholder" type="text" autocomplete="off" value='+pwdVal+' >');
                    var pwdPlaceholder = $('#' + pwdFieldId+indx + "New");
                    pwdPlaceholder.css({'color':'c4c4c4'}).show();
                    $(_this).hide();
                     
                    pwdPlaceholder.focus(function(){
                      pwdPlaceholder.hide();
                      $(_this).show();
                      $(_this).focus();
                    });
                     
                    $(_this).blur(function(){
                      if($(_this).val() == ''||$(_this).val().indexOf(pwdVal)!=-1) {
                       $(_this).hide();
                       pwdPlaceholder.show();
                       //pwdPlaceholder.css({'position':'absolute','top':'0px;'});
                       
                      }
                    });

                });
            }
                 
        }
    },
    /**
     * 检测placeholder属性是不是被支持
     * @author ryq
     * @return {Boolean} 是否支持
     */
    placeholderIsSupported: function() {
        return ("placeholder" in document.createElement('input'));
    },
    /**
     * @param  {jQueryElement} el 父层元素
     * @param {String} selector 需要处理的元素
     * @return none
     */
    inputFocusBlur: function(el, selector) {
        if(JYD.placeholderIsSupported()) {
            return;
        }
        var INPUT_FOCUS_CLASS = "ieplaceholder";
        selector = selector ? $(el).find(selector).filter("input[placeholder],textarea[placeholder]") : $(el).find("input[placeholder],textarea[placeholder]");
        selector.each(function(){
            var $this = $(this);
            if(!$this.val().length) {//如果默认已经设置值，则不把placeholdertext设为默认值
                $this.val($this.attr("placeholder")).addClass(INPUT_FOCUS_CLASS);
            }
            $this.on("focus", function(e) {
                var $elTarget = $(e.target),
                    placeholderText = $elTarget.attr("placeholder");
                $elTarget.removeClass(INPUT_FOCUS_CLASS);
                if ($elTarget.val() != placeholderText) {
                    return;
                } else {
                    $elTarget.val("");
                }
            });
            $this.on("blur", function(e) {
                var $elTarget = $(e.target),
                    placehoderText = $elTarget.attr("placeholder");
                if ($elTarget.val() == "") {
                    $elTarget.val(placehoderText).addClass(INPUT_FOCUS_CLASS);
                }
            });
        });
        JYD.passwordplaceholder();//针对password支持placeholder
    }

});

//tip 表单文字提示
$.fn.inputTip = function(options){
	return this.each(function(){
		var thistip=$(this);
		if (thistip.val()!==''){
            thistip.prev('.fr_tip').hide();
		}
		thistip.focus(function(){
			thistip.prev('.fr_tip').hide();
		}).blur(function(){
			if($.trim(thistip.val())==''){
				thistip.prev('.fr_tip').css({'display':'inline'});
			}
		});
		thistip.prev('.fr_tip').click(function(){
			thistip.focus();
		});
	});
};

//tip 表单文字提示
$.fn.inputTip2 = function(options){
	return this.each(function(){
		var thistip=$(this).next(':text,textarea');
		if (thistip.val()!==''){
            thistip.prev('.tip').hide();
		}
		thistip.focus(function(){
			thistip.prev('.tip').hide();
		}).blur(function(){
			if($.trim(thistip.val())==''){
				thistip.prev('.tip').css({'display':'inline'});
			}
		});
		$(this).click(function(){
			thistip.focus();
		});
	});
};

jQuery(function($) {
    $('.tip').inputTip2();
});

//检查字数
function textCounter(elem,countelem,maxlimit)
{   
    var value = $(elem).val();
    //汉字的个数
	var str = (value.replace(/\w/g,"")).length;
	//非汉字的个数
	var abcnum = value.length-str;
	var total = str*2+abcnum;
	var maxlimit = maxlimit * 2;
	if (total <= maxlimit){
		$(countelem).html(Math.floor((maxlimit - total)/2)).removeClass('f_stress');
	    var infoHtml = $(countelem).parent().html();
		$(countelem).parent().html(infoHtml.replace('超出','还可输入'));
	}else{
		$(countelem).attr('class','f_stress').html(Math.floor((total - maxlimit)/2));
	    var infoHtml = $(countelem).parent().html();
		$(countelem).parent().html(infoHtml.replace('还可输入','超出')).css({'color':'red'});
	}
}

//格式化数字
function formatNum(num){
    var str = num.split(".")[0],length = str.length,a = (length - 1) / 3,m = length % 3,i,s,result;
    m = m==0?3:m
    s = str.substr(0,m);
    for(i=1;i<=a;i++){
        s = s.concat(',');
        s = s.concat(str.substr(m+3*(i-1),3));
        
    }
    if(num.split(".").length==2){
	    return s+'.'+num.split(".")[1];
    }else{
	    return s;
    }
}

/**退出 **/
function loginOut() {
	JYD.dialog({
		title :'退出',
		initWidth :300,
		content : '<p>您确定要退出吗！</p>',
		eventOk: function(){
			window.location.href="userAction_loginOut.action";
		}
	});
}

$.fn.tooltips = function() {
	$(this).hover(function() {
		$("body").append("<div id=\"Actiontips\"></div>");
		var $tips = $("#Actiontips");
		var $offset = $(this).offset(); 
		$tips.html($(this).attr("alt")).css({
			top : $offset.top + $(this).outerHeight() + 5 + "px",
			left : $offset.left - $tips.outerWidth() / 2 + "px"
		}).fadeIn(100);
	}, function() {
		$("#Actiontips").fadeOut(100,function() {
			$(this).remove();
		});
	});
}
	