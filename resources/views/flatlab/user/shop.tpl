





{include file='user/main.tpl'}



      <!--main content start-->
      <section id="main-content">
          <section class="wrapper site-min-height">
              <!-- page start-->
              <div class="row">
                  <!--price start-->
                  <div class="text-center feature-head">
                      <h1>想获得更高速便捷的上网体验？</h1>
                      <span>账户余额: {$user->unusedTraffic()}&nbsp;&nbsp;&nbsp;&nbsp;<a class="label label-warning" href="/user/code">立即充值</a></span>
                  </div>
                  <div class="col-lg-3 col-sm-3">
                      <div class="pricing-table">
                          <div class="pricing-head">
                              <h1> 临时卡 </h1>
                              <h2>
                                  <span class="note">￥</span>1<sup>*</sup></h2>
                          </div>
                          <ul class="list-unstyled">
                              <li>有效期: <strong>1 </strong>天</li>
                              <li>高速节点: <i class="fa fa-check"></i></li>
                              <li>国内中转: <i class="fa fa-times"></i></li>
                              <li>客服远程协助: <i class="fa fa-times"></i></li>
                              <li>适合测试，临时使用</li>
                          </ul>
                          <div class="price-actions">
                              <a class="btn" href="javascript:;" onclick="buy('1',0,0)">马上出发</a>
                          </div>
                      </div>
                  </div>
                  <div class="col-lg-3 col-sm-3">
                      <div class="pricing-table">
                          <div class="pricing-head">
                              <h1> 月卡 </h1>
                              <h2>
                              <span class="note">￥</span>6<sup>*</sup></h2>
                          </div>
                          <ul class="list-unstyled">
                              <li>有效期: <strong>31</strong> 天</li>
                              <li>高速节点: <i class="fa fa-check"></i></li>
                              <li>国内中转: <i class="fa fa-times"></i></li>
                              <li>24小时客服: <i class="fa fa-check"></i></li>
                              <li>享受更快体验</li>
                          </ul>
                          <div class="price-actions">
                              <a class="btn" href="javascript:;" onclick="buy('2',1,0)">马上出发</a>
                          </div>
                      </div>
                  </div>
                  <div class="col-lg-3 col-sm-3">
                      <div class="pricing-table most-popular">
                          <div class="pricing-head">
                              <h1> 年卡 </h1>
                              <h2>
                                  <span class="note">￥</span>60<sup>*</sup></h2>
                          </div>
                          <ul class="list-unstyled">
                              <li>有效期: <strong>365</strong>天</li>
                              <li>高速节点: <i class="fa fa-check"></i></li>
                              <li>国内中转: <i class="fa fa-times"></i></li>
                              <li>24小时客服: <i class="fa fa-check"></i></li>
                              <li>买10月送2月</li>
                          </ul>
                          <div class="price-actions">
                              <a class="btn" href="javascript:;" onclick="buy('3',1,0)">马上出发</a>
                          </div>
                      </div>
                  </div>
                  <div class="col-lg-3 col-sm-3">
                      <div class="pricing-table">
                          <div class="pricing-head">
                              <h1> 尊享卡 </h1>
                              <h2>
                                 <span class="note">￥</span>15<sup>*</sup></h2>
                          </div>
                          <ul class="list-unstyled">
                              <li>有效期: <strong>31</strong>天</li>
                              <li>高速节点: <i class="fa fa-check"></i></li>
                              <li>国内中转: <i class="fa fa-check"></i></li>
                              <li>24小时客服: <i class="fa fa-check"></i></li>
                              <li><strong>*国内中转线路流量比例为1.5倍</strong></li>
                          </ul>
                          <div class="price-actions">
                              <a class="btn" href="javascript:;" onclick="buy('4',1,0)">马上出发</a>
                          </div>
                      </div>
                  </div>
                  <!--price end-->

              </div>
              <div class="alert alert-warning fade in">
                                  <button data-dismiss="alert" class="close close-sm" type="button">
                                      <i class="fa fa-times"></i>
                                  </button>
                <p>购买服务即代表同意我们的<a href="/tos" target="_blank">用户协议</a>。</p>
                <p>实际消耗流量以服务器记录为准。</p>
                <p>*开通费为一次性收费。实际消耗流量仍需另行付费。2GB≈1元**。</p>
                <p>**中转加速为精品线路，流量比例为1.5倍。2GB≈1.5元。</p>
                <p>***限时5折活动截止至8月28日23:59，之后恢复为流量1GB≈1元，精品线路1GB≈1.5元
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