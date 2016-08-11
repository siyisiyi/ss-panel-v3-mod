


{include file='user/main.tpl'}

                <!-- BEGIN CONTENT -->
                <div class="page-content-wrapper">
                    <!-- BEGIN CONTENT BODY -->
                    <div class="page-content">
                        <!-- BEGIN PAGE HEADER-->
                        <!-- BEGIN PAGE TITLE-->
                        <h1 class="page-title">Ticket&nbsp;|&nbsp;
                            <small>工单</small>
                        </h1>
                        <!-- END PAGE TITLE-->
                        <!-- END PAGE HEADER-->
                        <!-- TICKET -->
                        <div class="row">
                        	<div class="col-md-12">
	                        	<div class="portlet box blue-hoki">
			                        <div class="portlet-title">
			                        	<div class="caption">您发出的工单</div>
			                        </div>
			                        <div class="portlet-body text-center">
			                        	<div class="table-responsive">
											{$tickets->render()}
					                        <table class="table">
					                            <tr>
													<th>操作</th>
					                                <th>ID</th>
					                                <th>日期</th>
					                                <th>标题</th>
													<th>状态</th>
					                            </tr>
					                            {foreach $tickets as $ticket}
					                                <tr>
														<td>
															<a class="btn btn-sm blue-hoki" href="/user/ticket/{$ticket->id}/view">查看&nbsp;<i class="fa fa-hand-o-right"></i></a>
														</td>
					                                    <td>#{$ticket->id}</td>
					                                    <td>{$ticket->datetime()}</td>
					                                    <td>{$ticket->title}</td>
														{if $ticket->status==1}
														<td>开启</td>
														{else}
														<td>关闭</td>
														{/if}
					                                </tr>
					                            {/foreach}
					                        </table>
					                        {$tickets->render()}
										</div>
			                        </div>
								</div>
							</div>
                        </div>
                        <!-- END TICKET -->
                        <!-- CREATE TICKET BUTTON -->
                        <div class="fbtn-container">
							<div class="fbtn-inner">
								<a class="fbtn fbtn-lg fbtn-brand-accent waves-attach waves-circle waves-light" href="/user/ticket/create"><i class="fa fa-commenting"></i></a>
								
							</div>
						</div>
						<!-- END CREATE TICKET BUTTON -->
                        <!-- END TICKET -->
                    </div>
                    <!-- END CONTENT BODY -->
                </div>
                <!-- END CONTENT -->

{include file='user/footer.tpl'}










