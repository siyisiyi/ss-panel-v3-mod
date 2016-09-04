







{include file='user/main.tpl'}

      <!--main content start-->
      <section id="main-content">
          <section class="wrapper site-min-height">
            <!-- page start-->
            <h2 class="page-title"><i class="icon-equalizer"></i>&nbsp;节点列表 | <small>Node List</small></h2>

            <div class="col-md-12">
              <div class="alert alert-danger fade in">
                    <button data-dismiss="alert" class="close close-sm" type="button">
                        <i class="fa fa-times"></i>
                    </button>
                    <p><strong><i class="fa fa-warning"></i>警告: {$config["appName"]}不是法外之地！</strong></p>
                    <p>严禁进行：下载BT、盗版、群发垃圾邮件、扫描、政治行为。发现一律删号且不退款。</p>
                    <p>本站不提供匿名服务。服务器会自动记录客户端连接的时间、IP和访问站点的IP，但<strong>无法监视和记录访问的内容</strong>。</p>
              </div>
              <div class="alert alert-warning fade in">
                    <button data-dismiss="alert" class="close close-sm" type="button">
                        <i class="fa fa-times"></i>
                    </button>
                    <p><strong><i class="fa fa-warning"></i>注意: </strong>目前有免费线路5条，付费线路2条</p>
                    <p>会员可使用日本IDCF(移动联通)以及阿里云香港B(三网)</p>
                    <p>流量比例为0.5即使用1000MB按照500MB流量记录记录结算。</p>
                    <p>点击下方按钮可查看详细连接配置。</p>
              </div>
            </div>
            </div>
            {$id=0}
            {foreach $node_prefix as $prefix => $nodes}
            {$id=$id+1}
            <div class="col-md-6">
                  <div class="panel">
                    <div class="panel-heading">
                      {if $node_heartbeat[$prefix]=='在线'}
                                  <span class="badge bg-success"><i class="fa fa-cloud"></i></span>
                                  {else}{if $node_heartbeat[$prefix]=='暂无数据'}
                                  <span class="badge bg-warning"><i class="fa fa-flash"></i></span>
                                  {else}
                                  <span class="badge bg-danger"><i class="fa fa-exclamation-triangle"></i></span>
                                  {/if}{/if}
                                  <span>{$prefix} | <i class="fa fa-user"></i> {$node_alive[$prefix]} | <i class="fa fa-wrench"></i> {$node_method[$prefix]}
                                  {if $user->isAdmin()}
                                   | <i class="fa fa-download"></i> {if isset($node_bandwidth[$prefix])==true}{$node_bandwidth[$prefix]}{else}N/A{/if}{/if}</span>
                    </div>
                    <div class="panel-body">
                      {foreach $nodes as $node}
                        <h4>
                        <span class="badge 
                        {if $node->status=='维护'}
                        bg-important
                        {elseif $node->status=='异常'}
                        bg-warning
                        {else}
                        bg-success
                        {/if}
                        ">{$node->status}</span> {$node->name}</h4>
                      <p>
                                      
                                      {if $node->sort == 0||$node->sort==7||$node->sort==8}
                                                                              
                                        <span>流量比例:<span class="badge bg-warning"> 
                                          {$node->traffic_rate}
                                        </span> </span>
                                      {/if}

                                       {$node->info}
                      </p>
                      <p><a class="btn btn-primary" href="./node/{$node->id}" data-toggle="ajaxModal">查看详细连接配置</a>

                        {if $node->sort > 2 && $node->sort != 5}
                                        <span class="btn btn-danger" > 
                                        <a href="./node/{$node->id}" data-toggle="ajaxModal">地址：请点这里进入查看详细信息</a>
                                      {else}
                                      <a href="./node/{$node->id}" data-toggle="ajaxModal"><span class="btn btn-danger"> 地址：{$node->server}</span></a>
                                      {/if}

                      </p>
                      {/foreach}
                    </div>
                  </div>
            </div>
            {/foreach}
              <!-- page end-->
          </section>
      </section>
      <!--main content end-->







{include file='user/footer.tpl'}
<script src="//cdn.bootcss.com/jquery.qrcode/1.0/jquery.qrcode.min.js"></script>
<script>
jQuery(function($){
  $(document).on('click', '[data-toggle="ajaxModal"]', function(e) {
              $('#ajaxModal').remove();
              e.preventDefault();
              var $this = $(this)
                , $remote = $this.data('remote') || $this.attr('href')
                , $modal = $('<div class="modal" id="ajaxModal"><div class="modal-body"></div></div>');
              $('body').append($modal);
              $modal.modal();
              $modal.load($remote);
          });
});
</script>
