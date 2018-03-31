$(function(){
    //设置推荐项目选项卡当前选中状态
    setActive();
    $("#projectTab").on("click","li a",function(){
        var selfObj = this;
        var thisUrl = $(this).attr("data-href");
        var tagli = $("#projectTab li");
        var taglength = tagli.length;
        
        for(i=0; i<taglength; i++){
            if(tagli[i].className == "active"){
                tagli[i].className == "";
            }
           }
        
        selfObj.parentNode.className = "active";
        if(selfObj.parentNode.parentNode){
            pntul = selfObj.parentNode.parentNode;
            pntulleft = pntul.style.left;
            thisUrl=thisUrl + "&left="+pntulleft;
            window.location.href = "http://"+window.location.host+thisUrl;
            if(selfObj.className = "markli"){
                setTimeout(function(){
                    pntulleft = pntul.style.left;
                    thisUrl=thisUrl + "&left="+pntulleft;
                    window.location.href = "http://"+window.location.host+thisUrl;
                },500)
            }
        }
    });
    //设置推荐项目选项卡当前选中状态
    
})
//设置推荐项目选项卡当前active选中状态
function setActive(){
    var actnd = parseInt(getQueryString("actnd"));
    var left = getQueryString("left");
    var arr = $("#projectTab li");
    //arr.removeClass("active"); 
    $("#projectTab").css("left",left);
    if( left == "-91px"){
        $("#tabNext").hide();
        $("#tabPrev").show();
    }
//    if(arr){
//        var url = window.location.href;
//        $.each(arr,function(i,n){
//            //debugger;
//        	
//            if(i==actnd){
//               $(n).attr("class","active"); 
//            }
//        });
//    }
}
function getQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return unescape(r[2]); return null;
}
//设置推荐项目选项卡当前active选中状态 end