
<!--
    Metronic Panel
    Author: siyi41 https://telegram.me/siyi41
    forked from glzjin https://github.com/glzjin/ss-panel-v3-mod 
 -->
<!DOCTYPE html>
    <!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
    <!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
    <!--[if !IE]><!-->
    <html lang="zh">
    <!--<![endif]-->
    <!-- BEGIN HEAD -->
    <head>
        <meta charset="utf-8" />
        <title>{$config["appName"]}</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <meta content="" name="description" />
        <meta content="" name="author" />
        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <!-- <link href="/theme/metronic/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" /> -->
        <link href="https://cdn.bootcss.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
        <!-- <link href="/theme/metronic/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" /> -->
        <link href="https://cdn.bootcss.com/simple-line-icons/2.3.2/css/simple-line-icons.min.css" rel="stylesheet">
        <!-- <link href="/theme/metronic/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" /> -->
        <link href="https://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
        <!-- <link href="/theme/metronic/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" /> -->
        <link href="https://cdn.bootcss.com/bootstrap-switch/3.3.2/css/bootstrap2/bootstrap-switch.min.css" rel="stylesheet">
        <!-- END GLOBAL MANDATORY STYLES -->
        <!-- BEGIN THEME GLOBAL STYLES -->
        <link href="/theme/metronic/global/css/components-md.min.css" rel="stylesheet" id="style_components" type="text/css" />
        <link href="/theme/metronic/global/css/plugins-md.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME GLOBAL STYLES -->
        <!-- BEGIN THEME LAYOUT STYLES -->
        <link href="/theme/metronic/layouts/layout/css/layout.min.css" rel="stylesheet" type="text/css" />
        <link href="/theme/metronic/layouts/layout/css/themes/grey.min.css" rel="stylesheet" type="text/css" id="style_color" />
        <link href="/theme/metronic/layouts/layout/css/custom.css" rel="stylesheet" type="text/css" />
        <!-- END THEME LAYOUT STYLES -->
        </head>
    <!-- END HEAD -->
       <body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white page-md page-sidebar-fixed page-footer-fixed">
        <div class="page-wrapper">
            <!-- BEGIN HEADER -->
            <div class="page-header navbar navbar-fixed-top">
                <!-- BEGIN HEADER INNER -->
                <div class="page-header-inner ">
                    <!-- BEGIN LOGO -->
                    <div class="page-logo">
                        <a href="/">
                            <img src="/theme/metronic/layouts/layout/img/logo.png" alt="logo" class="logo-default" /> </a>
                        <div class="menu-toggler sidebar-toggler">
                            <span></span>
                        </div>
                    </div>
                    <!-- END LOGO -->
                    <!-- BEGIN RESPONSIVE MENU TOGGLER -->
                    <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse">
                        <span></span>
                    </a>
                    <!-- END RESPONSIVE MENU TOGGLER -->
                    <!-- BEGIN TOP NAVIGATION MENU -->
                    <div class="top-menu">
                        <ul class="nav navbar-nav pull-right">
                            <!-- BEGIN USER LOGIN DROPDOWN -->
                            <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
                            <li class="dropdown dropdown-extended dropdown-user">
                                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                    <img alt="" class="img-circle" src="/theme/metronic/layouts/layout/img/avatar3_small.png" />
                                    <span class="username username-hide-on-mobile">{$user->email}</span>
                                    <i class="fa fa-angle-down"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-default">
                                    <li class="external">
                                        <h3>
                                            余额：<span class="bold">￥{$user->money}</span> 元</h3>
                                        <a href="/user/code">充值</a>
                                    </li>
                                    <!-- <li>
                                        <p class="text-center">
                                            余额：<strong class="font-green-turquoise">￥{$user->money}</strong>
                                            <a href="/user/code/"><span type="button" class="btn green btn-xs">充值</span></a>
                                        </p>
                                    </li> -->
                                    <li>
                                        <a href="/user/edit">
                                            <i class="icon-user"></i>修改资料</a>
                                    </li>
                                    <li>
                                        <a href="/user/shop">
                                            <i class="icon-basket"></i>商店</a>
                                    </li>
                                    {if $user->isAdmin()}
                                    <li>
                                        <a href="/admin">
                                            <i class="icon-rocket"></i>管理面板
                                        </a>
                                    </li>
                                    {/if}
                                    <li class="divider"> </li>
                                    <li>
                                        <a href="/user/logout">
                                            <i class="icon-key"></i>退出</a>
                                    </li>
                                </ul>
                            </li>
                            <!-- END USER LOGIN DROPDOWN -->
                            <!-- BEGIN QUICK SIDEBAR TOGGLER -->
                            <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
                            <!-- END QUICK SIDEBAR TOGGLER -->
                        </ul>
                    </div>
                    <!-- END TOP NAVIGATION MENU -->
                </div>
                <!-- END HEADER INNER -->
            </div>
            <!-- END HEADER -->
            <!-- BEGIN HEADER & CONTENT DIVIDER -->
            <div class="clearfix"> </div>
            <!-- END HEADER & CONTENT DIVIDER -->
            <!-- BEGIN CONTAINER -->
            <div class="page-container">
                <!-- BEGIN SIDEBAR -->
                <div class="page-sidebar-wrapper">
                    <!-- BEGIN SIDEBAR -->
                    <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
                    <!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
                    <div class="page-sidebar navbar-collapse collapse">
                        <!-- BEGIN SIDEBAR MENU -->
                        <!-- DOC: Apply "page-sidebar-menu-light" class right after "page-sidebar-menu" to enable light sidebar menu style(without borders) -->
                        <!-- DOC: Apply "page-sidebar-menu-hover-submenu" class right after "page-sidebar-menu" to enable hoverable(hover vs accordion) sub menu mode -->
                        <!-- DOC: Apply "page-sidebar-menu-closed" class right after "page-sidebar-menu" to collapse("page-sidebar-closed" class must be applied to the body element) the sidebar sub menu mode -->
                        <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
                        <!-- DOC: Set data-keep-expand="true" to keep the submenues expanded -->
                        <!-- DOC: Set data-auto-speed="200" to adjust the sub menu slide up/down speed -->
                        <ul class="page-sidebar-menu  page-header-fixed " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
                            <!-- DOC: To remove the sidebar toggler from the sidebar you just need to completely remove the below "sidebar-toggler-wrapper" LI element -->
                            <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
                            <li class="sidebar-toggler-wrapper hide">
                                <div class="sidebar-toggler">
                                    <span></span>
                                </div>
                            </li>
                            <!-- END SIDEBAR TOGGLER BUTTON -->
                            <!-- DOC: To remove the search box from the sidebar you just need to completely remove the below "sidebar-search-wrapper" LI element -->
                            <!-- <li class="sidebar-search-wrapper">
                                <form class="sidebar-search  " action="page_general_search_3.html" method="POST">
                                    <a href="javascript:;" class="remove">
                                        <i class="icon-close"></i>
                                    </a>
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="Search...">
                                        <span class="input-group-btn">
                                            <a href="javascript:;" class="btn submit">
                                                <i class="icon-magnifier"></i>
                                            </a>
                                        </span>
                                    </div>
                                </form>
                            </li> -->
                            {if $user->isAdmin()}
                            <li class="heading">
                                <h3 class="uppercase">Setting</h3>
                            </li>
                            <li class="nav-item">
                                <a href="/admin" class="nav-link nav-toggle">
                                    <i class="icon-wrench"></i>
                                    <span class="title">管理面板</span>
                                    <span class="selected"></span>
                                    <span class="arrow"></span>
                                </a>
                            </li>
                            {/if}
                            <li class="heading">
                                <h3 class="uppercase">Account</h3>
                            </li>
                            <li class="nav-item">
                                <a href="/user" class="nav-link nav-toggle">
                                    <i class="icon-home"></i>
                                    <span class="title">用户中心</span>
                                    <span class="selected"></span>
                                    <span class="arrow"></span>
                                </a>
                                <!-- <ul class="sub-menu">
                                    <li class="nav-item start active open">
                                        <a href="index.html" class="nav-link ">
                                            <i class="icon-bar-chart"></i>
                                            <span class="title">Dashboard 1</span>
                                            <span class="selected"></span>
                                        </a>
                                    </li>
                                    <li class="nav-item start ">
                                        <a href="dashboard_2.html" class="nav-link ">
                                            <i class="icon-bulb"></i>
                                            <span class="title">Dashboard 2</span>
                                            <span class="badge badge-success">1</span>
                                        </a>
                                    </li>
                                    <li class="nav-item start ">
                                        <a href="dashboard_3.html" class="nav-link ">
                                            <i class="icon-graph"></i>
                                            <span class="title">Dashboard 3</span>
                                            <span class="badge badge-danger">5</span>
                                        </a>
                                    </li>
                                </ul> -->
                            </li>
                            <li class="nav-item">
                                <a href="/user/edit" class="nav-link nav-toggle">
                                    <i class="icon-note"></i>
                                    <span class="title">修改资料</span>
                                    <span class="selected"></span>
                                    <span class="arrow"></span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/user/profile" class="nav-link nav-toggle">
                                    <i class="icon-user-unfollow"></i>
                                    <span class="title">我的账户</span>
                                    <span class="selected"></span>
                                    <span class="arrow"></span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/user/announcement" class="nav-link nav-toggle">
                                    <i class="icon-speech"></i>
                                    <span class="title">查看公告</span>
                                    <span class="selected"></span>
                                    <span class="arrow"></span>
                                </a>
                            </li>
                            {if $config['enable_donate']=='true'}
                            <li class="nav-item">
                                <a href="/user/donate" class="nav-link nav-toggle">
                                    <i class="icon-trophy"></i>
                                    <span class="title">捐赠公示</span>
                                    <span class="selected"></span>
                                    <span class="arrow"></span>
                                </a>
                            </li>
                            {/if}
                            <li class="heading">
                                <h3 class="uppercase">Connection</h3>
                            </li>
                            <li class="nav-item">
                                <a href="/user/node" class="nav-link nav-toggle">
                                    <i class="icon-screen-desktop"></i>
                                    <span class="title">节点列表</span>
                                    <span class="selected"></span>
                                    <span class="arrow"></span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/user/trafficlog" class="nav-link nav-toggle">
                                    <i class="icon-share"></i>
                                    <span class="title">流量记录</span>
                                    <span class="selected"></span>
                                    <span class="arrow"></span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/user/lookingglass" class="nav-link nav-toggle">
                                    <i class="icon-magnifier"></i>
                                    <span class="title">观察窗</span>
                                    <span class="selected"></span>
                                    <span class="arrow"></span>
                                </a>
                            </li>
                            <li class="heading">
                                <h3 class="uppercase">Billing</h3>
                            </li>
                            <li class="nav-item">
                                <a href="/user/shop" class="nav-link nav-toggle">
                                    <i class="icon-basket"></i>
                                    <span class="title">商店</span>
                                    <span class="selected"></span>
                                    <span class="arrow"></span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/user/bought" class="nav-link nav-toggle">
                                    <i class="icon-present"></i>
                                    <span class="title">购买记录</span>
                                    <span class="selected"></span>
                                    <span class="arrow"></span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/user/code" class="nav-link nav-toggle">
                                    <i class="icon-credit-card"></i>
                                    <span class="title">充值</span>
                                    <span class="selected"></span>
                                    <span class="arrow"></span>
                                </a>
                            </li>
                            <li class="heading">
                                <h3 class="uppercase">Support</h3>
                            </li>
                            {if $config['enable_wecenter']=='true'}
                            <li class="nav-item">
                                <a href="/user/wecenter" class="nav-link nav-toggle">
                                    <i class="icon-question"></i>
                                    <span class="title">问答</span>
                                    <span class="selected"></span>
                                    <span class="arrow"></span>
                                </a>
                            </li>
                            {/if}
                            <li class="nav-item">
                                <a href="/user/ticket" class="nav-link nav-toggle">
                                    <i class="icon-speech"></i>
                                    <span class="title">工单</span>
                                    <span class="selected"></span>
                                    <span class="arrow"></span>
                                </a>
                            </li>
                            <li class="heading">
                                <h3 class="uppercase">Sharing</h3>
                            </li>
                            <li class="nav-item">
                                <a href="/user/invite" class="nav-link nav-toggle">
                                    <i class="icon-like"></i>
                                    <span class="title">邀请</span>
                                    <span class="selected"></span>
                                    <span class="arrow"></span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/user/detect" class="nav-link nav-toggle">
                                    <i class="icon-organization"></i>
                                    <span class="title">屏蔽规则</span>
                                    <span class="selected"></span>
                                    <span class="arrow"></span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/user/detect/log" class="nav-link nav-toggle">
                                    <i class="icon-list"></i>
                                    <span class="title">屏蔽记录</span>
                                    <span class="selected"></span>
                                    <span class="arrow"></span>
                                </a>
                            </li>
                        </ul>
                        <!-- END SIDEBAR MENU -->
                        <!-- END SIDEBAR MENU -->
                    </div>
                    <!-- END SIDEBAR -->
                </div>
                <!-- END SIDEBAR -->