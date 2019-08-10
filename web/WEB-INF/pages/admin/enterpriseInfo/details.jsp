<%--
  Created by IntelliJ IDEA.
  User: Power
  Date: 2019/8/10
  Time: 11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Datta Able - Sample Page</title>
    <!-- HTML5 Shim and Respond.js IE10 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 10]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="Datta Able Bootstrap admin template made using Bootstrap 4 and it has huge amount of ready made feature, UI components, .. which completely fulfills any dashboard needs." />
    <meta name="keywords" content="admin templates, bootstrap admin templates, bootstrap 4, dashboard, dashboard templets, sass admin templets, html admin templates, responsive, bootstrap admin templates free download,premium bootstrap admin templates, datta able, datta able bootstrap admin template">
    <meta name="author" content="Codedthemes" />

    <!-- Favicon icon -->
    <link rel="icon" href="../../img/favicon.ico" type="image/x-icon">
    <!-- fontawesome icon -->
    <link rel="stylesheet" href="../../fonts/fontawesome/css/fontawesome-all.min.css">
    <!-- animation css -->
    <link rel="stylesheet" href="../../plugins/animation/css/animate.min.css">
    <!-- vendor css -->
    <link rel="stylesheet" href="../../css/style.css">

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
                        <li class=""><a href="../../index.html" class="">经营概况</a></li>
                        <li class="active"><a href="enterprise/details.html" class="">详细资料</a></li>
                        <li class=""><a href="control.html" class="">平台流量监控</a></li>
                    </ul>
                </li>
                <li data-username="Vertical Horizontal Box Layout RTL fixed static Collapse menu color icon dark" class="nav-item pcoded-hasmenu">
                    <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-layout"></i></span><span class="pcoded-mtext">商品</span></a>
                    <ul class="pcoded-submenu">
                        <li class="pcoded-hasmenu"><a href="#!" class="">商品智配</a>
                            <ul class="pcoded-submenu">
                                <li class=""><a href="../commodity/adaptation/classify.html" class="" target="_blank">场景分类</a></li>
                                <li class=""><a href="../commodity/adaptation/scene.html" class="" target="_blank">场景图上传</a></li>
                                <li class=""><a href="../commodity/adaptation/commodity.html" class="" target="_blank">商品图上传</a></li>
                            </ul>
                        </li>
                        <li class=""><a href="../commodity/index.html" class="" target="_blank">商品档案</a></li>
                        <li class=""><a href="../commodity/classify.html" class="" target="_blank">商品分类</a></li>
                        <li class=""><a href="../commodity/photo.html" class="" target="_blank">商品图片</a></li>
                        <li class=""><a href="../commodity/video.html" class="" target="_blank">商品小视频</a></li>
                    </ul>
                </li>
                <li data-username="widget Statistic Data Table User card Chart" class="nav-item pcoded-hasmenu">
                    <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-layers"></i></span><span class="pcoded-mtext">订单</span></a>
                    <ul class="pcoded-submenu">
                        <li class="pcoded-hasmenu"><a href="#!" class="">订单管理</a>
                            <ul class="pcoded-submenu">
                                <li class=""><a href="../order/order/index.html" class="">全部订单</a></li>
                                <li class=""><a href="../order/order/behalfPayment.html" class="">待付款</a></li>
                                <li class=""><a href="../order/order/distribute.html" class="">订单分配</a></li>
                                <li class=""><a href="../order/order/behalfReceiving.html" class="">待发货</a></li>
                                <li class=""><a href="../order/order/dropShipping.html" class="">待收货</a></li>
                            </ul>
                        </li>
                        <li class="pcoded-hasmenu"><a href="#!" class="">退货管理</a>
                            <ul class="pcoded-submenu">
                                <li class=""><a href="../order/return/return.html" class="">退货历史</a></li>
                                <li class=""><a href="../order/return/trearment.html" class="">待处理</a></li>
                                <li class=""><a href="../order/return/notPass.html" class="">未通过</a></li>
                            </ul>
                        </li>
                        <li class="pcoded-hasmenu"><a href="#!" class="">售后管理</a>
                            <ul class="pcoded-submenu">
                                <li class=""><a href="../order/afterSale/afterSale.html" class="">售后历史</a></li>
                                <li class=""><a href="../order/afterSale/treatment.html" class="">待处理</a></li>
                            </ul>
                        </li>
                        <li class="pcoded-hasmenu"><a href="#!" class="">取消订单</a>
                            <ul class="pcoded-submenu">
                                <li class=""><a href="../order/cancel/cancel.html" class="">取消历史</a></li>
                                <li class=""><a href="../order/cancel/treatment.html" class="">待处理</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li data-username="advance components Alert gridstack lightbox modal notification pnotify rating rangeslider slider syntax highlighter Tour Tree view Nestable Toolbar" class="nav-item pcoded-hasmenu">
                    <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-gitlab"></i></span><span class="pcoded-mtext">营销</span></a>
                    <ul class="pcoded-submenu">
                        <li class="pcoded-hasmenu"><a href="#!" class="">销售管理</a>
                            <ul class="pcoded-submenu">
                                <li class=""><a href="../market/market/index.html" class="">销售计划</a></li>
                                <li class=""><a href="../market/market/online.html" class="">线上营销</a></li>
                                <li class=""><a href="../market/market/activity.html" class="">活动策划</a></li>
                                <li class=""><a href="../market/market/ad.html" class="">广告策划</a></li>
                            </ul>
                        </li>
                        <li class="pcoded-hasmenu"><a href="#!" class="">经销商业绩</a>
                            <ul class="pcoded-submenu">
                                <li class=""><a href="../market/agency/agency.html" class="">数据看板</a></li>
                                <li class=""><a href="../market/agency/orderData.html" class="">下单情况</a></li>
                                <li class=""><a href="../market/agency/order.html" class="">历史订单</a></li>
                            </ul>
                        </li>
                        <li class="pcoded-hasmenu"><a href="#!" class="">业务员业绩</a>
                            <ul class="pcoded-submenu">
                                <li class=""><a href="../market/salesman/salesman.html" class="">数据看板</a></li>
                                <li class=""><a href="../market/salesman/orderData.html" class="">下单情况</a></li>
                                <li class=""><a href="../market/salesman/order.html" class="">历史订单</a></li>
                            </ul>
                        </li>
                        <li class="pcoded-hasmenu"><a href="#!" class="">厂商业绩</a>
                            <ul class="pcoded-submenu">
                                <li class=""><a href="../market/factory/factory.html" class="">数据看板</a></li>
                                <li class=""><a href="../market/factory/orderData.html" class="">下单情况</a></li>
                                <li class=""><a href="../market/factory/order.html" class="">历史订单</a></li>
                            </ul>
                        </li>
                        <li class=""><a href="../market/commodity.html" class="">商品数据看板</a></li>
                        <li class=""><a href="../market/discount.html" class="">促销折扣</a></li>
                    </ul>
                </li>
                <li class="nav-item pcoded-menu-caption">
                    <label>角色功能列表</label>
                </li>
                <li data-username="basic components Button Alert Badges breadcrumb Paggination progress Tooltip popovers Carousel Cards Collapse Tabs pills Modal Grid System Typography Extra Shadows Embeds" class="nav-item pcoded-hasmenu">
                    <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-box"></i></span><span class="pcoded-mtext">经销商</span></a>
                    <ul class="pcoded-submenu">
                        <li class=""><a href="../agency/index.html" class="">经销商档案</a></li>
                        <li class=""><a href="../agency/classify.html" class="">实景照片</a></li>
                        <li class=""><a href="../agency/dataBoard.html" class="">营业执照</a></li>
                    </ul>
                </li>
                <li data-username="form elements advance componant validation masking wizard picker select" class="nav-item pcoded-hasmenu">
                    <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-globe"></i></span><span class="pcoded-mtext">片区</span></a>
                    <ul class="pcoded-submenu">
                        <li class=""><a href="../area/principal.html" class="">片区划分</a></li>
                        <li class=""><a href="../area/index.html" class="">片区负责人</a></li>
                        <li class=""><a href="../area/saleman.html" class="">片区业务员</a></li>
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
                        <li class=""><a href="../factory/index.html" class="">厂商档案</a></li>
                    </ul>
                </li>
                <li data-username="icons Feather Fontawsome flag material simple line themify" class="nav-item pcoded-hasmenu">
                    <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-feather"></i></span><span class="pcoded-mtext">权限</span></a>
                    <ul class="pcoded-submenu">
                        <li class=""><a href="../authority/customerService.html" class="">客服列表</a></li>
                        <li class=""><a href="../authority/humanAffairs.html" class="">人事列表</a></li>
                        <li class=""><a href="../authority/saleman.html" class="">厂商业务员列表</a></li>
                        <li class=""><a href="../authority/authoritySetting.html" class="">权限配置</a></li>
                        <li class=""><a href="../authority/authorityClassify.html" class="">权限分类</a></li>
                        <li class=""><a href="../authority/authorityDivide.html" class="">权限划分</a></li>
                    </ul>
                </li>
                <li class="nav-item pcoded-menu-caption">
                    <label>平台体系列表</label>
                </li>
                <li data-username="form elements advance componant validation masking wizard picker select" class="nav-item pcoded-hasmenu">
                    <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-cpu"></i></span><span class="pcoded-mtext">经销商APP</span></a>
                    <ul class="pcoded-submenu">
                        <li class=""><a href="../app/setting.html" class="">基础配置</a></li>
                        <li class=""><a href="../app/main.html" class="">主页导播图</a></li>
                        <li class=""><a href="../app/systemAd.html" class="">系统广告</a></li>
                    </ul>
                </li>
                <li data-username="Maintenance Error Comming soon offline ui" class="nav-item pcoded-hasmenu">
                    <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-slack"></i></span><span class="pcoded-mtext">业务员小程序</span></a>
                    <ul class="pcoded-submenu">
                        <li class=""><a href="../WeChat/index.html" class="">基础配置</a></li>
                        <li class=""><a href="../WeChat/SystemAd.html" class="">系统公告</a></li>
                    </ul>
                </li>
                <li data-username="Maintenance Error Comming soon offline ui" class="nav-item pcoded-hasmenu">
                    <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-sliders"></i></span><span class="pcoded-mtext">厂商终端</span></a>
                    <ul class="pcoded-submenu">
                        <li class=""><a href="../web/index.html" class="">基础配置</a></li>
                        <li class=""><a href="../web/SystemAd.html" class="">系统公告</a></li>
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
                            <img src="../../img/user/avatar-1.jpg" class="img-radius" alt="User-Profile-Image">
                            <span>丽星家居</span>
                            <a href="auth-signin.html" class="dud-logout" title="退出">
                                <i class="feather icon-log-out"></i>
                            </a>
                        </div>
                        <ul class="pro-body">
                            <li><a href="#!" class="dropdown-item"><i class="feather icon-settings"></i> 平台详细信息</a></li>
                            <li><a href="#!" class="dropdown-item"><i class="feather icon-user"></i> 平台参数配置</a></li>
                            <li><a href="message.html" class="dropdown-item"><i class="feather icon-mail"></i> 平台移动设备设置</a></li>
                            <li><a href="auth-signin.html" class="dropdown-item"><i class="feather icon-lock"></i> 退出登录</a></li>
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

<!-- [ Main Content ] start -->
<div class="pcoded-main-container">
    <div class="pcoded-wrapper">
        <div class="pcoded-content">
            <div class="pcoded-inner-content">
                <!-- [ breadcrumb ] start -->
                <div class="page-header">
                    <div class="page-block">
                        <div class="row align-items-center">
                            <div class="col-md-12">
                                <div class="page-header-title">
                                    <h5 class="m-b-10">详细资料</h5>
                                </div>
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="../../index.html"><i class="feather icon-home"></i></a></li>
                                    <li class="breadcrumb-item"><a href="#!">企业信息</a></li>
                                    <li class="breadcrumb-item"><a href="#!">详细资料</a></li>
                                </ul>
                                <hr>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- [ breadcrumb ] end -->
                <div class="main-body">
                    <div class="page-wrapper">
                        <!-- [ Main Content ] start -->
                        <div class="row">
                            <!-- [ sample-page ] start -->
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h5>Hello card</h5>
                                        <div class="card-header-right">
                                            <div class="btn-group card-option">
                                                <button type="button" class="btn dropdown-toggle btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <i class="feather icon-more-horizontal"></i>
                                                </button>
                                                <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                                    <li class="dropdown-item full-card"><a href="#!"><span><i class="feather icon-maximize"></i> maximize</span><span style="display:none"><i class="feather icon-minimize"></i> Restore</span></a></li>
                                                    <li class="dropdown-item minimize-card"><a href="#!"><span><i class="feather icon-minus"></i> collapse</span><span style="display:none"><i class="feather icon-plus"></i> expand</span></a></li>
                                                    <li class="dropdown-item reload-card"><a href="#!"><i class="feather icon-refresh-cw"></i> reload</a></li>
                                                    <li class="dropdown-item close-card"><a href="#!"><i class="feather icon-trash"></i> remove</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-block">
                                        <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                                            aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
                                            officia deserunt mollit anim id est laborum."
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <!-- [ sample-page ] end -->
                        </div>
                        <!-- [ Main Content ] end -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- [ Main Content ] end -->

<!-- Required Js -->
<script src="../../js/vendor-all.min.js"></script>
<script src="../../plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="../../js/pcoded.min.js"></script>
<script src="../../js/menu-setting.min.js"></script>

</body>
</html>
