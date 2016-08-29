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
                <div class="">
                    <div class="text-center">
                        <p>
                            默认按需付费，1G≈￥1，需要多少流量充多少。<br/>不必担心服务不稳定，更不必担心供应商跑路。<br/>
                            如果需要体验更高速的优质服务，可以考虑以下精品路线：
                        </p>
                    </div>

                </div>
                <hr>
                <div class="row">
                    <div class="col-md-3">
                        <div class="tile">
                            <img src="theme/flatui/images/icons/svg/loop.svg" alt="Infinity-Loop" class="tile-image">
                            <h3 class="tile-title">临时卡</h3>
                            <div class="" >开通费: ￥1<sup>*</sup></div>
                            <div class="" >有效期1天</div>
                            <p class=""><strong>适合测试，临时使用</strong></p>
                            <button class="btn btn-primary btn-large btn-block purchase" id="annual">
                                购买&amp;续费
                            </button>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="tile">
                            <img src="theme/flatui/images/icons/png/Spaceship@2x.png" alt="Pensils" class="tile-image">
                            <h3 class="tile-title">月卡</h3>
                            <div class="" >开通费: ￥6<sup>*</sup></div>
                            <div class="" >有效期31天</div>
                            <p class=""><strong>享受高速体验</strong></p>
                            <button class="btn btn-primary btn-large btn-block purchase" id="monthly">
                                购买&amp;续费
                            </button>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="tile">
                            <img src="theme/flatui/images/icons/svg/ribbon.svg" alt="ribbon" class="tile-hot-ribbon">
                            <img src="theme/flatui/images/icons/svg/bulb.svg" alt="Chat" class="tile-image">
                            <h3 class="tile-title">年卡</h3>
                            <div class="" >开通费: ￥60<sup>*</sup></div>
                            <div class="" >有效期365天</div>
                            <p class=""><strong>买10月送2月</strong></p>
                            <button class="btn btn-primary btn-large btn-block purchase" id="demand">
                                购买&amp;续费
                            </button>
                        </div>
                    </div>

                        <div class="col-md-3">
                            <div class="tile">
                                <img src="theme/flatui/images/icons/svg/retina.svg" alt="Chat" class="tile-image">
                                <h3 class="tile-title">尊享卡</h3>
                                <div class="" >开通费: ￥15<sup>*</sup></div>
                                <div class="" >有效期31天</div>
                                <p class=""><strong>国内节点中转加速</strong><sup>**</sup></p>
                                <button class="btn btn-primary btn-large btn-block purchase" id="test">
                                购买&amp;续费
                            </button>
                            </div>
                        </div>
                </div> <!-- end of row -->
                <div>
                    <hr>
                    <small class="">
                        *开通费为一次性收费。实际消耗流量仍需另行付费。1GB≈1元。<br/>
                        **中转加速为精品线路，流量比例为1.5倍。1GB≈1.5元。
                    </small>
                </div>
            </div> <!-- end of main -->
        </div> <!-- end of row -->
    </div> <!-- end of container -->

{include file='footer_new.tpl'}

<script>
$(document).ready(function(){
        $(".purchase").click(function(){
            window.location.href="/user/shop"; 
        });
    })
</script>