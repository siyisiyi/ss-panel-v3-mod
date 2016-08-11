{include file='header_new.tpl'}

<header id="head" class="secondary"></header>

<!-- container -->
	<div class="container">

		<ol class="breadcrumb">
			<li><a href="/">首页</a></li>
			<li class="active">邀请码</li>
		</ol>

		<div class="row">
			

			<!-- Article main content -->
			<div class="col-md-8 maincontent">
				<header class="page-header">
					<h1 class="page-title">邀请码</h1>
				</header>
				<h3>{$config["appName"]} 的邀请码，没了的话扫描右边二维码加微信领取。</h3>
				<div>
					<div class="card">
						<div class="card-main">
							<div class="card-inner margin-bottom-no">
								<div class="card-table">
									<div class="table-responsive">
										<table class="table">
											<thead>
											<tr>
												<th>###</th>
												<th>邀请码 (点击邀请码进入注册页面)</th>
												<th>状态</th>
											</tr>
											</thead>
											<tbody>
											{foreach $codes as $code}
											<tr>
												<td>{$code->id}</td>
												<td><a href="/auth/register?code={$code->code}">{$code->code}</a></td>
												<td>可用</td>
											</tr>
											{/foreach}
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
			</div>
			<!-- /Div -->
			
			<!-- Code -->

			<aside class="col-md-4 sidebar sidebar-right">
				<img src="/theme/progressus/assets/images/wechat-qrcode.png" alt="C159800221" class="img-rounded pull-right" width="300" >
			</aside>

			<!-- /Code -->

		</div>
	</div>	<!-- /container -->




{include file='footer_new.tpl'}