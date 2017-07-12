<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/3 0003
  Time: 下午 8:51
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
                <img src="${zhidao.url}"  class="img-responsive" alt="${zhidao.title}">
            </div>
        </div>

        <%--nav--%>
        <jsp:include page="/WEB-INF/pages/comm/nav.jsp"></jsp:include>

    </div>
</header>
<div class="container-fluid bgc_f padding_buttom50 ">
            <div class="row">
                <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 col-sm-11 col-xs-12 color_g  line_height_40 textalign_center">
                    <ul id="myTab">
                        <li onclick="window.location.href='/zhidao?adress=1'">
                            <a href="javascript:void(0)"  data-toggle="tab">
                                <div class="col-md-3 col-sm-3 col-xs-6 transition mouseover_red <l:if test="${address == 1}">bgc_n</l:if>">
                                    资讯中心
                                </div>
                            </a>
                        </li>
                        <li onclick="window.location.href='/zhidao?adress=2'">
                            <a href="javascript:(0)" data-toggle="tab">
                                <div class="col-md-3 col-sm-3 col-xs-6 transition mouseover_red <l:if test="${address == 2}">bgc_n</l:if>">
                                    环境现状
                                </div>
                            </a>
                        </li>
                        <li onclick="window.location.href='/zhidao?adress=3'">
                            <a href="javascript:(0)" data-toggle="tab">
                                <div class="col-md-3 col-sm-3 col-xs-6 transition mouseover_red <l:if test="${address == 3}">bgc_n</l:if>">
                                    新风系统
                                </div>
                            </a>
                        </li>
                        <li onclick="window.location.href='/zhidao?adress=4'">
                            <a href="javascript:(0)" data-toggle="tab">
                                <div class="col-md-3 col-sm-3 col-xs-6 transition mouseover_red <l:if test="${address == 4}">bgc_n</l:if>">
                                    精品花卉
                                </div>
                            </a>
                        </li>
                    </ul>
                    <img src="${pageContext.request.contextPath}/reg/images/fgx.png" class="width_100" alt="">
                </div>

            </div>
            <div class="row ">
                <div class="col-md-9 col-sm-11 col-xs-11">
                    <div class="col-md-offset-1 col-sm-offset-1 col-xs-0  yq104">
                    <l:forEach items="${news}" var="onenew">
                        <div class="row bgc_f border_buttom_solid  color_r" >
                            <div class="media ">
                               <span class="media-left media-middle image_100 hidden-xs">
                                   <img src="${onenew.newimg}" alt="${onenew.newtitle}">
                               </span>
                                <div class="media-body padding10">
                                    <div class="yq111">
                                        <div class="yq113">
                                            <a href="javascript:window.location.href='/tonewdetail?id='+${onenew.id}">${onenew.newtitle}</a>
                                            <p>${onenew.newtime}</p>
                                        </div>
                                        <div class="yq112 ">${onenew.newjianjie}</div>
                                        <div class="yq113 textalign_right">
                                            <span class="fontsize fontfamil">——${onenew.newwriter}</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </l:forEach>

                    </div>
                </div>

                <div class="col-md-2 col-sm-3 margn_left20p hidden-xs hidden-sm">
                    <div class="yq103">
                        <div class="yq108">
                            <div class="yq116">导航</div>
                            <ul class="yq114">
                                <li id="dan01" onclick="window.location.href='/zhidao?adress=1'">资讯中心</li>
                                <li id="dan02" onclick="window.location.href='/zhidao?adress=2'">环境现状</li>
                                <li id="dan03" onclick="window.location.href='/zhidao?adress=3'">新风系统</li>
                                <li id="dan04" onclick="window.location.href='/zhidao?adress=4'">精品花卉</li>
                            </ul>
                            <div class="yq115">
                                <div class="yq116">为您推荐</div>
                                <ul class="yq117">
                                    <l:forEach items="${tuijiannew}" var="kk">
                                        <li><a href="javascript:window.location.href='/tonewdetail?id='+${kk.id}">${kk.newtitle}</a></li>
                                    </l:forEach>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


</div>
<jsp:include page="/WEB-INF/pages/comm/footer.jsp"></jsp:include>
</body>
</html>
