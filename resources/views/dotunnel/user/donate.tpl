








{include file='user/main.tpl'}




                <!-- BEGIN CONTENT -->
                <div class="page-content-wrapper">
                    <!-- BEGIN CONTENT BODY -->
                    <div class="page-content">
                        <!-- BEGIN PAGE HEADER-->
                        <!-- BEGIN PAGE TITLE-->
                        <h1 class="page-title">Donation&nbsp;|&nbsp;
                            <small>捐赠公示</small>
                        </h1>
                        <!-- END PAGE TITLE-->
                        <!-- END PAGE HEADER-->
                        <!-- DONATION -->
                        <div class="row">
                        	<div class="col-md-6">
								<div class="portlet box blue-hoki">
			                        <div class="portlet-title">
			                        	<div class="caption">捐赠统计</div>
			                        </div>
			                        <div class="portlet-body text-center">
			                        	<p>您可以在<a href="/user/code">充值界面</a>进行充值，这样就等同于捐赠了。</p>
									
										<p>总收入：{$total_in} 元</p>
										
										<p>总支出：{$total_out} 元</p>
			                        </div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="portlet box blue-hoki">
			                        <div class="portlet-title">
			                        	<div class="caption">匿名捐赠</div>
			                        </div>
			                        <div class="portlet-body text-center">
			                        	<p>当前设置：{if $user->is_hide==1} 匿名 {else} 不匿名 {/if}</p>
			                        	<div class="form-group form-group-label">
											<select id="hide" class="form-control">
												<option>匿名设置</option>
												<option>-------</option>
												<option value="1">匿名</option>
												<option value="0">不匿名</option>
											</select>
										</div>
										<div class="form-group form-group-label">
											<button class="btn blue-hoki" id="hide-update" ><span class="icon">check</span>&nbsp;提交</button>
										</div>
			                        </div>
								</div>
							</div>
							<!-- DONATION LIST -->
							<div class="col-lg-12">
	                        	<div class="portlet box blue-hoki">
			                        <div class="portlet-title">
			                        	<div class="caption">充值记录</div>
			                        </div>
			                        <div class="portlet-body text-center">
			                        	<div class="table-responsive">
												{$codes->render()}
												<table class="table table-hover">
													<tr>
														<th>ID</th>
														<th>用户名</th>
														<th>类型</th>
														<th>操作</th>
														<th>备注</th>
														<th>时间</th>
														
													</tr>
													{foreach $codes as $code}
														<tr>
															<td>#{$code->id}</td>
															{if $code->user() != null && $code->user()->is_hide == 0}
															<td>{$code->user()->user_name}</td>
															{else}
															<td>已注销或用户要求匿名</td>
															{/if}
															{if $code->type == -1}
															<td>充值捐赠</td>
															{/if}
															{if $code->type == -2}
															<td>财务支出</td>
															{/if}
															{if $code->type == -1}
															<td>捐赠 {$code->number} 元</td>
															{/if}
															{if $code->type == -2}
															<td>支出 {$code->number} 元</td>
															{/if}
															<td>{$code->code}</td>
															<td>{$code->usedatetime}</td>
														</tr>
													{/foreach}
												</table>
												{$codes->render()}
											</div>
			                        </div>
								</div>
							</div>
							<!-- END DONATION LIST -->
                        </div>
                        <!-- END DONATION -->
                    {include file='dialog.tpl'}
                    </div>
                    <!-- END CONTENT BODY -->
                </div>
                <!-- END CONTENT -->





{include file='user/footer.tpl'}

<script>
    $(document).ready(function () {
        $("#hide-update").click(function () {
            $.ajax({
                type: "POST",
                url: "hide",
                dataType: "json",
                data: {
                    hide: $("#hide").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>
