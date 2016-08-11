















{include file='user/main.tpl'}



      <!--main content start-->
      <section id="main-content">
          <section class="wrapper site-min-height">
            <!-- page start-->
            <h2 class="page-title"><i class="icon-like"></i>&nbsp;邀请 | <small>Invitation</small></h2>

            <div class="col-md-10 col-md-offset-1">
            	<div class="alert alert-warning fade in">
                    <button data-dismiss="alert" class="close close-sm" type="button">
                        <i class="fa fa-times"></i>
                    </button>
                    <p><strong><i class="fa fa-warning"></i>&nbsp;注意: </strong>邀请码请给认识的需要的人。</p>
                    <p>邀请有记录，若被邀请的人违反用户协议，您将会有连带责任。</p>
                </div>
                <div class="alert alert-info fade in">
                    <button data-dismiss="alert" class="close close-sm" type="button">
                        <i class="fa fa-times"></i>
                    </button>
                    <p><strong><i class="fa fa-info-circle"></i>&nbsp;说明: </strong>邀请码暂时无法购买，请珍惜。</p>
                    <p>公共页面不定期发放邀请码，如果用完邀请码可以关注公共邀请。</p>
                    <p>您每邀请一位用户注册，当 TA 充值时您就会获得 TA 充值金额的 <code>{$config["code_payback"]} %</code> 的提成。</p>
                </div>
            </div>
            <div class="col-md-4 col-md-offset-1">
                	<div class="panel panel-warning">
                		<div class="panel-heading">
                		生成邀请码
                		</div>
                		<div class="panel-body text-center">
                			<p>当前您可以生成<code>{$user->invite_num}</code>个邀请码。</p>
				                        	{if $user->invite_num}
				                        		<div class="form-group">
				                        			<button id="invite" class="btn btn-block btn-danger">生成我的邀请码</button>
				                        		</div>
				                        	{/if}
                		</div>
                	</div>
                </div>
                <div class="col-md-6">
                	<div class="panel panel-danger">
                		<div class="panel-heading">
                		邀请码列表
                		</div>
                		<div class="panel-body">
                			<div class="table-responsive">
												<table class="table">
													<thead>
													<tr>
														<th>邀请码(点右键复制链接)</th>
														<th>状态</th>
													</tr>
													</thead>
													<tbody>
													{foreach $codes as $code}
														<tr>
															<td><a href="/auth/register?code={$code->code}" target="_blank">{$code->code}</a>
															</td>
															<td><label class="label label-warning">可用<label></td>
														</tr>
													{/foreach}
													</tbody>
												</table>
											</div>
							<div class="text-center">{$codes->render()}</div>
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

