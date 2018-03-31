$(document).ready(function(){
	getMemberDate();
});

function getMemberDate(){
	$.ajax({
		type : "post",
		dataType : 'json',
		url : "/index_getMemberDate.html",
		success : function(data) {
		  $("#memberId").val(data[0].memberId);
		  $("#isAuth").val(data[0].isAuth);
		  $("#sevenDate").val(data[0].sevenDate);
		}
	});
}

function alertDialog(message, type, id, date){
	  var memberId = $("#memberId").val();
	  var isAuth = $("#isAuth").val();
	  var sevenDate = $("#sevenDate").val();

	  if(!memberId){//未登录
		  window.open("/index1_index.html", "_self");
		  return ;
	  }

	  if(isAuth != '1'){
		  var rechrge_popHtml = '<div class="lotteryBox clear"><div class="w100 left"></div><div  class="left" style="margin-left: 77px;width: 277px;"><p style="padding-top:10px;">您还没有实名认证，请实名认证后再查看项目详情</p></div></div>';
	      var applyaddDialog = JYD.dialog({
	        title :"",
	        initWidth :450,
	        content : rechrge_popHtml,
	        buttonCancel: '确定',
	        buttonCancelHref: 'javascript:void(0);',
            buttonOk: '去充值认证',
              buttonOkHref: 'javascript:void(0);'
	      });

	      $("#JYD-ui-button-cancel", applyaddDialog).css("display", "none");
	      return ;
	  }

	  sevenDate = new Date(sevenDate);
	  date = new Date(date);
	  if(Number(date) < Number(sevenDate)){
		  var rechrge_popHtml = '<div class="lotteryBox clear"><div class="w100 left"></div><div  class="left" style="margin-left: 77px;width: 277px;"><p style="padding-top:10px;">目前仅开放一周以内的项目，已出借用户可到“我的帐户”中查看</p></div></div>';
	      var applyaddDialog = JYD.dialog({
	        title :"",
	        initWidth :450,
	        content : rechrge_popHtml,
              buttonCancel: '确定',
              buttonCancelHref: 'javascript:void(0);'
	      });
	      $("#JYD-ui-button-ok",applyaddDialog).css("display", "none");
	      return ;
	  }
	  window.open("/invest_detail.html?id=" + id, "_blank");

}

function getOrder(){
	$.ajax({
		type : "post",
		dataType : 'json',
		url : "/invest_getOrder.html",
		success : function(data) {
			var orderList=$("#orderList");
			orderList.html("");
			$.each(data,function(index,obj){
				orderList.append('<li><span class="time">'+obj.time+'</span><span class="name">'+obj.memberName+'</span><span class="money"><em>'+obj.amount+'</em>元</span></li>');
			});
		}
	});
}