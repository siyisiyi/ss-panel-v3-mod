





{include file='user/main.tpl'}


                <!-- BEGIN CONTENT -->
                <div class="page-content-wrapper">
                    <!-- BEGIN CONTENT BODY -->
                    <div class="page-content">
                        <!-- BEGIN PAGE HEADER-->
                        <!-- BEGIN PAGE TITLE-->
                        <h1 class="page-title">Filter Rules&nbsp;|&nbsp;
                            <small>审计规则</small>
                        </h1>
                        <!-- END PAGE TITLE-->
                        <!-- END PAGE HEADER-->
                        <!-- DETECT LIST -->
                        <div class="row">
                        	<div class="col-lg-12 col-lg-push-0 col-sm-10 col-sm-push-1">
	                        	<div class="alert alert-block alert-warning fade in">
	                                    <button type="button" class="close" data-dismiss="alert"></button>
	                                    <p><i class="fa fa-warning"></i>
	                                    &nbsp;为了爱与和平，也同时为了系统的正常运行，特制定了如下过滤规则，当您使用节点执行这些动作时，您的通信就会被截断。
	                                    </p>
	                                    <p>关于隐私：注意，我们仅用以下规则进行实时匹配和记录匹配到的规则，您的通信方向和通信内容我们不会做任何记录，请您放心。也请您理解我们对于这些不当行为的管理，谢谢。</p>
	                            </div>
	                        </div>
                        	<div class="col-md-12">
	                        	<div class="portlet box blue-hoki">
			                        <div class="portlet-title">
			                        	<div class="caption">规则列表</div>
			                        </div>
			                        <div class="portlet-body text-center">
			                        	<div class="table-responsive">
											<table class="table table-hover">
											    <tr>
											        <th>ID</th>
											        <th>名称</th>
											        <th>描述</th>
												<th>正则表达式</th>
												<th>类型</th>
													
											    </tr>
											    {foreach $rules as $rule}
											        <tr>
													<td>#{$rule->id}</td>
													<td>{$rule->name}</td>
													<td>{$rule->text}</td>
													<td>{$rule->regex}</td>
													{if $rule->type == 1}
														<td>数据包明文匹配</td>
													{/if}										
											        </tr>
											    {/foreach}
											</table>
											{$rules->render()}
										</div>
			                        </div>
								</div>
							</div>
                        </div>
                        <!-- END DETECT LIST -->
                    </div>
                    <!-- END CONTENT BODY -->
                </div>
                <!-- END CONTENT -->







{include file='user/footer.tpl'}