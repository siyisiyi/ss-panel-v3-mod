





{include file='user/main.tpl'}

      <!--main content start-->
      <section id="main-content">
          <section class="wrapper site-min-height">
            <!-- page start-->
            <h2 class="page-title"><i class="icon-list"></i>&nbsp;屏蔽记录 | <small>Filter Logs</small></h2>

            <div class="row">

            	<div class="col-lg-10 col-lg-offset-1">
	                        	<div class="alert alert-block alert-warning fade in">
	                                <button data-dismiss="alert" class="close close-sm" type="button">
                                    	<i class="fa fa-times"></i>
                                    </button>
									<p>关于隐私：注意，我们仅用以下规则进行实时匹配和记录匹配到的规则，您的通信方向和通信内容我们不会做任何记录，请您放心。也请您理解我们对于这些不当行为的管理，谢谢。</p>
	                            </div>
	            </div>
            	

				<div class="col-lg-10 col-lg-offset-1">
					<div class="panel">
						<div class="panel-body">
							<div class="table-responsive table-hover">
								<table class="table">
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




              <!-- page end-->
          </section>
      </section>
      <!--main content end-->



{include file='user/footer.tpl'}