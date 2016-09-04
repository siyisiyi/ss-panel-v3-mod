


{include file='user/main.tpl'}

                <!-- BEGIN CONTENT -->
                <div class="page-content-wrapper">
                    <!-- BEGIN CONTENT BODY -->
                    <div class="page-content">
                        <!-- BEGIN PAGE HEADER-->
                        <!-- BEGIN PAGE TITLE-->
                        <h1 class="page-title">Profile | 
                            <small>我的账户</small>
                        </h1>
                        <!-- END PAGE TITLE-->
                        <!-- END PAGE HEADER-->
                        
                        <div class="row">
                        	<!-- ACCOUNT INFO -->
                        	<div class="col-md-6">
	                        	<div class="portlet box blue-hoki">
			                        <div class="portlet-title">
			                        	<div class="caption">账户信息</div>
			                        </div>
			                        <div class="portlet-body">
				                        <dl class="dl-horizontal">
											<dt>用户名</dt>
											<dd>{$user->user_name}</dd>
											<dt>邮箱</dt>
											<dd>{$user->email}</dd>
										</dl>
										<a class="btn btn-block blue-hoki" href="kill"><i class="fa fa-remove"></i>&nbsp;删除我的账户</a>
									</div>
								</div>
							</div>
							<!-- END ACCOUNT INFO -->
							<!-- REF HISTORY -->
							<div class="col-md-6">
	                        	<div class="portlet box blue-hoki">
			                        <div class="portlet-title">
			                        	<div class="caption">返利记录</div>
			                        </div>
			                        <div class="portlet-body">
				                        <div class="table-responsive">
											{if $paybacks != null }{$paybacks->render()}
												<table class="table">
													<thead>
													<tr>
														<th>###</th>
														<th>返利用户</th>
														<th>返利金额</th>
													</tr>
													</thead>
													<tbody>
													{foreach $paybacks as $payback}
														<tr>
															<td><b>{$payback->id}</b></td>
															<td>{if $payback->user()==null}已注销{else}{$payback->user()->user_name}{/if}
															</td>
															<td>{$payback->ref_get} 元</td>
														</tr>
													{/foreach}
													</tbody>
												</table>
											{$paybacks->render()}
											{/if}
										</div>
									</div>
								</div>
							</div>
							<!-- END REF HISTORY -->
                        </div>
                    </div>
                    <!-- END CONTENT BODY -->
                </div>
                <!-- END CONTENT -->






	
	
	







{include file='user/footer.tpl'}

