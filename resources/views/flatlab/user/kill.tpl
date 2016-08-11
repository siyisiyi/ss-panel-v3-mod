{include file='user/main.tpl'}

      <!--main content start-->
      <section id="main-content">
          <section class="wrapper site-min-height">
            <!-- page start-->
            <h2 class="page-title"><i class="icon-remove"></i>&nbsp;删除账号 | <small>Delete Account</small></h2>

            <div class="col-md-8 col-md-offset-2">
            	<div class="alert alert-warning fade in">
                    <button data-dismiss="alert" class="close close-sm" type="button">
                        <i class="fa fa-times"></i>
                    </button>
                    <p><strong><i class="fa fa-warning"></i>注意: </strong>帐号删除后，您的所有数据都会被真实地删除。</p>
                    <p>如果想重新使用本网站提供的服务，您需要重新注册。</p>
                </div>
                <div class="panel panel-danger">
                	<div class="panel-heading">
                		验证身份
                	</div>
                	<div class="panel-body">
                		<div class="form-group form-group-label">
							<input class="form-control" id="passwd" type="password" placeholder="当前密码 (必填)">
						</div>
						<div class="form-group">
							<button class="btn btn-block btn-danger" id="kill"><i class="fa fa-check"></i>&nbsp;确认删除</button>
						</div>
                	</div>
                </div>
            </div>

            {include file='user/dialog.tpl'}

              <!-- page end-->
          </section>
      </section>
      <!--main content end-->



{include file='user/footer.tpl'}


<script>
    $(document).ready(function () {
        $("#kill").click(function () {
            $.ajax({
                type: "POST",
                url: "kill",
                dataType: "json",
                data: {
                    passwd: $("#passwd").val(),
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
                        window.setTimeout("location.href='/'", {$config['jump_delay']});
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
					$("#result").modal();
                    $("#msg").html("发生错误：" + jqXHR.status + data.msg);
                }
            })
        })
    })
</script>