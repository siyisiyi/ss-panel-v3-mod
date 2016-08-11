<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <title>{$config["appName"]}</title>
    <meta name="renderer" content="webkit">

    <link rel="apple-touch-icon" sizes="57x57" href="/theme/flatui/fav/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="/theme/flatui/fav/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/theme/flatui/fav/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="/theme/flatui/fav/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/theme/flatui/fav/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="/theme/flatui/fav/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/theme/flatui/fav/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="/theme/flatui/fav/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="/theme/flatui/fav/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192" href="/theme/flatui/fav/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/theme/flatui/fav/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="/theme/flatui/fav/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/theme/flatui/fav/favicon-16x16.png">
    <link rel="manifest" href="/theme/flatui/fav/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <!-- <meta name="msapplication-TileImage" content="docs/asset/fav/ms-icon-144x144.png"> -->
    <meta name="theme-color" content="#ffffff">
    <link href="/theme/flatui/css/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/theme/flatui/css/flat-ui.min.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
        body {
            font-family: Lato,"Hiragino Sans GB","Microsoft Jhenghei","Microsoft YaHei","WenQuanYi Micro Hei",sans-serif;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top navbar-lg" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-7">
                <span class="sr-only">Toggle navigation</span>
            </button>
            <a class="navbar-brand" href="/">{$config["appName"]}</a>
        </div>

        <div class="collapse navbar-collapse" id="navbar-collapse-7">
            <ul class="nav navbar-nav">
                                    <li id="home"><a href="/">首页</a></li>
                                    <li id="tutorial"><a href="/tutorial">使用教程</a></li>
                                    <li id="code"><a href="/code">邀请码</a></li>
                            </ul>
            <div class="nav navbar-nav navbar-right">
                                    <ul class="nav navbar-nav navbar-right">
                                    {if $user->isLogin}
                        <li><button type="button" class="btn btn-default navbar-btn" onclick="location.href='/user'"">用户中心</button></li>
                        <li><a href="/user/logout">退出</a></li>
                        {else}
                        <li><button type="button" class="btn btn-default navbar-btn" onclick="location.href='/auth/register'"" style="margin-left: 30px;">注册</button></li>
                        <li><a href="/auth/login" style="margin: 0 50px;">登录</a></li>
                        {/if}
                    </ul>
                            </div>
        </div>
    </div>
</nav>

<!-- end of nav bar -->