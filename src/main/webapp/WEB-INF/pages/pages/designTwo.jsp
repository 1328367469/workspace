<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/1/23 0023
  Time: 上午 12:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="l" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no"/>

    <title>四川斯科云环保科技有限公司</title>
    <link rel="icon" href="${pageContext.request.contextPath}/reg/images/logo.ico" type="image/x-icon">


    <link rel='stylesheet' href='${pageContext.request.contextPath}/reg/album/css/masterslider.css' type='text/css' media='all'/>
    <link rel='stylesheet' href='${pageContext.request.contextPath}/reg/album/css/ms-showcase2.css' type='text/css' media='all'/>
    <link rel='stylesheet' href='${pageContext.request.contextPath}/reg/album/css/masterslider.main.css' type='text/css' media='all'/>
    <script src="${pageContext.request.contextPath}/reg/album/js/modernizr-2.6.2.min.js"></script>
    <script type='text/javascript' src='${pageContext.request.contextPath}/reg/album/js/jquery.js'></script>
    <script type='text/javascript' src='${pageContext.request.contextPath}/reg/album/js/masterslider.min.js'></script>
    <script type='text/javascript' src='${pageContext.request.contextPath}/reg/album/js/jquery.easing.min.js'></script>
    <script>
        var ms_grabbing_curosr = 'images/grabbing.cur', ms_grab_curosr = 'images/grab.cur';
        window.$ = jQuery.noConflict();
    </script>

</head>

<body>
<div class="yq808"></div>
<header id="header" class="header">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 col-sm-12 lunboimg">
                <img src="${sheji.url}" class="img-responsive" alt="Responsive image">
            </div>
        </div>

        <%--nav--%>
        <jsp:include page="/WEB-INF/pages/comm/nav.jsp"></jsp:include>

    </div>
</header>
<div class="container-fluid bgc_f padding_buttom50">
    <div class="row">
        <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 col-sm-11 color_g  height_40 line_height_40 textalign_center">
            <a href="/design?active=0" class="delea">
                <div class="col-md-3 col-sm-3 col-xs-6  transition mouseover_red">
                    新风设计
                </div>
            </a>
            <a href="/design?active=1" class="delea">
                <div class="col-md-3 col-sm-3 col-xs-6  transition mouseover_red">
                    阳台设计
                </div>
            </a>
            <a href="/design?active=2" class="delea">
                <div class="col-md-3 col-sm-3 col-xs-6  transition mouseover_red">
                    模拟气流
                </div>
            </a>
            <a href="/design?active=3" class="delea">
                <div class="col-md-3 col-sm-3 col-xs-6  transition mouseover_red">
                    施工现场
                </div>
            </a>
        </div>
    </div>

    <div class="row bgc_shiji paddimg30">
        <div class="col-md-10 col-md-offset-1 col-sm-12">
            <div class="row">
                <div class="col-md-5">
                    <video src="${video.url}" controls="controls" width="100%" loop="loop">亲，您的浏览器不支持 video 视频播放哟。</video>
                </div>
                <div class="col-md-7">
                    <div class="yq203">
                        <span>${design.designnr}</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/pages/comm/footer.jsp"></jsp:include>

</body>
</html>