{include file='header_new.tpl'}

<style type="text/css">
    #no-login {
    	margin-top: 160px;
        margin-bottom: 100px;
    }
    div #embed-captcha svg {
        margin:0 auto;
    }
</style>


<div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-primary" id="no-login">
                    <div class="panel-heading text-center">
                        <h3 class="panel-title">登录 {$config["appName"]}</h3>
                    </div>
                    <div class="panel-body">
                            <fieldset>
                                <div class="form-group has-feedback" id="emailDiv">
                                    <input class="form-control" id="email" placeholder="Email地址" name="email"
                                           type="email" value="" required="required" autofocus="">
                                    <span class="form-control-feedback fui-mail"></span>
                                </div>
                                <div class="form-group has-feedback" id="passwordDiv">
                                    <input class="form-control" id="passwd" placeholder="密码" name="password"
                                           type="password" required="required">
                                    <span class="form-control-feedback fui-lock"></span>
                                </div>
                                <label class="checkbox" for="remember">
                                    <input type="checkbox" data-toggle="checkbox" value="week"
                                           id="remember" class="custom-checkbox" name="remember_me"><span
                                            class="icons"><span
                                                class="icon-unchecked"></span><span class="icon-checked"></span></span>
                                    记住我
                                </label>
                                
                                {if $geetest_html != null}
								<div class="top-margin">
									<div id="embed-captcha"></div>
								</div>
								{/if}	
                                <button type="submit" class="btn btn-lg btn-primary btn-block" id="login">
                                    登录
                                </button>
                                <p class="help-block pull-left"><a href="/password/reset">忘记密码?</a></p>
                                <p class="help-block pull-right"><a href="/auth/register">没有账户?</a></p>
                            </fieldset>
                            {include file='dialog.tpl'}
                    </div>
                </div>
            </div>
        </div>
    </div>





{include file='footer_new.tpl'}

<script src="https://static.geetest.com/static/tools/gt.js"></script>

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
