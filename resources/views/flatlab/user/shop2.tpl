





{include file='user/main.tpl'}


      <!--main content start-->
      <section id="main-content">
          <section class="wrapper site-min-height">
            <!-- page start-->
            <h2 class="page-title"><i class="icon-basket"></i>&nbsp;商店 | <small>Shop</small></h2>

            <div class="row">

              <div class="col-lg-10 col-lg-offset-1 text-center">
                <p class="lead">当前余额: {$user->money} 元</p>
                <p><span><a href="/user/code" class="btn btn-sm btn-info">前往充值</a></span></p>
                <p>*系统中所有商品的列表。您购买等级类的商品时有效期会从当前时间开始计算。</p>
              </div>
              

        <div class="col-lg-10 col-lg-offset-1">
          <div class="panel">
            <div class="panel-body">
              <div class="table-responsive">
            {$shops->render()}
            <table class="table table-hover">
                            <tr>
                <th style="border:0;">操作</th>
                                <th style="border:0;">ID</th>
                                <th style="border:0;">名称</th>
                <th style="border:0;">价格</th>
                <th style="border:0;">内容</th>
                                <th style="border:0;">自动续费天数</th>
                <th style="border:0;">续费时重置流量</th>
                                
                            </tr>
                            {foreach $shops as $shop}
                            <tr>
                <td>
                                    <a class="btn btn-primary" href="javascript:void(0);" onClick="buy('{$shop->id}',{$shop->auto_renew},{$shop->auto_reset_bandwidth})">购买</a>
                                </td>
                                <td>#{$shop->id}</td>
                                <td>{$shop->name}</td>
                <td>{$shop->price} 元</td>
                                <td>{$shop->content()}</td>
                {if $shop->auto_renew==0}
                                <td>不能自动续费</td>
                {else}
                <td>可选 在 {$shop->auto_renew} 天后自动续费</td>
                {/if}
                
                {if $shop->auto_reset_bandwidth==0}
                                <td>不自动重置</td>
                {else}
                <td>自动重置</td>
                {/if}
                                
                            </tr>
                            {/foreach}
                        </table>
            {$shops->render()}
          </div>
            </div>
            
          </div>
        </div>
      </div>

              <!-- coupon dialog -->
					<div class="modal fade modal-dialog-center " id="coupon_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                  <div class="modal-dialog ">
                                      <div class="modal-content-wrap">
                                          <div class="modal-content">
                                              <div class="modal-header">
                                                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                  <h4 class="modal-title text-center">您有优惠码吗？</h4>
                                              </div>
                                              <div class="modal-body">
												<div class="form-group form-group-label">
													<label class="floating-label" for="coupon">有的话，请在这里输入。没有的话，直接确定吧</label>
													<input class="form-control" id="coupon" type="text">
												</div>
                                              </div>
                                              <div class="modal-footer">
                                                  <button class="btn btn-success" data-dismiss="modal" id="coupon_input" type="button">确定</button>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
				  <!-- end coupon dialog -->
				  <!-- coupon dialog -->
					<div class="modal fade modal-dialog-center " id="order_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                  <div class="modal-dialog ">
                                      <div class="modal-content-wrap">
                                          <div class="modal-content">
                                              <div class="modal-header">
                                                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                  <h4 class="modal-title text-center">订单确认</h4>
                                              </div>
                                              <div class="modal-body">
												<p id="name">商品名称：</p>
												<p id="credit">优惠额度：</p>
												<p id="total">总金额：</p>
												<p id="auto_reset">在到期时自动续费</p>
												<div class="checkboxes" id="autor">
													<label class="" for="autorenew">
														<input checked id="autorenew" type="checkbox">自动续费
													</label>
												</div>
                                              </div>

                                              <div class="modal-footer">
                                                  <button class="btn btn-success" data-dismiss="modal" id="order_input" type="button">确定</button>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
				  <!-- end coupon dialog -->
              {include file='user/dialog.tpl'}
              <!-- page end-->
          </section>
      </section>
      <!--main content end-->







{include file='user/footer.tpl'}

<script>
function buy(id,auto,auto_reset) {
	auto_renew=auto;
	if(auto==0)
	{
		document.getElementById('autor').style.display="none";
	}
	else
	{
		document.getElementById('autor').style.display="";
	}
	
	if(auto_reset==0)
	{
		document.getElementById('auto_reset').style.display="none";
	}
	else
	{
		document.getElementById('auto_reset').style.display="";
	}
	
	shop=id;
	$("#coupon_modal").modal();
}


$("#coupon_input").click(function () {
		$.ajax({
			type: "POST",
			url: "coupon_check",
			dataType: "json",
			data: {
				coupon: $("#coupon").val(),
				shop: shop
			},
			success: function (data) {
				if (data.ret) {
					$("#name").html("名称："+data.name);
					$("#credit").html("折扣："+data.credit);
					$("#total").html("总金额："+data.total);
					$("#order_modal").modal();
				} else {
					$("#result").modal();
					$("#msg").html(data.msg);
				}
			},
			error: function (jqXHR) {
				$("#result").modal();
                $("#msg").html(data.msg+"  发生了错误。");
			}
		})
	});
	
$("#order_input").click(function () {

		if(document.getElementById('autorenew').checked)
		{
			var autorenew=1;
		}
		else
		{
			var autorenew=0;
		}
			
		$.ajax({
			type: "POST",
			url: "buy",
			dataType: "json",
			data: {
				coupon: $("#coupon").val(),
				shop: shop,
				autorenew: autorenew
			},
			success: function (data) {
				if (data.ret) {
					$("#result").modal();
					$("#msg").html(data.msg);
					window.setTimeout("location.href='/user/shop'", {$config['jump_delay']});
				} else {
					$("#result").modal();
					$("#msg").html(data.msg);
				}
			},
			error: function (jqXHR) {
				$("#result").modal();
                $("#msg").html(data.msg+"  发生了错误。");
			}
		})
	});

</script>