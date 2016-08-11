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
                        <h3 class="panel-title">重置密码</h3>
                    </div>
                    <div class="panel-body">
                            <fieldset>
                                <div class="form-group has-feedback" id="emailDiv">
                                    <input class="form-control" id="email" placeholder="Email地址" name="email"
                                           type="email" value="" required="required" autofocus="">
                                    <span class="form-control-feedback fui-mail"></span>
                                </div>
                                <button type="submit" class="btn btn-lg btn-primary btn-block" id="reset">
                                    发送邮件
                                </button>
                                <p class="help-block pull-left"><a href="/auth/login">登录</a></p>
                                <p class="help-block pull-right"><a href="/auth/register">加入</a></p>
                            </fieldset>
                            {include file='dialog.tpl'}
                    </div>
                </div>
            </div>
        </div>
    </div>
	
{include file='footer_new.tpl'}


<script>
    $(document).ready(function(){
        function reset(){
			$("#result").modal();
            $("#msg").html("正在发送，请稍候。。。");
            $.ajax({
                type:"POST",
                url:"/password/reset",
                dataType:"json",
                data:{
                    email: $("#email").val(),
                },
                success:function(data){
                    if(data.ret == 1){
                        $("#result").modal();
                        $("#msg").html(data.msg);
                       // window.setTimeout("location.href='/auth/login'", 2000);
                    }else{
                        $("#result").modal();
                        $("#msg").html(data.msg);
                    }
                },
                error:function(jqXHR){
                    $("#result").modal();
                    $("#msg").html(data.msg);
                }
            });
        }
        $("html").keydown(function(event){
            if(event.keyCode==13){
                login();
            }
        });
        $("#reset").click(function(){
            reset();
        });
    })
</script>