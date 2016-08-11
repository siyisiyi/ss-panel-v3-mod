








{include file='user/main.tpl'}



                <!-- BEGIN CONTENT -->
                <div class="page-content-wrapper">
                    <!-- BEGIN CONTENT BODY -->
                    <div class="page-content">
                        <!-- BEGIN PAGE HEADER-->
                        <!-- BEGIN PAGE TITLE-->
                        <h1 class="page-title">Code | 
                            <small>充值</small>
                        </h1>
                        <!-- END PAGE TITLE-->
                        <!-- END PAGE HEADER-->
                        <!-- CODE -->
                        <div class="row">
                        	{if $enable_alipay != 'false'}
                        	<!-- ALIPAY -->
                        	<div class="col-md-6">
	                        	<div class="portlet box blue-hoki">
			                        <div class="portlet-title">
			                        	<div class="caption">支付宝</div>
			                        </div>
			                        <div class="portlet-body text-center">
			                        	<div class="input-group">
                                            <div class="input-icon">
                                            	<i class="fa fa-cny fa-fw"></i>
                                            	<input id="amount" class="form-control" type="text" placeholder="充值金额(最低1元)">
                                            </div>
                                            <span class="input-group-btn">
                                            <button id="alipay-update" class="btn blue-hoki" type="button">
                                            前往支付 <i class="fa fa-arrow-right fa-fw"></i></button>
                                            </span>
                                         </div>
			                        </div>
								</div>
							</div>
							<!-- END ALIPAY -->
							{/if}
							<!-- RELOAD CODE -->
							<div class="col-md-6">
	                        	<div class="portlet box blue-hoki">
			                        <div class="portlet-title">
			                        	<div class="caption">充值码</div>
			                        </div>
			                        <div class="portlet-body text-center">
			                        	<div class="input-group">
                                            <div class="input-icon">
                                            	<i class="fa fa-credit-card fa-fw"></i>
                                            	<input id="code" class="form-control" type="text" placeholder="请输入充值码">
                                            </div>
                                            <span class="input-group-btn">
                                            <button id="code-update" class="btn blue-hoki" type="button">
                                            充值 <i class="fa fa-plus fa-fw"></i></button>
                                            </span>
                                         </div>
			                        </div>
								</div>
							</div>
							<!-- END RELOAD CODE -->
							{if $pmw!='0'}
							<!-- PMW HISTORY -->
							<div class="col-lg-12 col-lg-push-0 col-sm-10 col-sm-push-1">
	                        	<div class="portlet box blue-hoki">
			                        <div class="portlet-title">
			                        	<div class="caption">PMW充值记录</div>
			                        </div>
			                        <div class="portlet-body text-center" style="height:{$pmw_height}">
			                        	{$pmw}
			                        </div>
								</div>
							</div>
							<!-- END PMW HISTORY -->
							{/if}
							<!-- RELOAD HISTORY -->
							<div class="col-lg-12 col-lg-push-0 col-sm-10 col-sm-push-1">
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
														<th>代码</th>
														<th>类型</th>
														<th>操作</th>
														<th>使用时间</th>
														
													</tr>
													{foreach $codes as $code}
														<tr>
															<td>#{$code->id}</td>
															<td>{$code->code}</td>
															{if $code->type==-1}
															<td>金额充值</td>
															{/if}
															{if $code->type==10001}
															<td>流量充值</td>
															{/if}
															{if $code->type==10002}
															<td>用户续期</td>
															{/if}
															{if $code->type>=1&&$code->type<=10000}
															<td>等级续期 - 等级{$code->type}</td>
															{/if}
															{if $code->type==-1}
															<td>充值 {$code->number} 元</td>
															{/if}
															{if $code->type==10001}
															<td>充值 {$code->number} GB 流量</td>
															{/if}
															{if $code->type==10002}
															<td>延长账户有效期 {$code->number} 天</td>
															{/if}
															{if $code->type>=1&&$code->type<=10000}
															<td>延长等级有效期 {$code->number} 天</td>
															{/if}
															<td>{$code->usedatetime}</td>
														</tr>
													{/foreach}
												</table>
												{$codes->render()}
											</div>
			                        </div>
								</div>
							</div>
							<!-- END RELOAD HISTORY -->
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
        $("#code-update").click(function () {
            $.ajax({
                type: "POST",
                url: "code",
                dataType: "json",
                data: {
                    code: $("#code").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
						window.setTimeout("location.href=window.location.href", {$config['jump_delay']});
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
						window.setTimeout("location.href=window.location.href", {$config['jump_delay']});
                    }
                },
                error: function (jqXHR) {
					$("#result").modal();
					$("#msg").html("发生错误：" + jqXHR.status);
                }
            })
        })
		
		
		{if $enable_alipay != 'false'}
		function alipay(){
			window.location="/user/alipay/"+$("#amount").val();
		}
		
		$("#alipay-update").click(function(){
			if($("#amount").val()!="")
			{
				alipay();
			}
		})
		{/if}
    })
	
	timestamp = {time()}; 
		
		
	function f(){
		$.ajax({
			type: "GET",
			url: "code_check",
			dataType: "json",
			data: {
				time: timestamp
			},
			success: function (data) {
				if (data.ret) {
					clearTimeout(tid);
					$("#result").modal();
					$("#msg").html("充值成功！");
					window.setTimeout("location.href=window.location.href", {$config['jump_delay']});
				}
			}
		});
		tid = setTimeout(f, 1000); //循环调用触发setTimeout
	}
	setTimeout(f, 1000);
</script>

