<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/10 0010
  Time: 下午 3:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="l" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no"/>

    <title>四川斯科云环保科技有限公司</title>
    <link rel="icon" href="${pageContext.request.contextPath}/reg/images/logo.ico" type="image/x-icon">
</head>
<body>
<div class="yq808"></div>
<header id="header" class="header">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item lunboimg active">
                            <l:forEach items="${banners}" var="banner">
                                <l:if test="${banner.adress==1}">
                                    <img src="${banner.url}" id="img" alt="${banner.title}">
                                </l:if>
                            </l:forEach>


                        </div>
                        <div class="item lunboimg">
                            <l:forEach items="${banners}" var="banner">
                                <l:if test="${banner.adress==2}">
                                    <img src="${banner.url}" id="img" alt="${banner.title}">
                                </l:if>
                            </l:forEach>

                        </div>
                        <div class="item lunboimg">
                            <l:forEach items="${banners}" var="banner">
                                <l:if test="${banner.adress==3}">
                                    <img src="${banner.url}" id="img" alt="${banner.title}">
                                </l:if>
                            </l:forEach>
                        </div>
                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <!--  <span class="glyphicon glyphicon-chevron-left"></span>
                         <span class="sr-only">Previous</span> -->
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <%--<span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">Next</span>--%>
                    </a>
                </div>
            </div>
        </div>

        <jsp:include page="/WEB-INF/pages/comm/nav.jsp"></jsp:include>
    </div>
</header>


<div class="container">
    <div class="row">
        <div class="col-md-3 col-sm-3 col-xs-6">
            <div class="nr101" id="linian">
                <div class="nr103"><img src="${pageContext.request.contextPath}/reg/images/linian.png" alt=""/></div>

                <div class="nr105 color_r">公司理念</div>
            </div>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-6">
            <div class="nr101">
                <a href="/service">
                    <div class="nr103"><img src="${pageContext.request.contextPath}/reg/images/liuchen.png" alt=""/>
                    </div>
                </a>
                <div class="nr105 color_r">服务流程</div>
            </div>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-6">
            <div class="nr101">
                <a href="/service?serviceactive=1">
                    <div class="nr103"><img src="${pageContext.request.contextPath}/reg/images/yuyue.png" alt=""/></div>
                </a>
                <div class="nr105 color_r">预约咨询</div>
            </div>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-6">
            <div class="nr101">
                <a href="/service?serviceactive=2">
                    <div class="nr103"><img src="${pageContext.request.contextPath}/reg/images/shouhou.png" alt=""/>
                    </div>
                </a>
                <div class="nr105 color_r">售后服务</div>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid bgc_h">
    <l:forEach items="${news}" var="newa">
        <l:if test="${newa.isture==1}">
            <div class="container">
                <div class="col-md-5 col-sm-5">
                    <div class="nr201">
                        <img src="${newa.newimg}" id="2001" alt=""/>
                    </div>
                </div>
                <div class="col-md-7 col-sm-7">
                    <div class="nr201">
                        <div class="nr202">
                            <p>${newa.newtitle}</p>
                            <span id="201">${newa.newjianjie}</span>
                            <div><a href="javascript:window.location.href='/tonewdetail?id='+${newa.id}">更多详情</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </l:if>
    </l:forEach>

</div>
<div class="container-fluid">
    <l:forEach items="${news}" var="newa">
        <l:if test="${newa.isture==2}">
            <div class="container">
                <div class="col-md-7 col-sm-7">
                    <div class="nr201">
                        <div class="nr202">
                            <p>${newa.newtitle}</p>
                            <span id="202">${newa.newjianjie}</span>
                            <div><a href="javascript:window.location.href='/tonewdetail?id='+${newa.id}">更多详情</a></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-5 col-sm-5">
                    <div class="nr201">
                        <img src="${newa.newimg}" id="2002" alt=""/>
                    </div>
                </div>
            </div>
        </l:if>
    </l:forEach>

</div>
<div class="container-fluid bgc_h">
    <l:forEach items="${news}" var="newa">
        <l:if test="${newa.isture==3}">
            <div class="container">
                <div class="col-md-5 col-sm-5">
                    <div class="nr201">
                        <img src="${newa.newimg}" id="2003" alt=""/>
                    </div>
                </div>
                <div class="col-md-7 col-sm-7">
                    <div class="nr201">
                        <div class="nr202">
                            <p>${newa.newtitle}</p>
                            <span id="203">${newa.newjianjie}</span>
                            <div><a href="javascript:window.location.href='/tonewdetail?id='+${newa.id}">更多详情</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </l:if>
    </l:forEach>
</div>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-12 col-sm-12">
            <div class="nr301">
                <div class="nr302">工程案例</div>
                <div class="nr303">

                    <div class="mis-stage">
                        <ol class="mis-slider">
                            <l:forEach items="${designs}" var="design">
                                <li class="mis-slide">
                                    <a href="javascript:window.location.href='/designOne?id='+${design.id}"><img
                                            src="${design.img}" width="150" height="150" alt="${design.title}"></a>
                                    <figcaption>${design.title}</figcaption>

                                </li>
                            </l:forEach>
                        </ol>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid bgc_h">
    <div class="container">
        <div class="col-md-12">
            <div class="nr401">
                <div class="nr302">Videos</div>
                <div class="nr402">
                    <video controls loop preload="auto" width="100%" >
                        <l:forEach items="${banners}" var="banner">
                            <l:if test="${banner.adress==99}">
                                <source src="${banner.url}" />
                            </l:if>
                        </l:forEach>

                    </video>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row ">
        <div class="col-md-12 col-sm-12">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="nr401">
                            <div class="nr302">公司资讯</div>
                            <div class="nr402">
                                <div class="panel panel-default">
                                    <div class="panel-heading"><span
                                            class="glyphicon glyphicon-list-alt"></span><b>News</b></div>
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-xs-12">
                                                <ul class="demo1 li_hover">
                                                    <l:forEach items="${news}" var="onenew">
                                                        <l:if test="${onenew.isture==4}">
                                                            <li class="news-item" onclick="window.location.href='/tonewdetail?id='+${onenew.id}">
                                                                <table cellpadding="4">
                                                                    <tr>
                                                                        <div class="media">
                                                                            <a class="media-left  media-middle hidden-xs">
                                                                                <img src="${onenew.newimg}" width="100" height="80" alt="${onenew.newtitle}">
                                                                            </a>
                                                                            <div class="media-body">
                                                                                <blockquote class="text-left">
                                                                                    <h4 class="media-heading media-left">${onenew.newtitle}</h4><br>
                                                                                    <span class="fontsize">${onenew.newjianjie}</span>
                                                                                    <footer class="margn_10"> <cite title="Source Title">${onenew.newwriter} 著</cite></footer>
                                                                                </blockquote>
                                                                            </div>
                                                                        </div>
                                                                    </tr>
                                                                </table>

                                                            </li>
                                                        </l:if>
                                                    </l:forEach>

                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<jsp:include page="/WEB-INF/pages/comm/footer.jsp"></jsp:include>

<script src="${pageContext.request.contextPath}/reg/js/xfjquery.bootstrap.newsbox.min.js" type="text/javascript"></script>
<script type="text/javascript">

    /*News*/
    $(function () {

        $(".demo1").bootstrapNews({
            newsPerPage: 5,
            autoplay: true,
            pauseOnHover: true,
            direction: 'up',
            newsTickerInterval: 4000,
            onToDo: function () {
                //console.log(this);
            }
        });

        $(".demo2").bootstrapNews({
            newsPerPage: 4,
            autoplay: true,
            pauseOnHover: true,
            navigation: false,
            direction: 'down',
            newsTickerInterval: 2500,
            onToDo: function () {
                //console.log(this);
            }
        });

        $("#demo3").bootstrapNews({
            newsPerPage: 3,
            autoplay: false,
            onToDo: function () {
                //console.log(this);
            }
        });



        $("#linian").click(function () {
            var pagewidth = document.documentElement.clientWidth;

            if (pagewidth < 500) {
                layer.open({
                    type: 1,
                    skin: 'layui-layer-rim', //加上边框
                    area: ['350px', '263px'], //宽高
                    title: '公司理念',
                    content: '<img src="/reg/images/womenlinian.png" width="100%" height="100%" alt="公司理念">'
                });

            } else if(pagewidth > 1700) {
                layer.open({
                    type: 1,
                    skin: 'layui-layer-rim', //加上边框
                    area: ['1064px', '800px'], //宽高
                    title: '公司理念',
                    content: '<img src=" /reg/images/womenlinian.png" width="100%" height="100%" alt="公司理念">'
                });
            } else if(pagewidth > 1100) {
                layer.open({
                    type: 1,
                    skin: 'layui-layer-rim', //加上边框
                    area: ['833px', '625px'], //宽高
                    title: '公司理念',
                    content: '<img src=" /reg/images/womenlinian.png" width="100%" height="100%" alt="公司理念">'
                });
            } else if(pagewidth > 500){
                layer.open({
                    type: 2,
                    area: ['650px', '488px'],
                    fixed: false, //不固定
                    title: '公司理念',
                    content: '<img src="/reg/images/womenlinian.png" width="100%" height="100%" alt="公司理念">'
                });
            }
        });

    });

    /*model弹窗*/


</script>
</body>
</html>
