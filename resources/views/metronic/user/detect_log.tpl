





{include file='user/main.tpl'}


                <!-- BEGIN CONTENT -->
                <div class="page-content-wrapper">
                    <!-- BEGIN CONTENT BODY -->
                    <div class="page-content">
                        <!-- BEGIN PAGE HEADER-->
                        <!-- BEGIN PAGE TITLE-->
                        <h1 class="page-title">Filter Logs&nbsp;|&nbsp;
                            <small>审计记录</small>
                        </h1>
                        <!-- END PAGE TITLE-->
                        <!-- END PAGE HEADER-->
                        <!-- DETECT LOGS -->
                        <div class="row">
                        	<div class="col-lg-12 col-lg-push-0 col-sm-10 col-sm-push-1">
	                        	<div class="alert alert-block alert-warning fade in">
	                                    <button type="button" class="close" data-dismiss="alert"></button>
	                                    <p><i class="fa fa-warning"></i>
	                                    &nbsp;关于隐私：注意，我们仅用以下规则进行实时匹配和记录匹配到的规则，您的通信方向和通信内容我们不会做任何记录，请您放心。也请您理解我们对于这些不当行为的管理，谢谢。
	                                    </p>
	                            </div>
	                        </div>
                        	<div class="col-md-12">
	                        	<div class="portlet box blue-hoki">
			                        <div class="portlet-title">
			                        	<div class="caption">屏蔽记录</div>
			                        </div>
			                        <div class="portlet-body text-center">
			                        	<div class="table-responsive">
											<table class="table table-hover">
											    <tr>
											        <th>ID</th>
											        <th>节点ID</th>
											        <th>节点名称</th>
											        <th>规则ID</th>
											        <th>名称</th>
											        <th>描述</th>
												<th>正则表达式</th>
												<th>类型</th>
												<th>时间</th>
													
											    </tr>
											    {foreach $logs as $log}
											        <tr>
													<td>#{$log->id}</td>
													<td>{$log->node_id}</td>
													<td>{$log->Node()->name}</td>
													<td>{$log->list_id}</td>
													<td>{$log->DetectRule()->name}</td>
													<td>{$log->DetectRule()->text}</td>
													<td>{$log->DetectRule()->regex}</td>
													{if $log->DetectRule()->type == 1}
														<td>数据包明文匹配</td>
													{/if}		
													<td>{date('Y-m-d H:i:s',$log->datetime)}</td>						
											        </tr>
											    {/foreach}
											</table>
											{$logs->render()}
										</div>
			                        </div>
								</div>
							</div>
                        </div>
                        <!-- END DETECT LOGS -->
                    </div>
                    <!-- END CONTENT BODY -->
                </div>
                <!-- END CONTENT -->







{include file='user/footer.tpl'}