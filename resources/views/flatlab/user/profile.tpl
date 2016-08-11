{include file='user/main.tpl'}

      <!--main content start-->
      <section id="main-content">
          <section class="wrapper site-min-height">
            <!-- page start-->
            <h2 class="page-title"><i class="icon-user"></i>&nbsp;我的账户 | <small>Profile</small></h2>

            <div class="row">
            	<div class="col-md-4">
            		<div class="panel panel-warning">
            			<div class="panel-heading">
            				账户信息
            			</div>
            			<div class="panel-body">
            				<div class="row">
                                          <div class="col-md-3">
                                          <p>用户名: </p>
                                          <p>邮箱: </p>
                                          </div>
                                          <div class="col-md-9">
                                          <p>{$user->user_name}</p>
                                          <p>{$user->email}</p>
                                          </div>
                                    </div>
						<a class="btn btn-block btn-danger" href="/user/kill">删除账户</a>
            			</div>
            		</div>

                    <!-- IP -->
                    <section class="panel">
                          <header class="panel-heading tab-bg-dark-navy-blue ">
                              <ul class="nav nav-tabs"> 
                                  <li class="active">
                                      <a data-toggle="tab" href="#loginIP" aria-expanded="false">最近10次登陆IP</a>
                                  </li>
                                  <li>
                                      <a data-toggle="tab" href="#connectIP" aria-expanded="true">最近一天使用IP</a>
                                  </li>
                                  <li class="">
                                      <a data-toggle="tab" href="#FAQ" aria-expanded="false">FAQ</a>
                                  </li>
                              </ul>
                          </header>
                          <div class="panel-body">
                              <div class="tab-content">

                                  <div id="loginIP" class="tab-pane active">
                                      <div class="table-responsive">
                                                    <table class="table table-hover">
                                                        <tr>
                                                            <thead>
                                                            <th style="border:0;">IP</th>
                                                            <th style="border:0;">归属地</th>
                                                            </thead>
                                                        </tr>
                                                        {foreach $userloginip as $single=>$location}
                                                            <tr>
                                                                
                                                                <td >{$single}</td>
                                                                <td >{$location}</td>
                                                            </tr>
                                                        {/foreach}
                                                    </table>
                                        </div>
                                  </div>
                                  <div id="connectIP" class="tab-pane">
                                      <div class="table-responsive">
                                                    <table class="table table-hover">
                                                        <tr>
                                                            <thead>
                                                            <th style="border:0;">IP</th>
                                                            <th style="border:0;">归属地</th>
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
                                  <div id="FAQ" class="tab-pane">
                                    <p>流量不会重置，可以通过续命获取流量。</p>
                                        <p>每次续命可以获取{$config['checkinMin']}~{$config['checkinMax']}MB流量。</p>
                                  </div>
                              </div>
                          </div>
                      </section>
                    <!-- END IP -->
            	</div>           

            	<div class="col-md-8">
            		<div class="panel">
            			<div class="panel-heading">
            				返利记录
            			</div>
            			<div class="panel-body">
            				<div class="portlet-body">
				                        <div class="table-responsive">
												<table class="table hover">
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
										</div>
                                                            <div class="text-center">
                                                            {$paybacks->render()}</div>
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