{include file='../header.tpl'}

<section id="content">
    <div class="bg-dark lt">
      <div class="container">
        <div class="m-b-lg m-t-lg">
          <h3 class="m-b-none">配置教程</h3>
          <small class="text-muted">图文并茂shadowsocks影梭设置配置教程</small>
        </div>
      </div>
    </div>
    <div class="bg-white b-b b-light">
      <div class="container">      
        <ul class="breadcrumb no-border bg-empty m-b-none m-l-n-sm">
          <li><a href="/">首页</a></li>
      <li><a href="/help">配置教程</a></li>
          <li class="active">proxifier配置教程</li>
        </ul>
      </div>
    </div>

    <div class="container m-t-lg m-b-lg">
      <div class="row">
        <div class="col-sm-12 text-center">
          <div class="blog-post">                   
            <div class="post-item">
              <div class="post-media">
                <section class="panel bg-primary dk m-b-none">
                  <div class="carousel auto slide panel-body" id="c-fade">      
                        <div class="item active text-center">
                     <span class="h1">Proxifier实现影梭为外服游戏加速教程</span>                       
                      </div>                    
                  </div> 
                </section>
              </div>
              <div class="caption wrapper-lg">                
                  <h2 class="post-title">一、首先要安装好「影梭」客户端. </h2>                
          <div class="post-sum"><p>    
                <a href="/downloads/ShadowsocksR-win-3.8.3e.7z" class="btn btn-primary m-t m-b">Shadowsocks-R版本地下载</a>  <a href="/downloads/ss-qt5-v2.7.0-win32.7z" class="btn btn-primary m-t m-b">Shadowsocks-Qt5本地下载</a></p>
             <div class="line line-lg"></div>
       
       
       <h2 class="post-title">二、Proxifier. </h2>
         <div class="post-sum"><p>    
        安装设置好，在打开的界面，依次点击「菜单栏」--&gt;&gt;「配置文件」--&gt;&gt;「代理服务器」<br>
添加 &gt;&gt; 地址填写「127.0.0.1」 &gt;&gt; 端口默认填写「1080」 &gt;&gt; 协议选择 socks版本5 &gt;&gt; 一路「确定」。如图：<br><br>    

<img src="/theme/dotunnel/images/0060lm7Tgw1f634foui2wj30m80fzt9z.jpg" class="img-full"></p><br>  
          <div class="line line-lg"></div>
        
        
        <h2 class="post-title">三、代理规则设置. </h2>
         <div class="post-sum"><p>    
               1、打开 配置文件 &gt;&gt; 代理规则2<br><br>
<img src="/theme/dotunnel/images/0060lm7Tgw1f634fp2a43j3095066q3c.jpg" class="img-full"><br><br>
2、添加代理规则名称自定义（根据自己喜好设置） 如图所示；<br>
<br>
3、添加需要代理的应用程序，以GTA5 VPN演示，在应用程序里面加入GTA5的程序<br>【gta5.exe;gtavlauncher.exe;subprocess.exe】，其他游戏步骤相同。可以通过【浏览】按钮选择需要代理的程序；<br><br>

4、添加「影梭」客户端里面的本地代理端口，默认一般是1080；<br><br>

5、选择动作：Proxy SOCKS5 127.0.0.1（这个动作选项是步骤1设置完成后会出现的）。<br><br>
    
<img src="/theme/dotunnel/images/0060lm7Tgw1f634fpvykbj30ln0ep780.jpg" class="img-full"><br> <br> 
然后再一路确定保存，登录游戏看看？是否已经OK拉？</p><br><br>     
         <div class="line line-lg"></div>

         
                <div class="text-muted">
                  <i class="fa fa-mail-reply-all icon-muted"></i><a href="/help" class="m-r-sm">其他教程</a>
                  <i class="fa fa-home icon-muted"></i><a href="/" class="m-r-sm">首页</a>
                  <i class="fa fa-user icon-muted"></i><a href="/user" class="m-r-sm">会员中心</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div></div></div></section>

{include file='../footer.tpl'}