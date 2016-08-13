		
{include file='user/main.tpl'}

<style type="text/css">
    .profile-sidebar {
  float: left;
  width: 300px;
  margin-right: 20px; }

.profile-content {
  overflow: hidden; }

/* PROFILE SIDEBAR */
.profile-sidebar-portlet {
  padding: 30px 0 0 0 !important; }

.profile-userpic img {
  float: none;
  margin: 0 auto;
  width: 50%;
  height: 50%;
  -webkit-border-radius: 50% !important;
  -moz-border-radius: 50% !important;
  border-radius: 50% !important; }

.profile-usertitle {
  text-align: center;
  margin-top: 20px; }

.profile-usertitle-name {
  color: #5a7391;
  font-size: 20px;
  font-weight: 600;
  margin-bottom: 7px; }

.profile-usertitle-job {
  text-transform: uppercase;
  color: #5b9bd1;
  font-size: 13px;
  font-weight: 800;
  margin-bottom: 7px; }

.profile-userbuttons {
  text-align: center;
  margin-top: 10px; }

.profile-userbuttons .btn {
  margin-right: 5px; }
  .profile-userbuttons .btn:last-child {
    margin-right: 0; }

.profile-userbuttons button {
  text-transform: uppercase;
  font-size: 11px;
  font-weight: 600;
  padding: 6px 15px; }

.profile-usermenu {
  margin-top: 30px;
  padding-bottom: 20px; }

.profile-usermenu ul li {
  border-bottom: 1px solid #f0f4f7; }

.profile-usermenu ul li:last-child {
  border-bottom: none; }

.profile-usermenu ul li a {
  color: #93a3b5;
  font-size: 16px;
  font-weight: 400; }

.profile-usermenu ul li a i {
  margin-right: 8px;
  font-size: 16px; }

.profile-usermenu ul li a:hover {
  background-color: #fafcfd;
  color: #5b9bd1; }

.profile-usermenu ul li.active a {
  color: #5b9bd1;
  background-color: #f6f9fb;
  border-left: 2px solid #5b9bd1;
  margin-left: -2px; }

.profile-stat {
  padding-bottom: 20px;
  border-bottom: 1px solid #f0f4f7; }

.profile-stat-title {
  color: #7f90a4;
  font-size: 25px;
  text-align: center; }

.profile-stat-text {
  color: #5b9bd1;
  font-size: 11px;
  font-weight: 800;
  text-align: center; }

.profile-desc-title {
  color: #7f90a4;
  font-size: 17px;
  font-weight: 600; }

.profile-desc-text {
  color: #7e8c9e;
  font-size: 14px; }

.profile-desc-link i {
  width: 22px;
  font-size: 19px;
  color: #abb6c4;
  margin-right: 5px; }

.profile-desc-link a {
  font-size: 14px;
  font-weight: 600;
  color: #5b9bd1; }

/* END PROFILE SIDEBAR */
/* RESPONSIVE MODE */
@media (max-width: 991px) {
  /* 991px */
  /* 991px */
  .profile-sidebar {
    float: none;
    width: 100% !important;
    margin: 0; }
  .profile-sidebar > .portlet {
    margin-bottom: 20px; }
  .profile-content {
    overflow: visible; } }
</style>



                <!-- BEGIN CONTENT -->
                <div class="page-content-wrapper">
                    <!-- BEGIN CONTENT BODY -->
                    <div class="page-content">
                        <!-- BEGIN PAGE HEADER-->
                        <!-- BEGIN PAGE TITLE-->
                        <h1 class="page-title">Edit Profile | 
                            <small>修改资料</small>
                        </h1>
                        <!-- END PAGE TITLE-->
                        <!-- END PAGE HEADER-->
                        <div class="row">
                            <div class="row">
                            	<!-- BEGIN PROFILE SIDEBAR -->
                                <div class="profile-sidebar col-md-4">
                                    <!-- PORTLET MAIN -->
                                    <div class="portlet light profile-sidebar-portlet ">
                                        <!-- SIDEBAR USERPIC -->
                                        <div class="profile-userpic">
                                            <img src="{$user->gravatar}" class="img-responsive" alt=""> </div>
                                        <!-- END SIDEBAR USERPIC -->
                                        <!-- SIDEBAR USER TITLE -->
                                        <div class="profile-usertitle">
                                            <div class="profile-usertitle-name">{$user->email}</div>
                                            <div class="profile-usertitle-job"> 
                                            {if $user->isAdmin()}
                                            管理员
                                            {else}注册用户{/if}
                                            </div>
                                        </div>
                                        <!-- END SIDEBAR USER TITLE -->
                                        
                                    </div>
                                    <!-- END PORTLET MAIN -->
                                </div>
                                <!-- END BEGIN PROFILE SIDEBAR -->
                                <!-- BEGIN PROFILE CONTENT -->
                                <div class="profile-content col-md-8">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="portlet light ">
                                                <div class="portlet-title tabbable-line">
                                                    <!-- <div class="caption caption-md">
                                                        <i class="icon-globe theme-font hide"></i>
                                                        <span class="caption-subject font-blue-madison bold">
                                                        	
                                                        </span>
                                                    </div> -->
                                                    <ul class="nav nav-tabs">
                                                        <li class="active">
                                                            <a href="#tab_1_1" data-toggle="tab">账户设置</a>
                                                        </li>
                                                        <li>
                                                            <a href="#tab_1_2" data-toggle="tab">连接设置</a>
                                                        </li>
                                                        <li>
                                                            <a href="#tab_1_3" data-toggle="tab">其他设置</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="portlet-body">
                                                    <div class="tab-content">
                                                        <!-- ACCOUNT INFO TAB -->
                                                        <div class="tab-pane active" id="tab_1_1">
                                                        	<!-- CHANGE PASSWORD -->
                                                            <h3>密码修改</h3>
                                                            <div class="form-group">
                                                                <div class="input-icon right">
                                                                    <i class="fa fa-lock"></i>
                                                                    <input type="password" class="form-control" placeholder="当前密码" id="oldpwd"> 
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <div class="input-icon right">
                                                                    <i class="fa fa-lock"></i>
                                                                    <input type="password" class="form-control" placeholder="新密码" id="pwd"> 
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <div class="input-icon right">
                                                                <i class="fa fa-lock"></i>
                                                                <input type="password" class="form-control" placeholder="确认密码" id="repwd">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <button class="btn btn-sm blue " id="pwd-update" >
                                                                <i class="fa fa-check-square-o"></i>
                                                                &nbsp;修改</button>
                                                            </div>
                                                        	<!-- END CHANGE PASSWORD  -->
                                                            <!-- CONTACT INFO -->
                                                            <div class="form-group">
                                                                <h3>联系方式</h3>
                                                                <p>当前联络方式：
                                                                {if $user->im_type==1}
                                                                微信
                                                                {/if}
                                                                {if $user->im_type==2}
                                                                QQ
                                                                {/if}
                                                                {if $user->im_type==3}
                                                                Google+
                                                                {/if}
                                                                {if $user->im_type==4}
                                                                Telegram
                                                                {/if}
                                                                {$user->im_value}
                                                                </p>
                                                                <select class="form-control" id="imtype">
                                                                    <option>选择您的联系方式</option>
                                                                    <option>-------------</option>
                                                                    <option value="1">微信</option>
                                                                    <option value="2">QQ</option>
                                                                    <option value="3">Google+</option>
                                                                    <option value="4">Telegram</option>
                                                                </select>
                                                            </div>
                                                            <div class="form-group">
                                                                <div class="input-icon right">
                                                                <i class="fa fa-wechat"></i>
                                                                <input type="text" class="form-control" placeholder="请输入联系方式账号" id="wechat">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <button class="btn btn-sm blue " id="wechat-update" >
                                                                <i class="fa fa-check-square-o"></i>
                                                                &nbsp;修改</button>
                                                            </div>
                                                            <!-- END CONTACT INFO -->
                                                            <!-- THEME SETTING -->
                                                            <div class="form-group">
                                                                <h3>主题修改</h3>
                                                                <p>当前主题：{$user->theme}</p>
                                                                <label class="floating-label" for="theme">主题</label>
                                                                <select id="theme" class="form-control">
                                                                    {foreach $themes as $theme}
                                                                        <option value="{$theme}">{$theme}</option>
                                                                    {/foreach}
                                                                </select>
                                                            </div>
                                                            <div class="form-group">
                                                                <button class="btn btn-sm blue " id="theme-update" >
                                                                <i class="fa fa-check-square-o"></i>
                                                                &nbsp;修改</button>
                                                            </div>
                                                            <!-- END THEME SETTING -->
                                                            <!-- 2 STEP AUTH -->
                                                            <h3>两步验证</h3>
                                                            <p>请下载 Google 的两步验证器，扫描下面的二维码。</p>
                                                            <span><a href="https://play.google.com/store/apps/details?id=com.google.android.apps.authenticator2"><i class="fa fa-android"></i>&nbsp;Android</a></span>
                                                            <span><a href="https://itunes.apple.com/cn/app/google-authenticator/id388497605?mt=8"><i class="fa fa-apple"></i>&nbsp;iOS</a></span>
                                                            <p>在没有测试完成绑定成功之前请不要启用。</p>
                                                            <p>当前设置：<strong>{if $user->ga_enable==1} 登录时要求验证 {else} 不要求 {/if}</strong></p>
                                                            <p>当前服务器时间：<span class="font-red">{date("Y-m-d H:i:s")}</span></p>
                                                            <div class="form-group form-group-label">
                                                                <label class="floating-label" for="ga-enable">验证设置</label>
                                                                <select id="ga-enable" class="form-control">
                                                                    <option value="0">不要求</option>
                                                                    <option value="1">要求验证</option>
                                                                </select>
                                                            </div>
                                                            
                                                            
                                                            <div class="form-group form-group-label">
                                                                <div class="text-center">
                                                                    <div id="ga-qr"></div>
                                                                    密钥：{$user->ga_token}
                                                                </div>
                                                            </div>
                                                            
                                                            
                                                            <div class="form-group form-group-label">
                                                                <label class="floating-label" for="code">测试一下</label>
                                                                <input type="text" id="code" placeholder="输入验证器生成的数字来测试" class="form-control">
                                                            </div>
                                                            <div class="form-group ">
                                                                <a class="btn btn-sm green" href="/user/gareset" ><i class="fa fa-refresh"></i>&nbsp;重置</a>
                                                                <button class="btn btn-sm grey" id="ga-test" ><i class="fa fa-gears"></i>&nbsp;测试</button>
                                                                <button class="btn btn-sm blue" id="ga-set" ><i class="fa fa-check-square-o"></i>&nbsp;设置</button>
                                                            </div>
                                                            <!-- END 2 STEP AUTH -->
                                                        </div>
                                                        <!-- END ACCOUNT INFO TAB -->
                                                        <!-- CONNECTION INFO TAB -->
                                                        <div class="tab-pane" id="tab_1_2">
                                                            <!-- CONNECTION PASSWORD -->
                                                            <h3>连接密码修改</h3>
                                                            <p>当前连接密码：{$user->passwd}</p>
                                                            <div class="form-group">
                                                                <div class="input-icon right">
                                                                <i class="fa fa-wifi"></i>
                                                                <input type="text" class="form-control" placeholder="连接密码" id="sspwd">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <button class="btn btn-sm blue" id="ss-pwd-update" >
                                                                <i class="fa fa-check-square-o"></i>
                                                                &nbsp;修改</button>
                                                            </div>
                                                            <!-- END CONNECTION PASSWORD -->
                                                            <!-- CHANGE PORT -->
                                                            <h3>重置端口</h3>
                                                            <p>当前端口：{$user->port}</p>
                                                            <div class="form-group">
                                                                <button class="btn btn-sm blue" id="portreset">
                                                                    <i class="fa fa-check-square-o"></i>&nbsp;重置端口
                                                                </button>
                                                            </div>
                                                            <!-- END CHANGE PORT -->
                                                            <!-- ENCRYPTION METHOD -->
                                                            <h3>加密方式修改</h3>
                                                            <p>当前加密方式：{$user->method}</p>
                                                            <div class="form-group form-group-label">
                                                                <label class="floating-label" for="method">加密方式</label>
                                                                <select id="method" class="form-control">
                                                                    <option value="rc4-md5">RC4-MD5</option>
                                                                    <option value="rc4-md5-6">RC4-MD5-6</option>
                                                                    <option value="aes-128-cfb">AES-128-CFB</option>
                                                                    <option value="aes-192-cfb">AES-192-CFB</option>
                                                                    <option value="aes-256-cfb">AES-256-CFB</option>
                                                                    <option value="aes-128-ctr">AES-128-CTR</option>
                                                                    <option value="aes-192-ctr">AES-192-CTR</option>
                                                                    <option value="aes-256-ctr">AES-256-CTR</option>
                                                                    <option value="camellia-128-cfb">CAMELLIA-128-CFB</option>
                                                                    <option value="camellia-192-cfb">CAMELLIA-192-CFB</option>
                                                                    <option value="camellia-256-cfb">CAMELLIA-256-CFB</option>
                                                                    <option value="bf-cfb">BF-CFB</option>
                                                                    <option value="cast5-cfb">CAST5-CFB</option>
                                                                    <option value="des-cfb">DES-CFB</option>
                                                                    <option value="des-cfb">DES-EDE3-CFB</option>
                                                                    <option value="idea-cfb">IDEA-CFB</option>
                                                                    <option value="rc2-cfb">RC2-CFB</option>
                                                                    <option value="seed-cfb">SEED-CFB</option>
                                                                    <option value="salsa20">SALSA20</option>
                                                                    <option value="chacha20">CHACHA20</option>
                                                                    <option value="chacha20-ietf">CHACHA20-IETF</option>
                                                                </select>
                                                            </div>
                                                            <div class="form-group">
                                                                <button class="btn btn-sm blue" ><i class="fa fa-check-square-o"></i>&nbsp;提交</button>
                                                            </div>
                                                            <!-- END ENCRYPTION METHOD -->
                                                            <!-- PROTOCOL -->
                                                            <h3>RSS 协议&混淆设置</h3>
                                                            <p>当前协议：{$user->protocol}</p>
                                                            <p>当前协议参数：{$user->protocol_param}</p>
                                                            <div class="alert alert-block alert-warning fade in">
                                                                <button type="button" class="close" data-dismiss="alert"></button>
                                                                <p><i class="fa fa-warning"></i>&nbsp;注意：如果需要兼容原版SS请选择带_compatible的兼容选项！</p>
                                                                <p> <i class="fa fa-warning"></i>&nbsp;注意：参数请放空，除非你看得懂<a href="https://github.com/breakwa11/shadowsocks-rss/blob/master/ssr.md">这里</a>！
                                                                </p>
                                                            </div>
                                                            <div class="form-group form-group-label">
                                                                <label class="floating-label" for="protocol">协议</label>
                                                                <select id="protocol" class="form-control">
                                                                    <option value="origin">origin</option>
                                                                    <option value="verify_simple">verify_simple</option>
                                                                    <option value="verify_deflate">verify_deflate</option>
                                                                    <option value="verify_sha1">verify_sha1</option>
                                                                    <option value="verify_sha1_compatible">verify_sha1_compatible</option>
                                                                    <option value="auth_simple">auth_simple</option>
                                                                    <option value="auth_sha1">auth_sha1</option>
                                                                    <option value="auth_sha1_compatible"> auth_sha1_compatible</option>
                                                                    <option value="auth_sha1_v2">auth_sha1_v2</option>
                                                                    <option value="auth_sha1_v2_compatible">auth_sha1_v2_compatible</option>
                                                                </select>
                                                            </div>
                                                            
                                                            <p>当前混淆方式：{$user->obfs}</p>
                                                            <p>当前混淆参数：{$user->obfs_param}</p>
                                                            <div class="form-group form-group-label">
                                                                <label class="floating-label" for="obfs">混淆方式</label>
                                                                <select id="obfs" class="form-control">
                                                                    <option value="plain">plain</option>
                                                                    <option value="http_simple">http_simple</option>
                                                                    <option value="http_simple_compatible"> http_simple_compatible</option>
                                                                    <option value="tls_simple">tls_simple</option>
                                                                    <option value="tls_simple_compatible">tls_simple_compatible</option>
                                                                    <option value="random_head">random_head</option>
                                                                    <option value="random_head_compatible">random_head_compatible</option>
                                                                    <option value="tls1.0_session_auth">tls1.0_session_auth</option>
                                                                    <option value="tls1.0_session_auth_compatible">tls1.0_session_auth_compatible</option>
                                                                    <option value="tls1.2_ticket_auth">tls1.2_ticket_auth</option>
                                                                    <option value="tls1.2_ticket_auth_compatible">tls1.2_ticket_auth_compatible</option>
                                                                </select>
                                                            </div>
                                                            
                                                            <div class="form-group">
                                                                <button class="btn btn-sm blue" id="rss-update" ><i class="fa fa-check-square-o">check</i>&nbsp;修改</button>
                                                            </div>
                                                            <!-- END PROTOCOL -->
                                                            <!-- CUSTOM PAC -->
                                                            <h3>自定义PAC/Surge</h3>
                                                            <p>参看<a href="https://adblockplus.org/zh_CN/filters">https://adblockplus.org/zh_CN/filters</a></p>
                                                            <div class="form-group">
                                                                <textarea class="form-control" id="pac" rows="8" placeholder="自定义PAC/Surge">{$user->pac}</textarea>
                                                            </div>
                                                            <div class="form-group">
                                                            <button class="btn btn-sm blue" id="rss-update" ><i class="fa fa-check-square-o">check</i>&nbsp;设置</button>
                                                            </div>
                                                            <!-- END CUSTOM PAC -->
                                                        </div>
                                                        <!-- END CONNECTION INFO TAB -->
                                                        <!-- OTHERS TAB -->
                                                        <div class="tab-pane" id="tab_1_3">
                                                            <h3>IP解封</h3>
                                                            <p>当前状态：{$Block}</p>
                                                            <div class="form-group">
                                                                <button class="btn btn-sm blue" id="unblock" ><i class="fa fa-flash"></i>&nbsp;解封</button>
                                                            </div>
                                                            <h3>每日邮件设置</h3>
                                                            <p>当前设置：<strong>{if $user->sendDailyMail==1} 发送 {else} 不发送 {/if}</strong></p>
                                                            <div class="form-group">
                                                                <select id="mail" class="form-control">
                                                                    <option>发送设置</option>
                                                                    <option>-------</option>
                                                                    <option value="1">发送</option>
                                                                    <option value="0">不发送</option>
                                                                </select>
                                                            </div>
                                                            <div class="form-group">
                                                                <button class="btn btn-sm blue" id="mail-update" ><i class="fa fa-envelope-o"></i>&nbsp;解封</button>
                                                            </div>
                                                        </div>
                                                        <!-- END OTHERS TAB -->
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- END PROFILE CONTENT -->
                            </div>
                        </div>
                        {include file='dialog.tpl'}
                    </div>
                    <!-- END CONTENT BODY -->
                </div>
                <!-- END CONTENT -->





{include file='user/footer.tpl'}

<script>
    $(document).ready(function () {
        $("#portreset").click(function () {
            $.ajax({
                type: "POST",
                url: "resetport",
                dataType: "json",
                data: {
                   
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>


<script>
    $(document).ready(function () {
        $("#setpac").click(function () {
            $.ajax({
                type: "POST",
                url: "pacset",
                dataType: "json",
                data: {
                   pac: $("#pac").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>

<script>
    $(document).ready(function () {
        $("#pwd-update").click(function () {
            $.ajax({
                type: "POST",
                url: "password",
                dataType: "json",
                data: {
                    oldpwd: $("#oldpwd").val(),
                    pwd: $("#pwd").val(),
                    repwd: $("#repwd").val()
                },
                success: function (data) {
                    if (data.ret) {
                         $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>

<script src=" /assets/public/js/jquery.qrcode.min.js "></script>
<script>
	var ga_qrcode = '{$user->getGAurl()}';
	jQuery('#ga-qr').qrcode({
		"text": ga_qrcode
	});
</script>


<script>
    $(document).ready(function () {
        $("#wechat-update").click(function () {
            $.ajax({
                type: "POST",
                url: "wechat",
                dataType: "json",
                data: {
                    wechat: $("#wechat").val(),
					imtype: $("#imtype").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>

{if $config['enable_rss']=='true'}
<script>
    $(document).ready(function () {
        $("#rss-update").click(function () {
            $.ajax({
                type: "POST",
                url: "rss",
                dataType: "json",
                data: {
                    protocol: $("#protocol").val(),
					          obfs: $("#obfs").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>
{/if}


<script>
    $(document).ready(function () {
        $("#relay-update").click(function () {
            $.ajax({
                type: "POST",
                url: "relay",
                dataType: "json",
                data: {
                    relay_enable: $("#relay_enable").val(),
					relay_info: $("#relay_info").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>

<script>
    $(document).ready(function () {
        $("#unblock").click(function () {
            $.ajax({
                type: "POST",
                url: "unblock",
                dataType: "json",
                data: {
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>


<script>
    $(document).ready(function () {
        $("#ga-test").click(function () {
            $.ajax({
                type: "POST",
                url: "gacheck",
                dataType: "json",
                data: {
                    code: $("#code").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>


<script>
    $(document).ready(function () {
        $("#ga-set").click(function () {
            $.ajax({
                type: "POST",
                url: "gaset",
                dataType: "json",
                data: {
                    enable: $("#ga-enable").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>

<script>
    $(document).ready(function () {
        $("#ss-pwd-update").click(function () {
            $.ajax({
                type: "POST",
                url: "sspwd",
                dataType: "json",
                data: {
                    sspwd: $("#sspwd").val()
                },
                 success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html("成功了");
                    } else {
                        $("#result").modal();
						$("#msg").html("失败了");
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>


<script>
    $(document).ready(function () {
        $("#mail-update").click(function () {
            $.ajax({
                type: "POST",
                url: "mail",
                dataType: "json",
                data: {
                    mail: $("#mail").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>

<script>
    $(document).ready(function () {
        $("#theme-update").click(function () {
            $.ajax({
                type: "POST",
                url: "theme",
                dataType: "json",
                data: {
                    theme: $("#theme").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>



<script>
    $(document).ready(function () {
        $("#method-update").click(function () {
            $.ajax({
                type: "POST",
                url: "method",
                dataType: "json",
                data: {
                    method: $("#method").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html("成功了");
                    } else {
                        $("#result").modal();
						$("#msg").html("失败了");
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>