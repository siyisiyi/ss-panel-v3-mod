


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
								<!-- CONNECTION IP -->
                                <div class="portlet light">
                                    <div class="portlet-title">
                                            <div class="caption font-red-intense">
                                                <i class="icon-speech font-red-intense"></i>
                                                <span class="caption-subject bold uppercase">最近一天使用IP</span>
                                                <span class="caption-helper">Use IPs</span>
                                            </div>
                                            <div class="tools">
                                                <a href="" class="collapse" data-original-title="" title=""> </a>
                                                <a href="" class="fullscreen" data-original-title="" title=""> </a>
                                                <a href="" class="remove" data-original-title="" title=""> </a>
                                            </div>
                                        </div>
                                    <div class="portlet-body">
                                        <div class="table-responsive">
                                                    <table class="table">
                                                        <tr>
                                                            <thead>
                                                            <th>IP</th>
                                                            <th>归属地</th>
                                                            </thead>
                                                        </tr>
                                                        {foreach $userip as $single=>$location}
                                                            <tr>
                                                                
                                                                <td>{$single}</td>
                                                                <td>{$location}</td>
                                                            </tr>
                                                        {/foreach}
                                                    </table>
                                        </div>
                                    </div>
                                </div>
                                <!-- END CONNECTION IP -->
                                <!-- LOGIN IP -->
                                <div class="portlet light bordered">
                                    <div class="portlet-title">
                                            <div class="caption font-red-intense">
                                                <i class="icon-speech font-red-intense"></i>
                                                <span class="caption-subject bold uppercase">最近10次登陆IP</span>
                                                <span class="caption-helper">Login IPs</span>
                                            </div>
                                            <div class="tools">
                                                <a href="" class="collapse" data-original-title="" title=""> </a>
                                                <a href="" class="fullscreen" data-original-title="" title=""> </a>
                                                <a href="" class="remove" data-original-title="" title=""> </a>
                                            </div>
                                        </div>
                                    <div class="portlet-body">
                                        <div class="table-responsive">
                                                    <table class="table">
                                                        <tr>
                                                            <thead>
                                                            <th>IP</th>
                                                            <th>归属地</th>
                                                            </thead>
                                                        </tr>
                                                        {foreach $userloginip as $single=>$location}
                                                            <tr>
                                                                
                                                                <td>{$single}</td>
                                                                <td>{$location}</td>
                                                            </tr>
                                                        {/foreach}
                                                    </table>
                                        </div>
                                    </div>
                                </div>
                                <!-- END LOGIN IP -->
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
											{$paybacks->render()}
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
															<td>{$payback->user()->user_name}
															</td>
															<td>{$payback->ref_get} 元</td>
														</tr>
													{/foreach}
													</tbody>
												</table>
											{$paybacks->render()}
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

