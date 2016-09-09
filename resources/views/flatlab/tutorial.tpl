{include file='header_new.tpl'}

    <style type="text/css">
        .glyphicon {
            font-size: 2em;
        }

        #main {
            margin-top: 100px;
        }

        #page-head {
            display: inline;
            margin-left: 4px;
        }
    </style>
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1" id="main">
                <div>
                    <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                    <h3 id="page-head">教程</h3>
                </div>
                <hr>
                <div class="row">
                    <div class="col-md-12">
                        <p class="lead">
                            您只需要3步，便可以畅游真正的互联网：
                        </p>
                        <ol>
                            <li>下载客户端</li>
                            <li>简单配置</li>
                            <li><strong>打开浏览器，畅游互联网</strong></li>
                        </ol>
                        <h4>下载客户端 </h4>
                        <p>请选择对应您的系统的客户端：</p>
                        <div class="tabbable">
                            <ul class="nav nav-tabs nav-append-content">
                                <li class="active"><a href="#tab1" class="open-tab">Windows</a></li>
                                <li class=""><a href="#tab2" class="open-tab">Mac OS X</a></li>
                                <li class=""><a href="#tab3" class="open-tab">Linux</a></li>
                                <li class=""><a href="#tab4" class="open-tab">Android</a></li>
                                <li class=""><a href="#tab5" class="open-tab">iOS</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="tab1">
                                    <div class="alert alert-success">
                                        <button type="button" class="close fui-cross" data-dismiss="alert"></button>
                                        <a>所有Windows客户端均可在XP-10系统上运行</a>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">图形化客户端</div>
                                                <div class="panel-body">
                                                    <p>推荐使用此客户端</p>
                                                    <button onclick="location.href = 'https://v.gosiyi.com/downloads/client/ShadowsocksR-win-3.8.4.2e.7z'; $(this).next().show(300)" class="btn btn-primary">下载客户端</button>
                                                    <p class="text-success" style="display:none; margin-top: 20px">正在处理下载请求，请稍后</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">早期版本客户端</div>
                                                <div class="panel-body">
                                                    <p class="text-danger">早期版本，不推荐使用</p>
                                                    <p>图形化客户端:</p>
                                                    <ul>
                                                        <li><a href="http://7xrzkh.com1.z0.glb.clouddn.com/Shadowsocks-windows-client-2.5.6.zip" class="btn btn-warning">下载客户端</a></li>
                                                    </ul>
                                                    <p>命令行客户端:</p>
                                                    <ul>
                                                        <li><a href="https://github.com/shadowsocks/shadowsocks-qt5/wiki/Installation" class="btn btn-warning">阅读安装指南</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab2">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">客户端</div>
                                                <div class="panel-body">
                                                    <p>图形化客户端:</p>
                                                    <button onclick="location.href = 'https://v.gosiyi.com/downloads/client/ShadowsocksX-R.134.zip'; $(this).next().show(300)" class="btn btn-primary">下载客户端</button>
                                                    <p class="text-success" style="display:none; margin-top: 20px">正在处理下载请求，请稍后</p>
                                                    <p>命令行客户端</p>
                                                    <ul>
                                                        <li><code>brew install shadowsocks-libev</code></li>
                                                    </ul>
                                                    <small>注意: 需要先安装<a href="http://brew.sh/" target="_blank">Homebrew</a>
                                                        。
                                                    </small>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">测试版客户端</div>
                                                <div class="panel-body">
                                                    <p>图形化客户端:</p>
                                                    <ul>
                                                        <li><a href="http://7xrzkh.com1.z0.glb.clouddn.com/GoAgentX-SSR.dmg" class="btn btn-warning">下载客户端</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab3">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">图形化客户端</div>
                                                <div class="panel-body">
                                                    <p>
                                                        <a href="https://github.com/shadowsocks/shadowsocks-qt5/wiki/Installation"
                                                           target="_blank">阅读安装指南</a>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">命令行客户端</div>
                                                <div class="panel-body">
                                                    <ul>
                                                        <li><code>pip install shadowsocks</code></li>
                                                    </ul>
                                                    <small>注意：需先安装<a
                                                                href="https://pypi.python.org/pypi/pip" target="_blank">pip</a>
                                                        。
                                                    </small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab4">
                                    <div class="alert alert-warning">
                                        <button type="button" class="close fui-cross" data-dismiss="alert"></button>
                                        <a class="alert-link">需要Android 4.0以上</a>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">APK</div>
                                                <div class="panel-body">
                                                    <button onclick="location.href = 'https://v.gosiyi.com/downloads/client/ssr_3.0.2.2.apk'; $(this).next().show(300)" class="btn btn-primary">下载客户端</button>
                                                    <p class="text-success" style="display:none; margin-top: 20px">正在处理下载请求，请稍后</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">Google Play</div>
                                                <div class="panel-body">
                                                    <p>
                                                        <a href="https://play.google.com/store/apps/details?id=com.github.shadowsocks"
                                                           class="btn btn-primary" target="_blank">点击下载</a>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab5">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">未越狱设备</div>
                                                <div class="panel-body">
                                                    <p>请使用Safari打开以下链接:</p>
                                                    <ul>
                                                        <li><a href="https://itunes.apple.com/cn/app/potatso-yi-jian-shi-pin-app/id1070901416?mt=8"
                                                               class="btn btn-primary" target="_blank">Potatso</a></li>
                                                    </ul>
                                                    <ul>
                                                        <li><a href="https://itunes.apple.com/cn/app/shadowrocket/id932747118?mt=8"
                                                               class="btn btn-primary" target="_blank">ShadowRocket</a></li>
                                                    </ul>
                                                    <ul>
                                                        <li><a href="https://itunes.apple.com/tc/app/shadowsocks/id665729974?mt=8"
                                                               class="btn btn-primary" target="_blank">ShadowSocks</a></li>
                                                    </ul>
                                                    <p>或者前往<a href="/user/announcement#2">公告中心</a>使用共享账户下载</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">已越狱设备</div>
                                                <div class="panel-body">
                                                    <p>Cydia:</p>
                                                    <p>
                                                        <a href="http://apt.thebigboss.org/onepackage.php?bundleid=com.linusyang.shadowsocks" class="btn btn-primary" target="_blank">ShadowSocks</a>
                                                    </p>
                                                    <p>PP助手：</p>
                                                    <button onclick="location.href = 'https://v.gosiyi.com/downloads/Surge_pp.ipa'; $(this).next().show(300)" class="btn btn-primary">下载Surge</button>
                                                    <p class="text-success" style="display:none; margin-top: 20px">正在处理下载请求，请稍后</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <h4>简单配置</h4>
                        <!-- <p>下载完成后，将压缩包内的所有文件解压。添加服务器至客户端</p> -->
                        <p><strong>打开 <a href="/user/node" target="_blank">服务器页面</a></strong></p>

                        <div class="tabbable">
                            <ul class="nav nav-tabs nav-append-content">
                                <li class="active"><a href="#tab6" class="open-tab">手机设置</a></li>
                                <li class=""><a href="#tab7" class="open-tab">电脑设置</a></li>
                                <li class=""><a href="#tab8" class="open-tab">手动设置</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="tab6">
                                    <div class="row">
                                        <div class="alert alert-success">
                                            <button type="button" class="close fui-cross" data-dismiss="alert"></button>
                                            <a>如果你的手机无法扫描二维码，请手动设置节点信息</a>
                                        </div>
                                        <p>
                                            ShadowRocket：
                                        </p>

                                        <ol>
                                            <li>点击右上角“+”添加配置</li>
                                            <li>Type选择ShadowsocksR</li>
                                            <li>根据节点详细配置填写地址Host,端口Port,密码Password,加密方式Method,协议Protocol,混淆Obfuscation以及参数Parameter</li>
                                            <li>点击Done完成配置，选择节点后点击Not Connected旁边的开关开启连接即可上网</li>
                                            <li>*进阶配置地址:<a href="/downloads/gosiyi_sr.conf">{$config["baseUrl"]}/downloads/gosiyi_sr.conf</a></li>
                                        </ol>

                                        <p>
                                            Potatso
                                        </p>

                                        <ol>
                                            <li>选择更多->从二维码导入</li>
                                            <li>扫描节点详细配置里的二维码并命名</li>
                                            <li>返回Potatso首页点击连接即可上网</li>
                                        </ol>

                                        <p>
                                            Surge
                                        </p>

                                        <ol>
                                            <li>添加配置: <a href="/downloads/GoSiyi_Surge.conf">{$config["baseUrl"]}/downloads/GoSiyi_Surge.conf</a></li>
                                            <li>选择Config->Edit Configuration</li>
                                            <li>编辑Proxy,改为自己的端口、加密方式和密码</li>
                                            <li>保存配置，返回主界面点击开关连接上网</li>
                                        </ol>

                                        <p>
                                            安卓 ShadowsocksR：
                                        </p>

                                        <ol>
                                            <li>下载，安装并打开App。</li>
                                            <li>使用系统默认浏览器选择一个节点，点击名字查看节点详情</li>
                                            <li>点击添加配置按钮或者扫描二维码添加</li>
                                            <li>找到App界面右上角的纸飞机图标。点击纸飞机图标，App会向您询问相应的权限</li>
                                            <li>当纸飞机图标变成勾时，表示App在您的手机设备上正常运行</li>
                                        </ol>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab7">
                                    <div class="row">
                                        <ol>
                                            <li>下载、解压</li>
                                            <li>登录到<a href="/user">用户中心</a>，下载配置文件放到程序目录下</li>
                                            <li>运行程序，选择一个合适的服务器，更新一下PAC为绕过国内IP</li>
                                            <li>开启系统代理即可上网，不过找不见图标请查看右下角系统图标里</li>
                                            <li>如果您想加速您的游戏，请将&ldquo;系统代理模式&rdquo;设置为&ldquo;全局&rdquo;</li>
                                        </ol>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab8">
                                    <div class="row">
                                        <div class="alert alert-success">
                                            <button type="button" class="close fui-cross" data-dismiss="alert"></button>
                                            <a>如果不清楚协议&混淆以及One Time Auth请保持默认</a>
                                        </div>
                                        <ol>
                                            <li>下载安装客户端</li>
                                            <li>选择一个节点，点击名字查看节点详情</li>
                                            <li>在节点详情中，您可以看到节点地址Host，端口Port，密码Password与加密方式Method</li>
                                            <li>将服务器信息填入客户端，选择连接方式Type为ShadowsocksR</li>
                                        </ol>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- <p>
                            电脑客户端：
                        </p>

                        <ol>
                            <li>右键点击任务栏里的纸飞机图标，在&ldquo;服务器&rdquo;中勾选一台服务器</li>
                            <li>右键点击任务栏里的纸飞机图标，在&ldquo;系统代理模式&rdquo;中勾选&ldquo;PAC模式&rdquo;</li>
                            <li>右键点击任务栏里的纸飞机图标，勾选&ldquo;启用系统代理&rdquo;</li>
                        </ol> -->

                        <h4>打开浏览器，畅游真正的互联网吧！</h4>

                        <ol>
                            <li>如果您发现无法打开网站，请在在&ldquo;系统代理模式&rdquo;中勾选&ldquo;全局模式&rdquo;</li>
                            <li>如果您仍然无法打开网站，请仔细阅读上方说明，并检查是否配置错误，或
                            <span title="" data-placement="right" data-toggle="tooltip" class="label label-primary" data-original-title="wx:C159800221">联系管理员</span>
                            </li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>

{include file='footer_new.tpl'}

<script>
        $(function () {
            $('.tabbable .open-tab').click(function (e) {
                e.preventDefault();
                $(this).tab('show')
            });

            $(".btn").click(function(){
                $(this).attr('disabled', true);
            });
        })
    </script>

<script>
      $(function () {
        $('[data-toggle=tooltip]').tooltip();
      });
</script>