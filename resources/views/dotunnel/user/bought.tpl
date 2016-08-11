


{include file='user/main.tpl'}



                <!-- BEGIN CONTENT -->
                <div class="page-content-wrapper">
                    <!-- BEGIN CONTENT BODY -->
                    <div class="page-content">
                        <!-- BEGIN PAGE HEADER-->
                        <!-- BEGIN PAGE TITLE-->
                        <h1 class="page-title">Purchased History | 
                            <small>购买记录</small>
                        </h1>
                        <!-- END PAGE TITLE-->
                        <!-- END PAGE HEADER-->
                        <!-- PURCHASED HISTORY -->
                        <div class="row">
                        	<div class="col-lg-12 col-lg-push-0 col-sm-10 col-sm-push-1">
	                        	<div class="portlet box blue-hoki">
			                        <div class="portlet-title">
			                        	<div class="caption">您的购买记录</div>
			                        </div>
			                        <div class="portlet-body text-center">
			                        	<div class="table-responsive">
											{$shops->render()}
											<table class="table ">
					                            <tr>
													<th>操作</th>
					                                <th>ID</th>
					                                <th>商品名称</th>
													<th>内容</th>
													<th>价格</th>
					                                <th>续费时间</th>
													<th>续费时重置流量</th>
					                                
					                            </tr>
					                            {foreach $shops as $shop}
					                            <tr>
													<td>
					                                    <a class="btn btn-sm blue" {if $shop->renew==0}disabled{else} href="javascript:void(0);" onClick="delete_modal_show('{$shop->id}')"{/if}>退订</a>
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
										<div aria-hidden="true" class="modal fade" id="delete_modal" role="dialog" tabindex="-1">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-heading">
														<a class="modal-close" data-dismiss="modal">×</a>
														<h2 class="modal-title">确认要退订？</h2>
													</div>
													<div class="modal-inner">
														<p>请您确认。</p>
													</div>
													<div class="modal-footer">
														<p class="text-right"><button class="btn btn-flat btn-brand-accent waves-attach waves-effect" data-dismiss="modal" type="button">取消</button><button class="btn btn-flat btn-brand-accent waves-attach" data-dismiss="modal" id="delete_input" type="button">确定</button></p>
													</div>
												</div>
											</div>
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







