<%--
  Created by IntelliJ IDEA.
  User: Power
  Date: 2019/8/11
  Time: 10:08
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
    <link rel="icon" href="<%=basePath%>/admin/img/favicon.ico" type="image/x-icon">
    <!-- fontawesome icon -->
    <link rel="stylesheet" href="<%=basePath%>/admin/fonts/fontawesome/css/fontawesome-all.min.css">
    <!-- animation css -->
    <link rel="stylesheet" href="<%=basePath%>/admin/plugins/animation/css/animate.min.css">
    <!-- select2 css -->
    <link rel="stylesheet" href="<%=basePath%>/admin/plugins/select2/css/select2.min.css">
    <!--lightbox css -->
    <link rel="stylesheet" href="<%=basePath%>/admin/plugins/lightbox2-master/css/lightbox.min.css">
    <!-- data tables css -->
    <link rel="stylesheet" href="<%=basePath%>/admin/plugins/data-tables/css/datatables.min.css">
    <!-- vendor css -->
    <link rel="stylesheet" href="<%=basePath%>/admin/css/style.css">
    <!-- Gallery css -->
    <link rel="stylesheet" href="<%=basePath%>/admin/css/pages/gallery.css">

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
                <li data-username="dashboard Default Ecommerce CRM Analytics Crypto Project" class="nav-item pcoded-hasmenu">
                    <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-home"></i></span><span class="pcoded-mtext">企业信息</span></a>
                    <ul class="pcoded-submenu">
                        <li class="active"><a href="#" class="">经营概况</a></li>
                        <li class=""><a id="userDetailPage" href="" class="">详细资料</a></li>
                        <li class=""><a href="pages/enterprise/control.html" class="">平台流量监控</a></li>
                    </ul>
                </li>
                <li data-username="Vertical Horizontal Box Layout RTL fixed static Collapse menu color icon dark" class="nav-item pcoded-hasmenu active pcoded-trigger">
                    <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-layout"></i></span><span class="pcoded-mtext">商品</span></a>
                    <ul class="pcoded-submenu">
                        <li class="pcoded-hasmenu"><a href="#!" class="">商品智配</a>
                            <ul class="pcoded-submenu">
                                <li class=""><a href="adaptation/classify.html" class="">场景分类</a></li>
                                <li class=""><a href="adaptation/scene.html" class="">场景图上传</a></li>
                                <li class=""><a href="adaptation/commodity.html" class="">商品图上传</a></li>
                            </ul>
                        </li>
                        <li class="active"><a href="index.html" class="">商品档案</a></li>
                        <li class=""><a href="classify.html" class="">商品分类</a></li>
                        <li class=""><a href="photo.html" class="">商品图片</a></li>
                        <li class=""><a href="video.html" class="">商品小视频</a></li>
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
                            <img id="userImage" src="" class="img-radius" alt="用户头像">
                            <span id="userName"></span>
                            <a href="<%=basePath%>/Admin/Login" class="dud-logout" title="退出">
                                <i class="feather icon-log-out"></i>
                            </a>
                        </div>
                        <ul class="pro-body">
                            <li><a href="#!" class="dropdown-item"><i class="feather icon-settings"></i> 平台详细信息</a></li>
                            <li><a href="#!" class="dropdown-item"><i class="feather icon-user"></i> 平台参数配置</a></li>
                            <li><a href="message.html" class="dropdown-item"><i class="feather icon-mail"></i> 平台移动设备设置</a></li>
                            <li><a href="<%=basePath%>/Admin/Login" class="dropdown-item"><i class="feather icon-lock"></i> 退出登录</a></li>
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
                                    <h5 class="m-b-10">商品档案</h5>
                                </div>
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="../../index.html"><i class="feather icon-home"></i></a></li>
                                    <li class="breadcrumb-item"><a href="#!">商品</a></li>
                                    <li class="breadcrumb-item"><a href="#!">商品档案</a></li>
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
                            <!-- [ Responsive table ] start -->
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h5>商品列表</h5>
                                    </div>
                                    <div class="card-block">
                                        <div class="table-responsive">
                                            <table id="responsive-table" class="display table dt-responsive nowrap" style="width:100%">
                                                <thead>
                                                <tr>
                                                    <th>名称</th>
                                                    <th>库存</th>
                                                    <th>销量</th>
                                                    <th>出厂价</th>
                                                    <th>原价</th>
                                                    <th>指导价</th>
                                                    <th>状态</th>
                                                    <th>访问次数</th>
                                                    <th>相关操作</th>
                                                </tr>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- [ Responsive table ] end -->
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
<script src="<%=basePath%>/admin/js/vendor-all.min.js"></script>
<script src="<%=basePath%>/admin/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=basePath%>/admin/js/pcoded.min.js"></script>
<script src="<%=basePath%>/admin/js/menu-setting.min.js"></script>

<!-- select2 Js -->
<script src="<%=basePath%>/admin/plugins/select2/js/select2.full.min.js"></script>

<!-- multi-select Js -->
<script src="<%=basePath%>/admin/plugins/multi-select/js/jquery.quicksearch.js"></script>
<script src="<%=basePath%>/admin/plugins/multi-select/js/jquery.multi-select.js"></script>
<!--lightbox Js -->
<script src="<%=basePath%>/admin/plugins/lightbox2-master/js/lightbox.min.js"></script>
<!-- datatable Js -->
<script src="<%=basePath%>/admin/plugins/data-tables/js/datatables.min.js"></script>
<script>

    $(document).ready(function() {
        $('#userImage').attr('src', JSON.parse(sessionStorage.getItem("enterpriseInfo")).elementData[0].image);
        $('#userName').html(JSON.parse(sessionStorage.getItem("enterpriseInfo")).elementData[0].username);
        $('#userDetailPage').attr('href', '/Admin/EnterpriseInfo/Details/' +  JSON.parse(sessionStorage.getItem("enterpriseInfo")).elementData[0].id);
        $(document).ready(function() {
            $('#responsive-table').DataTable({
                dom: 'lTfg<"html5buttons"B>tpi',
                buttons: [
                    {
                        extend: 'copy',
                        text: '复制',
                    },
                    {extend: 'csv',
                        text: '下载CSV',
                        title: '商品档案',
                    },
                    {extend: 'excel',
                        title: '商品档案',
                        text: '下载Excel'},
                    {extend: 'pdf',
                        title: '商品档案',
                        text: '下载PDF'
                    },
                    {extend: 'print',
                        text: "打印",
                        customize: function (win){
                            $(win.document.body).addClass('white-bg');
                            $(win.document.body).css('font-size', '10px');

                            $(win.document.body).find('table')
                                .addClass('compact')
                                .css('font-size', 'inherit');
                        }
                    },
                ],
                ajax: {
                    url: "<%=basePath%>/Admin/Commodity/AllGoods",
                    method: "POST",
                    dataType: "json",
                    data: {},
                },
                language : {
                    processing : "载入中",//处理页面数据的时候的显示
                    paginate : {//分页的样式文本内容。
                        previous : "上一页",
                        next : "下一页",
                        first : "第一页",
                        last : "最后一页"
                    },
                    search: "搜索",
                    zeroRecords : "没有内容",//table tbody内容为空时，tbody的内容。
                    //下面三者构成了总体的左下角的内容。
                    info : "第 _PAGE_/_PAGES_页 共 _TOTAL_条记录",//左下角的信息显示，大写的词为关键字。
                    infoEmpty : "第 _PAGE_/_PAGES_页 共 _TOTAL_条记录",//筛选为空时左下角的显示。
                    infoFiltered : "",//筛选之后的左下角筛选提示(另一个是分页信息显示，在上面的info中已经设置，所以可以不显示)，
                },
                columns: [
                    {
                        "data": "title",
                        "class": "text-center",
                    },
                    {
                        "data": "inventory",
                        "class" : "text-center",
                    },
                    {
                        "data": "salesCount",
                        "class" : "text-center",
                    },
                    {
                        "data": "factoryPrice",
                        "class" : "text-center",
                    },
                    {
                        "data": "originalPrice",
                        "class" : "text-center",
                    },
                    {
                        "data": "guidePrice",
                        "class" : "text-center",
                    },
                    {
                        "data" : "isShelves",
                        "class" : "text-center",
                        "render" : function(data, type, row) {
                            if(data==0){
                                return "已下架";
                            }else if(data==1){
                                return "上架中";
                            }
                            return "";
                        },
                    },
                    {
                        "data" : "accessCount",
                        "class" : "text-center",
                    },
                    {
                        "data" : "id",
                        "class" : "text-center",
                        "render" : function(data, type, row) {
                            return '<span class="btn btn-primary btn-xs ml-5 js-edit" data-id="'+data+'">编辑</span> <span class="btn btn-danger btn-xs ml-5 js-delete" data-id="'+data+'">删除</span><span class="btn btn-danger btn-xs ml-5 js-delete" data-id="'+data+'">详细资料</span>';
                        },
                    },
                ],
            });
        });

    });
</script>

</body>
</html>

