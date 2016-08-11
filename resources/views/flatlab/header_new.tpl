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
    <meta name="msapplication-TileColor" content="#ffffff">
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
                                    <li><a href="/" class="home">首页</a></li>
                                    <li><a href="/tutorial" id=tutorial>教程</a></li>
                                    <li><a href="/price" id="price">价格</a></li>
                                    <li><a href="/code" in="invite">邀请</a></li>
                            </ul>
            <div class="nav navbar-nav navbar-right">
                                    <ul class="nav navbar-nav navbar-right">
                                    {if $user->isLogin}
                        <li><button type="button" class="btn btn-default navbar-btn" onclick="location.href='/user'"" style="margin-left: 30px;">面板</button></li>
                        <li><a href="/user/logout" style="margin: 0 21px;">退出</a></li>
                        {else}
                        <li><button type="button" class="btn btn-default navbar-btn" onclick="location.href='/auth/register'" style="margin-left: 30px;">注册</button></li>
                        <li><a href="/auth/login" style="margin: 0 21px;">登录</a></li>
                        {/if}
                    </ul>
            </div>
        </div>
    </div>
</nav>

<!-- end of nav bar -->

<!-- thumbnail -->
<div class="hide">
    <img src="/theme/progressus/assets/images/thumbnail.jpg" width='640px'>
</div>
<!-- /thumbnail -->