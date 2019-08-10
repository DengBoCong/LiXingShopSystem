<%--
  Created by IntelliJ IDEA.
  User: Power
  Date: 2019/8/8
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" +
            request.getServerPort() + path;
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>丽星平台 - 经营概况</title>
    <!-- HTML5 Shim and Respond.js IE11 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 11]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="丽星平台，在线家具市场销售平台"/>
    <meta name="keywords" content="丽星平台, 家具, 市场, 线上商城"/>
    <meta name="author" content="DBC" />

    <!-- Favicon icon -->
    <link rel="icon" href="../../admin/img/favicon.ico" type="image/x-icon">
    <!-- fontawesome icon -->
    <link rel="stylesheet" href="../../admin/fonts/fontawesome/css/fontawesome-all.min.css">
    <!-- animation css -->
    <link rel="stylesheet" href="../../admin/plugins/animation/css/animate.min.css">
    <!-- notification css -->
    <link rel="stylesheet" href="../../admin/plugins/notification/css/notification.min.css">
    <!-- vendor css -->
    <link rel="stylesheet" href="../../admin/css/style.css">

</head>

<body>
<!-- [ Pre-loader ] start -->
<div class="loader-bg">
    <div class="loader-track">
        <div class="loader-fill"></div>
    </div>
</div>
<!-- [ Pre-loader ] End -->

<!-- [ navigation menu ] start -->
<nav class="pcoded-navbar menu-light brand-lightblue ">
    <div class="navbar-wrapper">
        <div class="navbar-brand header-logo">
            <a href="index.html" class="b-brand">
                <div class="b-bg">
                    <i class="feather icon-trending-up"></i>
                </div>
                <span class="b-title">丽星平台</span>
            </a>
            <a class="mobile-menu" id="mobile-collapse" href="#!"><span></span></a>
        </div>
        <div class="navbar-content scroll-div">
            <ul class="nav pcoded-inner-navbar">
                <li class="nav-item pcoded-menu-caption">
                    <label>运营功能列表</label>
                </li>
                <li data-username="dashboard Default Ecommerce CRM Analytics Crypto Project" class="nav-item pcoded-hasmenu active pcoded-trigger">
                    <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-home"></i></span><span class="pcoded-mtext">企业信息</span></a>
                    <ul class="pcoded-submenu">
                        <li class="active"><a href="#" class="">经营概况</a></li>
                        <li class=""><a id="userDetail" href="" class="">详细资料</a></li>
                        <li class=""><a href="pages/enterprise/control.html" class="">平台流量监控</a></li>
                    </ul>
                </li>
                <li data-username="Vertical Horizontal Box Layout RTL fixed static Collapse menu color icon dark" class="nav-item pcoded-hasmenu">
                    <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-layout"></i></span><span class="pcoded-mtext">商品</span></a>
                    <ul class="pcoded-submenu">
                        <li class="pcoded-hasmenu"><a href="#!" class="">商品智配</a>
                            <ul class="pcoded-submenu">
                                <li class=""><a href="pages/commodity/adaptation/classify.html" class="" target="_blank">场景分类</a></li>
                                <li class=""><a href="pages/commodity/adaptation/scene.html" class="" target="_blank">场景图上传</a></li>
                                <li class=""><a href="pages/commodity/adaptation/commodity.html" class="" target="_blank">商品图上传</a></li>
                            </ul>
                        </li>
                        <li class=""><a href="pages/commodity/index.html" class="" target="_blank">商品档案</a></li>
                        <li class=""><a href="pages/commodity/classify.html" class="" target="_blank">商品分类</a></li>
                        <li class=""><a href="pages/commodity/photo.html" class="" target="_blank">商品图片</a></li>
                        <li class=""><a href="pages/commodity/video.html" class="" target="_blank">商品小视频</a></li>
                    </ul>
                </li>
                <li data-username="widget Statistic Data Table User card Chart" class="nav-item pcoded-hasmenu">
                    <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-layers"></i></span><span class="pcoded-mtext">订单</span></a>
                    <ul class="pcoded-submenu">
                        <li class="pcoded-hasmenu"><a href="#!" class="">订单管理</a>
                            <ul class="pcoded-submenu">
                                <li class=""><a href="pages/order/order/index.html" class="">全部订单</a></li>
                                <li class=""><a href="pages/order/order/behalfPayment.html" class="">待付款</a></li>
                                <li class=""><a href="pages/order/order/behalfReceiving.html" class="">待发货</a></li>
                                <li class=""><a href="pages/order/order/dropShipping.html" class="">待收货</a></li>
                            </ul>
                        </li>
                        <li class="pcoded-hasmenu"><a href="#!" class="">退货管理</a>
                            <ul class="pcoded-submenu">
                                <li class=""><a href="pages/order/return/return.html" class="">退货历史</a></li>
                                <li class=""><a href="pages/order/return/trearment.html" class="">待处理</a></li>
                                <li class=""><a href="pages/order/return/notPass.html" class="">未通过</a></li>
                            </ul>
                        </li>
                        <li class="pcoded-hasmenu"><a href="#!" class="">售后管理</a>
                            <ul class="pcoded-submenu">
                                <li class=""><a href="pages/order/afterSale/afterSale.html" class="">售后历史</a></li>
                                <li class=""><a href="pages/order/afterSale/treatment.html" class="">待处理</a></li>
                            </ul>
                        </li>
                        <li class="pcoded-hasmenu"><a href="#!" class="">取消订单</a>
                            <ul class="pcoded-submenu">
                                <li class=""><a href="pages/order/cancel/cancel.html" class="">取消历史</a></li>
                                <li class=""><a href="pages/order/cancel/treatment.html" class="">待处理</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li data-username="advance components Alert gridstack lightbox modal notification pnotify rating rangeslider slider syntax highlighter Tour Tree view Nestable Toolbar" class="nav-item pcoded-hasmenu">
                    <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-gitlab"></i></span><span class="pcoded-mtext">营销</span></a>
                    <ul class="pcoded-submenu">
                        <li class="pcoded-hasmenu"><a href="#!" class="">销售管理</a>
                            <ul class="pcoded-submenu">
                                <li class=""><a href="pages/market/market/index.html" class="">销售计划</a></li>
                                <li class=""><a href="pages/market/market/online.html" class="">线上营销</a></li>
                                <li class=""><a href="pages/market/market/activity.html" class="">活动策划</a></li>
                                <li class=""><a href="pages/market/market/ad.html" class="">广告策划</a></li>
                            </ul>
                        </li>
                        <li class="pcoded-hasmenu"><a href="#!" class="">经销商业绩</a>
                            <ul class="pcoded-submenu">
                                <li class=""><a href="pages/market/agency/agency.html" class="">数据看板</a></li>
                                <li class=""><a href="pages/market/agency/orderData.html" class="">下单情况</a></li>
                                <li class=""><a href="pages/market/agency/order.html" class="">历史订单</a></li>
                            </ul>
                        </li>
                        <li class="pcoded-hasmenu"><a href="#!" class="">业务员业绩</a>
                            <ul class="pcoded-submenu">
                                <li class=""><a href="pages/market/salesman/salesman.html" class="">数据看板</a></li>
                                <li class=""><a href="pages/market/salesman/orderData.html" class="">下单情况</a></li>
                                <li class=""><a href="pages/market/salesman/order.html" class="">历史订单</a></li>
                            </ul>
                        </li>
                        <li class="pcoded-hasmenu"><a href="#!" class="">厂商业绩</a>
                            <ul class="pcoded-submenu">
                                <li class=""><a href="pages/market/factory/factory.html" class="">数据看板</a></li>
                                <li class=""><a href="pages/market/factory/orderData.html" class="">下单情况</a></li>
                                <li class=""><a href="pages/market/factory/order.html" class="">历史订单</a></li>
                            </ul>
                        </li>
                        <li class=""><a href="pages/market/commodity.html" class="">商品数据看板</a></li>
                        <li class=""><a href="pages/market/discount.html" class="">促销折扣</a></li>
                    </ul>
                </li>
                <li class="nav-item pcoded-menu-caption">
                    <label>角色功能列表</label>
                </li>
                <li data-username="basic components Button Alert Badges breadcrumb Paggination progress Tooltip popovers Carousel Cards Collapse Tabs pills Modal Grid System Typography Extra Shadows Embeds" class="nav-item pcoded-hasmenu">
                    <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-box"></i></span><span class="pcoded-mtext">经销商</span></a>
                    <ul class="pcoded-submenu">
                        <li class=""><a href="pages/agency/index.html" class="">经销商档案</a></li>
                        <li class=""><a href="pages/agency/classify.html" class="">实景照片</a></li>
                        <li class=""><a href="pages/agency/dataBoard.html" class="">营业执照</a></li>
                    </ul>
                </li>
                <li data-username="form elements advance componant validation masking wizard picker select" class="nav-item pcoded-hasmenu">
                    <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-globe"></i></span><span class="pcoded-mtext">片区</span></a>
                    <ul class="pcoded-submenu">
                        <li class=""><a href="pages/area/principal.html" class="">片区划分</a></li>
                        <li class=""><a href="pages/area/index.html" class="">片区负责人</a></li>
                        <li class=""><a href="pages/area/saleman.html" class="">片区业务员</a></li>
                    </ul>
                </li>
                <li data-username="extra components Session Timeout Session Idle Timeout Offline" class="nav-item pcoded-hasmenu">
                    <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-bar-chart-2"></i></span><span class="pcoded-mtext">财务</span></a>
                    <ul class="pcoded-submenu">
                        <li class=""><a href="../financial/index.html" class="">核实订单</a></li>
                        <li class=""><a href="../financial/factory.html" class="">厂商核算</a></li>
                        <li class=""><a href="../financial/agency.html" class="">经销商核算</a></li>
                        <li class=""><a href="../financial/saleman.html" class="">业务员核算</a></li>
                        <li class="pcoded-hasmenu"><a href="#!" class="">报表模板</a>
                            <ul class="pcoded-submenu">
                                <li class=""><a href="../market/factory/factory.html" class="">订单</a></li>
                                <li class=""><a href="../market/factory/orderData.html" class="">订单收货单</a></li>
                                <li class=""><a href="../market/factory/orderData.html" class="">订单退货单</a></li>
                                <li class=""><a href="../market/factory/order.html" class="">采购单</a></li>
                                <li class=""><a href="../market/factory/order.html" class="">采购收货单</a></li>
                                <li class=""><a href="../market/factory/order.html" class="">采购退货单</a></li>
                            </ul>
                        </li>
                        <li class="pcoded-hasmenu"><a href="#!" class="">财务报表</a>
                            <ul class="pcoded-submenu">
                                <li class=""><a href="../market/factory/factory.html" class="">资金流量表</a></li>
                                <li class=""><a href="../market/factory/orderData.html" class="">利润表</a></li>
                                <li class=""><a href="../market/factory/orderData.html" class="">月份财务分析表</a></li>
                                <li class=""><a href="../market/factory/order.html" class="">年度财务分析表</a></li>
                                <li class=""><a href="../market/factory/order.html" class="">进账日报表</a></li>
                                <li class=""><a href="../market/factory/order.html" class="">职工薪酬分析表</a></li>
                                <li class=""><a href="../market/factory/order.html" class="">销售费用分析表</a></li>
                                <li class=""><a href="../market/factory/order.html" class="">月度利润预算表</a></li>
                                <li class=""><a href="../market/factory/order.html" class="">年份利润预算表</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li data-username="icons Feather Fontawsome flag material simple line themify" class="nav-item pcoded-hasmenu">
                    <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-command"></i></span><span class="pcoded-mtext">厂商</span></a>
                    <ul class="pcoded-submenu">
                        <li class=""><a href="pages/factory/index.html" class="">厂商档案</a></li>
                    </ul>
                </li>
                <li data-username="icons Feather Fontawsome flag material simple line themify" class="nav-item pcoded-hasmenu">
                    <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-feather"></i></span><span class="pcoded-mtext">权限</span></a>
                    <ul class="pcoded-submenu">
                        <li class=""><a href="pages/authority/customerService.html" class="">客服列表</a></li>
                        <li class=""><a href="pages/authority/humanAffairs.html" class="">人事列表</a></li>
                        <li class=""><a href="pages/authority/saleman.html" class="">厂商业务员列表</a></li>
                        <li class=""><a href="pages/authority/authoritySetting.html" class="">权限配置</a></li>
                        <li class=""><a href="pages/authority/authorityClassify.html" class="">权限分类</a></li>
                        <li class=""><a href="pages/authority/authorityDivide.html" class="">权限划分</a></li>
                    </ul>
                </li>
                <li class="nav-item pcoded-menu-caption">
                    <label>平台体系列表</label>
                </li>
                <li data-username="form elements advance componant validation masking wizard picker select" class="nav-item pcoded-hasmenu">
                    <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-cpu"></i></span><span class="pcoded-mtext">经销商APP</span></a>
                    <ul class="pcoded-submenu">
                        <li class=""><a href="pages/app/setting.html" class="">基础配置</a></li>
                        <li class=""><a href="pages/app/main.html" class="">主页导播图</a></li>
                        <li class=""><a href="pages/app/systemAd.html" class="">系统广告</a></li>
                    </ul>
                </li>
                <li data-username="Maintenance Error Comming soon offline ui" class="nav-item pcoded-hasmenu">
                    <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-slack"></i></span><span class="pcoded-mtext">业务员小程序</span></a>
                    <ul class="pcoded-submenu">
                        <li class=""><a href="pages/WeChat/index.html" class="">基础配置</a></li>
                        <li class=""><a href="pages/WeChat/SystemAd.html" class="">系统公告</a></li>
                    </ul>
                </li>
                <li data-username="Maintenance Error Comming soon offline ui" class="nav-item pcoded-hasmenu">
                    <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-sliders"></i></span><span class="pcoded-mtext">厂商终端</span></a>
                    <ul class="pcoded-submenu">
                        <li class=""><a href="pages/web/index.html" class="">基础配置</a></li>
                        <li class=""><a href="pages/web/SystemAd.html" class="">系统公告</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!-- [ navigation menu ] end -->

<!-- [ Header ] start -->
<header class="navbar pcoded-header navbar-expand-lg navbar-light header-lightblue">
    <div class="m-header">
        <a class="mobile-menu" id="mobile-collapse1" href="#!"><span></span></a>
        <a href="index.html" class="b-brand">
            <div class="b-bg">
                <i class="feather icon-trending-up"></i>
            </div>
            <span class="b-title">Datta Able</span>
        </a>
    </div>
    <a class="mobile-menu" id="mobile-header" href="#!">
        <i class="feather icon-more-horizontal"></i>
    </a>
    <div class="collapse navbar-collapse">
        <ul class="navbar-nav mr-auto">
            <li><a href="#!" class="full-screen" onclick="javascript:toggleFullScreen()"><i class="feather icon-maximize"></i></a></li>

            <li class="nav-item">
                <div class="main-search">
                    <div class="input-group">
                        <input type="text" id="m-search" class="form-control" placeholder="Search . . .">
                        <a href="#!" class="input-group-append search-close">
                            <i class="feather icon-x input-group-text"></i>
                        </a>
                        <span class="input-group-append search-btn btn btn-primary">
                                <i class="feather icon-search input-group-text"></i>
                            </span>
                    </div>
                </div>
            </li>
        </ul>
        <ul class="navbar-nav ml-auto">
            <li>
                <div class="dropdown drp-user">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="icon feather icon-settings"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right profile-notification">
                        <div class="pro-head">
                            <img id="userImage" src="" class="img-radius" alt="用户头像">
                            <span id="userName"></span>
                            <a href="/Admin/Login" class="dud-logout" title="退出">
                                <i class="feather icon-log-out"></i>
                            </a>
                        </div>
                        <ul class="pro-body">
                            <li><a href="#!" class="dropdown-item"><i class="feather icon-settings"></i> 平台详细信息</a></li>
                            <li><a href="#!" class="dropdown-item"><i class="feather icon-user"></i> 平台参数配置</a></li>
                            <li><a href="message.html" class="dropdown-item"><i class="feather icon-mail"></i> 平台移动设备设置</a></li>
                            <li><a href="/Admin/Login" class="dropdown-item"><i class="feather icon-lock"></i> 退出登录</a></li>
                        </ul>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</header>
<!-- [ Header ] end -->

<!-- [ chat user list ] start -->
<section class="header-user-list">
    <div class="h-list-header">
        <div class="input-group">
            <input type="text" id="search-friends" class="form-control" placeholder="Search Friend . . .">
        </div>
    </div>
    <div class="h-list-body">
        <a href="#!" class="h-close-text"><i class="feather icon-chevrons-right"></i></a>
        <div class="main-friend-cont scroll-div">

        </div>
    </div>
</section>
<!-- [ chat user list ] end -->

<!-- [ chat message ] start -->
<section class="header-chat">
    <div class="h-list-body">
        <div class="main-chat-cont scroll-div">

        </div>
    </div>
    <div class="h-list-footer">

    </div>
</section>
<!-- [ chat message ] end -->

<!-- [ 主容器 ] 开始 -->
<div class="pcoded-main-container">
    <div class="pcoded-wrapper">
        <div class="pcoded-content">
            <div class="pcoded-inner-content">
                <div class="main-body">
                    <div class="page-wrapper">
                        <!-- [ 主容器 ] 开始 -->
                        <div class="row">
                            <!-- [ 订单情况 ] start -->
                            <div class="col-md-6 col-xl-4">
                                <div class="card">
                                    <div class="card-block">
                                        <div class="row">
                                            <div class="col">
                                                <i class="feather icon-shopping-cart f-30 text-c-green"></i>
                                                <h6 class="m-t-50 m-b-0">近一周订单</h6>
                                            </div>
                                            <div class="col text-right">
                                                <h3 class="text-c-green f-w-300">${Top3Count.orderCount}</h3>
                                                <span class="text-muted d-block">新增订单</span>
                                                <span class="badge theme-bg text-white m-t-20">${Top3Count.oCount}</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- [ 订单情况 ] end -->

                            <!-- [ 销售额情况 ] start -->
                            <div class="col-md-6 col-xl-4">
                                <div class="card">
                                    <div class="card-block">
                                        <div class="row">
                                            <div class="col">
                                                <i class="feather icon-award f-30 text-c-blue"></i>
                                                <h6 class="m-t-50 m-b-0">近一周销售额</h6>
                                            </div>
                                            <div class="col text-right">
                                                <h3 class="text-c-blue f-w-300">${Top3Count.sellCount}</h3>
                                                <span class="text-muted d-block">销售额</span>
                                                <span class="badge theme-bg text-white m-t-20">${Top3Count.sCount}</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- [ 销售额情况 ] end -->

                            <!-- [ 新增用户情况 ] start -->
                            <div class="col-md-12 col-xl-4">
                                <div class="card">
                                    <div class="card-block">
                                        <div class="row">
                                            <div class="col">
                                                <i class="feather icon-users f-30 text-c-yellow"></i>
                                                <h6 class="m-t-50 m-b-0">上周新增</h6>
                                            </div>
                                            <div class="col text-right">
                                                <h3 class="text-c-yellow f-w-300">${Top3Count.userCount}</h3>
                                                <span class="text-muted d-block">新增用户</span>
                                                <span class="badge theme-bg text-white m-t-20">${Top3Count.uCount}</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- [ 新增用户情况 ] end -->

                            <!-- [ 基本数据趋势情况 ] start -->
                            <div class="col-xl-8 col-md-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h5>基本数据趋势情况</h5>
                                        <div class="card-header-right">
                                            <div class="btn-group card-option">
                                                <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <i class="feather icon-more-horizontal"></i>
                                                </button>
                                                <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                                    <li class="dropdown-item full-card"><a href="#!"><span><i class="feather icon-maximize"></i> 全屏显示</span><span style="display:none"><i class="feather icon-minimize"></i> Restore</span></a></li>
                                                    <li class="dropdown-item minimize-card"><a href="#!"><span><i class="feather icon-minus"></i> 整理折叠</span><span style="display:none"><i class="feather icon-plus"></i> expand</span></a></li>
                                                    <li class="dropdown-item reload-card"><a href="#!"><i class="feather icon-refresh-cw"></i> 刷新</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-block pb-0">
                                        <div id="bar-chart2" class="bar-chart2" style="height:330px;"></div>
                                    </div>
                                </div>
                            </div>
                            <!-- [ 基本数据趋势情况 ] end -->

                            <!-- [ 用户成分情况 ] start -->
                            <div class="col-md-6 col-xl-4">
                                <div class="card Active-visitor">
                                    <div class="card-block text-center">
                                        <h5 class="mb-3">用户成分情况</h5>
                                        <i class="fas fa-user-friends f-30 text-c-green"></i>
                                        <h2 class="f-w-300 mt-3">共 ${RightUserCount.accountCount} 人</h2>
                                        <span class="text-muted">成分占比显示</span>
                                        <div class="progress mt-4 m-b-40">
                                            <div class="progress-bar progress-c-theme" role="progressbar" style="width: 100%; height:7px;" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                        <div class="row card-active">
                                            <div class="col-md-4 col-6">
                                                <h4>${RightUserCount.userPercent}%</h4>
                                                <span class="text-muted">经销商</span>
                                            </div>
                                            <div class="col-md-4 col-6">
                                                <h4>${RightUserCount.workerPercent}%</h4>
                                                <span class="text-muted">工作人员</span>
                                            </div>
                                            <div class="col-md-4 col-12">
                                                <h4>${RightUserCount.factoryPercent}%</h4>
                                                <span class="text-muted">厂家</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- [ 用户成分情况 ] end -->

                            <!-- [ 最热卖商品前三排行 ] start -->
                            <c:forEach items="${Top3GoodsList}" var="items">
                                <div class="col-md-12 col-xl-4">
                                    <div class="card card-social">
                                        <div class="card-block border-bottom">
                                            <div class="row align-items-center justify-content-center">
                                                <div class="col-auto">
                                                    <i class="fas fa-box-open text-primary f-36"></i>
                                                </div>
                                                <div class="col text-right">
                                                    <h3>${items.salesCount}(件)</h3>
                                                    <h5 class="text-c-green mb-0"><span class="text-muted">来自</span>  ${items.title}</h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-block">
                                            <div class="row align-items-center justify-content-center card-active">
                                                <div class="col-12">
                                                    <h6 class="text-center m-b-10"><span class="text-muted m-r-5">总访问次数:${items.accessCount} </span><a href="/Admin/Goods/${items.id}">查看详情</a></h6>
                                                    <div class="progress">
                                                        <div class="progress-bar progress-c-theme" role="progressbar" style="width:100%;height:6px;" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>

                            <c:forEach begin="1" end="${3 - Top3GoodsList.size()}">
                                <div class="col-md-12 col-xl-4">
                                    <div class="card card-social">
                                        <div class="card-block border-bottom">
                                            <div class="row align-items-center justify-content-center">
                                                <div class="col-auto">
                                                    <i class="fas fa-box-open text-primary f-36"></i>
                                                </div>
                                                <div class="col text-right">
                                                    <h3>虚位以待</h3>
                                                    <h5 class="text-c-green mb-0"><span class="text-muted"> </span>   </h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-block">
                                            <div class="row align-items-center justify-content-center card-active">
                                                <div class="col-12">
                                                    <h6 class="text-center m-b-10"><span class="text-muted m-r-5">  </span><a href="#"> </a></h6>
                                                    <div class="progress">
                                                        <div class="progress-bar progress-c-theme" role="progressbar" style="width:100%;height:6px;" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                            <!-- [ 最热卖商品前三排行 ] end -->



                            <!-- [ 销量排行列表 ] 开始 -->
                            <div class="col-md-12">
                                <div class="card user-list">
                                    <div class="card-header">
                                        <h5>销量排行列表</h5>
                                        <div class="card-header-right">
                                            <div class="btn-group card-option">
                                                <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <i class="feather icon-more-horizontal"></i>
                                                </button>
                                                <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                                    <li class="dropdown-item full-card"><a href="#!"><span><i class="feather icon-maximize"></i> 全屏显示</span><span style="display:none"><i class="feather icon-minimize"></i> Restore</span></a></li>
                                                    <li class="dropdown-item minimize-card"><a href="#!"><span><i class="feather icon-minus"></i> 整理折叠</span><span style="display:none"><i class="feather icon-plus"></i> expand</span></a></li>
                                                    <li class="dropdown-item reload-card"><a href="#!"><i class="feather icon-refresh-cw"></i> 刷新</a></li>
                                                </ul>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-block pb-0">
                                        <div class="table-responsive">
                                            <table class="table table-hover">
                                                <thead>
                                                <tr>
                                                    <th>经销商</th>
                                                    <th>信息简报</th>
                                                    <th>完成订单(笔)</th>
                                                    <th>交易额(万元)</th>
                                                    <th>所属地</th>
                                                </thead>
                                                <tbody>
                                                <c:forEach items="${Top10SellUserList}" var="item">
                                                    <tr data-id="${item.id}">
                                                        <td><img class="rounded-circle" style="width:40px;" src="${item.avatar}" alt="加载失败"></td>
                                                        <td>
                                                            <h6 class="mb-1">${item.username}</h6>
                                                            <p class="m-0">${item.address}</p>
                                                        </td>
                                                        <td><span class="pie_1">${item.orderCount}</span></td>
                                                        <td><h6 class="m-0"><fmt:formatNumber type="number" value="${item.sellCount/10000.00}" pattern="0.00" maxFractionDigits="2"/> </h6></td>
                                                        <td><h6 class="m-0">${item.province}，${item.city}</h6></td>
                                                    </tr>
                                                </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- [ 销量排行列表 ] 结束 -->
                        </div>
                        <!-- [ 主内容容器 ] 结束 -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- [ Main Content ] end -->

<!-- Warning Section start -->
<!-- Older IE warning message -->
<!--[if lt IE 11]>
<div class="ie-warning">
    <h1>Warning!!</h1>
    <p>You are using an outdated version of Internet Explorer, please upgrade
        <br/>to any of the following web browsers to access this website.
    </p>
    <div class="iew-container">
        <ul class="iew-download">
            <li>
                <a href="http://www.google.com/chrome/">
                    <img src="img/browser/chrome.png" alt="Chrome">
                    <div>Chrome</div>
                </a>
            </li>
            <li>
                <a href="https://www.mozilla.org/en-US/firefox/new/">
                    <img src="img/browser/firefox.png" alt="Firefox">
                    <div>Firefox</div>
                </a>
            </li>
            <li>
                <a href="http://www.opera.com">
                    <img src="img/browser/opera.png" alt="Opera">
                    <div>Opera</div>
                </a>
            </li>
            <li>
                <a href="https://www.apple.com/safari/">
                    <img src="img/browser/safari.png" alt="Safari">
                    <div>Safari</div>
                </a>
            </li>
            <li>
                <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                    <img src="img/browser/ie.png" alt="">
                    <div>IE (11 & above)</div>
                </a>
            </li>
        </ul>
    </div>
    <p>Sorry for the inconvenience!</p>
</div>
<![endif]-->
<!-- Warning Section Ends -->

<!-- Required Js -->
<script src="../../admin/js/vendor-all.min.js"></script>
<script src="../../admin/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="../../admin/js/menu-setting.min.js"></script>
<script src="../../admin/js/pcoded.min.js"></script>
<!-- amchart js -->
<script src="../../admin/plugins/amchart/js/amcharts.js"></script>
<script src="../../admin/plugins/amchart/js/gauge.js"></script>
<script src="../../admin/plugins/amchart/js/serial.js"></script>
<script src="../../admin/plugins/amchart/js/light.js"></script>
<script src="../../admin/plugins/amchart/js/pie.min.js"></script>
<script src="../../admin/plugins/amchart/js/ammap.min.js"></script>
<script src="../../admin/plugins/amchart/js/usaLow.js"></script>
<script src="../../admin/plugins/amchart/js/radar.js"></script>
<script src="../../admin/plugins/amchart/js/worldLow.js"></script>
<!-- notification Js -->
<script src="../../admin/plugins/notification/js/bootstrap-growl.min.js"></script>

<!-- dashboard-custom js -->
<script src="../../admin/js/pages/dashboard-custom.js"></script>
<script src="../../admin/js/pagesJs/index.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $('#userImage').attr('src', JSON.parse(sessionStorage.getItem("enterpriseInfo")).elementData[0].image);
        $('#userName').html(JSON.parse(sessionStorage.getItem("enterpriseInfo")).elementData[0].username);
        $('#userDetail').attr('href', '/Admin/EnterpriseInfo/Details/' +  JSON.parse(sessionStorage.getItem("enterpriseInfo")).elementData[0].id);
        floatchart()
        $(window).on('resize', function() {
            floatchart();
        });
        // [ Bar Chart2 ] Start
        var chart = AmCharts.makeChart("bar-chart2", {
            "type": "serial",
            "theme": "light",
            "marginTop": 10,
            "marginRight": 0,
            "valueAxes": [{
                "id": "v1",
                "position": "left",
                "axisAlpha": 0,
                "lineAlpha": 0,
                "autoGridCount": false,
                "labelFunction": function(value) {
                    return +Math.round(value) + "00";
                }
            }],
            "graphs": [{
                "id": "g1",
                "valueAxis": "v1",
                "lineColor": ["#1de9b6", "#1dc4e9"],
                "fillColors": ["#1de9b6", "#1dc4e9"],
                "fillAlphas": 1,
                "type": "column",
                "title": "订单数",
                "valueField": "sales",
                "columnWidth": 0.3,
                "legendValueText": "[[value]](笔)",
                "balloonText": "[[title]]<br /><b style='font-size: 130%'>[[value]](笔)</b>"
            },{
                "id": "g2",
                "valueAxis": "v1",
                "lineColor": ["#a389d4", "#899ed4"],
                "fillColors": ["#a389d4", "#899ed4"],
                "fillAlphas": 1,
                "type": "column",
                "title": "销售额 ",
                "valueField": "visits",
                "columnWidth": 0.3,
                "legendValueText": "[[value]](万元)",
                "balloonText": "[[title]]<br /><b style='font-size: 130%'>[[value]](万元)</b>"
            },{
                "id": "g3",
                "valueAxis": "v1",
                "lineColor": ["#04a9f5", "#049df5"],
                "fillColors": ["#04a9f5", "#049df5"],
                "fillAlphas": 1,
                "type": "column",
                "title": "新增用户",
                "valueField": "clicks",
                "columnWidth": 0.3,
                "legendValueText": "[[value]](人)",
                "balloonText": "[[title]]<br /><b style='font-size: 130%'>[[value]](人)</b>"
            }],
            "chartCursor": {
                "pan": true,
                "valueLineEnabled": true,
                "valueLineBalloonEnabled": true,
                "cursorAlpha": 0,
                "valueLineAlpha": 0.2
            },
            "categoryField": "Year",
            "categoryAxis": {
                "dashLength": 1,
                "gridAlpha": 0,
                "axisAlpha": 0,
                "lineAlpha": 0,
                "minorGridEnabled": true
            },
            "legend": {
                "useGraphSettings": true,
                "position": "top"
            },
            "balloon": {
                "borderThickness": 1,
                "shadowAlpha": 0
            },
            "dataProvider": [{
                "Year": "2014",
                "sales": 2,
                "visits": 4,
                "clicks": 3
            },{
                "Year": "2015",
                "sales": 4,
                "visits": 7,
                "clicks": 5
            },{
                "Year": "2016",
                "sales": 2,
                "visits": 3,
                "clicks": 4
            },{
                "Year": "2017",
                "sales": 4.5,
                "visits": 6,
                "clicks": 4
            }]
        });
        // [ Bar Chart2 ] end


    });
    $('#mobile-collapse').on('click', function() {
        setTimeout(function() {
            floatchart();
        }, 700);
    });

    function floatchart() {
        $(function() {
            // [ flot options ]
            var options = {
                legend: {
                    show: false
                },
                series: {
                    label: "",
                    curvedLines: {
                        active: true,
                        nrSplinePoints: 20
                    },
                },
                tooltip: {
                    show: true,
                    content: "x : %x | y : %y"
                },
                grid: {
                    hoverable: true,
                    borderWidth: 0,
                    labelMargin: 0,
                    axisMargin: 0,
                    minBorderMargin: 0,
                },
                yaxis: {
                    min: 0,
                    max: 80,
                    color: 'transparent',
                    font: {
                        size: 0,
                    }
                },
                xaxis: {
                    color: 'transparent',
                    font: {
                        size: 0,
                    }
                }
            };
            var options_nospace = {
                legend: {
                    show: false
                },
                series: {
                    label: "",
                    curvedLines: {
                        active: true,
                        nrSplinePoints: 0
                    },
                },
                tooltip: {
                    show: true,
                    content: "x : %x | y : %y"
                },
                grid: {
                    hoverable: true,
                    borderWidth: 0,
                    labelMargin: 0,
                    axisMargin: 0,
                    minBorderMargin: 20,
                },
                yaxis: {
                    min: 0,
                    max: 80,
                    color: 'transparent',
                    font: {
                        size: 0,
                    }
                },
                xaxis: {

                }
            };

        });
    }
</script>
</body>

</html>

