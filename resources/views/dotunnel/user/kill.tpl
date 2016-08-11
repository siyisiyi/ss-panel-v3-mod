





{include file='user/main.tpl'}


                <!-- BEGIN CONTENT -->
                <div class="page-content-wrapper">
                    <!-- BEGIN CONTENT BODY -->
                    <div class="page-content">
                        <!-- BEGIN PAGE HEADER-->
                        <!-- BEGIN PAGE TITLE-->
                        <h1 class="page-title">Delete Account&nbsp;|&nbsp;
                            <small>删除我的账号</small>
                        </h1>
                        <!-- END PAGE TITLE-->
                        <!-- END PAGE HEADER-->
                        <!-- TRAFFIC LOG -->
                        <div class="row">
                        	<div class="alert alert-block alert-warning fade in">
                                    <button type="button" class="close" data-dismiss="alert"></button>
                                    <p><i class="fa fa-warning"></i>
                                    &nbsp;注意：帐号删除后，您的所有数据都会被真实地删除。如果想重新使用本网站提供的服务，您需要重新注册。
                                    </p>
                            </div>
                        	<div class="col-md-8 col-md-offset-2">
	                        	<div class="portlet box blue-hoki">
			                        <div class="portlet-title">
			                        	<div class="caption">验证身份</div>
			                        </div>
			                        <div class="portlet-body text-center">
			                        	<div class="form-group form-group-label">
											<input class="form-control" id="passwd" type="password" placeholder="当前密码 (必填)">
										</div>
										<div class="form-group">
											<button class="btn btn-sm blue-hoki" id="kill"><i class="fa fa-check"></i>&nbsp;确认删除</button>
										</div>
			                        </div>
								</div>
							</div>
                        </div>
                        <!-- END TRAFFIC LOG -->
                        {include file='dialog.tpl'}
                    </div>
                    <!-- END CONTENT BODY -->
                </div>
                <!-- END CONTENT -->



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

