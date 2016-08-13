


<div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">配置连接详细信息</h4>
                  </div>
                  <div class="modal-body">
					<div class="alert alert-block alert-warning fade in">
	                                    <p><i class="fa fa-warning"></i>
	                                    &nbsp;注意：配置文件以及二维码请勿泄露！
	                                    </p>
	                            </div>
	               	<div>
	               		<h5>配置信息</h5>
										<p>服务器地址：<strong>{$ary['server']}</strong><br>
										服务器端口：<strong>{$ary['server_port']}</strong><br>
										加密方式：<strong>{$ary['method']}</strong><br>
										密码：<strong>{$ary['password']}</strong><br>
										{if $config['enable_rss']=='true'&&$node->custom_rss==1&&!($user->obfs=='plain'&&$user->protocol=='origin')}
										协议：<strong>{$user->protocol}</strong><br>
										协议参数：<strong>{$user->protocol_param}</strong><br>
										混淆：<strong>{$user->obfs}</strong><br>
										混淆参数：<strong>{$user->obfs_param}</strong><br>
										{/if}
										
										</p>
						<h5>客户端下载</h5>
						<p><a href="/downloads/client/ShadowsocksR-win.7z"><i class="fa fa-windows"></i>&nbsp;Windows</a></p>
										<p><a href="/downloads/client/ShadowsocksX.dmg"><i class="fa fa-adn"></i>&nbsp;Mac OS X</a></p>
										<p><a href="https://github.com/shadowsocks/shadowsocks-qt5/wiki/Installation"><i class="fa fa-linux"></i>&nbsp;Linux</a></p>
										<p><a href="https://github.com/glzjin/shadowsocks-android/releases"><i class="fa fa-android"></i>&nbsp;Android</a></p>
										<p><a href="https://github.com/glzjin/shadowsocks-android/releases"><i class="fa fa-apple"></i>&nbsp;iOS</a></p>
						<h5>自动配置</h5>
						<p><a href="{$ssqr}" class="btn btn-primary">Android 手机上用默认浏览器打开点我就可以直接添加了(给原版APP)</a></p>
										{if $config['enable_rss']=='true'&&$node->custom_rss==1&&!($user->obfs=='plain'&&$user->protocol=='origin')}
										<p><a href="{$ssqr_s_new}"/>Android 手机上用默认浏览器打开点我就可以直接添加了(给 SSR)</a></p>
										{/if}
						<h5>配置地址</h5>
						<input id="ss-qr-text" class="form-control" value="{$ssqr_s}">
						{if $config['enable_rss']=='true'&&$node->custom_rss==1&&!($user->obfs=='plain'&&$user->protocol=='origin')}
						<h5>新版二维码</h5>
						<div id="ss-qr-n"></div>
						{/if}
						<h5>旧版二维码</h5>
						<div id="ss-qr"></div>
						<h5>配置Json</h5>
						<textarea class="form-control" rows="6">{$json_show}</textarea>

	               	</div>



                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal">关闭</button>
                  </div>
                </div>
              </div>


<script src="/assets/public/js/jquery.min.js"></script>
<script src="/assets/public/js/jquery.qrcode.min.js"></script>
<script>
	var text_qrcode = '{$ssqr_s}';
	jQuery('#ss-qr').qrcode({
		"text": text_qrcode
	});
	
	{if $config['enable_rss']=='true'&&$node->custom_rss==1&&!($user->obfs=='plain'&&$user->protocol=='origin')}
	
	var text_qrcode2 = '{$ssqr_s_new}';
	jQuery('#ss-qr-n').qrcode({
		"text": text_qrcode2
	});
	{/if}

</script>
