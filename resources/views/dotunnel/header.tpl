<!DOCTYPE html>
<html lang="zh" class="js "><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
   <title>{$config["appName"]}</title>
   
  <meta name="description" content="shadowsocks, shadowsocksR, VPN, GFW, youtube, facebook, twitter, surge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"> 
  <link rel="stylesheet" href="/theme/dotunnel/css/bootstrap.css" type="text/css">
  <link rel="stylesheet" href="/theme/dotunnel/css/animate.css" type="text/css">
  <link rel="stylesheet" href="/theme/dotunnel/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="/theme/dotunnel/css/font.css" type="text/css">
  <link rel="stylesheet" href="/theme/dotunnel/css/landing.css" type="text/css">
  <link rel="stylesheet" href="/theme/dotunnel/css/app.css" type="text/css">
  <link rel="stylesheet" href="/theme/dotunnel/css/custom.css" type="text/css">
  <link rel="shortcut icon" href="/theme/dotunnel/images/favicon.ico">
  
  <!--[if lt IE 9]>
    <script src="js/ie/html5shiv.js"></script>
    <script src="js/ie/respond.min.js"></script>
    <script src="js/ie/excanvas.js"></script>
  <![endif]-->
</head>
<body>
  	
  <!-- header -->
  <header id="header" class="navbar navbar-fixed-top bg-white box-shadow b-b b-light affix-top" data-spy="affix" data-offset-top="1">
    <div class="container">
      <div class="navbar-header">        
        <a href="/" class="navbar-brand"><img src="/theme/dotunnel/images/logo.png" class="m-r-sm"><span class="text-muted">{$config["appName"]}</span></a>
        <button class="btn btn-link visible-xs" type="button" data-toggle="collapse" data-target=".navbar-collapse">
          <i class="fa fa-bars"></i>
        </button>
      </div>
      <div class="collapse navbar-collapse">
        <ul class="nav navbar-nav navbar-right">
          <li class="active">
            <a href="/">网站首页</a>
          </li>
          <li>
            <a href="/cart">套餐购买</a>
          </li>
          <li>
            <a href="/services">客户端下载</a>
          </li>		  
          <li>
            <a href="/help">使用教程</a>
          </li>
		    <li>
            <div class="m-t-sm"> 
            {if $user->isLogin}
            	<a href="/user" class="btn btn-warning btn-sm m-l">用户中心
            	</a>
            	<a href="/user/logout" class="btn btn-sm btn-success m-l"><strong>
            	退出登陆
            	</strong></a>
            {else}
            	<a href="/auth/login" class="btn btn-warning btn-sm m-l">会员登录
            	</a>
            	<a href="/auth/register" class="btn btn-sm btn-success m-l"><strong>
            	用户注册
            	</strong></a>
            {/if}
            </div>
          </li>
		   <li>
		      <br>
		   </li>
        </ul>
      </div>
    </div>
  </header>
         
  <!-- / header -->