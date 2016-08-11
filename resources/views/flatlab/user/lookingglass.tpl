





{include file='user/main.tpl'}





      <!--main content start-->
      <section id="main-content">
          <section class="wrapper site-min-height">
            <!-- page start-->
            <h2 class="page-title"><i class="icon-magnifier"></i>&nbsp;观察窗 | <small>Monitor</small></h2>

            <div class="row">

            <div class="col-lg-10 col-lg-offset-1">
	                        	<div class="alert alert-block alert-warning fade in">
	                                    <button data-dismiss="alert" class="close close-sm" type="button">
                                      <i class="fa fa-times"></i>
                                  </button>
	                                    <p><i class="fa fa-warning"></i>
	                                    &nbsp;注意：此处只展示最近{$hour}小时的记录。
	                                    </p>
	                            </div>
	                        </div>
            	
            </div>

			<div class="col-lg-10 col-lg-offset-1">
				<div class="panel">
					<div class="panel-body text-center">
						<div class="table-responsive table-hover"">
												<table class="table">
													<tr>
														<th style="border:0;">节点</th>
														<th style="border:0;">电信延迟</th>
														<th style="border:0;">电信下载速度</th>
														<th style="border:0;">电信上传速度</th>
														<th style="border:0;">联通延迟</th>
														<th style="border:0;">联通下载速度</th>
														<th style="border:0;">联通上传速度</th>
														<th style="border:0;">移动延迟</th>
														<th style="border:0;">移动下载速度</th>
														<th style="border:0;">移动上传速度</th>
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




              <!-- page end-->
          </section>
      </section>
      <!--main content end-->






{include file='user/footer.tpl'}