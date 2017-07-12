<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/1/23 0023
  Time: 上午 12:37
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
                <img src="${product.url}"  class="img-responsive" alt="${product.title}">
            </div>
        </div>
        <%--nav--%>
        <jsp:include page="/WEB-INF/pages/comm/nav.jsp"></jsp:include>
    </div>
</header>

<div class="container yq401 padding_buttom50">

    <div class="container margn_top30">
        <div class="row">
            <div class="col-md-12 bgc_f height_40 line_height_40">产品</div>
            <div class="col-md-12 bgc_shiji">
                <div class="row">
                    <l:forEach items="${products}" var="product">
                            <div class="col-md-3 col-sm-6">
                                <div class="yq402" onclick="javascript:window.location.href='/Productdetail?id='+${product.id}">
                                    <div style="height: 230px"><img class="width_100" style="max-height: 230px" src="${product.img}" alt=""></div>
                                    <a href="#">${product.title}</a>
                                    <p><i><span>￥${product.outprice}</span></i> 元/台</p>
                                </div>
                            </div>
                    </l:forEach>
                </div>
            </div>
        </div>
    </div>


</div>
<jsp:include page="/WEB-INF/pages/comm/footer.jsp"></jsp:include>
</body>
</html>
