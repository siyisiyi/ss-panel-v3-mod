





{include file='user/main.tpl'}

      <!--main content start-->
      <section id="main-content">
          <section class="wrapper site-min-height">
            <!-- page start-->
            <h2 class="page-title"><i class="icon-graph"></i>&nbsp;流量记录 | <small>Traffic Log</small></h2>

            <div class="row">

            	<div class="col-lg-10 col-lg-offset-1">
	                        	<div class="alert alert-block alert-warning fade in">
	                                    <button data-dismiss="alert" class="close close-sm" type="button">
                                      <i class="fa fa-times"></i>
                                  </button>
	                                    <p><i class="fa fa-warning"></i>
	                                    &nbsp;注意：部分节点不支持流量记录。</p><p>此处只展示最近 72 小时的记，粒度为分钟。
	                                    </p>
	                            </div>
	            </div>
            	

				<div class="col-lg-10 col-lg-offset-1">
					<div class="panel">
						<div class="panel-body">
							<div id="log_chart" style="height: 300px; width: 100%;">
							<script src="//cdn.bootcss.com/canvasjs/1.7.0/canvasjs.js"></script>
							<script type="text/javascript">
												window.onload = function () {
													var log_chart = new CanvasJS.Chart("log_chart",
													{
														zoomEnabled: true,
														title:{
															text: "您的最近72小时流量消耗",
															fontSize: 20
															
														},  
														animationEnabled: true,
														axisX: {
															title:"时间",
															labelFontSize: 14,
															titleFontSize: 18                            
														},
														axisY:{
															title: "流量/KB",
															lineThickness: 2,
															labelFontSize: 14,
															titleFontSize: 18
														},

														data: [
														{        
															type: "scatter", 
															{literal}														
															toolTipContent: "<span style='\"'color: {color};'\"'><strong>产生时间: </strong></span>{x} <br/><span style='\"'color: {color};'\"'><strong>流量: </strong></span>{y} KB <br/><span style='\"'color: {color};'\"'><strong>产生节点: </strong></span>{jd}",
															{/literal}
															
															dataPoints: [
															
															
															{$i=0}
															{foreach $logs as $single_log}
																{if $i==0}
																	{literal}
																	{
																	{/literal}
																		x: new Date({$single_log->log_time*1000}), y:{$single_log->totalUsedRaw()},jd:"{$single_log->node()->name}"
																	{literal}
																	}
																	{/literal}
																	{$i=1}
																{else}
																	{literal}
																	,{
																	{/literal}
																		x: new Date({$single_log->log_time*1000}), y:{$single_log->totalUsedRaw()},jd:"{$single_log->node()->name}"
																	{literal}
																	}
																	{/literal}
																{/if}
															{/foreach}
															
															
															
															
															]
														}
														
														]
													});

												log_chart.render();
											}
											</script>
						</div>
						
					</div>
				</div>
			</div>




              <!-- page end-->
          </section>
      </section>
      <!--main content end-->



{include file='user/footer.tpl'}