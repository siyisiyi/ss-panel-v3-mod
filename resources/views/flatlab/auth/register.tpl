{include file='header_new.tpl'}
	<style type="text/css">
        #no-register {
            margin-top: 160px;
            margin-bottom: 100px;
        }
    </style>

    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-primary" id="no-register">
                    <div class="panel-heading text-center">
                        <h3 class="panel-title">加入 {$config["appName"]}</h3>
                    </div>
                    <div class="panel-body">
                            <fieldset>
                                <div class="form-group has-feedback">
                                    <input class="form-control" id="name" placeholder="昵称" type="text" value="" autofocus="" required="required">
                                    <span class="form-control-feedback fui-user"></span>
                                </div>
                                <div class="form-group has-feedback">
                                    <input class="form-control" id="email" placeholder="Email 请勿使用QQ邮箱" type="email" required="required">
                                    <span class="form-control-feedback fui-mail"></span>
                                </div>
                                {if $enable_email_verify == 'true'}
                                <div class="form-group">
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="验证码" autofocus="" required="required" id="email_code">
                                        <span class="input-group-btn">
                                            <button class="btn btn-default" type="button" id="email_verify" name="email_verify">获取验证码</button>
                                        </span>
                                    </div>
                                </div>
                                {/if}
                                <div class="form-group has-feedback">
                                    <input class="form-control" id="passwd" placeholder="密码"  type="password" required="required">
                                    <span class="form-control-feedback fui-lock"></span>
                                </div>
                                <div class="form-group has-feedback">
                                    <input class="form-control" id="repasswd" placeholder="密码确认" type="password" required="required">
                                    <span class="form-control-feedback fui-lock"></span>
                                </div>
                                <div class="form-group has-feedback">
                                <select class="btn btn-primary btn-lg btn-block" id="imtype"
                                style="height: 42px;">
										<option>请选择您的联系方式：</option>
										<option value="1">微信</option>
										<option value="2">QQ</option>
										<option value="3">Google+</option>
                                        <option value="4">Telegram</option>
								</select>
								</div>
                                <div class="form-group has-feedback">
                                    <input class="form-control" id="wechat" placeholder="联系账号" type="text" required="required">
                                    <span class="form-control-feedback fui-facebook"></span>
                                </div>
                                {if $enable_invite_code == 'true'}
								<div class="form-group has-feedback">
                                <input id="code" type="text" class="form-control" value="{$code}" required="required" placeholder="邀请码">
                                <span class="form-control-feedback fui-chat"></span>
								</div>
								{/if}
                                <button type="submit" class="btn btn-lg btn-primary btn-block" name="reg" id="reg">
                                    注册
                                </button>
                                <p class="help-block pull-left">注册即代表同意<a href="/tos">服务条款</a></p>
                                <p class="help-block pull-right"><a href="/auth/login">已有账户?</a></p>
                                
                            </fieldset>{include file='dialog.tpl'}
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


	

{include file='footer_new.tpl'}

<script src="https://static.geetest.com/static/tools/gt.js"></script>

<script>
    $(document).ready(function(){
        function register(){
			
			document.getElementById("reg").disabled = true; 
			
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
						document.getElementById("reg").disabled = false; 
                    }
                },
                error:function(jqXHR){
                    $("#msg-error").hide(10);
                    $("#msg-error").show(100);
                    $("#msg-error-p").html("发生错误："+jqXHR.status);
					document.getElementById("reg").disabled = false; 
                }
            });
        }
        $("html").keydown(function(event){
            if(event.keyCode==13){
                register();
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

            var emailAdd = $("#email").val();
            if (emailAdd.indexOf('qq.com') >= 0)
            {
                $("#result").modal();
                $("#msg").html("请勿使用QQ邮箱。");
                return;
            }

            register();
        });
    })
</script>


{if $enable_email_verify == 'true'}
<script>
    $(document).ready(function () {
        function verify () {
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
            });
        }

        $("#email_verify").click(function(){
            var emailAdd = $("#email").val();
            if (emailAdd.indexOf('qq.com') >= 0 || emailAdd.indexOf('yopmail.com') >= 0 ||emailAdd.indexOf('bccto.me') >= 0)
            {
                $("#result").modal();
                $("#msg").html("不支持该邮箱。");
                return;
            }

            verify();
        });
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
