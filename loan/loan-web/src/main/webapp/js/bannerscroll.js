/*$(document).ready(function(){
var j=0,
	MyTime=false,
	fot=10,
	fin=1000,
	amt=300,
	speed=8000,
	autostar=true;

var tag1 ="a",
	tag2 ="li",
	curpg = "active",
	pagedom = $(".jcarousel-pagination"),
	pagelist = $(".jcarousel-pagination").find(tag1),
	picDom=$(".banner-inner"),
	maxpic=$(".banner-inner ul li").length;

function initpage(){
	var pagea = '<a href="#"></a>',
		pagelis ="";
		for(var i=0;i<maxpic;i++){
			pagelis +=pagea;
			
			
		}
	pagedom.append(pagelis);
	pagelist = $(".jcarousel-pagination").find(tag1);
}
initpage();

pagelist.each(function(i){
	
	pagelist.eq(i).mouseover(function(){		

		var cur=picDom.find(tag2+":visible").prevAll().length;
		
		if(i!==cur){
			j=i;					
		    picDom.find(tag2+":visible").fadeOut(fot,function(){
				$(this).css("zIndex",0);
			}).find(tag2).eq(i).stop().fadeIn(fin,function(){$(this).css("zIndex",1)});
			//picDom.find(tag2+":visible").stop().animate({opacity:0},1000,function(){
			//    picDom.find(tag2).eq(i).stop().animate({opacity:1},1000);
			//});
			
		}
		autostar=false;
	})
	pagelist.eq(i).mouseout(function(){autostar=true;})
})



alert(1);
function current(ele,tag){
	$(ele).addClass(curpg).siblings(tag1).removeClass(curpg);
	}	

var MyTime=setInterval(function(){
	
		if(autostar){
		pagelist.eq(j).mouseover();
		autostar=true;
		picDom.find(tag2+":visible").mouseover(function(){autostar=false;}).mouseout(function(){autostar=true;})
		j++;

		if(j==maxpic){j=0;}}
	} , speed);

})

*/


    function methodClass(outerEle,allImgWObj,prevObj,nextObj,oClass){
        this.outerEle = outerEle;
        this.prevObj = prevObj;
        this.nextObj = nextObj;
        this.oClass = oClass;
        this.allImgWObj = allImgWObj;
        this.iNow = 0;
        this.bBtn = true;
        this.oT = null;
        this.iNum = 6000;
        var self = this;


        $(this.prevObj).each(function(i){
            $(this).bind("mouseover",function(){
                self.iNow = i;
                self.commonPart(self.iNow);
            });
        });

        self.oTimer = setInterval(function(){
            if(self.bBtn){
                //self.oT = setTimeout(function(){self.startMove();},6000);
                self.startMove();
                self.bBtn = false;
              }else{
                //clearTimeout(self.oT);
                //setTimeout(function(){self.startMove();},self.iNum);
                self.startMove();
            }
        },6000);

        $(this.nextObj).css("position","absolute").eq(0).css("zIndex",3);
        $(this.allImgWObj).width($(this.nextObj).eq(0).width() * $(this.nextObj).length);

        if($(this.nextObj).length <=1){
             clearInterval(self.oTimer);
             $(this.prevObj).remove();
        }else{

            $(this.outerEle).mouseover(function(){
                clearInterval(self.oTimer);
            }).mouseout(function(){
                self.oTimer = setInterval(function(){self.startMove()},self.iNum);
            });
        }
    };

    methodClass.prototype = {
        commonPart:function(index){
            $(this.prevObj).removeClass(this.oClass).eq(index).addClass(this.oClass);
            $(this.nextObj).stop().animate({opacity:0},1000,function(){$(this).css("zIndex",0)}).eq(index).stop().animate({opacity:1},1000,function(){$(this).css("zIndex",1)});
        },
        startMove:function(){
            this.iNow++;
            if(this.iNow == $(this.prevObj).length){
                this.iNow = 0;
            };
            this.commonPart(this.iNow);
        }
    }
     
	 $(document).ready(function(){
		var maxpic=$(".banner-inner ul li").length;
		var pagea = '<a href="#"></a>',
			pageb = '<a href="#" class="active"></a>',
			pagelis ="";
			for(var i=0;i<maxpic;i++){
				if (i == 0){
					pagelis +=pageb;
				}else{
					pagelis +=pagea;
				}
			}
		$(".jcarousel-pagination").append(pagelis);
		if($(".scroll-banner").length > 0) new methodClass(".scroll-banner",".scroll-banner ul",".jcarousel-pagination a",".scroll-banner li","active");

	})
    /*end*/


