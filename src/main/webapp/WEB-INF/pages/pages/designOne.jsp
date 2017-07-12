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
    <!--[if IE 8]>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/reg/album/css/vc-ie8.css" media="screen"><![endif]-->
    <!--[if IE 7]>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/reg/album/css/ie7.css" type="text/css" media="screen"/><![endif]-->

</head>
<script type="text/javascript">
    $(document).ready(function () {
        var slider = new MasterSlider();
        slider.setup('masterslider', {
            width: 610,
            height: 650,
            space: 5,
            view: 'basic'
        });
        slider.control('arrows');
        slider.control('scrollbar', {dir: 'h'});
        slider.control('thumblist', {autohide: false, dir: 'v', arrows: false});
    });
</script>
<body>
<div class="yq808"></div>
<header id="header" class="header">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 col-sm-12 lunboimg">
                <img src="${chanp.url}" class="img-responsive" alt="Responsive image">
            </div>
        </div>

        <%--nav--%>
        <jsp:include page="/WEB-INF/pages/comm/nav.jsp"></jsp:include>

    </div>
</header>
<div class="container-fluid bgc_f padding_buttom50">


    <div class="row bgc_shiji paddimg30">
        <div class="col-md-10 col-md-offset-1 col-sm-12">
            <div class="row">
                <a href="javascript:history.go(-1);">返回上一级</a><span> >  ${product.title}</span>
                <hr>
                <div class="col-md-5">
                    <div class="ms-showcase2-template ms-dir-v">
                        <!-- masterslider -->
                        <div class="master-slider ms-skin-default" id="masterslider">

                        <l:forEach items="${img}" var="oneimg">
                            <div class="ms-slide">
                                <img src="masterslider/loading-2.gif" data-src="${oneimg.url}" alt="${oneimg.title}"/>
                                <img class="ms-thumb" src="${oneimg.url}" alt="${oneimg.title}"/>
                            </div>
                        </l:forEach>
                        </div>
                        <!-- end of masterslider -->
                    </div>
                </div>
                <div class="col-md-7">
                    <div class="yq203">
                        <span>${product.detail}</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/pages/comm/footer.jsp"></jsp:include>

</body>
</html>