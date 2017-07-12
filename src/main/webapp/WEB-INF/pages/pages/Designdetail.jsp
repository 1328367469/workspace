<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/1/23 0023
  Time: 上午 12:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no"/>

    <title>四川斯科云环保科技有限公司</title>
    <link rel="icon" href="${pageContext.request.contextPath}/reg/images/logo.ico" type="image/x-icon">
</head>
<body>
<div class="yq808"></div>
<header id="header" class="header">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 col-sm-12 lunboimg">
                <img src="${sheji.url}" class="img-responsive" alt="${sheji.title}">
            </div>
        </div>

        <%--nav--%>
        <jsp:include page="/WEB-INF/pages/comm/nav.jsp"></jsp:include>

    </div>
</header>

<div class="container bgc_f">
    <div class="row">
        <div class="col-md-10 col-md-offset-1 col-sm-12">
            <div class="container">
                <div class="col-md-10 col-sm-12 col-xs-12 padding50">
                    <a href="javascript:history.go(-1)">返回上一级</a><span> >  ${design.title}</span>
                    <hr>
                    <p class="yq304">
                        ${design.designnr}
                    </p>
                </div>

            </div>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/pages/comm/footer.jsp"></jsp:include>
</body>
</html>
