/* 
* @Author: anchen
* @Date:   2016-09-29 22:49:33
* @Last Modified by:   anchen
* @Last Modified time: 2016-11-20 15:32:56
*/
$(function () {
    var slider = $('.mis-stage').miSlider({
        //  The height of the stage in px. Options: false or positive integer. false = height is calculated using maximum slide heights. Default: false
        stageHeight: 380,
        //  Number of slides visible at one time. Options: false or positive integer. false = Fit as many as possible.  Default: 1
        slidesOnStage: false,
        //  The location of the current slide on the stage. Options: 'left', 'right', 'center'. Defualt: 'left'
        slidePosition: 'center',
        //  The slide to start on. Options: 'beg', 'mid', 'end' or slide number starting at 1 - '1','2','3', etc. Defualt: 'beg'
        slideStart: 'mid',
        //  The relative percentage scaling factor of the current slide - other slides are scaled down. Options: positive number 100 or higher. 100 = No scaling. Defualt: 100
        slideScaling: 150,
        //  The vertical offset of the slide center as a percentage of slide height. Options:  positive or negative number. Neg value = up. Pos value = down. 0 = No offset. Default: 0
        offsetV: -5,
        //  Center slide contents vertically - Boolean. Default: false
        centerV: true,
        //  Opacity of the prev and next button navigation when not transitioning. Options: Number between 0 and 1. 0 (transparent) - 1 (opaque). Default: .5
        navButtonsOpacity: 1
    });

})


$(function(){
        $(".dh0055").mouseover(function(event) {
        /* Act on the event */
            $(this).children().children().eq(0).stop().animate({lineHeight: "60px"}, 300);
            $(this).children().eq(1).stop().slideDown(400);
        }).mouseleave(function(event) {
            /* Act on the event */
            $(this).children().children().eq(0).stop().animate({lineHeight: "70px"}, 200);
            $(this).children().eq(1).stop().slideUp(300);
        });

        
        $("body").stop().mousewheel(function(event,delat){
            var lt_julin = document.body.scrollTop;
            if (delat > 0) {
                if(lt_julin > 600){
                  $(".display_if").stop(true).slideDown(1000);
                    $(".navbar-default").css({backgroundColor:"rgba(0,0,0,0.4)"});
                }else if (lt_julin < 200) {
                    $(".navbar-default").css({backgroundColor:"#81A548"});
                    $(".display_if").slideDown(500);
                }else{
                 $(".display_if").slideUp(200);
                }
            }else{
                $(".display_if").slideUp(200);
            }
        })
        
    })

/*
$(function(){
        $(".nr101").mouseover(function(event) {
            /!* Act on the event *!/
            $(this).children().eq(1).css({marginTop:'-100px'}).delay(500).slideDown(500);
        }).mouseleave(function(event) {
            /!* Act on the event *!/
            $(this).children().eq(1).stop(true).slideUp(300);
        });
   })
*/


$(function(){
    var speed = 20; //滚动速度
    var lis = 350; //单个单位的宽度
    var i = 0;
    var t = true;
    var a = parseInt($('#lanren').css('width'));
    var b = parseInt($('#lanren2 li').length * lis);
    $('#lanren2').css('width',b)
    var distance = b-a;
    // console.log(distance);
    function add(){
        i++;
    }
    function reduce(){
        i--;
    }
    function jia(){
        if((i< distance || i<i) && t){
            add();
        }else if(i >= distance || !t){
            t= false;
            reduce();
        }
        if(i==0){
            t = true;
        }
    $('#lanren2').css('left',-i)
    }
    var d = setInterval(jia,speed);
    $('#lanren').mouseover(function(){
        clearInterval(d);
    });
    $('#lanren').mouseleave(function(){
        d = setInterval(jia,speed);
    });
});

 $(function(){
    $(".fontsize").each(function(){
    var maxwidth=100;
    if($(this).text().length>maxwidth){
    $(this).text($(this).text().substring(0,maxwidth));
    $(this).html($(this).html()+'...');
    }
    });

})