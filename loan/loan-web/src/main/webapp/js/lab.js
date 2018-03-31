function selectTag(showContent,showMain,selfObj){
	// 操作标签
	var tag = document.getElementById("tags").getElementsByTagName("li");
	var taglength = tag.length;
	for(i=0; i<taglength; i++){
		tag[i].className = "";
	}
	selfObj.parentNode.className = "sr";
	// 操作内容
	$(".allContent").hide();
	$(".invesMain").hide();
	$(".notFound").hide();
	$(showContent).show();
	$(showMain).show();
	
	
}

$(document).ready(function(){
$(".hiddenTable").click(function(){
    $(".floatTable").slideToggle("slow");
  });
});