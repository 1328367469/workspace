<%--
  Created by IntelliJ IDEA.
  User: lt
  Date: 2017/1/23 0023
  Time: 上午 12:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="l" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />

    <title>四川斯科云环保科技有限公司</title>
    <link rel="icon" href="${pageContext.request.contextPath}/reg/images/logo.ico" type="image/x-icon">
</head>
<body>
<div class="yq808"></div>
<header id="header" class="header">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 col-sm-12 lunboimg">
                <img src="${sheji.url}"  class="img-responsive" alt="${sheji.title}">
            </div>
        </div>

        <%--nav--%>
        <jsp:include page="/WEB-INF/pages/comm/nav.jsp"></jsp:include>

    </div>
</header>

<script>
    $(function () {
        $('#myTab li:eq(${active}) a').tab('show');
        $('.mouseover_red:eq(${active})').addClass('bgc_n')
    })

</script>

<div class="container-fluid bgc_f">
    <div class="row">
        <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 col-sm-11 col-xs-12 color_g  line_height_40 textalign_center">
            <ul id="myTab">
                <li>
                    <a href="#xinfeng"  data-toggle="tab">
                        <div class="col-md-3 col-sm-3 col-xs-6  transition mouseover_red">
                            新风设计
                        </div>
                    </a>
                </li>
                <li >
                    <a href="#yangtai" data-toggle="tab">
                        <div class="col-md-3 col-sm-3 col-xs-6  transition mouseover_red">
                            阳台设计
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#qiliu" data-toggle="tab">
                        <div class="col-md-3 col-sm-3 col-xs-6  transition mouseover_red">
                            模拟气流
                        </div>
                    </a>
                </li>
                <li >
                    <a href="#xianchang" data-toggle="tab">
                        <div class="col-md-3 col-sm-3 col-xs-6  transition mouseover_red">
                            施工现场
                        </div>
                    </a>
                </li>
            </ul>

        </div>
    </div>

    <div class="row bgc_shiji">
        <div class="col-md-10 col-md-offset-1 col-sm-12">
            <div id="myTabContent" class="tab-content">
                <div class="tab-pane fade " id="xinfeng">
                    <div class="container">
                            <l:forEach items="${designs}" var="design">
                                <l:if test="${design.adress == 1}">
                                <div class="col-sm-6 col-md-3">
                                    <div class="yq201">
                                        <a href="javascript:window.location.href='/designOne?id='+${design.id}" class="yq202">
                                            <span><img src="${design.img}" height="200" alt="${design.title}"></span>
                                            <p><span>${design.title}</span></p>
                                        </a>
                                    </div>
                                </div>
                                </l:if>
                            </l:forEach>
                    </div>
                </div>
                <div class="tab-pane fade" id="yangtai">
                    <div class="container">
                        <l:forEach items="${designs}" var="design">
                            <l:if test="${design.adress == 2}">
                                <div class="col-sm-6 col-md-3">
                                    <div class="yq201">
                                        <a href="javascript:window.location.href='/designOne?id='+${design.id}" class="yq202">
                                            <span><img src="${design.img}" height="200" alt="${design.title}"></span>
                                            <p><span>${design.title}</span></p>
                                        </a>
                                    </div>
                                </div>
                            </l:if>
                        </l:forEach>
                    </div>
                </div>
                <div class="tab-pane fade" id="qiliu">
                    <div class="container">
                        <l:forEach items="${designs}" var="design">
                            <l:if test="${design.adress == 3}">
                                <div class="col-sm-6 col-md-3">
                                    <div class="yq201">
                                        <a href="javascript:window.location.href='/designOne?id='+${design.id}" class="yq202">
                                            <span><img src="${design.img}" height="200" alt="${design.title}"></span>
                                            <p><span>${design.title}</span></p>
                                        </a>
                                    </div>
                                </div>
                            </l:if>
                        </l:forEach>
                    </div>
                </div>
                <div class="tab-pane fade" id="xianchang">
                    <div class="container">
                        <l:forEach items="${designs}" var="design">
                            <l:if test="${design.adress == 4}">
                                <div class="col-sm-6 col-md-3">
                                    <div class="yq201">
                                        <a href="javascript:window.location.href='/designOne?id='+${design.id}" class="yq202">
                                            <span><img src="${design.img}" height="200" alt="${design.title}"></span>
                                            <p><span>${design.title}</span></p>
                                        </a>
                                    </div>
                                </div>
                            </l:if>
                        </l:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
<jsp:include page="/WEB-INF/pages/comm/footer.jsp"></jsp:include>
</body>
</html>