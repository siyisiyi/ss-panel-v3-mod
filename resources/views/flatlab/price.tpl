{include file='header_new.tpl'}

    <style type="text/css">
        .fui-credit-card {
            font-size: 2em;
            color: limegreen;
        }

        td {
            font-size: 18px;
        }

        #main {
            margin-top: 100px;
            min-height: 500px;
        }

        #page-head {
            display: inline;
            margin-left: 4px;
        }
    </style>
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1" id="main">
                <div>
                    <span class="fui-credit-card" aria-hidden="true" style="color: inherit;"></span>
                    <h3 id="page-head">购买与续费</h3>
                </div>
                <hr>
                <div class="row">
                    <div class="col-md-3">
                        <div class="tile">
                            <img src="theme/flatui/images/icons/svg/ribbon.svg" alt="ribbon" class="tile-hot-ribbon">
                            <img src="theme/flatui/images/icons/svg/loop.svg" alt="Infinity-Loop" class="tile-image">
                            <h3 class="tile-title">年票</h3>
                            <div class="text-success" >￥12.5 每月</div>
                            <div class="text-success" >200G/月</div>
                            <p class="text-success"><strong>免费2月！</strong></p>
                            <button class="btn btn-primary btn-large btn-block purchase" id="annual">
                                购买&amp;续费
                            </button>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="tile">
                            <img src="theme/flatui/images/icons/png/Spaceship@2x.png" alt="Pensils" class="tile-image">
                            <h3 class="tile-title">月票</h3>
                            <div class="text-success" >￥15 每月</div>
                            <div class="text-success" >200G/月</div>
                            <p class="text-success"><strong>畅行无阻！</strong></p>
                            <button class="btn btn-primary btn-large btn-block purchase" id="monthly">
                                购买&amp;续费
                            </button>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="tile">
                            <img src="theme/flatui/images/icons/svg/bulb.svg" alt="Chat" class="tile-image">
                            <h3 class="tile-title">油票</h3>
                            <div class="text-success" >￥20</div>
                            <div class="text-success" >10GB/张</div>
                            <p class="text-success"><strong>永久流量</strong></p>
                            <button class="btn btn-primary btn-large btn-block purchase" id="demand">
                                购买&amp;续费
                            </button>
                        </div>
                    </div>

                        <div class="col-md-3">
                            <div class="tile">
                                <img src="theme/flatui/images/icons/svg/retina.svg" alt="Chat" class="tile-image">
                                <h3 class="tile-title">打酱油</h3>
                                <div class="text-success" >仅需 ￥1 </div>
                                <div class="text-success" >300MB</div>
                                <p class="text-success"><strong>测试&amp;一天有效</strong></p>
                                <button class="btn btn-primary btn-large btn-block purchase" id="test">
                                购买&amp;续费
                            </button>
                            </div>
                        </div>
                </div> <!-- end of row -->
            </div> <!-- end of main -->
        </div> <!-- end of row -->

        <div class="row">
            <div class="text-center">
                <h4>更多精品线路:</h4>
            </div>

            <div class="col-md-8 col-md-offset-2" style="margin-top: 20px">
                <div class="table-responsive">
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>需求</th>
                            <th>节点</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>国内中转服务器加速，访问速度有效提高30%~100%</td>
                            <td><div class="text-center">中转加速节点&nbsp;<span class="glyphicon glyphicon-ok"></span></div></td>
                        </tr>
                        <tr>
                            <td>Ping太高？补兵不顺，人物飘移？针对海外游戏进行UDP加速</td>
                            <td><div class="text-center">游戏加速节点&nbsp;<span class="glyphicon glyphicon-ok"></span></div></td>
                        </tr>
                        <tr>
                            <td>共享带宽不够，不想和一群人一起挤一台服务器？</td>
                            <td><div class="text-center">海外精英节点&nbsp;<span class="glyphicon glyphicon-ok"></span></div></td>
                        </tr>
                        <tr>
                            <td>商务需求，为中小型企业扩宽海外市场</td>
                            <td><div class="text-center">定制独享节点<span class="glyphicon glyphicon-ok"></span></div></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div> <!-- end of container -->

{include file='footer_new.tpl'}

<script>
$(document).ready(function(){
        $(".purchase").click(function(){
            window.location.href="/user/shop"; 
        });
    })
</script>