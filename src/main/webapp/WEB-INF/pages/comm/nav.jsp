<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/1/23 0023
  Time: 上午 12:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<link rel="stylesheet" href="${pageContext.request.contextPath}/reg/css/xfbootstrap.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/reg/css/xfdefault.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/reg/css/xfindex.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/reg/css/xfold.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/reg/css/xfsite.css"/>


<script type="text/javascript" src="${pageContext.request.contextPath}/reg/js/xfjquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/reg/js/xfbootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/reg/js/xfjquery.mousewheel.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/reg/js/xfindex.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/reg/js/xfzhidao.js"></script>

<%--装修实例插件--%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/reg/css/xfshili1.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/reg/css/xfshili2.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/reg/js/xfshili.js"></script>

<%--layer--%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/reg/layer/skin/layer.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/reg/layer/layer.js"></script>

<%--样式完--%>


<div class="container-fluid">
    <div class="row display_if">
        <div class="col-md-12 col-sm-12">
            <nav class="navbar navbar-default navbar-fixed-top border_none " role="navigation">
                <div class="row" id="animate">
                    <div class="col-md-1 col-sm-1 ">
                        <div class="container">
                            <div class="navbar-header ">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                        data-target="#bs-example-navbar-collapse-1">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a class="navbar-brand" href="#">
                                    <img src="${pageContext.request.contextPath}/reg/images/LOGO.png" class="nva-logo" alt=""/>
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-8 col-sm-8 col-md-offset-1 col-sm-offset-1 visible-xs-*">
                        <div class="collapse navbar-collapse " id="bs-example-navbar-collapse-1">
                            <div class="row">
                                <ul class="nav navbar-nav" >
                                    <div class="col-md-2 col-sm-2" >
                                        <li class="dh0055"><a href="/home">
                                            <div class="dh00550">首&nbsp;&nbsp;页</div>
                                        </a></li>
                                    </div>
                                    <div class="col-md-2 col-sm-2">
                                        <li class="dh0055">
                                            <a href="/zhidao">
                                                <div class="dh00550">知道</div>
                                            </a>
                                            <ul class="dh008 hidden-xs">
                                                <a href="javascript:window.location.href='/zhidao?adress=1'" title="资讯中心">
                                                    <li>资讯中心</li>
                                                </a>
                                                <a href="javascript:window.location.href='/zhidao?adress=2'" title="环境现状">
                                                    <li>环境现状</li>
                                                </a>
                                                <a href="javascript:window.location.href='/zhidao?adress=3'" title="新风系统">
                                                    <li>新风系统</li>
                                                </a>
                                                <a href="javascript:window.location.href='/zhidao?adress=4'" title="精品花卉">
                                                    <li>精品花卉</li>
                                                </a>
                                            </ul>
                                        </li>
                                    </div>
                                    <div class="col-md-2 col-sm-2">
                                        <li class="dh0055">
                                            <a href="/design">
                                                <div class="dh00550">设计</div>
                                            </a>
                                            <ul class="dh008 hidden-xs">
                                                <a href="/design?active=0" title="新风设计">
                                                    <li>新风设计</li>
                                                </a>
                                                <a href="/design?active=1" title="阳台设计">
                                                    <li>阳台设计</li>
                                                </a>
                                                <a href="/design?active=2" title="模拟气流">
                                                    <li>模拟气流</li>
                                                </a>
                                                <a href="/design?active=3" title="施工现场">
                                                    <li>施工现场</li>
                                                </a>
                                            </ul>
                                        </li>
                                    </div>
                                    <div class="col-md-2 col-sm-2">
                                        <li class="dh0055">
                                            <a href="/service">
                                                <div class="dh00550">服务</div>
                                            </a>
                                            <ul class="dh008 hidden-xs">
                                                <a href="/service?serviceactive=0" title="服务流程">
                                                    <li>工作流程</li>
                                                </a>
                                                <a href="/service?serviceactive=1" title="预约咨询">
                                                    <li>预约咨询</li>
                                                </a>
                                                <a href="/service?serviceactive=2" title="售后服务">
                                                    <li>售后服务</li>
                                                </a>
                                                <a href="/service?serviceactive=3" title="问题反馈">
                                                    <li>问题反馈</li>
                                                </a>
                                            </ul>
                                        </li>
                                    </div>
                                    <div class="col-md-2 col-sm-2">
                                        <li class="dh0055">
                                            <a href="/we">
                                                <div class="dh00550">我们</div>
                                            </a>
                                            <ul class="dh008 hidden-xs">
                                                <a href="/we?weactive=0" title="新闻中心">
                                                    <li>新闻中心</li>
                                                </a>
                                                <a href="/we?weactive=1" title="公司简介">
                                                    <li>公司简介</li>
                                                </a>
                                                <a href="/we?weactive=2" title="团队介绍">
                                                    <li>团队介绍</li>
                                                </a>
                                                <a href="/we?weactive=3" title="合作伙伴">
                                                    <li>合作伙伴</li>
                                                </a>
                                            </ul>
                                        </li>
                                    </div>
                                    <div class="col-md-2 col-sm-2">
                                        <li class="dh0055">
                                            <a href="/product">
                                                <div class="dh00550">产品</div>
                                            </a>
                                        </li>
                                    </div>

                                </ul>
                                <div class="col-xs-10 visible-xs-block text-right">
                                    <div class="dh009" title="记得联系我们哟！192-231-3282">
                                        <marquee direction="left" class="dh010">
                                            <img src="${pageContext.request.contextPath}/reg/images/phone.png" alt=""/><span>189-817-23422 ，028-80566587</span>
                                        </marquee>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-2 col-sm-2  hidden-xs text-right ">
                        <div class="dh009" title="记得联系我们哟！189-817-23422 ，028-80566587">
                            <marquee direction="left" class="dh010">
                                <img src="${pageContext.request.contextPath}/reg/images/phone.png" alt=""/><span>189-817-23422 ，028-80566587</span>
                            </marquee>
                        </div>
                    </div>

                </div>
            </nav>

        </div>

    </div>

</div>