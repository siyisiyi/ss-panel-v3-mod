





{include file='user/header_info.tpl'}







	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">节点信息</h1>
			</div>
		</div>
		<div class="container">
			<section class="content-inner margin-top-no">
				<div class="ui-card-wrap">
					<div class="row">
						<div class="col-lg-12 col-sm-12">
							<div class="card">
								<div class="card-main">
									<div class="card-inner margin-bottom-no">
										<p class="card-heading">注意！</p>
										<p>下面为您的 VPN 配置。</p>
									</div>
									
								</div>
							</div>
						</div>			
						<div class="col-lg-12 col-sm-12">
							<div class="card">
								<div class="card-main">
									<div class="card-inner margin-bottom-no">
										<p class="card-heading">配置信息</p>
										<p>{$json_show}</p>
									</div>
									
								</div>
							</div>
						</div>
						
						<div class="col-lg-12 col-sm-12">
							<div class="card">
								<div class="card-main">
									<div class="card-inner margin-bottom-no">
										<p class="card-heading">配置方法</p>
										<p>请参考<a href="http://www.greenvpnw.com/help/set/" target="_blank">这里</a>的L2TP连接设置方式</p>
										<p>iPhone下建立VPN连接(PPTP/L2TP方式)</p>
										<p>1、iPhone设置VPN，使用L2TP方式 设置->通用->VPN->添加VPN配置</p>
										<p><img src="/assets/public/img/VPN-Config-1.png" alt="thumbnail" width="400px"></p>
										<p><img src="/assets/public/img/VPN-Config-2.png" alt="thumbnail" width="400px"></p>
									</div>
									
								</div>
							</div>
						</div>
						
					</div>
				</div>
			</section>
		</div>
	</main>







{include file='user/footer.tpl'}




