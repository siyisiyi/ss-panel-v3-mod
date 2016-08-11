


{include file='user/main.tpl'}


<style type="text/css">
    .easyPieChart {
    position: relative;
    text-align: center;
}

.easyPieChart canvas {
    position: absolute;
    top: 0;
    left: 0;
}
</style>

      <!--main content start-->
      <section id="main-content">
          <section class="wrapper site-min-height">
            <!-- page start-->
            <h2 class="page-title"><i class="icon-home"></i>&nbsp;用户中心 | <small>User Center</small></h2>

                          <!--state overview start-->
              <div class="row state-overview">
                  <div class="col-lg-3 col-sm-6">
                      <section class="panel">
                          <div class="symbol terques">
                              <i class="fa fa-user"></i>
                          </div>
                          <div class="value">
                              <h1 class="count">
                                  0
                              </h1>
                              <p>用户</p>
                          </div>
                      </section>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                      <section class="panel">
                          <div class="symbol red">
                              <i class="fa fa-cloud"></i>
                          </div>
                          <div class="value">
                              <h1 class=" count2">
                                  0
                              </h1>
                              <p>节点</p>
                          </div>
                      </section>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                      <section class="panel">
                          <div class="symbol yellow">
                              <i class="fa fa-calendar"></i>
                          </div>
                          <div class="value">
                              <h1 class=" count3">
                                  0
                              </h1>
                              <p>运行天数</p>
                          </div>
                      </section>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                      <section class="panel">
                          <div class="symbol blue">
                              <i class="fa fa-dashboard"></i>
                          </div>
                          <div class="value">
                              <h1 class=" count4">
                                  0
                              </h1>
                              <p>加速小时</p>
                          </div>
                      </section>
                  </div>
              </div>
              <!--state overview end-->

            <div class="row">
                <!-- left hand side -->
                <div class="col-md-4">
                    <!-- announcement -->
                    {if $ann != null}
                    <section class="panel">
                        <header class="panel-heading bold" style="color:#667fa0;">
                              <i class="fa fa-inbox"></i>&nbsp;最新公告&nbsp;#{$ann->id}&nbsp;
                              <span style="color:#acacac;font-size:12px;">{$ann->date}</span>
                            <span class="tools pull-right">
                                <a class="fa fa-chevron-down" href="javascript:;"></a>
                                <a class="fa fa-times" href="javascript:;"></a>
                            </span>
                        </header>
                        <div class="panel-body">
                        {$ann->content}
                        </div>
                    </section>
                    {/if}
                    <!-- end announcement -->
                    <!-- usage -->
                    <section class="panel">
                              <div class="revenue-head">
                                  <span>
                                      <i class="fa fa-bar-chart-o"></i>
                                  </span>
                                  <h3>流量统计</h3>
                                  <span class="rev-combo pull-right">
                                     {$smarty.now|date_format:"%A, %B %e"}
                                  </span>
                              </div>
                              <div class="panel-body">
                                  <div class="row">
                                      <div class="col-lg-7 col-sm-7 text-center">
                                          <div class="easy-pie-chart">
                                              <div class="percentage" data-percent="{number_format(($user->transfer_enable-($user->u+$user->d))/$user->transfer_enable*100,2)}"><span></span>{number_format(($user->transfer_enable-($user->u+$user->d))/$user->transfer_enable*100,2)}%</div>
                                          </div>
                                      </div>
                                      <div class="col-lg-5 col-sm-5">
                                          <div class="chart-info chart-position">
                                              <span class="increase"></span>
                                              <span>剩余: {$user->unusedTraffic()}</span>
                                          </div>
                                          <div class="chart-info">
                                              <span class="decrease"></span>
                                              <span>已用: {$user->LastusedTraffic()}</span>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                          </section>
                    <!-- end usage -->
                </div>
                <!-- end left hand side -->
                <!-- 2nd column-->
                <div class="col-md-4">
                    <!-- account info -->
                    <aside class="profile-nav alt green-border">
                              <section class="panel">
                                  <div class="user-heading alt green-bg">
                                      <a href="https://en.gravatar.com/emails/">
                                          <img alt="gravatar" src="{$user->gravatar}}">
                                      </a>
                                      <h1>{$user->user_name}</h1>
                                      <h5>{$user->email}</h5>
                                  </div>

                                  <ul class="nav nav-pills nav-stacked">
                                    <li><a href="javascript:;"> <i class="fa fa-sitemap"></i> 连接端口 <span class="label label-default pull-right r-activity">{$user->port}</span></a></li>
                                    <li><a href="javascript:;"> <i class="fa fa-lock"></i> 连接密码 <span class="label label-danger pull-right r-activity">{$user->passwd}</span></a></li>
                                    <li><a href="javascript:;"> <i class="fa fa-calendar"></i> 上次使用 <span class="label label-success pull-right r-activity">{$user->lastSsTime()}</span></a></li>
                                      <li><a href="javascript:;"> <i class="fa fa-trophy"></i> 账号等级 <span class="label label-primary pull-right r-activity">{$user->class}</span></a></li>
                                      <li><a href="javascript:;"> <i class="fa fa-tags"></i> 等级过期时间 <span class="label label-info pull-right r-activity">{$user->class_expire}</span></a></li>
                                      <li><a href="javascript:;"> <i class="fa fa-bell-o"></i> 账号过期时间 <span class="label label-warning pull-right r-activity">{$user->expire_in}</span></a></li>
                                      <li><a href="javascript:;"> <i class="fa fa-truck"></i> 速度限制 <span class="label label-danger pull-right r-activity">
                                          {if $user->node_speedlimit!=0}
                                          {$user->node_speedlimit}Mbps
                                          {else}
                                          不限速
                                          {/if}
                                      </span></a></li>
                                  </ul>

                              </section>
                    </aside>
                    <!-- end account info -->

                </div>
                <!-- end 2nd column -->
                <!-- 3rd column -->
                <div class="col-md-4">
                    <!-- all in one -->
                    <section class="panel">
                              <div class="flat-carousal">
                                  <div id="owl-demo" class="owl-carousel owl-theme tab-content">
                                      <div role="tabpanel" class="item tab-pane active" id="windows">
                                          <h1>Windows <a class="downloads" href="/downloads/client/ShadowsocksR-win.7z">下载这个</a>，解压，然后下载<a class="downloads" href="/user/getpcconf">这个</a>，放到程序目录下，运行程序，选择一个合适的服务器，更新一下PAC为绕过国内IP，然后开启系统代理即可上网。</h1>
                                      </div>
                                      <div role="tabpanel" class="item tab-pane" id="mac">
                                          <h1>Mac OS X <a class="downloads" href="/downloads/client/ShadowsocksX.dmg">下载这个</a>，安装，然后下载<a class="downloads" href="/user/getpcconf">这个</a>，放到程序目录下，运行程序，选择一个合适的服务器，更新一下PAC，然后开启系统代理即可上网。</h1>
                                      </div>
                                      <div role="tabpanel" class="item tab-pane" id="android">
                                          <h1>Android <a class="downloads" href="/downloads/client/shadowsocks.apk">下载这个</a>，安装，然后在手机上默认浏览器中点击<a class="downloads" id="android_add">这个</a>，然后一直点击确定，批量添加完服务器，然后路由选择绕过大陆，右上角开启就可以上网了。(此方法还在测试中，可能会出现问题)</h1>
                                      </div>
                                      <div role="tabpanel" class="item tab-pane" id="ios">
                                          <h1>OS <a class="downloads" href="/link/{$ios_token}">下载这个</a>，导入到 Surge 中，然后就可以随意切换服务器上网了。</h1>
                                      </div>
                                  </div>
                              </div>
                              <div class="panel-body">
                                <ul class="ft-link nav nav-tabs" role="tablist">
                                    <li role="presentation">
                                        <a href="#windows" aria-controls="windows" role="tab" data-toggle="tab">
                                        <i class="fa fa-windows"></i>Win
                                        </a>
                                    </li>
                                    <li role="presentation">
                                        <a href="#mac" aria-controls="profile" role="tab" data-toggle="tab">
                                        <i class="fa fa-apple"></i>Mac
                                        </a>
                                    </li>
                                    <li role="presentation">
                                        <a href="#android" aria-controls="Android" role="tab" data-toggle="tab">
                                        <i class="fa fa-android"></i>Android
                                        </a>
                                    </li>
                                    <li role="presentation">
                                        <a data-toggle="tab" href="#ios" aria-expanded="false">
                                        <i class="fa fa-apple"></i>iOS
                                        </a>
                                    </li>
                                  </ul>
                                  <div class="text-center">这里为您提供了自动化地配置文件生成，包含了所有 Shadowsocks 服务器的信息，方便您在诸多的服务器中快速添加，快速切换。</div>
                              </div>
                          </section>
                    <!-- end all in one -->
                    <!-- check in -->
                    <section class="panel">
                                  <div class="follower">
                                      <div class="panel-body">
                                        <h4>每日签到</h4>
                                        <div class="">
                                        {if $user->isAbleToCheckin() }
                                            <button class="btn btn-round btn-success" id="checkin">点击签到</button>
                                        {else}
                                            <a href="#" class="btn btn-round disabled btn-default" style="color:#333;">已签到</a>
                                        {/if}
                                          </div>
                                      </div>
                                  </div>

                                  <footer class="text-center">
                                      <ul>
                                          <li>
                                              <p>点击按钮或者摇动手机来签到</p>
                                              <p style="padding-bottom:15px;">上次签到时间：<code>{$user->lastCheckInTime()}</code></p>
                                          </li>
                                      </ul>
                                  </footer>
                              </section>
                    <!-- end check in -->
                </div>
                <!-- end 3rd column -->
                {include file='user/dialog.tpl'}
            </div>





              <!-- page end-->
          </section>
      </section>
      <!--main content end-->



{include file='user/footer.tpl'}

<script src="/theme/material/js/shake.js/shake.js"></script>
<script src="/theme/flatlab/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
<script src="/theme/flatlab/js/easy-pie-chart.js"></script>


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
	$("#android_add").click(function(){
		var links = new Array({$android_add});
		for(var i=0; i<links.length; i++){
			window.open (links[i]);
		}
	});
	
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
	
	$("#android_add").click(function(){
		var links = new Array({$android_add});
		for(var i=0; i<links.length; i++){
			window.open (links[i]);
		}
	});
	
</script>

{/if}


<script>
  function countUp(count)
{
    var div_by = 100,
        speed = Math.round(count / div_by),
        $display = $('.count'),
        run_count = 1,
        int_speed = 24;

    var int = setInterval(function() {
        if(run_count < div_by){
            $display.text(speed * run_count);
            run_count++;
        } else if(parseInt($display.text()) < count) {
            var curr_count = parseInt($display.text()) + 1;
            $display.text(curr_count);
        } else {
            clearInterval(int);
        }
    }, int_speed);
}

countUp(184);

function countUp2(count)
{
    var div_by = 100,
        speed = Math.round(count / div_by),
        $display = $('.count2'),
        run_count = 16,
        int_speed = 24;

    var int = setInterval(function() {
        if(run_count < div_by){
            $display.text(speed * run_count);
            run_count++;
        } else if(parseInt($display.text()) < count) {
            var curr_count = parseInt($display.text()) + 1;
            $display.text(curr_count);
        } else {
            clearInterval(int);
        }
    }, int_speed);
}

countUp2(8);

function countUp3(count)
{
    var div_by = 100,
        speed = Math.round(count / div_by),
        $display = $('.count3'),
        run_count = 1,
        int_speed = 30;

    var int = setInterval(function() {
        if(run_count < div_by){
            $display.text(speed * run_count);
            run_count++;
        } else if(parseInt($display.text()) < count) {
            var curr_count = parseInt($display.text()) + 1;
            $display.text(curr_count);
        } else {
            clearInterval(int);
        }
    }, int_speed);
}

var time = Date.parse(new Date())/1000-1458446400;
var date = Math.floor(time/86400);
countUp3(date);

function countUp4(count)
{
    var div_by = 100,
        speed = Math.round(count / div_by),
        $display = $('.count4'),
        run_count = 1,
        int_speed = 24;

    var int = setInterval(function() {
        if(run_count < div_by){
            $display.text(speed * run_count);
            run_count++;
        } else if(parseInt($display.text()) < count) {
            var curr_count = parseInt($display.text()) + 1;
            $display.text(curr_count);
        } else {
            clearInterval(int);
        }
    }, int_speed);
}

var hour = Math.floor(time/3600);
countUp4(hour);  
</script>
