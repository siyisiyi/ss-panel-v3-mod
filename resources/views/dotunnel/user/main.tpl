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
        <!-- <link href="//fonts.gmirror.org/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" /> -->
        <link href="/theme/metronic/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="/theme/metronic/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
        <link href="/theme/metronic/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="/theme/metronic/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
        <!-- END GLOBAL MANDATORY STYLES -->
        <!-- BEGIN THEME GLOBAL STYLES -->
        <link href="/theme/metronic/global/css/components-md.min.css" rel="stylesheet" id="style_components" type="text/css" />
        <link href="/theme/metronic/global/css/plugins-md.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME GLOBAL STYLES -->
        <!-- BEGIN THEME LAYOUT STYLES -->
        <link href="/theme/metronic/layouts/layout/css/layout.min.css" rel="stylesheet" type="text/css" />
        <link href="/theme/metronic/layouts/layout/css/themes/darkblue.css" rel="stylesheet" type="text/css" id="style_color" />
        <link href="/theme/metronic/layouts/layout/css/custom.css" rel="stylesheet" type="text/css" />
        <!-- END THEME LAYOUT STYLES -->
        <!-- <link rel="shortcut icon" href="favicon.ico" />  -->
        <!-- <meta name="msapplication-TileColor" content="#ffffff"> -->
        <!-- <meta name="theme-color" content="#ffffff"> -->
        <!-- <link href="/theme/flatui/css/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->
        <!-- <link href="/theme/flatui/css/flat-ui.min.css" rel="stylesheet"> -->
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
                        <ul class="page-sidebar-menu  page-header-fixed " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
                            <!-- DOC: To remove the sidebar toggler from the sidebar you just need to completely remove the below "sidebar-toggler-wrapper" LI element -->
                            <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
                            <li class="sidebar-toggler-wrapper hide">
                                <div class="sidebar-toggler">
                                    <span></span>
                                </div>
                            </li>
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
                                    <span class="title">公告中心</span>
                                    <span class="selected"></span>
                                    <span class="arrow"></span>
                                </a>
                            </li>
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
                        </ul>
                        <!-- END SIDEBAR MENU -->
                        <!-- END SIDEBAR MENU -->
                    </div>
                    <!-- END SIDEBAR -->
                </div>
                <!-- END SIDEBAR -->