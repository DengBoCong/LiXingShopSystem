<%--
  Created by IntelliJ IDEA.
  User: Power
  Date: 2019/8/10
  Time: 11:46
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
    <title>丽星平台 - 管理详细资料</title>
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
    <meta name="description" content="丽星平台，在线家具市场销售平台"/>
    <meta name="keywords" content="丽星平台, 家具, 市场, 线上商城"/>
    <meta name="author" content="DBC" />

    <!-- Favicon icon -->
    <link rel="icon" href="<%=basePath%>/admin/img/favicon.ico" type="image/x-icon">
    <!-- fontawesome icon -->
    <link rel="stylesheet" href="<%=basePath%>/admin/fonts/fontawesome/css/fontawesome-all.min.css">
    <!-- animation css -->
    <link rel="stylesheet" href="<%=basePath%>/admin/plugins/animation/css/animate.min.css">
    <link rel="stylesheet" href="<%=basePath%>/admin/plugins/ladda/css/ladda-themeless.min.css">
    <!-- vendor css -->
    <link rel="stylesheet" href="<%=basePath%>/admin/css/style.css">

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
                        <li class=""><a id="summaryPage" href="<%=basePath%>/Admin/EnterpriseInfo/Summary" class="">经营概况</a></li>
                        <li class="active"><a href="#" class="">详细资料</a></li>
                        <li class=""><a href="control.html" class="">平台流量监控</a></li>
                    </ul>
                </li>
                <li data-username="Vertical Horizontal Box Layout RTL fixed static Collapse menu color icon dark" class="nav-item pcoded-hasmenu">
                    <a href="#!" class="nav-link"><span class="pcoded-micon"><i class="feather icon-layout"></i></span><span class="pcoded-mtext">商品</span></a>
                    <ul class="pcoded-submenu">
                        <li class="pcoded-hasmenu"><a href="#!" class="">商品智配</a>
                            <ul class="pcoded-submenu">
                                <li class=""><a href="../commodity/adaptation/classify.html" class="">场景分类</a></li>
                                <li class=""><a href="../commodity/adaptation/scene.html" class="">场景图上传</a></li>
                                <li class=""><a href="../commodity/adaptation/commodity.html" class="">商品图上传</a></li>
                            </ul>
                        </li>
                        <li class=""><a href="../commodity/index.html" class="">商品档案</a></li>
                        <li class=""><a href="../commodity/classify.html" class="">商品分类</a></li>
                        <li class=""><a href="../commodity/photo.html" class="">商品图片</a></li>
                        <li class=""><a href="../commodity/video.html" class="">商品小视频</a></li>
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
                            <img src="${UserInfo.image}" class="img-radius" alt="用户头像">
                            <span>${UserInfo.username}</span>
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
                                        <h5>详细资料卡</h5>
                                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLive">修改密码</button>
                                        <div class="card-header-right">
                                            <div class="btn-group card-option">
                                                <button type="button" class="btn dropdown-toggle btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <i class="feather icon-more-horizontal"></i>
                                                </button>
                                                <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                                    <li class="dropdown-item full-card"><a href="#!"><span><i class="feather icon-maximize"></i> 全屏显示</span><span style="display:none"><i class="feather icon-minimize"></i> 正常显示</span></a></li>
                                                    <li class="dropdown-item minimize-card"><a href="#!"><span><i class="feather icon-minus"></i> 整理折叠</span><span style="display:none"><i class="feather icon-plus"></i> 展开内容</span></a></li>
                                                    <li class="dropdown-item reload-card"><a href="#!"><i class="feather icon-refresh-cw"></i> 刷新</a></li>
                                                    <li class="dropdown-item"><a id="modifyInfo" href="#!"><i class="feather icon-edit"></i> 修改信息</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <form>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group" style="text-align: center;">
                                                        <img src="http://localhost:8080/admin/img/user/avatar-1.jpg">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">邮箱地址</label>
                                                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="请输入邮箱地址" value="${UserInfo.email}" disabled="disabled">
                                                        <small id="emailHelp" class="form-text text-muted">请保证邮箱地址的合法性 e.g.163, qq等</small>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>账号昵称</label>
                                                        <input type="text" class="form-control" id="exampleInputUsername" placeholder="请输入账号昵称" disabled="disabled" value="${UserInfo.username}">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="exampleFormControlSelect2">账号使用者性别</label>
                                                        <select class="form-control" id="exampleFormControlSelect2" disabled="disabled">
                                                            <c:if test="${UserInfo.gender == 0}">
                                                                <option value="0" selected="selected">保密</option>
                                                                <option value="1">男</option>
                                                                <option value="2">女</option>
                                                            </c:if>
                                                            <c:if test="${UserInfo.gender == 1}">
                                                                <option value="0">保密</option>
                                                                <option value="1" selected="selected">男</option>
                                                                <option value="2">女</option>
                                                            </c:if>
                                                            <c:if test="${UserInfo.gender == 2}">
                                                                <option value="0">保密</option>
                                                                <option value="1">男</option>
                                                                <option value="2" selected="selected">女</option>
                                                            </c:if>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>手机号(即为登录账号，唯一且不允许修改)</label>
                                                        <input type="text" class="form-control" placeholder="不允许修改" disabled="disabled" value="${UserInfo.mobile}">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>总登录次数(不允许修改)</label>
                                                        <input type="text" class="form-control" placeholder="不允许修改" disabled="disabled" value="${UserInfo.loginTotal}">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="exampleFormControlSelect1">账号用户角色(不允许修改)</label>
                                                        <select class="form-control" id="exampleFormControlSelect1" disabled="disabled">
                                                            <c:if test="${UserInfo.roleId == 10}">
                                                                <option value="10" selected="selected">超级管理员</option>
                                                                <option value="1">人事</option>
                                                                <option value="2">客服</option>
                                                                <option value="3">财务</option>
                                                            </c:if>
                                                            <c:if test="${UserInfo.roleId == 1}">
                                                                <option value="10">超级管理员</option>
                                                                <option value="1" selected="selected">人事</option>
                                                                <option value="2">客服</option>
                                                                <option value="3">财务</option>
                                                            </c:if>
                                                            <c:if test="${UserInfo.roleId == 2}">
                                                                <option value="10">超级管理员</option>
                                                                <option value="1">人事</option>
                                                                <option value="2" selected="selected">客服</option>
                                                                <option value="3">财务</option>
                                                            </c:if>
                                                            <c:if test="${UserInfo.roleId == 3}">
                                                                <option value="10">超级管理员</option>
                                                                <option value="1">人事</option>
                                                                <option value="2">客服</option>
                                                                <option value="3" selected="selected">财务</option>
                                                            </c:if>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <button id="infoSumbit" class="ladda-button ladda-button-demo btn btn-primary" data-style="zoom-in" disabled="disabled">提交</button>
                                        </form>
                                        <div id="exampleModalLive" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalLiveLabel" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLiveLabel">修改密码</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <label for="exampleInputPwd1">旧密码</label>
                                                                    <input type="password" class="form-control" id="exampleInputPwd1" placeholder="请输入旧密码" value="">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="exampleInputPwd2">新密码</label>
                                                                    <input type="password" class="form-control" id="exampleInputPwd2" placeholder="请输入新密码" value="">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="exampleInputPwd3">确认新密码</label>
                                                                    <input type="password" class="form-control" id="exampleInputPwd3" placeholder="请再次输入新密码" value="">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                                                        <button id="modifyPwd" type="button" class="btn btn-primary">提交</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
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
<script src="<%=basePath%>/admin/js/vendor-all.min.js"></script>
<script src="<%=basePath%>/admin/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=basePath%>/admin/js/pcoded.min.js"></script>
<script src="<%=basePath%>/admin/js/menu-setting.min.js"></script>
<script src="<%=basePath%>/admin/plugins/ladda/js/spin.min.js"></script>
<script src="<%=basePath%>/admin/plugins/ladda/js/ladda.min.js"></script>
<script src="<%=basePath%>/admin/plugins/ladda/js/ladda.jquery.min.js"></script>
<script src="<%=basePath%>/admin/plugins/sweetalert/js/sweetalert.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $('#modifyInfo').click(function () {
            $('#exampleInputEmail1').removeAttr("disabled");
            $('#exampleInputUsername').removeAttr("disabled");
            $('#exampleFormControlSelect2').removeAttr("disabled");
            $('#infoSumbit').removeAttr("disabled");
        });

        var infoSumbit = $('#infoSumbit').ladda();
        infoSumbit.click(function(){
            var reg = new RegExp("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$");
            var $exampleInputEmail1 = $('#exampleInputEmail1').val();
            var $exampleInputUsername = $('#exampleInputUsername').val();
            var $exampleFormControlSelect2 = $('#exampleFormControlSelect2').val();
            if($exampleInputEmail1 == "" || $exampleInputUsername == ""){
                swal({
                    title: "警告!",
                    text: "输入内容不允许为空!",
                    icon: "warning",
                    button: {
                        text: "确定",
                    },
                });
            }else if(!reg.test($exampleInputEmail1)){
                swal({
                    title: "警告!",
                    text: "输入的邮箱格式不正确!",
                    icon: "warning",
                    button: {
                        text: "确定",
                    },
                });
            }else{
                $.ajax({
                    method: "POST",
                    url: "<%=basePath%>/Admin/ModifyInfo",
                    dataType: "json",
                    data: {'id':JSON.parse(sessionStorage.getItem("enterpriseInfo")).elementData[0].id, 'email':$exampleInputEmail1, 'username':$exampleInputUsername, 'gender':$exampleFormControlSelect2},
                    success: function (data) {
                        if(data.flag != "1"){
                            swal({
                                title: "修改失败!",
                                text: "请重试!",
                                icon: "error",
                                button: {
                                    text: "确定",
                                },
                            });
                        }else{
                            swal({
                                title: "修改成功!",
                                text: "进行刷新页面，正在为您跳转登录!",
                                icon: "success",
                                button: {
                                    text: "确定",
                                },
                            });
                            window.location.href = "<%=basePath%>/Admin/Login";
                        }
                        infoSumbit.ladda('stop');
                    },
                    beforeSend: function () {
                        infoSumbit.ladda( 'start' );
                    },
                    error: function () {
                        swal({
                            title: "出现错误!",
                            text: "网络参数出现错误!",
                            icon: "error",
                            button: {
                                text: "确定",
                            },
                        });
                    }
                });
            }
        });

        var $modifyPwd = $('#modifyPwd').ladda();
        $modifyPwd.click(function () {
            var $oldPassword = $('#exampleInputPwd1').val();
            var $newPassword = $('#exampleInputPwd2').val();
            var $newPassword1 = $('#exampleInputPwd3').val();
            if($oldPassword == "" || $newPassword == "" || $newPassword1 == ""){
                swal({
                    title: "警告!",
                    text: "密码不能为空!",
                    icon: "warning",
                    button: {
                        text: "确定",
                    },
                });
            }else if($oldPassword < 6 || $newPassword < 6 || $newPassword1 < 6){
                swal({
                    title: "警告!",
                    text: "密码不能小于6位!",
                    icon: "warning",
                    button: {
                        text: "确定",
                    },
                });
            }else if($newPassword != $newPassword1){
                swal({
                    title: "警告!",
                    text: "两次新密码输入不相等!",
                    icon: "warning",
                    button: {
                        text: "确定",
                    },
                });
            }else{
                $.ajax({
                    method: "POST",
                    url: "<%=basePath%>/Admin/ModifyPwd",
                    dataType: "json",
                    data: {'id':JSON.parse(sessionStorage.getItem("enterpriseInfo")).elementData[0].id,'oldPwd':$oldPassword, 'newPwd':$newPassword},
                    success: function (data) {
                        $modifyPwd.ladda("stop");
                        if(data.flag != "1"){
                            swal({
                                title: "修改失败!",
                                text: "密码输入错误!",
                                icon: "error",
                                button: {
                                    text: "确定",
                                },
                            });
                        }else{
                            swal({
                                title: "修改成功!",
                                text: "请牢记新的密码，正在为您跳转登录!",
                                icon: "success",
                                button: {
                                    text: "确定",
                                },
                            });
                            window.location.href = "<%=basePath%>/Admin/Login";
                        }
                    },
                    beforeSend: function () {
                        $modifyPwd.ladda("start");
                    },
                    error: function () {
                        swal({
                            title: "出现错误!",
                            text: "网络参数出现错误!",
                            icon: "error",
                            button: {
                                text: "确定",
                            },
                        });
                    }
                });
            }
        });
    });
</script>
</body>
</html>
