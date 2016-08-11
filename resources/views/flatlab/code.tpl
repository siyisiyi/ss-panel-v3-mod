{include file='header_new.tpl'}

<style type="text/css">
		.glyphicon {
            font-size: 2em;
        }
        .main {
            margin-top: 100px;
            min-height: 500px;
        }

        #page-head {
            display: inline;
            margin-left: 4px;
        }

        .img-responsive {
            margin-top: 3em;
            margin-bottom: 3em;
        }
    </style>

<div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1 main">
            	<div>
                    <span class="glyphicon glyphicon-barcode" aria-hidden="true"></span>
                    <h3 id="page-head">邀请码</h3>
                </div>
                <hr>
				<div class="row">
				<div class="col-md-8">
                <h6>{$config["appName"]} 邀请码，或描右边二维码加微信领取。</h6>
                <p>重复注册，使用代理服务器注册一律封删号！</p>
                <p>
                    <div class="table-responsive">
										<table class="table">
											<thead>
											<tr>
												<!-- <th>###</th> -->
												<th>邀请码 (点击邀请码进入注册页面)</th>
												<!-- <th>状态</th> -->
											</tr>
											</thead>
											<tbody>
											{foreach $codes as $code}
											<tr>
												<!-- <td>{$code->id}</td> -->
												<td><a href="/auth/register?code={$code->code}">{$code->code}</a></td>
												<!-- <td>可用</td> -->
											</tr>
											{/foreach}
											</tbody>
										</table>
									</div>
                </p>
                </div>
                <div class="col-md-4">
				<img src="/theme/progressus/assets/images/wechat-qrcode.png" alt="C159800221" class="img-rounded pull-right" width="300" >
			</div>
				</div>
            </div>
        </div>
</div>



{include file='footer_new.tpl'}