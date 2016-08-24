








{include file='user/main.tpl'}


      <!--main content start-->
      <section id="main-content">
        	<section class="wrapper site-min-height">
            <!-- page start-->
            <h2 class="page-title"><i class="icon-credit-card"></i>&nbsp;充值 | <small>Reload</small></h2>

			<div class="col-lg-10 col-lg-offset-1">
	                        	<div class="alert alert-block alert-info fade in">
	                                    <button data-dismiss="alert" class="close close-sm" type="button">
                                      <i class="fa fa-times"></i>
                                  </button>
	                                    <p><i class="fa fa-money"></i>
	                                    &nbsp;账户余额: <strong>{$user->unusedTraffic()}</strong>
	                                    <span style="float:right;">限时5折 2GB ≈ 1 元</span>
	                                    </p>
	                            </div>
	                        </div>
			
				<div class="col-md-5 col-md-offset-1">

					{if $enable_alipay != 'false'}
					<!-- Alipay -->
					<section class="panel">
	                                  <div class="twt-feed blue-bg">
	                                      <h1>支付宝充值</h1>
	                                      <p>在线充值，最低10GB</p>
	                                      <a href="#">
	                                          <img src="/theme/flatlab/images/alipay-logo.png" alt="Alipay Logo" width="120px" />
	                                      </a>
	                                  </div>
	                                  <div class="twt-write col-sm-12" style="margin-top:55px;">
	                                  	<div class="iconic-input">
											<i class="fa fa-rmb"></i>
		                                    <input class="form-control" type="text" placeholder="充值金额" id="amount">
		                                </div>
	                                  </div>
	                                  <footer class="twt-footer">
	                                      <button class="btn btn-block btn-info" type="button" id="alipay-update">
	                                          前往支付
	                                      </button>
	                                  </footer>
	                              </section>
					<!-- end Alipay -->
					{/if}
				</div>
				<!-- reload code -->
				<div class="col-md-5">
					<section class="panel">
	                                  <div class="twt-feed" style="background-color:#78CD51;">
	                                      <h1>充值码充值</h1>
	                                      <p>微信转账后换取等额充值码</p>
	                                      <a href="#" style="background-color:#fff;">
	                                          <img src="/theme/flatlab/images/wechat-logo.png" alt="wechat logo" width="120px" />
	                                      </a>
	                                  </div>
	                                  <div class="twt-write col-sm-12" style="margin-top:55px;">
	                                  	<div class="iconic-input">
											<i class="fa fa-barcode"></i>
		                                    <input class="form-control" type="text" placeholder="充值码" id="code">
		                                </div>
	                                  </div>
	                                  <footer class="twt-footer">
	                                      <button class="btn btn-block btn-success" type="button" id="code-update">
	                                          充值
	                                      </button>
	                                  </footer>
	                              </section>
				</div>
				<!-- end reload code -->
			<div class="col-lg-10 col-lg-offset-1">
				<div class="row">
					{if $pmw!='0'}
							<!-- PMW HISTORY -->
							<div class="col-lg-10 col-lg-offset-1">
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
					<!-- reload history -->
					<div class="col-lg-12">
						<section class="panel">
							<div class="panel-heading">
							充值记录
							</div>
							<div class="panel-body">
								<div class="table-responsive">
												<table class="table table-hover">
													<tr>
														<th style="border:0;">代码</th>
														<th style="border:0;">支付</th>
														<th style="border:0;">操作</th>
														<th style="border:0;">使用时间</th>
														
													</tr>
													{foreach $codes as $code}
														<tr>
															<td>{$code->code}</td>
															{if $code->type==-1}
															<td>充值码</td>
															{/if}
															{if $code->type==10001}
															<td>支付宝</td>
															{/if}
															{if $code->type==10002}
															<td>用户续期</td>
															{/if}
															{if $code->type>=1&&$code->type<=10000}
															<td>等级续期 - 等级{$code->type}</td>
															{/if}
															{if $code->type==-1}
															<td>充值 {$code->number} GB 流量</td>
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
											</div>
											<div class="text-center">{$codes->render()}</div>
							</div>
						</section>
					</div>
					<!-- end reload history -->
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
			if(parseFloat($("#amount").val())>="5")
			{
				alipay();
			}
			else {
				$("#result").modal();
				$("#msg").html("10元以下手续费超贵，所以麻烦至少充值5元，否则我们入不敷出。谢谢！");
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

