








{include file='user/main.tpl'}







	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">充值</h1>
			</div>
		</div>
		<div class="container">
			<section class="content-inner margin-top-no">
				<div class="row">
				
					
					<div class="col-lg-12 col-md-12">
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<form action="/alipay/alipayapi.php" method="post" target="_blank">
									<div class="card-inner">
										<p class="card-heading">支付宝在线充值</p>
										<p>当前余额：{$user->money} 元</p>
										<div class="form-group form-group-label">
											<label class="floating-label" for="WIDtotal_fee">金额 （最小充值金额1.00元）</label>
											<input class="form-control" name="email" type="hidden" value="{$user->email}">
											<input class="form-control" type="text" name="WIDtotal_fee" value="" placeholder="最低金额：1.00元">
										</div>
									</div>
									<div class="card-action">
										<div class="card-action-btn pull-left">
											<button class="btn btn-flat waves-attach" type="submit" ><span class="icon">check</span>&nbsp;前往支付</button>
										</div>
									</div></form>
								</div>
							</div>
						</div>
					</div>
					

					<div class="col-lg-12 col-md-12">
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<p class="card-heading">充值码充值</p>
										<p>购买充值码请加微信：<a href="" data-toggle="modal" data-target=".bs-example-modal-sm">C159800221</a>(备注老司机)</p>
										<div class="form-group form-group-label">
											<label class="floating-label" for="code">充值码</label>
											<input class="form-control" id="code" type="text">
										</div>
									</div>
									<div class="card-action">
										<div class="card-action-btn pull-left">
											<button class="btn btn-flat waves-attach" id="code-update" ><span class="icon">check</span>&nbsp;充值</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					{if $pmw!='0'}
					<div class="col-lg-12 col-md-12">
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner" style="height:{$pmw_height}">
										{$pmw}
									</div>
									
								</div>
							</div>
						</div>
					</div>
					{/if}
					
					<div class="col-lg-12 col-md-12">
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<p class="card-heading">充值记录</p>
										<div class="card-table">
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
															{if $code->type==-2}
															<td>支付宝充值</td>
															{/if}
															{if $code->type==-3}
															<td>微信充值</td>
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
															{if $code->type<=0}
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
							</div>
						</div>
					</div>
					
					{include file='dialog.tpl'}
				</div>
			</section>
		</div>
	</main>

	<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
  <div class="modal-dialog modal-sm">
    <div class="modal-content" style="width:300px; height:300px;">
      <img src="/theme/progressus/assets/images/wechat-qrcode.png" alt="QR-Code" style="height:300px; " />
    </div>
  </div>
</div>







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
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
					$("#result").modal();
					$("#msg").html("发生错误：" + jqXHR.status);
                }
            })
        })
    })
	
	timestamp = Date.parse(new Date())/1000; 
		
		
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
					$("#result").modal();
					$("#msg").html("充值成功！ 五秒后刷新页面");
					window.setTimeout("location.href=window.location.href", 5000);
				}
			}
		});
		setTimeout(f, 1000); //循环调用触发setTimeout
	}
	setTimeout(f, 1000);
</script>

