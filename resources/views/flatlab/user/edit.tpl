
			
			
{include file='user/main.tpl'}



      <!--main content start-->
      <section id="main-content">
          <section class="wrapper site-min-height">
            <!-- page start-->
            <h2 class="page-title"><i class="icon-note"></i>&nbsp;修改资料 | <small>Edit Profile</small></h2>

            <aside class="profile-nav col-lg-3">
                <section class="panel">
                    <div class="user-heading round">
                        <a href="https://en.gravatar.com/emails/" target="_blank">
                            <img src="{$user->gravatar}}" alt="avatar">
                        </a>
                        <h1>{$user->user_name}</h1>
                        <p>{$user->email}</p>
                    </div>

                    <ul class="nav nav-pills nav-stacked">
                        <li class="active">
                        	<a data-toggle="tab" href="#home-2"><i class="fa fa-user"></i> 账户设置</a>
                        </li>
                        <li>
                        	<a data-toggle="tab" href="#about-2"><i class="fa fa-calendar"></i> 连接设置</a>
                        </li>
                        <li>
                        	<a data-toggle="tab" href="#contact-2"> <i class="fa fa-edit"></i>其他设置</a>
                        </li>
                    </ul>

                </section>
            </aside>

            <aside class="profile-info col-lg-9">

            <section class="panel">
                          <header class="panel-heading tab-right" style="background:#41cac0;padding:60px 30px 27px 0;">
                              <ul class="nav nav-tabs pull-right">
                                  <li class="active">
                                      <a data-toggle="tab" href="#home-2">
                                          <i class="fa fa-home"></i>
                                          账户设置
                                      </a>
                                  </li>
                                  <li>
                                      <a data-toggle="tab" href="#about-2">
                                          <i class="fa fa-user"></i>
                                          连接设置
                                      </a>
                                  </li>
                                  <li>
                                      <a data-toggle="tab" href="#contact-2">
                                          <i class="fa fa-envelope-o"></i>
                                          其他设置
                                      </a>
                                  </li>
                                </ul>
                            </header>
                            <div class="panel-body">
                                <div class="tab-content">
                                    <div id="home-2" class="tab-pane active">
                                    <!-- CHANGE PASSWORD -->
                                                            <h3>密码修改</h3>
                                                            <div class="form-group">
                                                                <div class="iconic-input">
                                                                    <i class="fa fa-lock"></i>
                                                                    <input type="password" class="form-control" placeholder="当前密码" id="oldpwd"> 
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <div class="iconic-input">
                                                                    <i class="fa fa-lock"></i>
                                                                    <input type="password" class="form-control" placeholder="新密码" id="pwd"> 
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <div class="iconic-input">
                                                                <i class="fa fa-lock"></i>
                                                                <input type="password" class="form-control" placeholder="确认密码" id="repwd">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <button class="btn btn-info" id="pwd-update" >
                                                                <i class="fa fa-check-square-o"></i>
                                                                &nbsp;修改</button>
                                                            </div>
                                                            <!-- END CHANGE PASSWORD  -->
                                                            <!-- THEME -->
                                                            <div class="form-group">
                                                                <h3>主题修改</h3>
                                                                <p>当前主题：
                                                                <label class="label label-inverse">
                                                                {$user->theme}
                                                                </label>
                                                                </p>
                                                                <select class="form-control" id="theme">
                                                                    <option>选择主题</option>
                                                                    <option>-------------</option>
                                                                    {foreach $themes as $theme}
                                                                    <option value="{$theme}">{$theme}</option>
                                                                    {/foreach}
                                                                </select>
                                                            </div>
                                                            <div class="form-group">
                                                                <button class="btn btn-info " id="theme-update" >
                                                                <i class="fa fa-check-square-o"></i>
                                                                &nbsp;修改</button>
                                                            </div>
                                                            <!-- END THEME -->
                                                            <!-- CONTACT INFO -->
                                                            <div class="form-group">
                                                                <h3>联系方式</h3>
                                                                <p>当前联络方式：
                                                                <label class="label label-inverse"> 
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
                                                                &nbsp;
                                                                {$user->im_value}</label>
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
                                                                <div class="iconic-input">
                                                                <i class="fa fa-wechat"></i>
                                                                <input type="text" class="form-control" placeholder="请输入联系方式账号" id="wechat">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <button class="btn btn-info " id="wechat-update" >
                                                                <i class="fa fa-check-square-o"></i>
                                                                &nbsp;修改</button>
                                                            </div>
                                                            <!-- END CONTACT INFO -->
                                                            <!-- 2 STEP AUTH -->
                                                            <h3>两步验证</h3>
                                                            <p>请下载 Google 的两步验证器，扫描下面的二维码。</p>
                                                            <span><a href="https://play.google.com/store/apps/details?id=com.google.android.apps.authenticator2"><i class="fa fa-android"></i>&nbsp;Android</a></span>
                                                            <span><a href="https://itunes.apple.com/cn/app/google-authenticator/id388497605?mt=8"><i class="fa fa-apple"></i>&nbsp;iOS</a></span>
                                                            <p>在没有测试完成绑定成功之前请不要启用。</p>
                                                            <p>当前设置：<label class="label label-inverse"> {if $user->ga_enable==1} 登录时要求验证 {else} 不要求 {/if}</label></p>
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
                                                                <a class="btn btn-success" href="/user/gareset" ><i class="fa fa-refresh"></i>&nbsp;重置</a>
                                                                <button class="btn btn-warning" id="ga-test" ><i class="fa fa-gears"></i>&nbsp;测试</button>
                                                                <button class="btn btn-info" id="ga-set" ><i class="fa fa-check-square-o"></i>&nbsp;设置</button>
                                                            </div>
                                    </div>
                                    <div id="about-2" class="tab-pane">
                                        <!-- CONNECTION PASSWORD -->
                                                            <h3>连接密码修改</h3>
                                                            <p>当前连接密码：<label class="label label-inverse"> {$user->passwd}</label></p>
                                                            <div class="form-group">
                                                                <div class="iconic-input">
                                                                <i class="fa fa-wifi"></i>
                                                                <input type="text" class="form-control" placeholder="连接密码" id="sspwd">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <button class="btn btn-info" id="ss-pwd-update" >
                                                                <i class="fa fa-check-square-o"></i>
                                                                &nbsp;修改</button>
                                                            </div>
                                                            <!-- END CONNECTION PASSWORD -->
                                                            <!-- ENCRYPTION METHOD -->
                                                            <h3>加密方式修改</h3>
                                                            <p>当前加密方式：<label class="label label-inverse"> {$user->method}</label></p>
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
                                                                <button class="btn btn-info" id="method-update"><i class="fa fa-check-square-o"></i>&nbsp;提交</button>
                                                            </div>
                                                            <!-- END ENCRYPTION METHOD -->
                                                            <!-- PROTOCOL -->
                                                            <h3>RSS 协议&混淆设置</h3>
                                                            <p>当前协议：<label class="label label-inverse"> {$user->protocol}</label></p>
                                                            <div class="alert alert-block alert-warning fade in">
                                                                <button type="button" class="close" data-dismiss="alert"></button>
                                                                <p><i class="fa fa-warning"></i>&nbsp;注意：如果需要兼容原版SS请选择带_compatible的兼容选项！</p>
                                                            </div>
                                                            <div class="form-group form-group-label">
                                                                <label class="floating-label" for="protocol">协议</label>
                                                                <select id="protocol" class="form-control">
                                                                    <option value="origin">origin</option>
                                                                    <option value="verify_simple">verify_simple</option>
                                                                    <option value="verify_deflate">verify_deflate</option>
                                                                    <option value="verify_sha1">verify_sha1</option>
                                                                    <option value="auth_simple">auth_simple</option>
                                                                    <option value="auth_sha1">auth_sha1</option>
                                                                    <option value="auth_sha1_v2">auth_sha1_v2</option>
                                                                </select>
                                                            </div>
                                                            
                                                            <p>当前混淆方式：<label class="label label-inverse"> {$user->obfs}</label></p>
                                                            <div class="form-group form-group-label">
                                                                <label class="floating-label" for="obfs">混淆方式</label>
                                                                <select id="obfs" class="form-control">
                                                                    <option value="plain">plain</option>
                                                                    <option value="http_simple">http_simple</option>
                                                                    <option value="tls_simple">tls_simple</option>
                                                                    <option value="random_head">random_head</option>
                                                                    <option value="tls1.0_session_auth">tls1.0_session_auth</option>
                                                                    <option value="tls1.2_ticket_auth">tls1.2_ticket_auth</option>
                                                                </select>
                                                            </div>
                                                            
                                                            <div class="form-group">
                                                                <button class="btn btn-info" id="rss-update" ><i class="fa fa-check-square-o"></i>&nbsp;修改</button>
                                                            </div>
                                                            <!-- END PROTOCOL -->
                                                            <!-- CUSTOM PAC -->
                                                            <h3>自定义PAC/Surge</h3>
                                                            <p>参看<a href="https://adblockplus.org/zh_CN/filters">https://adblockplus.org/zh_CN/filters</a></p>
                                                            <div class="form-group">
                                                                <textarea class="form-control" id="pac" rows="8" placeholder="自定义PAC/Surge">{$user->pac}</textarea>
                                                            </div>
                                                            <div class="form-group">
                                                            <button class="btn btn-info" id="rss-update" ><i class="fa fa-check-square-o"></i>&nbsp;设置</button>
                                                            </div>
                                                            <!-- END CUSTOM PAC -->
                                    </div>

                                    <div id="contact-2" class="tab-pane ">

                                    <h3>IP解封</h3>
                                                            <p>当前状态：<label class="label label-inverse"> {$Block}</label></p>
                                                            <div class="form-group">
                                                                <button class="btn btn-info" id="unblock" ><i class="fa fa-flash"></i>&nbsp;解封</button>
                                                            </div>
                                                            <h3>每日邮件设置</h3>
                                                            <p>当前设置：<label class="label label-inverse"> {if $user->sendDailyMail==1} 发送 {else} 不发送 {/if}</label></p>
                                                            <div class="form-group">
                                                                <select id="mail" class="form-control">
                                                                    <option>发送设置</option>
                                                                    <option>-------</option>
                                                                    <option value="1">发送</option>
                                                                    <option value="0">不发送</option>
                                                                </select>
                                                            </div>
                                                            <div class="form-group">
                                                                <button class="btn btn-info" id="mail-update" ><i class="fa fa-envelope-o"></i>&nbsp;设置</button>
                                                            </div>

                                    </div>
                                </div>
                          </div>
                      </section>

            </aside>

            {include file='user/dialog.tpl'}

              <!-- page end-->
          </section>
      </section>
      <!--main content end-->






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

<script src="//cdn.bootcss.com/jquery.qrcode/1.0/jquery.qrcode.min.js"></script>
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

<script>
    $(document).ready(function() {
  $("a.navLink").click(function() {
    $("html, body").animate({
      scrollTop: $($(this).attr("href")).offset().top + "px"
    }, {
      duration: 500,
      easing: "swing"
    });
    return false;
  });
}); 
</script>

