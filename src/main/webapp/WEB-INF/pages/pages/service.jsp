<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/1/23 0023
  Time: 上午 12:03
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

</head>
<body>
<div class="yq808"></div>
<header id="header" class="header">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 col-sm-12 lunboimg">
                <img src="${fuwu.url}" class="img-responsive" alt="${fuwu.title}">
            </div>
        </div>

        <%--nav--%>
        <jsp:include page="/WEB-INF/pages/comm/nav.jsp"></jsp:include>

    </div>
</header>
<script>
    $(function () {
        $('#myTab li:eq(${serviceactive}) a').tab('show');
        $('.mouseover_red:eq(${serviceactive})').addClass('bgc_n');
        $("#hhService").fix({float: 'right', minStatue: false, skin: 'green', durationTime: 1000})

    })

</script>

<div class="container-fluid bgc_f yq401">
    <div class="row">
        <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 col-sm-11 col-xs-12 color_g  line_height_40 textalign_center">
            <ul id="myTab">
                <li>
                    <a href="#liucheng" data-toggle="tab">
                        <div class="col-md-3 col-sm-3 col-xs-6 transition mouseover_red">
                            服务流程
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#yuyue" data-toggle="tab">
                        <div class="col-md-3 col-sm-3 col-xs-6 transition mouseover_red">
                            预约咨询
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#souhou" data-toggle="tab">
                        <div class="col-md-3 col-sm-3 col-xs-6 transition mouseover_red">
                            售后服务
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#fankui" data-toggle="tab">
                        <div class="col-md-3 col-sm-3 col-xs-6 transition mouseover_red">
                            问题反馈
                        </div>
                    </a>
                </li>
            </ul>

        </div>
    </div>

    <div class="row">
        <div class="col-md-10 col-md-offset-1 col-sm-12">
            <div id="myTabContent" class="tab-content">
                <div class="tab-pane fade" id="liucheng">
                    <div class="container">
                        <div class="col-md-12 padding50 ">
                            <div class="col-md-3">
                                <div class="yq502" id="yq502">
                                    <div class="col-md-10 col-md-offset-2 col-sm-3 col-xs-6">
                                        <a href="http://wpa.qq.com/msgrd?v=3&uin=670335598&site=qq&menu=yes"
                                           target="_blank"
                                           class="yq500">
                                            <div class="yq501">
                                                <img src="${pageContext.request.contextPath}/reg/images/QQ.PNG"
                                                     alt=""><br>
                                                <span class="letter5">QQ</span><br>
                                                <span>670335598</span>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-10 col-md-offset-2 col-sm-3 col-xs-6">
                                        <a href="https://wx.qq.com/" class="yq500">
                                            <div class="yq501">
                                                <img src="${pageContext.request.contextPath}/reg/images/weixin.png"
                                                     alt=""><br>
                                                <span class="letter5">微信</span><br>
                                                <span>SCCirclewind</span>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-10 col-md-offset-2 col-sm-3 col-xs-6">
                                        <a href="javascript:void(0)" id="ph" target="_blank" class="yq500">
                                            <div class="yq501">
                                                <img src="${pageContext.request.contextPath}/reg/images/dianhua.png"
                                                     alt=""><br>
                                                <span class="letter5">电话</span><br>
                                                <span>18981723422</span>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-10 col-md-offset-2 col-sm-3 col-xs-6">
                                        <a href="#yuyue" data-toggle="tab" class="yq504 kkmove">
                                            <img src="reg/images/yuyueNOW.png" alt="">
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-9">
                                <img class="width_90"
                                     src="${pageContext.request.contextPath}/reg/images/fuwuliucheng.png" alt="工作流程">
                                <a href="#yuyue" data-toggle="tab" class="col-md-6 col-md-offset-3">
                                    <button class="yq503 kkmove">免费预约</button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="yuyue">
                    <div class="container">
                        <div class="row padding50">
                            <div class="col-lg-3 col-lg-offset-1 col-md-4 col-sm-4 hidden-xs">
                                <img class="width_100"
                                     src="${pageContext.request.contextPath}/reg/images/mianfeisheji.jpg" alt="">
                            </div>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <p class="col-md-8 col-md-offset-2 yq302">尊敬的客户，您好：</p>
                                <p class="col-md-8 col-md-offset-2 yq303">欢迎填写客户基本信息，我们将第一时间与您联系...</p>
                                <form class="form-horizontal" action="/user/adduser" method="post">
                                    <div class="form-group ">
                                        <label class="col-sm-3 control-label no-padding-right"> 真实姓名 </label>

                                        <div class="col-sm-7">
                                            <div class="input-group">
                                                <input type="text" name="name" required placeholder="请输入您姓名"
                                                       class="form-control">
                                                <div class="input-group-btn">
                                                    <select name="sex" class="btn btn-default ">
                                                        <option value="1">先生</option>
                                                        <option value="0">女士</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right"> 电话号码 </label>

                                        <div class="col-sm-7">
                                            <input type="text" name="phone" pattern="^1[3-9]\d{9}$" title="请填写正确的电话格式"
                                                   maxlength="11" required placeholder="请输入您的真实电话号码，方便我们联系您"
                                                   class="form-control"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right"> 电子邮件 </label>

                                        <div class="col-sm-7">
                                            <input type="email" name="email" required
                                                   placeholder="当您不方便接电话时，我们会将信息发送至您的邮箱"
                                                   class="form-control"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-offset-2 col-md-8 text-center">
                                            <button class="btn btn-info" type="submit">
                                                <i class="ace-icon fa fa-check bigger-110"></i>
                                                提交
                                            </button>

                                            &nbsp; &nbsp; &nbsp;
                                            <button class="btn" type="reset">
                                                <i class="ace-icon fa fa-undo bigger-110"></i>
                                                重置
                                            </button>
                                        </div>
                                    </div>

                                </form>

                                <div class="col-md-10 col-sm-12 col-xs-12 col-md-offset-1 ">
                                    <div class="col-md-6 col-sm-6 col-lg-4">
                                        <img src="${pageContext.request.contextPath}/reg/images/weixin.jpg"
                                             class="width_100" alt=""></div>
                                    <div class="col-md-6 col-sm-6 yq301">
                                        <p>电话: <span><i>18981723422</i></span></p>
                                        <p>座机: <span><i> 028-80566587</i></span></p>
                                        <p>邮箱: <span><i> 670335598@qq.com</i></span></p>
                                        <p>微信号: <span><i> SCCirclewind</i></span></p>
                                        <p> Q Q 号: <span><i> 670335598</i></span></p>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="tab-pane fade" id="souhou">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-10 col-sm-12 col-xs-12 col-md-offset-1  padding50">
                                <p class="col-md-8 col-md-offset-2 yq302">尊敬的客户，您好：</p>
                                <p class="col-md-8 col-md-offset-2 yq303">给您带来不便我们深表歉意，我们将第一时间上门处理...</p>
                                <form class="form-horizontal " action="/user/addsale" method="post">

                                    <div class="form-group">
                                        <label class="col-sm-3  control-label no-padding-right"> 电话号码 </label>

                                        <div class="col-sm-7">
                                            <input type="text" name="phone" maxlength="11" pattern="^1[3-9]\d{9}$"
                                                   title="请填写正确的电话格式" required placeholder="请输入您的装修时电话号码，方便我们联系您"
                                                   class="form-control"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right"> 存在问题 </label>

                                        <div class="col-sm-7">
                                            <textarea required name="question"
                                                      placeholder="请说明设备存在的问题，我们会在第一时间派遣工程师为您解决问题...谢谢您的支持"
                                                      class="form-control" style="height: 150px"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-offset-2 col-md-8 text-center">
                                            <button class="btn btn-info" type="submit">
                                                <i class="ace-icon fa fa-check bigger-110"></i>
                                                Submit
                                            </button>

                                            &nbsp; &nbsp; &nbsp;
                                            <button class="btn" type="reset">
                                                <i class="ace-icon fa fa-undo bigger-110"></i>
                                                Reset
                                            </button>
                                        </div>
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="fankui">
                    <div class="container">
                        <div class="row">

                            <div class="col-md-10 col-sm-12 c    ol-xs-12 col-md-offset-1  padding50">
                                <p class="col-md-8 col-md-offset-2 yq302">尊敬的客户，您好：</p>
                                <p class="col-md-8 col-md-offset-2 yq303">感谢您留下宝贵的意见及建议，我们将第一时间予您回复...</p>
                                <!-- UY BEGIN -->
                                <!--PC和WAP自适应版-->
                                <div id="SOHUCS"></div>
                                <script type="text/javascript">
                                    (function () {
                                        var appid = 'cyt1HRa4B';
                                        var conf = 'prod_e370dc75497a60d1b6beeed751a9c26a';
                                        var width = window.innerWidth || document.documentElement.clientWidth;
                                        if (width < 960) {
                                            window.document.write('<script id="changyan_mobile_js" charset="utf-8" type="text/javascript" src="https://changyan.sohu.com/upload/mobile/wap-js/changyan_mobile.js?client_id=' + appid + '&conf=' + conf + '"><\/script>');
                                        } else {
                                            var loadJs = function (d, a) {
                                                var c = document.getElementsByTagName("head")[0] || document.head || document.documentElement;
                                                var b = document.createElement("script");
                                                b.setAttribute("type", "text/javascript");
                                                b.setAttribute("charset", "UTF-8");
                                                b.setAttribute("src", d);
                                                if (typeof a === "function") {
                                                    if (window.attachEvent) {
                                                        b.onreadystatechange = function () {
                                                            var e = b.readyState;
                                                            if (e === "loaded" || e === "complete") {
                                                                b.onreadystatechange = null;
                                                                a()
                                                            }
                                                        }
                                                    } else {
                                                        b.onload = a
                                                    }
                                                }
                                                c.appendChild(b)
                                            };
                                            loadJs("https://changyan.sohu.com/upload/changyan.js", function () {
                                                window.changyan.api.config({appid: appid, conf: conf})
                                            });
                                        }
                                    })(); </script>

                                <!-- UY END -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <l:if test="${sescess == 1}">
        <script>
            layer.alert('预约成功，我们将以最快的速度为您上门测量', {icon: 6});
        </script>
    </l:if>
    <l:if test="${sescess == 0}">
        <script>
            layer.msg('该电话已被注册！', {icon: 5});
        </script>
    </l:if>
    <l:if test="${sescess1 == 1}">
        <script>
            layer.alert('反馈成功，我们将立即为您解决问题', {icon: 6});
        </script>
    </l:if>
    <l:if test="${sescess1 == 0}">
        <script>
            layer.msg('电话号码与装修电话不符！', {icon: 5});
        </script>
    </l:if>

</div>
<jsp:include page="/WEB-INF/pages/comm/footer.jsp"></jsp:include>
</body>
</html>
