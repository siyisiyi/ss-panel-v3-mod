<!DOCTYPE html>
<html class="bg-dark" lang="zh">
<head>
  <meta charset="utf-8">
  <title>注册/登录-{$config["appName"]}</title>
  <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"> 
  <link rel="stylesheet" href="/theme/dotunnel/css/bootstrap.css" type="text/css">
  <link rel="stylesheet" href="/theme/dotunnel/css/animate.css" type="text/css">
  <link rel="stylesheet" href="/theme/dotunnel/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="/theme/dotunnel/css/font.css" type="text/css">
    <link rel="stylesheet" href="/theme/dotunnel/css/app.css" type="text/css">
  <!--[if lt IE 9]>
    <script src="js/ie/html5shiv.js"></script>
    <script src="js/ie/respond.min.js"></script>
    <script src="js/ie/excanvas.js"></script>
  <![endif]-->
</head>
<body>
<section id="content" class="m-t-lg wrapper-md animated fadeInDown">
    <div class="container aside-xxl">
      <a class="navbar-brand block" href="/">{$config["appName"]}</a>
      <section class="panel panel-default m-t-lg bg-white">
        <header class="panel-heading text-center">
          <strong>注册会员</strong>
        </header>
		        <div class="panel-body wrapper-lg">


          <div class="form-group">
            <label class="control-label">Nick Name</label>
            <input id="name" placeholder="昵称" class="form-control input-lg" type="text">
          </div>          
          <div class="form-group">
            <label class="control-label">Email</label>
            <input id="email" placeholder="邮箱" class="form-control input-lg" type="text">
          </div>
		  {if $enable_email_verify == 'true'}
		  <div class="form-group">
            <label class="control-label">Verify Code</label>
            <input id="email_code" placeholder="验证码" class="form-control input-lg" type="text">
          </div>
		  {/if}
          <div class="form-group">
            <label class="control-label">Password</label>
            <input id="passwd" placeholder="密码" class="form-control input-lg" type="password">
          </div>
          <div class="form-group">
            <label class="control-label">Confirm Password</label>
            <input id="repasswd" placeholder="确认密码" class="form-control input-lg" type="password">
          </div>
          <div class="form-group">
            <label class="control-label">Choose Your Contack Style</label>
              <select class="form-control" id="imtype">
                <option></option>
                <option value="1">微信</option>
                <option value="2">QQ</option>
                <option value="3">Google+</option>
              </select>
          </div>
          <div class="form-group">
            <label class="control-label">Contack Account</label>
            <input id="wechat" placeholder="联系方式账号" class="form-control input-lg" type="text">          
          </div>
          {if $enable_invite_code == 'true'}
		  <div class="form-group">
            <label class="control-label">Invitation Code</label>
            <input id="code" placeholder="邀请码" class="form-control input-lg" type="text">
          </div>
          {/if}
          {if $geetest_html != null}
		  <div class="form-group">
			<div id="embed-captcha"></div>
          </div>
          {/if}
                    	  
          <div class="checkbox">
            <label>
              <p>注册即代表同意<a href="/tos">服务条款</a>，以及保证所录入信息的真实性，如有不实信息会导致账号被删除。</p>
            </label>
          </div>
          <button id="tos" type="submit" class="btn btn-primary">确认注册</button>		  
          <div class="line line-dashed"></div>
		  
		  <div id="msg-success" class="alert alert-info alert-dismissable" style="display: none;">
            <button type="button" class="close" id="ok-close" aria-hidden="true">×</button>
            <h4><i class="icon fa fa-check"></i> 成功!</h4>
            <p id="msg-success-p"></p>
        </div>

        <div id="msg-error" class="alert alert-warning alert-dismissable" style="display: none;">
            <button type="button" class="close" id="error-close" aria-hidden="true">×</button>
            <h4><i class="icon fa fa-times"></i> 出错了!</h4>
            <p id="msg-error-p"></p>
        </div>

		
		
          <p class="text-muted text-center"><small>已经注册过了?</small></p>
          <a href="/auth/login" class="btn btn-default btn-block">返回登录</a>
        </div>
      </section>
    

  		  
  
	</div>
  </section>
  <footer id="footer">
    <div class="text-center padder">
      <p>
        <small>使用本站服务请遵守当地法律<br>© <a href="/">{$config["appName"]}</a></small>
      </p>
    </div>
  </footer>	
 

<!-- jQuery 2.1.3 -->
<script src="/assets/public/js/jquery.min.js"></script>
<!-- Bootstrap 3.3.2 JS -->
<script src="/assets/public/js/bootstrap.min.js" type="text/javascript"></script>
<!-- iCheck -->
<script src="/assets/public/js/icheck.min.js" type="text/javascript"></script>

<script>
    $(document).ready(function(){
        function register(){
			
			document.getElementById("tos").disabled = true; 
			
            $.ajax({
                type:"POST",
                url:"/auth/register",
                dataType:"json",
                data:{
                    email: $("#email").val(),
                    name: $("#name").val(),
                    passwd: $("#passwd").val(),
                    repasswd: $("#repasswd").val(),
					wechat: $("#wechat").val(),
					imtype: $("#imtype").val(),
					{if $enable_invite_code == 'true'}
					code: $("#code").val()
					{/if}
					{if $enable_email_verify == 'true'},
					emailcode: $("#email_code").val(){/if}{if $geetest_html != null},
					geetest_challenge: validate.geetest_challenge,
                    geetest_validate: validate.geetest_validate,
                    geetest_seccode: validate.geetest_seccode
					{/if}
                },
                success:function(data){
                    if(data.ret == 1){
                        $("#msg-error").hide(10);
                        $("#msg-success").show(100);
                        $("#msg-success-p").html(data.msg);
                        window.setTimeout("location.href='/auth/login'", {$config['jump_delay']});
                    }else{
                        $("#msg-success").hide(10);
                        $("#msg-error").show(100);
                        $("#msg-error-p").html(data.msg);
						document.getElementById("tos").disabled = false; 
                    }
                },
                error:function(jqXHR){
                    $("#msg-success").hide(10);
                    $("#msg-error").show(100);
                    $("#msg-error-p").html("发生错误："+jqXHR.status);
					document.getElementById("tos").disabled = false; 
                }
            });
        }
        $("html").keydown(function(event){
            if(event.keyCode==13){
                register()
            }
        });
		
		{if $geetest_html != null}
		$('div.modal').on('shown.bs.modal', function() {
			$("div.gt_slider_knob").hide();
		});
		
		
		$('div.modal').on('hidden.bs.modal', function() {
			$("div.gt_slider_knob").show();
		});
		
        
		{/if}
		
		$("#tos").click(function(){
			{if $geetest_html != null}
			if(typeof validate == 'undefined')
			{
				$("#msg-success").hide(10);
                $("#msg-error").show(100);
                $("#msg-error-p").html("请滑动验证码来完成验证");
				return;
			}
			
			if (!validate) {
				$("#msg-success").hide(10);
                $("#msg-error").show(100);
                $("#msg-error-p").html("请滑动验证码来完成验证");
				return;
			}
			
			{/if}
            register();
        });
    })
</script>


{if $enable_email_verify == 'true'}
<script>
    $(document).ready(function () {
        $("#email_verify").click(function () {
			document.getElementById("email_verify").disabled = true; 
            $.ajax({
                type: "POST",
                url: "send",
                dataType: "json",
                data: {
                    email: $("#email").val()
                },
                success: function (data) {
                    if (data.ret) {
						document.getElementById("email_verify").disabled = true; 
                        $("#msg-success").hide(10);
                        $("#msg-error").show(100);
                        $("#msg-error-p").html(data.msg);
                    } else {
						document.getElementById("email_verify").disabled = false; 
                        $("#msg-success").hide(10);
                        $("#msg-error").show(100);
                        $("#msg-error-p").html(data.msg);
                    }
                },
                error: function (jqXHR) {
					document.getElementById("email_verify").disabled = false; 
                    $("#msg-success").hide(10);
                    $("#msg-error").show(100);
                    $("#msg-error-p").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>
{/if}

{if $geetest_html != null}
<script>
	var handlerEmbed = function (captchaObj) {
        // 将验证码加到id为captcha的元素里
		
		captchaObj.onSuccess(function () {
            validate = captchaObj.getValidate();
        });
		
        captchaObj.appendTo("#embed-captcha");
        // 更多接口参考：http://www.geetest.com/install/sections/idx-client-sdk.html
    };
	
	initGeetest({
		gt: "{$geetest_html->gt}",
		challenge: "{$geetest_html->challenge}",
		product: "embed", // 产品形式，包括：float，embed，popup。注意只对PC版验证码有效
		offline: {if $geetest_html->success}0{else}1{/if} // 表示用户后台检测极验服务器是否宕机，与SDK配合，用户一般不需要关注
	}, handlerEmbed);
</script>

{/if}

</body>
</html>