


{include file='user/main.tpl'}


      <!--main content start-->
      <section id="main-content">
          <section class="wrapper site-min-height">
            <!-- page start-->
            <h2 class="page-title"><i class="icon-speech"></i>&nbsp;工单 | <small>Support Ticket</small></h2>

			<div class="col-lg-10 col-lg-offset-1">
				<!--ticket start-->
                      <section class="panel">
                          <div class="panel-body progress-panel">
                              <div class="task-progress">
                                  <h1 class="text-center">工单列表</h1>
									               <p>Ticket List</p>
                              </div>
                          </div>
                          <table class="table table-hover personal-task">
                          	<tr>
                          		<thead>
													<th>ID</th>
					                                <th>标题</th>
					                                <th>日期</th>
					                                <th>状态</th>
													<th>操作</th>
								</thead>
					                            </tr>
                              <tbody>
                              {foreach $tickets as $ticket}
                              <tr>
                                  <td>#{$ticket->id}</td>
                                  <td>
                                      {$ticket->title}
                                  </td>
                                  <td>
                                      {$ticket->datetime()}
                                  </td>
                                  <td>
                                  	{if $ticket->status==1}
                                    <span class="badge bg-info">开启</span>
                                    {else}
                                    <span class="badge bg-important">关闭</span>
                                    {/if}
                                  </td>
                                  <td>
                                  	<a class="btn btn-xs btn-info" href="/user/ticket/{$ticket->id}/view">查看详情</a>
                                  </td>
                              </tr>
                              {/foreach}
                              </tbody>
                          </table>
                          <div class="text-center">{$tickets->render()}</div>
                      </section>
                      <!--ticket end-->
			</div>
      <div class="col-lg-2 col-lg-offset-9">
        <a href="./ticket/create" class="btn btn-block btn-danger"><i class="fa fa-edit"></i>&nbsp;  新建工单</a>
      </div>
      <!-- page end-->
          </section>
      </section>
      <!--main content end-->






{include file='user/footer.tpl'}










