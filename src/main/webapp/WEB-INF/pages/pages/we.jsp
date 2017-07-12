<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/1/23 0023
  Time: 上午 12:36
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
                <img src="${women.url}" class="img-responsive" alt="${women.title}">
            </div>
        </div>

        <%--nav--%>
        <jsp:include page="/WEB-INF/pages/comm/nav.jsp"></jsp:include>

    </div>
</header>
<script>
    $(function () {
        $('#myTab li:eq(${weactive}) a').tab('show');
        $('.mouseover_red:eq(${weactive})').addClass('bgc_n')
    })

</script>
<div class="bgc_xs">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 col-sm-11 col-xs-12 color_g  line_height_40 textalign_center">
                <ul id="myTab">
                    <li >
                        <a href="#xinwen" data-toggle="tab">
                            <div class="col-md-3 col-sm-3 col-xs-6  transition mouseover_red">
                                新闻中心
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#jianjie" data-toggle="tab">
                            <div class="col-md-3 col-sm-3 col-xs-6  transition mouseover_red">
                                公司简介
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#tuandui" data-toggle="tab">
                            <div class="col-md-3 col-sm-3 col-xs-6  transition mouseover_red">
                                团队介绍
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#huoban" data-toggle="tab">
                            <div class="col-md-3 col-sm-3 col-xs-6  transition mouseover_red">
                                合作伙伴
                            </div>
                        </a>
                    </li>
                </ul>

            </div>
        </div>

        <div class="row ">
            <div class="col-md-10  col-sm-12">
                <div id="myTabContent" class="tab-content">
                    <div class="tab-pane fade" id="xinwen">
                        <div class="container">
                            <div class="col-md-12 padding50">

                                <l:forEach items="${advert}" var="n">
                                <div class="row bgc_f border_buttom_solid  color_r " >
                                    <div class="media width_95">
                                       <span class="media-left media-middle image_100 hidden-xs">
                                           <img src="${n.newimg}" alt="${n.newtitle}">
                                       </span>
                                        <div class="media-body">
                                            <div class="yq111">
                                                <div class="yq113">
                                                    <a href="javascript:window.location.href='/tonewdetail?id='+${n.id}">${n.newtitle}</a>
                                                    <p>${n.newtime}</p>
                                                </div>
                                                <div class="yq112 ">${n.newjianjie}</div>
                                                <div class="yq113 textalign_right">
                                                    <span class="fontsize fontfamil">——${n.newwriter}</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </l:forEach>

                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="jianjie">
                        <div class="container">
                            <div class="col-md-10 col-sm-10 col-xs-12 padding50 col-md-offset-1 col-sm-offset-1">
                                <img class="width_100 maxwidth yq603" src="${pageContext.request.contextPath}/reg/images/bgi_gsjj.jpg" alt="">
                                <div class="yq601">
                                    四川斯科云环保科技有限公司是一家专注于设计改善居住环境的环保科技公司，公司秉承以人为本的经营态度。
                                    集中方案设计、安装销售、售后服务于一体，为用户提供舒适放心的产品体验。
                                    “问道有先后，术业有专攻”公司致力于净化行业，为了使客户得到极致体验，从设备检测到安装维护都是由专业的团队负责。
                                    解决传统净化器空气循环不畅、含氧量不足的问题。我们推崇“有氧植物—居住空间隔离式新型供氧系统”，
                                    用专业的产品和服务为您量身定制天然氧吧，引入富含纯天然负离子、氧气的新鲜空气。
                                    我们的目标是让您在家即刻享受大自然的清新！
                                    <p class="yq602">公司希望在环境改善这一领域建立属于自己的品牌效应，做到专业专注。</p>
                                    <p class="yq602">我们的理念：徜徉天地之间，想呼吸，享呼吸！</p>
                                    <p class="yq602">我们的服务：细微显真情，平凡塑仁心！</p>
                                    <p class="yq602">我们的目标：纵使雾霾围城，室内依旧清新，呼吸健康，健康呼吸。</p>
                                    <p class="yq602">斯科云新风系统,空气灵动之源，重塑生命的生机与活力。</p>
                                    <p class="yq602">流水不腐、户枢不蠹，动也！ 《吕氏春秋.尽数》</p>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="tuandui">
                        <div class="container">
                            <div class="col-md-10 col-sm-10 col-xs-12 padding50 col-md-offset-1 col-sm-offset-1">
                                <p><img class="width_100 " src="${pageContext.request.contextPath}/reg/images/team.png" alt="工作流程"></p>
                                <hr>
                                <p class="yq603">公司拥有一支由高学历、高素质人才组成的团队，致力于打造优质、高效的企业文化</p>
                                <p class="yq604">市场营销</p>
                                <p class="yq304">
                                    市场营销是由一群具有成功营销经验的团队打造，充满活力与创造力。能及时根据市场反馈进行方案调整。
                                    不断的更新实时资料，根据产品的不同定位快速找到相适应群体。保证在与客户交流过程中能高效快速的找到客户所需。
                                </p>
                                <p class="yq604">设计部门</p>
                                <p class="yq304">
                                    设计部门是由一支年轻的设计团队打造，根据客户所需量身打造，采用最新的三维模拟技术为客户呈现设计效果。
                                    采用计算机流体动力学分析技术，使室内空气得到最优循环。公司设计部门还与园林设计公司合作，
                                    针对客户定制有氧阳台进行交互式合作设计，不仅满足功能需求，更注重美观。
                                    此外，配合客户地暖、空调等设备进行优化设计。为您打造属于你自己的设计方案。
                                </p>
                                <p class="yq604">工程施工</p>
                                <p class="yq304">
                                    施工团队由一支经验丰富专业高效的团队组成，有良好的身体素质，能吃苦耐劳。
                                    施工过程由管理部对每个工地的质量和进度进行全方位监督，严格按照公司的技术要求和施工规范进行施工，听从公司管理人员的指挥和调动。
                                    每个施工人员与每台设备唯一对应，统一保存到公司施工档案。保证任何施工问题都可以找到相应的责任人。
                                </p>
                                <p class="yq604">客户服务</p>
                                <p class="yq304">
                                    客户服务中心致力于为客户提供最快捷，最有效的服务体验。秉承“诚信高效、优质服务”的服务理念。为保障消费者的利益，公司建立了完善的客户服务体系。
                                    对每一台设备采用一码追踪形式，从安装到售后服务保证客户满意度。为客户提供完善服务，不断提升企业品牌知名度和客户美誉度。
                                    为广大消费者提供产品咨询、信息反馈、投诉及建议等全方位的优质服务。
                                </p>
                            </div>
                        </div>
                    </div>
                    <%--合作伙伴 启用合作伙伴模块时直接在 下div中加上 id="huoban" 即可--%>
                    <div class="tab-pane fade" >

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="/WEB-INF/pages/comm/footer.jsp"></jsp:include>
</body>
</html>
