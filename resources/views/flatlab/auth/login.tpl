{include file='header_new.tpl'}


	<header id="head" class="secondary"></header>

	<!-- container -->
	<div class="container">

		<ol class="breadcrumb">
			<li><a href="/">首页</a></li>
			<li class="active">登录</li>
		</ol>

		<div class="row">
			
			<!-- Article main content -->
			<article class="col-xs-12 maincontent">
				<header class="page-header">
					<h1 class="page-title">登录</h1>
				</header>
				
				<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
					<div class="panel panel-default">
						<div class="panel-body">
							<h3 class="thin text-center">登录到用户中心</h3>
							<p class="text-center text-muted">如果您还没有注册，请 <a href="/auth/register">点击这里</a>注册. </p>
							<hr>
							
							
								<div class="top-margin">
									<label>邮箱 <span class="text-danger">*</span></label>
									<input type="text" class="form-control" id="email">
								</div>
								<div class="top-margin">
									<label>密码 <span class="text-danger">*</span></label>
									<input type="password" class="form-control" id="passwd">
								</div>
								<div class="top-margin">
									<label>两步验证码(没有就别填)</label>
									<input type="text" class="form-control" id="code">
								</div>

									{if $geetest_html != null}
									<div class="top-margin">
										<div id="embed-captcha"></div>
									</div>
									{/if}							

								<hr>
								{include file='dialog.tpl'}

								<div class="row">
									<div class="col-lg-8">
										<b><a href="/password/reset">忘记密码?</a></b>
									</div>
									<div class="col-lg-8">
										<label class="checkbox">
											<input class="checkbox" value="week" id="remember_me" name="remember_me" type="checkbox">记住我
										</label>                        
									</div>
									<div class="col-lg-4 text-right">
										<button id="login" class="btn btn-action" type="submit">登录</button>
									</div>
								</div>
							
						</div>
					</div>

				</div>
				
			</article>
			<!-- /Article -->

		</div>
	</div>	<!-- /container -->



{include file='footer_new.tpl'}

<script>
    $(document).ready(function(){
        function login(){
			{if $geetest_html != null}
			if(typeof validate == 'undefined')
			{
				$("#result").modal();
                $("#msg").html("请滑动验证码来完成验证。");
				return;
			}
			
			if (!validate) {
				$("#result").modal();
                $("#msg").html("请滑动验证码来完成验证。");
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
						$("#result").modal();
                        $("#msg").html(data.msg);
                        window.setTimeout("location.href='/user'", {$config['jump_delay']});
                    }else{
						$("#result").modal();
                        $("#msg").html(data.msg);
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
		
		$('div.modal').on('shown.bs.modal', function() {
			$("div.gt_slider_knob").hide();
		});
		
		$('div.modal').on('hidden.bs.modal', function() {
			$("div.gt_slider_knob").show();
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

