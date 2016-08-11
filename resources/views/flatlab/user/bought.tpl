


{include file='user/main.tpl'}



      <!--main content start-->
      <section id="main-content">
          <section class="wrapper site-min-height">
            <!-- page start-->
            <h2 class="page-title"><i class="icon-present"></i>&nbsp;购买记录 | <small>Purchased History</small></h2>

            <div class="row">
            	
            </div>

			<div class="col-lg-10 col-lg-offset-1">
				<div class="panel">
					<div class="panel-body">
						<div class="table-responsive">
											{$shops->render()}
											<table class="table table-hover">
												<thead>
						                            <tr>
														<th style="border:0;">操作</th>
						                                <th style="border:0;">ID</th>
						                                <th style="border:0;">商品名称</th>
														<th style="border:0;">内容</th>
														<th style="border:0;">价格</th>
						                                <th style="border:0;">续费时间</th>
														<th style="border:0;">续费时重置流量</th>
						                        </thead>
						                            </tr>
					                            {foreach $shops as $shop}
					                            <tr>
													<td>
					                                    <a class="btn btn-sm btn-primary" {if $shop->renew==0}disabled{else} href="javascript:void(0);" onClick="delete_modal_show('{$shop->id}')"{/if}>退订</a>
					                                </td>
					                                <td>#{$shop->id}</td>
					                                <td>{$shop->shop()->name}</td>
													<td>{$shop->shop()->content()}</td>
													<td>{$shop->price} 元</td>
													{if $shop->renew==0}
					                                <td>不自动续费</td>
													{else}
													<td>在 {$shop->renew_date()} 续费</td>
													{/if}
													
													{if $shop->shop()->auto_reset_bandwidth==0}
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
					<div class="modal fade modal-dialog-center " id="delete_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                  <div class="modal-dialog ">
                                      <div class="modal-content-wrap">
                                          <div class="modal-content">
                                              <div class="modal-header">
                                                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                  <h4 class="modal-title text-center">确认要退订？</h4>
                                              </div>
                                              <div class="modal-body">
                                              <p>请您确认。</p>

                                              </div>
                                              <div class="modal-footer">
                                              	<button class="btn btn-info" data-dismiss="modal" type="button">取消</button>
                                                  <button class="btn btn-success" data-dismiss="modal" type="button" id="delete_input">确定</button>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
					{include file='user/dialog.tpl'}
				</div>
			</div>




              <!-- page end-->
          </section>
      </section>
      <!--main content end-->





{include file='user/footer.tpl'}




<script>
function delete_modal_show(id) {
	deleteid=id;
	$("#delete_modal").modal();
}

$(document).ready(function(){
	function delete_id(){
		$.ajax({
			type:"DELETE",
			url:"/user/bought",
			dataType:"json",
			data:{
				id: deleteid
			},
			success:function(data){
				if(data.ret){
					$("#result").modal();
					$("#msg").html(data.msg);
					window.setTimeout("location.href=window.location.href", {$config['jump_delay']});
				}else{
					$("#result").modal();
					$("#msg").html(data.msg);
				}
			},
			error:function(jqXHR){
				$("#result").modal();
				$("#msg").html(data.msg+"  发生错误了。");
			}
		});
	}
	$("#delete_input").click(function(){
		delete_id();
	});
})
	
</script>







