/* 
* @Author: anchen
* @Date:   2016-10-10 20:07:55
* @Last Modified by:   anchen
* @Last Modified time: 2016-10-24 23:29:36
*/
var pagewidth = document.documentElement.clientWidth;


 $(function(){

    $(".yq112").each(function(){
    var maxwidth=150;
    if($(this).text().length>maxwidth){
    $(this).text($(this).text().substring(0,maxwidth));
    $(this).html($(this).html()+'...');
    }
    });
})

 $(function(){
    $("#dan01").click(function(event) {
        /* Act on the event */
        $(".yq104").css('display', 'none').stop(true).slideDown(1000);
    });
    $("#dan02").click(function(event) {
        /* Act on the event */
        $(".yq104").css('display', 'none').stop(true).slideDown(1000);
    });
    $("#dan03").click(function(event) {
        /* Act on the event */
        $(".yq104").css('display', 'none').stop(true).slideDown(1000);
    });
    $("#dan04").click(function(event) {
        /* Act on the event */
        $(".yq104").css('display', 'none').stop(true).slideDown(1000);
    });
 })


$(window).scroll(function () {
    var top = document.body.scrollTop;
    var m = $('.yq104').children().length*170;

    if(top > 280 && top<(m-250)){
        $(".yq103").stop().animate({top:(top-280)+"px"}, 1000)
    }


    if(pagewidth>1900){
        if(top > 400 &&　top < 1900){
            $("#yq502").css({top:top-450+"px"});
        }
    }else if(pagewidth >1300){
        if(top > 400 &&　top < 1300){
            $("#yq502").css({top:top-450+"px"});
        }
    }

})

$(function () {

    var height=0;

    for(var i=1;i<4;i++){
        var lm = $("#200"+i).height();
        if(pagewidth<768){
            height=lm-40;
        }else if(pagewidth <1300){
            height=lm-100;
        }else {
            height=lm-160;
        }
        $("#20"+i).height(height);
    }
})

$(function () {
    $(".mouseover_red").click(function () {
        $(".mouseover_red").removeClass('bgc_n');
        $(this).addClass('bgc_n');
    })

    $(".kkmove").click(function () {
        $(".mouseover_red").removeClass('bgc_n');
        $(".mouseover_red:eq(1)").addClass('bgc_n');
    })
})