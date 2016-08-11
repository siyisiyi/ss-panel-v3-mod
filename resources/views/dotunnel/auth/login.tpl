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
  <section id="content" class="m-t-lg wrapper-md animated fadeInUp">    
    <div class="container aside-xxl">
      <a class="navbar-brand block" href="/">{$config["appName"]}</a>
      <section class="panel panel-default bg-white m-t-lg">
        <header class="panel-heading text-center">
          <strong>会员登陆</strong>
        </header>
        
		 <div class="panel-body wrapper-lg">			
          <div class="form-group">
            <label class="control-label">Email</label>
            <input id="email" name="Email" placeholder="邮箱" class="form-control input-lg" type="text">
          </div>		  		 		  
          <div class="form-group">
            <label class="control-label">Password</label>
            <input id="passwd" name="Password" placeholder="密码" class="form-control input-lg" type="password">
          </div>
          <div class="form-group">
            <label class="control-label">2 Steps Auth</label>
            <input id="code" name="Password" placeholder="2步验证码(没有就别填)" class="form-control input-lg" type="password">
          </div>
          {if $geetest_html != null}
			<div class="form-group">
			<div id="embed-captcha"></div>
			</div>
          {/if}
		  
          <div class="checkbox">
            <label>
              <input id="remember_me" value="week" type="checkbox"> 记住我
            </label>
          </div>		  
		  
		  
          <a href="/password/reset" class="pull-right m-t-xs"><small>忘记密码?</small></a>          
		 <button id="login" type="submit" class="btn btn-primary">确认登陆</button>          
		   <div class="line line-dashed"></div>
		   <div id="msg-success" class="alert alert-info alert-dismissable" style="display: none;">
            <button type="button" class="close" id="ok-close" aria-hidden="true">×</button>
            <h4><i class="icon fa fa-check"></i> 登录成功!</h4>
            <p id="msg-success-p"></p>
        </div>
				 
          <div id="msg-error" class="alert alert-warning alert-dismissable" style="display: none;"> 		
            <button type="button" class="close" id="error-close" aria-hidden="true">×</button>   
           <h4><i class="icon fa fa-times"></i> 出错了!</h4>
		   <p id="msg-error-p"></p>
        </div>

          <p class="text-muted text-center"><small>没有账号?</small></p>
          <a href="/auth/register" class="btn btn-default btn-block">马上注册新账号</a>
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
        function login(){
			{if $geetest_html != null}
			if(typeof validate == 'undefined')
			{
				$("#msg-success").hide(100);
                $("#msg-error").show(100);
                $("#msg-error-p").html("请滑动验证码来验证");
				return;
			}
			
			if (!validate) {
				$("#msg-success").hide(100);
                $("#msg-error").show(100);
                $("#msg-error-p").html("请滑动验证码来验证");
				return;
			}
			
			{/if}
			
			document.getElementById("login").disabled = true; 
			
            $.ajax({
                type:"POST",
                url:"/auth/login",
                dataType:"json",
                data:{
                    email: $("#email").val(),
                    passwd: $("#passwd").val(),
					code: $("#code").val(),
                    remember_me: $("#remember_me").val(){if $geetest_html != null},
					geetest_challenge: validate.geetest_challenge,
                    geetest_validate: validate.geetest_validate,
                    geetest_seccode: validate.geetest_seccode{/if}
                },
                success:function(data){
                    if(data.ret == 1){
						$("#msg-error").hide(100);
                        $("#msg-success").show(100);
                        $("#msg-success-p").html(data.msg);
                        window.setTimeout("location.href='/user'", {$config['jump_delay']});
                    }else{
						$("#msg-success").hide(100);
                        $("#msg-error").show(100);
                        $("#msg-error-p").html(data.msg);
						document.getElementById("login").disabled = false; 
                    }
                },
                error:function(jqXHR){
                    $("#msg-error").hide(10);
                    $("#msg-error").show(100);
                    $("#msg-error-p").html("发生错误："+jqXHR.status);
					document.getElementById("login").disabled = false; 
                }
            });
        }
        $("html").keydown(function(event){
            if(event.keyCode==13){
                login();
            }
        });
        $("#login").click(function(){
            login();
        });
		
		$("#ok-close").click(function(){
            $("#msg-success").hide(100);
        });
        $("#error-close").click(function(){
            $("#msg-error").hide(100);
		});
    })
</script>


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
