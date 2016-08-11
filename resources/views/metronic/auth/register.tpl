{include file='header_new.tpl'}

	<header id="head" class="secondary"></header>

	<!-- container -->
	<div class="container">

		<ol class="breadcrumb">
			<li><a href="/">首页</a></li>
			<li class="active">注册</li>
		</ol>

		<div class="row">
			
			<!-- Article main content -->
			<article class="col-xs-12 maincontent">
				<header class="page-header">
					<h1 class="page-title">注册</h1>
				</header>
				
				<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
					<div class="panel panel-default">
						<div class="panel-body">
							<h3 class="thin text-center">注册</h3>
							<p class="text-center text-muted">已经拥有一个账号？请<a href="/auth/login">点击这里</a>登录。</p>
							<p class="text-center text-muted">需要邀请码？请<a href="/code">点击这里</a>查询。</p>
							<hr>

							
								<div class="top-margin">
									<label>昵称 <span class="text-danger">*</span></label>
									<input id="name" type="text" class="form-control">
								</div>
								<div class="top-margin">
									<label>Email <span class="text-danger">*</span></label>
									<input id="email" type="text" class="form-control">
								</div>
								{if $enable_email_verify == 'true'}
								<div class="top-margin">
									<label>Email验证码 <span class="text-danger">*</span></label>
									<input class="form-control" id="email_code" type="text"></br>
									<button id="email_verify" class="btn btn-action btn-block btn-brand-accent waves-attach waves-light">获取验证码</button>
								</div>
								{/if}

								<div class="row top-margin">
									<div class="col-sm-6">
										<label>密码 <span class="text-danger">*</span></label>
										<input id="passwd" type="text" class="form-control">
									</div>
									<div class="col-sm-6">
										<label>确认密码 <span class="text-danger">*</span></label>
										<input id="repasswd" type="text" class="form-control">
									</div>
								</div>

								<div class="top-margin">
									<label>选择您的联系方式 <span class="text-danger">*</span></label>
									<select class="form-control" id="imtype">
										<option></option>
										<option value="1">微信</option>
										<option value="2">QQ</option>
										<option value="3">Google+</option>
									</select>
								</div>
								<div class="top-margin">
									<label>在这输入联系账号 <span class="text-danger">*</span></label>
									<input id="wechat" type="text" class="form-control">
								</div>
								{if $enable_invite_code == 'true'}
								<div class="top-margin">
									<label>邀请码 <span class="text-danger">*</span></label>
									<input id="code" type="text" class="form-control" value="{$code}">
								</div>
								{/if}
								
								{if $geetest_html != null}
								<div class="top-margin">
									<div id="embed-captcha"></div>
								</div>
								{/if}

								<hr>

								<div class="row">
									<div class="col-lg-8">
										<label class="checkbox">
											注册即代表同意<a href="/tos">服务条款</a>，以及保证所录入信息的真实性，如有不实信息会导致账号被删除。
										</label>                        
									</div>
									<div class="col-lg-4 text-right">
										<button id="tos" class="btn btn-action" type="submit">注册</button>
									</div>
								</div>
							

							{include file='dialog.tpl'}
						
						
							<div aria-hidden="true" class="modal modal-va-middle fade" id="tos_modal" role="dialog" tabindex="-1">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-heading">
											<h2 class="modal-title">注册 服务条款</h2>
										</div>
										<div class="modal-inner">
											{include file='reg_tos.tpl'}
										</div>
										<div class="modal-footer">
											<p class="text-right"><button class="btn btn-action btn-flat btn-brand-accent waves-attach waves-effect" data-dismiss="modal" type="button">不同意</button><button class="btn btn-action btn-flat btn-brand-accent waves-attach waves-effect" data-dismiss="modal" id="reg" type="button">同意</button></p>
											
										</div>
									</div>
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
                        $("#result").modal();
                        $("#msg").html(data.msg);
                        window.setTimeout("location.href='/auth/login'", {$config['jump_delay']});
                    }else{
                        $("#result").modal();
                        $("#msg").html(data.msg);
						document.getElementById("tos").disabled = false; 
                    }
                },
                error:function(jqXHR){
                    $("#msg-error").hide(10);
                    $("#msg-error").show(100);
                    $("#msg-error-p").html("发生错误："+jqXHR.status);
					document.getElementById("tos").disabled = false; 
                }
            });
        }
        $("html").keydown(function(event){
            if(event.keyCode==13){
                $("#tos_modal").modal();
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
		
		$("#reg").click(function(){
            register();
        });
		
		$("#tos").click(function(){
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
            $("#tos_modal").modal();
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
                        $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
						document.getElementById("email_verify").disabled = false; 
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
					document.getElementById("email_verify").disabled = false; 
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
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
