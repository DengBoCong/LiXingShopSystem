<%--
  Created by IntelliJ IDEA.
  User: Power
  Date: 2019/8/8
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Datta Able - Most Complete Bootstrap Admin Template</title>
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
    <meta name="description" content="Datta Able Bootstrap admin template made using Bootstrap 4 and it has huge amount of ready made feature, UI components, pages which completely fulfills any dashboard needs."/>
    <meta name="keywords" content="admin templates, bootstrap admin templates, bootstrap 4, dashboard, dashboard templets, sass admin templets, html admin templates, responsive, bootstrap admin templates free download,premium bootstrap admin templates, datta able, datta able bootstrap admin template">
    <meta name="author" content="Codedthemes" />

    <!-- Favicon icon -->
    <link rel="icon" href="../img/favicon.ico" type="image/x-icon">
    <!-- fontawesome icon -->
    <link rel="stylesheet" href="../fonts/fontawesome/css/fontawesome-all.min.css">
    <!-- animation css -->
    <link rel="stylesheet" href="../plugins/animation/css/animate.min.css">
    <!-- notification css -->
    <link rel="stylesheet" href="../plugins/notification/css/notification.min.css">
    <!-- vendor css -->
    <link rel="stylesheet" href="../css/style.css">

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
                        <li class=""><a href="pages/enterprise/details.html" class="">详细资料</a></li>
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
                            <a href="/Login" class="dud-logout" title="退出">
                                <i class="feather icon-log-out"></i>
                            </a>
                        </div>
                        <ul class="pro-body">
                            <li><a href="#!" class="dropdown-item"><i class="feather icon-settings"></i> 平台详细信息</a></li>
                            <li><a href="#!" class="dropdown-item"><i class="feather icon-user"></i> 平台参数配置</a></li>
                            <li><a href="message.html" class="dropdown-item"><i class="feather icon-mail"></i> 平台移动设备设置</a></li>
                            <li><a href="/Login" class="dropdown-item"><i class="feather icon-lock"></i> 退出登录</a></li>
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
                                                <h3 class="text-c-green f-w-300">589</h3>
                                                <span class="text-muted d-block">新增订单</span>
                                                <span class="badge theme-bg text-white m-t-20">1434</span>
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
                                                <h3 class="text-c-blue f-w-300">8,589</h3>
                                                <span class="text-muted d-block">销售额</span>
                                                <span class="badge theme-bg text-white m-t-20">666</span>
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
                                                <h3 class="text-c-yellow f-w-300">6</h3>
                                                <span class="text-muted d-block">新增用户</span>
                                                <span class="badge theme-bg text-white m-t-20">16</span>
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
                                        <h2 class="f-w-300 mt-3">共 1,285 人</h2>
                                        <span class="text-muted">成分占比显示</span>
                                        <div class="progress mt-4 m-b-40">
                                            <div class="progress-bar progress-c-theme" role="progressbar" style="width: 100%; height:7px;" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                        <div class="row card-active">
                                            <div class="col-md-4 col-6">
                                                <h4>52%</h4>
                                                <span class="text-muted">经销商</span>
                                            </div>
                                            <div class="col-md-4 col-6">
                                                <h4>80%</h4>
                                                <span class="text-muted">工作人员</span>
                                            </div>
                                            <div class="col-md-4 col-12">
                                                <h4>68%</h4>
                                                <span class="text-muted">厂家</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- [ 用户成分情况 ] end -->

                            <!-- [ 最热卖商品前三排行 ] start -->
                            <div class="col-md-12 col-xl-4">
                                <div class="card card-social">
                                    <div class="card-block border-bottom">
                                        <div class="row align-items-center justify-content-center">
                                            <div class="col-auto">
                                                <i class="fas fa-box-open text-primary f-36"></i>
                                            </div>
                                            <div class="col text-right">
                                                <h3>12,281(件)</h3>
                                                <h5 class="text-c-green mb-0"><span class="text-muted">来自</span>  丽星家居商城</h5>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-block">
                                        <div class="row align-items-center justify-content-center card-active">
                                            <div class="col-12">
                                                <h6 class="text-center m-b-10"><span class="text-muted m-r-5">高档红木实体家居 </span><a href="#">查看详情</a></h6>
                                                <div class="progress">
                                                    <div class="progress-bar progress-c-theme" role="progressbar" style="width:100%;height:6px;" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-xl-4">
                                <div class="card card-social">
                                    <div class="card-block border-bottom">
                                        <div class="row align-items-center justify-content-center">
                                            <div class="col-auto">
                                                <i class="fas fa-box-open text-primary f-36"></i>
                                            </div>
                                            <div class="col text-right">
                                                <h3>11,200(件)</h3>
                                                <h5 class="text-c-purple mb-0"><span class="text-muted">来自</span>  丽星家居商城</h5>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-block">
                                        <div class="row align-items-center justify-content-center card-active">
                                            <div class="col-12">
                                                <h6 class="text-center m-b-10"><span class="text-muted m-r-5">高档红木实体家居 </span><a href="#">查看详情</a></h6>
                                                <div class="progress">
                                                    <div class="progress-bar progress-c-blue" role="progressbar" style="width:100%;height:6px;" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-xl-4">
                                <div class="card card-social">
                                    <div class="card-block border-bottom">
                                        <div class="row align-items-center justify-content-center">
                                            <div class="col-auto">
                                                <i class="fas fa-box-open text-primary f-36"></i>
                                            </div>
                                            <div class="col text-right">
                                                <h3>10,500(件)</h3>
                                                <h5 class="text-c-blue mb-0"><span class="text-muted">来自</span>  丽星家居商城</h5>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-block">
                                        <div class="row align-items-center justify-content-center card-active">
                                            <div class="col-12">
                                                <h6 class="text-center m-b-10"><span class="text-muted m-r-5">高档红木实体家居 </span><a href="#">查看详情</a></h6>
                                                <div class="progress">
                                                    <div class="progress-bar progress-c-theme2" role="progressbar" style="width:100%;height:6px;" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
                                                <tr>
                                                    <td><img class="rounded-circle" style="width:40px;" src="img/user/avatar-1.jpg" alt="activity-user"></td>
                                                    <td>
                                                        <h6 class="mb-1">赣州市谭东经销商</h6>
                                                        <p class="m-0">江西省南昌市青山湖区</p>
                                                    </td>
                                                    <td><span class="pie_1">34</span></td>
                                                    <td><h6 class="m-0">326,134</h6></td>
                                                    <td><h6 class="m-0">江西省，赣州市</h6></td>
                                                </tr>

                                                <tr>
                                                    <td><img class="rounded-circle" style="width:40px;" src="img/user/avatar-2.jpg" alt="activity-user"></td>
                                                    <td>
                                                        <h6 class="mb-1">赣州市谭东经销商</h6>
                                                        <p class="m-0">江西省南昌市青山湖区</p>
                                                    </td>
                                                    <td><span class="pie_1">34</span></td>
                                                    <td><h6 class="m-0">326,134</h6></td>
                                                    <td><h6 class="m-0">江西省，赣州市</h6></td>
                                                </tr>

                                                <tr>
                                                    <td><img class="rounded-circle" style="width:40px;" src="img/user/avatar-3.jpg" alt="activity-user"></td>
                                                    <td>
                                                        <h6 class="mb-1">赣州市谭东经销商</h6>
                                                        <p class="m-0">江西省南昌市青山湖区</p>
                                                    </td>
                                                    <td><span class="pie_1">34</span></td>
                                                    <td><h6 class="m-0">326,134</h6></td>
                                                    <td><h6 class="m-0">江西省，赣州市</h6></td>
                                                </tr>
                                                <tr>
                                                    <td><img class="rounded-circle" style="width:40px;" src="img/user/avatar-1.jpg" alt="activity-user"></td>
                                                    <td>
                                                        <h6 class="mb-1">赣州市谭东经销商</h6>
                                                        <p class="m-0">江西省南昌市青山湖区</p>
                                                    </td>
                                                    <td><span class="pie_1">34</span></td>
                                                    <td><h6 class="m-0">326,134</h6></td>
                                                    <td><h6 class="m-0">江西省，赣州市</h6></td>
                                                </tr>
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
<script src="../js/vendor-all.min.js"></script>
<script src="../plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="../js/menu-setting.min.js"></script>
<script src="../js/pcoded.min.js"></script>
<!-- amchart js -->
<script src="../plugins/amchart/js/amcharts.js"></script>
<script src="../plugins/amchart/js/gauge.js"></script>
<script src="../plugins/amchart/js/serial.js"></script>
<script src="../plugins/amchart/js/light.js"></script>
<script src="../plugins/amchart/js/pie.min.js"></script>
<script src="../plugins/amchart/js/ammap.min.js"></script>
<script src="../plugins/amchart/js/usaLow.js"></script>
<script src="../plugins/amchart/js/radar.js"></script>
<script src="../plugins/amchart/js/worldLow.js"></script>
<!-- notification Js -->
<script src="../plugins/notification/js/bootstrap-growl.min.js"></script>

<!-- dashboard-custom js -->
<script src="../js/pages/dashboard-custom.js"></script>
<script src="../js/pagesJs/index.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('#userImage').attr('src', JSON.parse(sessionStorage.getItem("enterpriseInfo")).elementData[0].image);
        $('#userName').html(JSON.parse(sessionStorage.getItem("enterpriseInfo")).elementData[0].username);
    });
</script>
</body>

</html>

