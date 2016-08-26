<!--
    Flat Panel
    Author: siyi41 https://telegram.me/siyi41
    forked from glzjin https://github.com/glzjin/ss-panel-v3-mod 
 -->
 
<!DOCTYPE html>
<html lang="zh">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>{$config["appName"]}</title>

    <!-- Bootstrap core CSS -->
    <!-- <link href="/theme/flatlab/css/bootstrap.min.css" rel="stylesheet"> -->
    <link href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <link href="/theme/flatlab/css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <!-- <link href="/theme/flatlab/assets/font-awesome/css/font-awesome.css" rel="stylesheet" /> -->
    <link href="//cdn.bootcss.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">

    <!--right slidebar-->
    <!-- <link href="/theme/flatlab/css/slidebars.css" rel="stylesheet"> -->
    <link href="//cdn.bootcss.com/slidebars/0.10/slidebars.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/theme/flatlab/css/style.css" rel="stylesheet">
    <link href="/theme/flatlab/css/style-responsive.css" rel="stylesheet" />
    <link href="/theme/flatlab/css/custom.min.css" rel="stylesheet" />
    <!-- <link href="/theme/flatlab/css/simple-line-icons.css" rel="stylesheet" /> -->
    <link href="//cdn.bootcss.com/simple-line-icons/2.3.2/css/simple-line-icons.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
  <!-- Page Loader -->
  <div id="loading">
      <div id="loading-center">
          <div id="loading-center-absolute">
              <div class="object" id="object_one"></div>
              <div class="object" id="object_two"></div>
              <div class="object" id="object_three"></div>
          </div>
      </div>
  </div>

  <section id="container" class="">
      <!--header start-->
      <header class="header white-bg">
          <div class="sidebar-toggle-box">
              <div data-placement="right" class="fa fa-bars tooltips"></div>
          </div>
          <!--logo start-->
          <a href="/" class="logo" >Go<span>SIYI</span></a>
          <!--logo end-->
          <div class="top-nav ">
              <ul class="nav pull-right top-menu">
                  <li>
                      <input type="text" class="form-control search" placeholder="搜索">
                  </li>
                  <!-- user login dropdown start-->
                  <li class="dropdown">
                      <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                          <img alt="" src="{$user->gravatar}}" width="29px">
                          <span class="username">余额: <strong>{$user->unusedTraffic()}</strong> </span>
                          <b class="caret"></b>
                      </a>
                      <ul class="dropdown-menu extended logout">
                          <div class="log-arrow-up"></div>
                          <li><a href="/user/code"><i class=" fa fa-credit-card"></i>充值</a></li>
                          <li><a href="/user/shop"><i class="fa fa-gift"></i>商店</a></li>
                          <li><a href="/user/edit"><i class="fa fa-edit"></i>修改资料</a></li>
                          <li><a href="/user/logout"><i class="fa fa-arrow-right"></i>退出</a></li>
                      </ul>
                  </li>

                  <!-- user login dropdown end -->
              </ul>
          </div>
      </header>
      <!--header end-->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
                  {if $user->isAdmin()}
                  <li>
                    <a href="/admin" id="navAdmin">
                      <i class="icon-speedometer"></i>
                      <span>管理面板</span>
                    </a>
                  </li>
                  {/if}

                  <li>
                      <a href="/user" id="navUser">
                          <i class="icon-home"></i>
                          <span>用户中心</span>
                      </a>
                  </li>

                  <li>
                    <a href="/user/announcement" id="navAnnouncement">
                      <i class="icon-speech"></i>
                      <span>系统公告</span>
                    </a>
                  </li>

                  <li>
                    <a href="/user/edit" id="navEdit">
                      <i class="icon-note"></i>
                      <span>修改资料</span>
                    </a>
                  </li>

                  <li>
                    <a href="/user/profile" id="navProfile">
                      <i class="icon-user"></i>
                      <span>我的账户</span>
                    </a>
                  </li>

                  <li>
                    <a href="/user/node" id="navNode">
                      <i class="icon-equalizer"></i>
                      <span>节点列表</span>
                    </a>
                  </li>

                  <li>
                    <a href="/user/trafficlog" id="navTrafficlog">
                      <i class="icon-graph"></i>
                      <span>流量记录</span>
                    </a>
                  </li>

                  <li>
                    <a href="/user/lookingglass" id="navLookingglass">
                      <i class="icon-magnifier"></i>
                      <span>观察窗</span>
                    </a>
                  </li>
                  <!-- 
                  <li>
                    <a href="/user/detect" id="navDetect">
                      <i class="icon-organization"></i>
                      <span>屏蔽规则</span>
                    </a>
                  </li>
                  
                  <li>
                    <a href="/user/detect/log" id="navDetectLog">
                      <i class="icon-list"></i>
                      <span>屏蔽记录</span>
                    </a>
                  </li>
                  -->
                  {if $config['enable_donate']=='true'}
                  <li>
                    <a href="/user/donate" id="navDonate">
                      <i class="icon-trophy"></i>
                      <span>捐献公示</span>
                    </a>
                  </li>
                  {/if}

                  <li>
                    <a href="/user/shop" id="navShop">
                      <i class="icon-basket"></i>
                      <span>商店</span>
                    </a>
                  </li>

                  <li>
                    <a href="/user/bought" id="navBought">
                      <i class="icon-present"></i>
                      <span>购买记录</span>
                    </a>
                  </li>

                  <li>
                    <a href="/user/code" id="navCode">
                      <i class="icon-credit-card"></i>
                      <span>充值</span>
                    </a>
                  </li>

                  {if $config['enable_wecenter']=='true'}
                  <li>
                    <a href="/user/wecenter" id="navWecenter">
                      <i class="icon-question"></i>
                      <span>问答</span>
                    </a>
                  </li>
                  {/if}

                  <li>
                    <a href="/user/ticket" id="navTicket">
                      <i class="icon-speech"></i>
                      <span>工单</span>
                    </a>
                  </li>

                  <li>
                    <a href="/user/invite" id="navInvite">
                      <i class="icon-like"></i>
                      <span>邀请</span>
                    </a>
                  </li>

                  <li>
                    <a href="/user/logout" id="navInvite">
                      <i class="icon-logout"></i>
                      <span>退出</span>
                    </a>
                  </li>

              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->