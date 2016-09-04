





{include file='user/main.tpl'}

      <!--main content start-->
      <section id="main-content">
          <section class="wrapper site-min-height">
            <!-- page start-->
            <h2 class="page-title"><i class="icon-organization"></i>&nbsp;屏蔽规则 | <small>Filter Rules</small></h2>

            <div class="row">

            	<div class="col-lg-10 col-lg-offset-1">
	                        	<div class="alert alert-block alert-warning fade in">
	                                <button data-dismiss="alert" class="close close-sm" type="button">
                                    	<i class="fa fa-times"></i>
                                    </button>
                                  	<p>为了爱与和平，也同时为了系统的正常运行，特制定了如下过滤规则，当您使用节点执行这些动作时，您的通信就会被截断。</p>
									<p>关于隐私：注意，我们仅用以下规则进行实时匹配和记录匹配到的规则，您的通信方向和通信内容我们不会做任何记录，请您放心。也请您理解我们对于这些不当行为的管理，谢谢。</p>
	                            </div>
	            </div>
            	

				<div class="col-lg-10 col-lg-offset-1">
					<div class="panel">
						<div class="panel-body">
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




              <!-- page end-->
          </section>
      </section>
      <!--main content end-->



{include file='user/footer.tpl'}