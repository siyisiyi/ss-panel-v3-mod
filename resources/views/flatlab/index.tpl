{include file='header_new.tpl'}

<style type="text/css">
        .advantage {
            display: table;
            min-height: 320px;
        }

        .inner-advantage {
            display: table-cell;
            vertical-align: middle;
        }
    </style>

<!-- Page Contents -->
    <div class="container" style="margin-top: 160px;">
        <div class="row" style="margin-bottom: 70px;">
            <div class="col-md-12">
                <div class="row">
                    <img src="/theme/flatui/images/icons/png/paper-airplane-icon.png" class="img-responsive center-block" alt="app icon" width="128px" height="128px"/>
                    <h2 class="text-center">世界这么大，何不去看看？</h2>
                    <div>
                        <p class="text-center">Across the Great Wall we can reach every corner in the world.</p>
                    </div>
                    <div class="col-md-4 col-md-offset-4">
                    {if $user->isLogin}
                        <a href="/user" class="btn btn-hg btn-embossed btn-primary center-block">控制面板</a>
                    {else}
                        <a href="/auth/register" class="btn btn-hg btn-embossed btn-primary center-block">立刻加入</a>
                    {/if}
                    </div>
                </div>
                <div class="row" style="margin-top: 20px">
                    <p class="text-center"><strong>更安全，更隐私，更快捷!</strong></p>
                </div>
            </div>
        </div>

        <hr>
        <div class="row advantage">
            <div class="inner-advantage">
                <div class="col-md-5 col-md-offset-1">
                    <h4>免费开始</h4>
                    <p>
                        一切从免费开始，只要您有邀请码，可以免费使用我们的服务，如果免费额度满足不了您，可以进入我们的商城，购买相应的商品！邀请好友还有返利赠送！。
                    </p>
                </div>
                <div class="col-md-5">
                    <img src="/theme/flatui/images/icons/png/devices.jpg" class="img-responsive center-block" alt="app icon" width="580px" height="248px">
                </div>
            </div>
        </div>
        <hr>
        <div class="row advantage">
            <div class="inner-advantage">
                <div class="col-md-5  col-md-offset-1">
                    <img src="/theme/flatui/images/icons/png/rocket-ship.png" class="img-responsive center-block" alt="app icon" width="192px" height="206px">
                </div>
                <div class="col-md-5">
                    <h4>光速上网</h4>
                    <p>
                        精选世界各地节点，无论您身在何处，是什么运营商，访问什么网站，都可以选择到适合自己的服务器。同时，我们在不断地优化我们的网络，确保您能够获得最快的上网体验。
                    </p>
                </div>
            </div>
        </div>
        <hr>
        <div class="row advantage">
            <div class="inner-advantage">
                <div class="col-md-5 col-md-offset-1">
                    <h4>滴水不漏</h4>
                    <p>
                        全站HTTPS 256位的强加密，数据库加密，保障账户安全。支持多种加密及混淆方式，为用户的互联网隐私保驾护航。即使在公共Wi-Fi也能自由地上网冲浪。
                    </p>
                </div>
                <div class="col-md-5">
                    <img src="/theme/flatui/images/icons/png/lock.png" class="img-responsive center-block" alt="app icon" width="192px" height="192px">
                </div>
            </div>
        </div>
        <br>
    </div>

{include file='footer_new.tpl'}
