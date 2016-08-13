{include file='user/main.tpl'}


                <!-- BEGIN CONTENT -->
                <div class="page-content-wrapper">
                    <!-- BEGIN CONTENT BODY -->
                    <div class="page-content">
                        <!-- BEGIN PAGE HEADER-->
                        <!-- BEGIN PAGE TITLE-->
                        <h1 class="page-title"> User Center | 
                            <small>用户中心</small>
                        </h1>
                        <!-- END PAGE TITLE-->
                        <!-- END PAGE HEADER-->
                        <div class="row">
                            <!-- LEFT HAND SIDE -->
                            <div class="col-md-6">
                                <!-- ANNOUNCEMENT -->
                                <div class="">
                                {if $ann != null}
                                    <div class="portlet solid bordered">
                                        <div class="portlet-title">
                                            <div class="caption font-red-intense">
                                                <i class="icon-speech font-red-intense"></i>
                                                <span class="caption-subject bold uppercase"> 最新公告 #{$ann->id}</span>
                                                <span class="caption-helper">{$ann->date}</span>
                                            </div>
                                            <div class="tools">
                                                <a href="" class="collapse" data-original-title="" title=""> </a>
                                                <a href="" class="fullscreen" data-original-title="" title=""> </a>
                                                <a href="" class="remove" data-original-title="" title=""> </a>
                                            </div>
                                        </div>
                                        <div class="portlet-body">
                                            <div id="context" data-toggle="context" data-target="#context-menu">
                                                <div><p class="text-center">若想查看全部公告，请前往<a href="/user/announcement">公告中心</a></p></div>
                                                <div>{$ann->content}</div>
                                            </div>
                                        </div>
                                    </div>
                                {/if}
                                </div>
                                <!-- END ANNOUNCEMENT -->
                                <!-- USEAGE -->
                                <div class="portlet box blue-sharp">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="fa fa-tags"></i>流量统计</div>
                                        <div class="tools">
                                            <a href="" class="collapse" data-original-title="" title=""> </a>
                                            <a href="" class="remove" data-original-title="" title=""> </a>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="">
                                            <div id="traffic_chart" style="height: 300px; width: 100%;">
                                            </div>
                                            <script src="//cdn.bootcss.com/canvasjs/1.7.0/canvasjs.js"></script>
                                            <script type="text/javascript">
                                                var chart = new CanvasJS.Chart("traffic_chart",
                                                {
                                                    title:{
                                                        text: "流量使用情况",
                                                        fontFamily: "Impact",
                                                        fontWeight: "normal"
                                                    },

                                                    legend:{
                                                        verticalAlign: "bottom",
                                                        horizontalAlign: "center"
                                                    },
                                                    data: [
                                                    {
                                                        //startAngle: 45,
                                                        indexLabelFontSize: 20,
                                                        indexLabelFontFamily: "Garamond",
                                                        indexLabelFontColor: "darkgrey",
                                                        indexLabelLineColor: "darkgrey",
                                                        indexLabelPlacement: "outside",
                                                        type: "doughnut",
                                                        showInLegend: true,
                                                        dataPoints: [
                                                        {if $user->transfer_enable != 0}
                                                            {
                                                                y: {$user->last_day_t/$user->transfer_enable*100}, legendText:"已用 {number_format($user->last_day_t/$user->transfer_enable*100,2)}% {$user->LastusedTraffic()}", indexLabel: "已用 {number_format($user->last_day_t/$user->transfer_enable*100,2)}% {$user->LastusedTraffic()}"
                                                            },
                                                            {
                                                                y: {($user->u+$user->d-$user->last_day_t)/$user->transfer_enable*100}, legendText:"今日 {number_format(($user->u+$user->d-$user->last_day_t)/$user->transfer_enable*100,2)}% {$user->TodayusedTraffic()}", indexLabel: "今日 {number_format(($user->u+$user->d-$user->last_day_t)/$user->transfer_enable*100,2)}% {$user->TodayusedTraffic()}"
                                                            },
                                                            {
                                                                y: {($user->transfer_enable-($user->u+$user->d))/$user->transfer_enable*100}, legendText:"剩余 {number_format(($user->transfer_enable-($user->u+$user->d))/$user->transfer_enable*100,2)}% {$user->unusedTraffic()}", indexLabel: "剩余 {number_format(($user->transfer_enable-($user->u+$user->d))/$user->transfer_enable*100,2)}% {$user->unusedTraffic()}"
                                                            }
                                                            {/if}
                                                        ]
                                                    }
                                                    ]
                                                });

                                                chart.render();
                                            </script>
                                        </div>
                                    </div>
                                </div>
                                <!-- END USEAGE -->
                            </div>
                            <!-- END LEFT HAND SIDE -->

                            <!-- RIGHT HAND SIDE -->
                            <div class="col-md-6">
                                <!-- SETUP -->
                                <div class="portlet box blue panel">
                                    <div class="portlet-title panel-heading">
                                        <div class="caption">
                                            <i class="fa fa-signal"></i>All-in-One </div>
                                        <div class="tools">
                                            <a href="" class="collapse" data-original-title="" title=""> </a>
                                            <a href="" class="fullscreen" data-original-title="" title=""> </a>
                                        </div>
                                    </div>
                                    <div class="portlet-body panel-body">
                                        <div class="tabbable-custom nav-justified">
                                            <p>这里为您提供了自动化地配置文件生成，包含了所有 Shadowsocks 服务器的信息，方便您在诸多的服务器中快速添加，快速切换。</p>
                                            <ul class="nav nav-tabs nav-justified">
                                                <li class="active">
                                                    <a href="#tab_1_1_1" data-toggle="tab" aria-expanded="false"><i class="fa fa-windows"></i>Windows</a>
                                                </li>
                                                <li class="">
                                                    <a href="#tab_1_1_2" data-toggle="tab" aria-expanded="false"><i class="fa fa-apple"></i>Mac</a>
                                                </li>
                                                <li class="">
                                                    <a href="#tab_1_1_3" data-toggle="tab" aria-expanded="true"><i class="fa fa-android"></i>Android</a>
                                                </li>
                                                <li class="">
                                                    <a href="#tab_1_1_4" data-toggle="tab" aria-expanded="true"><i class="fa fa-apple"></i>iOS</a>
                                                </li>
                                            </ul>
                                            <div class="tab-content">
                                                <div class="tab-pane active" id="tab_1_1_1">
                                                    <p>Windows <a href="/downloads/client/ShadowsocksR-win.7z">下载这个</a>，解压，然后下载<a href="/user/getpcconf">这个</a>，放到程序目录下，运行程序，选择一个合适的服务器，更新一下PAC为绕过国内IP，然后开启系统代理即可上网。</p>
                                                </div>
                                                <div class="tab-pane" id="tab_1_1_2">
                                                   <p>Mac OS X <a href="/downloads/client/ShadowsocksX.dmg">下载这个</a>，安装，然后下载<a href="/user/getpcconf">这个</a>，放到程序目录下，运行程序，选择一个合适的服务器，更新一下PAC，然后开启系统代理即可上网。</p>
                                                </div>
                                                <div class="tab-pane" id="tab_1_1_3">
                                                    <p>Android <a href="/downloads/client/shadowsocks.apk">下载这个</a>，安装，然后在手机上默认浏览器中点击<a href="{$android_add}">这个</a>，然后一直点击确定，批量添加完服务器，然后路由选择绕过大陆，右上角开启就可以上网了。(此方法还在测试中，可能会出现问题)</p>
                                                </div>
                                                <div class="tab-pane" id="tab_1_1_4">
                                                    <p>iOS <a href="/link/{$ios_token}">下载这个</a>，导入到 Surge 中，然后就可以随意切换服务器上网了。</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- END SETUP -->
                                <!-- ACCOUNT INFO -->
                                <div class="portlet box green">
                                    <div class="portlet-title" >
                                        <div class="caption">
                                            <i class="fa fa-tags"></i>账号信息</div>
                                        <div class="tools">
                                            <a href="" class="collapse" data-original-title="" title=""> </a>
                                            <a href="" class="remove" data-original-title="" title=""> </a>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <dl class="dl-horizontal">
                                                <dt>帐号等级</dt>
                                                <dd>{$user->class}</dd>

                                                <dt>等级过期时间</dt>
                                                <dd>{$user->class_expire}</dd>

                                                <dt>帐号过期时间</dt>
                                                <dd>{$user->expire_in}</dd>
                                                
                                                <dt>速度限制</dt>
                                                {if $user->node_speedlimit!=0}
                                                <dd>{$user->node_speedlimit}Mbps</dd>
                                                {else}
                                                <dd>不限速</dd>
                                                {/if}
                                        </dl>
                                    </div>
                                </div>
                                <!-- END ACCOUNT INFO -->
                                <!-- CONNECTION INFO -->
                                <div class="portlet box blue-madison">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="fa fa-send-o"></i>连接信息</div>
                                        <div class="tools">
                                            <a href="" class="collapse" data-original-title="" title=""> </a>
                                            <a href="" class="remove" data-original-title="" title=""> </a>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <dl class="dl-horizontal">
                                                    <dt>端口</dt>
                                                    <dd>{$user->port}</dd>
                                                    <dt>密码</dt>
                                                    <dd>{$user->passwd}</dd>
                                                    <!--
                                                    <dt>加密方式</dt>
                                                    <dd>{$user->method}</dd>
                                                    -->
                                                    <dt>上次使用</dt>
                                                    <dd>{$user->lastSsTime()}</dd>
                                            </dl>
                                    </div>
                                </div>
                                <!-- END CONNECTION INFO -->

                                <!-- HEALTH -->
                                <div class="portlet box green">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="fa fa-calendar-check-o"></i>签到赚流量</div>
                                        <div class="tools">
                                            <a href="" class="collapse" data-original-title="" title=""> </a>
                                            <a href="" class="remove" data-original-title="" title=""> </a>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <p>每天可以续命一次。您可以点击按钮或者摇动手机来续命。</p>
                                        <p>流量不会重置，可以通过续命获取流量。</p>
                                        <p>每次续命可以获取{$config['checkinMin']}~{$config['checkinMax']}MB流量。</p>
                                        <p>上次续命时间：<code>{$user->lastCheckInTime()}</code>
                                        </p>
                                                <p id="checkin-msg"></p>
                                                {if $geetest_html != null}
                                                    <div id="popup-captcha"></div>
                                                {/if}
                                                {if $user->isAbleToCheckin() }
                                                    <p id="checkin-btn">
                                                        <button href="" class="btn green" id="checkin"> 签到
                                                            <i class="fa fa-edit"></i>
                                                        </button>
                                                    </p>
                                                {else}
                                                    <p><a class="btn  disabled green" href="#">已签到</a></p>
                                                {/if}
                                    </div>
                                </div>
                                <!-- END HEALTH -->

                                {if $enable_duoshuo=='true'}
                                <!-- DUOSHUO -->
                                <div class="portlet box green">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="fa fa-comments-o"></i>讨论区</div>
                                        <div class="tools">
                                            <a href="" class="collapse" data-original-title="" title=""> </a>
                                            <a href="" class="remove" data-original-title="" title=""> </a>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="ds-thread" data-thread-key="0" data-title="index" data-url="{$baseUrl}/user/"></div>
                                                <script type="text/javascript">
                                                var duoshuoQuery = {

                                                short_name:"{$duoshuo_shortname}"


                                                };
                                                    (function() {
                                                        var ds = document.createElement('script');
                                                        ds.type = 'text/javascript';ds.async = true;
                                                        ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js';
                                                        ds.charset = 'UTF-8';
                                                        (document.getElementsByTagName('head')[0] 
                                                         || document.getElementsByTagName('body')[0]).appendChild(ds);
                                                    })();
                                                </script>
                                    </div>
                                </div>
                                <!-- END DUOSHUO -->
                                {/if}
                            </div>
                            <!-- END RIGHT HAND SIDE -->
                        </div>
                        {include file='dialog.tpl'}
                    </div>
                    <!-- END CONTENT BODY -->
                </div>
                <!-- END CONTENT -->


{include file='user/footer.tpl'}

<script src="theme/material/js/shake.js/shake.js"></script>



{if $geetest_html == null}
<script>
window.onload = function() { 
    var myShakeEvent = new Shake({ 
        threshold: 15 
    }); 
 
    myShakeEvent.start(); 
 
    window.addEventListener('shake', shakeEventDidOccur, false); 
 
    function shakeEventDidOccur () { 
		if("vibrate" in navigator){
			navigator.vibrate(500);
		}
		
        $.ajax({
                type: "POST",
                url: "/user/checkin",
                dataType: "json",
                success: function (data) {
                    $("#checkin-msg").html(data.msg);
                    $("#checkin-btn").hide();
					$("#result").modal();
                    $("#msg").html(data.msg);
                },
                error: function (jqXHR) {
					$("#result").modal();
                    $("#msg").html("发生错误：" + jqXHR.status);
                }
            });
    } 
}; 

</script>



<script>
    $(document).ready(function () {
        $("#checkin").click(function () {
            $.ajax({
                type: "POST",
                url: "/user/checkin",
                dataType: "json",
                success: function (data) {
                    $("#checkin-msg").html(data.msg);
                    $("#checkin-btn").hide();
					$("#result").modal();
                    $("#msg").html(data.msg);
                },
                error: function (jqXHR) {
					$("#result").modal();
                    $("#msg").html("发生错误：" + jqXHR.status);
                }
            })
        })
    })
	
</script>
{else}


<script>
window.onload = function() { 
    var myShakeEvent = new Shake({ 
        threshold: 15 
    }); 
 
    myShakeEvent.start(); 
 
    window.addEventListener('shake', shakeEventDidOccur, false); 
 
    function shakeEventDidOccur () { 
		if("vibrate" in navigator){
			navigator.vibrate(500);
		}
		
        c.show();
    } 
}; 

</script>



<script>


	var handlerPopup = function (captchaObj) {
		c = captchaObj;
		captchaObj.onSuccess(function () {
			var validate = captchaObj.getValidate();
            $.ajax({
                url: "/user/checkin", // 进行二次验证
                type: "post",
                dataType: "json",
                data: {
                    // 二次验证所需的三个值
                    geetest_challenge: validate.geetest_challenge,
                    geetest_validate: validate.geetest_validate,
                    geetest_seccode: validate.geetest_seccode
                },
                success: function (data) {
                    $("#checkin-msg").html(data.msg);
                    $("#checkin-btn").hide();
					$("#result").modal();
                    $("#msg").html(data.msg);
                },
                error: function (jqXHR) {
					$("#result").modal();
                    $("#msg").html("发生错误：" + jqXHR.status);
                }
            });
        });
        // 弹出式需要绑定触发验证码弹出按钮
        captchaObj.bindOn("#checkin");
        // 将验证码加到id为captcha的元素里
        captchaObj.appendTo("#popup-captcha");
        // 更多接口参考：http://www.geetest.com/install/sections/idx-client-sdk.html
    };

	initGeetest({
		gt: "{$geetest_html->gt}",
		challenge: "{$geetest_html->challenge}",
		product: "popup", // 产品形式，包括：float，embed，popup。注意只对PC版验证码有效
		offline: {if $geetest_html->success}0{else}1{/if} // 表示用户后台检测极验服务器是否宕机，与SDK配合，用户一般不需要关注
	}, handlerPopup);
	
</script>


{/if}


