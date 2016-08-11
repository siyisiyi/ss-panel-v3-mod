





{include file='user/main.tpl'}


                <!-- BEGIN CONTENT -->
                <div class="page-content-wrapper">
                    <!-- BEGIN CONTENT BODY -->
                    <div class="page-content">
                        <!-- BEGIN PAGE HEADER-->
                        <!-- BEGIN PAGE TITLE-->
                        <h1 class="page-title">Monitor&nbsp;|&nbsp;
                            <small>观察窗</small>
                        </h1>
                        <!-- END PAGE TITLE-->
                        <!-- END PAGE HEADER-->
                        <!-- TRAFFIC LOG -->
                        <div class="row">
                        	<div class="col-lg-12 col-lg-push-0 col-sm-10 col-sm-push-1">
	                        	<div class="alert alert-block alert-warning fade in">
	                                    <button type="button" class="close" data-dismiss="alert"></button>
	                                    <p><i class="fa fa-warning"></i>
	                                    &nbsp;注意：此处只展示最近{$hour}小时的记录。
	                                    </p>
	                            </div>
	                        </div>
                        	<div class="col-md-12">
	                        	<div class="portlet box blue-hoki">
			                        <div class="portlet-title">
			                        	<div class="caption">观察窗</div>
			                        </div>
			                        <div class="portlet-body text-center">
			                        	<div class="table-responsive">
												<table class="table">
													<tr>
														<th>节点</th>
														<th>电信延迟</th>
														<th>电信下载速度</th>
														<th>电信上传速度</th>
														<th>联通延迟</th>
														<th>联通下载速度</th>
														<th>联通上传速度</th>
														<th>移动延迟</th>
														<th>移动下载速度</th>
														<th>移动上传速度</th>
													</tr>
													{foreach $speedtest as $single}
														<tr>
															<td>{$single->node()->name}</td>
															<td>{$single->telecomping}</td>
															<td>{$single->telecomeupload}</td>
															<td>{$single->telecomedownload}</td>
															<td>{$single->unicomping}</td>
															<td>{$single->unicomupload}</td>
															<td>{$single->unicomdownload}</td>
															<td>{$single->cmccping}</td>
															<td>{$single->cmccupload}</td>
															<td>{$single->cmccdownload}</td>
														</tr>
													{/foreach}
												</table>
											</div>
			                        </div>
								</div>
							</div>
                        </div>
                        <!-- END TRAFFIC LOG -->
                    </div>
                    <!-- END CONTENT BODY -->
                </div>
                <!-- END CONTENT -->







{include file='user/footer.tpl'}