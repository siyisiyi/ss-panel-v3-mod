










{include file='user/main.tpl'}


                <!-- BEGIN CONTENT -->
                <div class="page-content-wrapper">
                    <!-- BEGIN CONTENT BODY -->
                    <div class="page-content">
                        <!-- BEGIN PAGE HEADER-->
                        <!-- BEGIN PAGE TITLE-->
                        <h1 class="page-title">Invitation&nbsp;|&nbsp;
                            <small>邀请</small>
                        </h1>
                        <!-- END PAGE TITLE-->
                        <!-- END PAGE HEADER-->
                        <!-- INVITATION -->
                        <div class="row">
                        	<div class="col-lg-12 col-lg-push-0 col-sm-10 col-sm-push-1">
	                        	<div class="alert alert-block alert-warning fade in">
	                                    <button type="button" class="close" data-dismiss="alert"></button>
	                                    <p><i class="fa fa-warning"></i>
	                                    &nbsp;注意：邀请码请给认识的需要的人。</p><p>邀请有记录，若被邀请的人违反用户协议，您将会有连带责任。
	                                    </p>
	                            </div>
	                            <div class="alert alert-block alert-info fade in">
	                                    <button type="button" class="close" data-dismiss="alert"></button>
	                                    <p><i class="fa fa-sticky-note"></i>
	                                    &nbsp;说明：邀请码暂时无法购买，请珍惜。</p>
	                                    <p>公共页面不定期发放邀请码，如果用完邀请码可以关注公共邀请。</p>
	                                    <p>您每拉一位用户注册，当 TA 充值时您就会获得 TA 充值金额的 <code>{$config["code_payback"]} %</code> 的提成。
	                                    </p>
	                            </div>
	                        </div>
                        	<div class="col-lg-12 col-lg-push-0 col-sm-10 col-sm-push-1">
                        		<div class="col-md-4">
		                        	<div class="portlet box blue-hoki">
				                        <div class="portlet-title">
				                        	<div class="caption">生成邀请码</div>
				                        </div>
				                        <div class="portlet-body text-center">
				                        	<p>当前您可以生成<code>{$user->invite_num}</code>个邀请码。</p>
				                        	{if $user->invite_num}
				                        		<div class="form-group">
				                        			<button id="invite" class="btn btn-block blue-hoki">生成我的邀请码</button>
				                        		</div>
				                        	{/if}
				                        </div>
									</div>
								</div>
								<div class="col-md-8">
									<div class="portlet box blue-hoki">
				                        <div class="portlet-title">
				                        	<div class="caption">邀请码列表</div>
				                        </div>
				                        <div class="portlet-body text-center">
				                        	<div class="table-responsive">
											{$codes->render()}
												<table class="table">
													<thead>
													<tr>
														<th>###</th>
														<th>邀请码(点右键复制链接)</th>
														<th>状态</th>
													</tr>
													</thead>
													<tbody>
													{foreach $codes as $code}
														<tr>
															<td><b>{$code->id}</b></td>
															<td><a href="/auth/register?code={$code->code}" target="_blank">{$code->code}</a>
															</td>
															<td>可用</td>
														</tr>
													{/foreach}
													</tbody>
												</table>
											{$codes->render()}
											</div>
				                        </div>
									</div>
								</div>
							</div>
                        </div>
                        <!-- END INVITATION -->
                        {include file='dialog.tpl'}
                    </div>
                    <!-- END CONTENT BODY -->
                </div>
                <!-- END CONTENT -->







{include file='user/footer.tpl'}


<script>
    $(document).ready(function () {
        $("#invite").click(function () {
            $.ajax({
                type: "POST",
                url: "/user/invite",
                dataType: "json",
                success: function (data) {
                    window.location.reload();
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html("发生错误：" + jqXHR.status);
                }
            })
        })
    })
</script>

