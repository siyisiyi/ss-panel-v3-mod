







{include file='user/main.tpl'}


<script src="//cdn.bootcss.com/canvasjs/1.7.0/canvasjs.js"></script>
<script src="//cdn.bootcss.com/jquery/2.2.1/jquery.min.js"></script>

      <!--main content start-->
      <section id="main-content">
          <section class="wrapper site-min-height">
            <!-- page start-->
            <h2 class="page-title"><i class="icon-equalizer"></i>&nbsp;节点列表 | <small>Node List</small></h2>

            <div class="col-md-10 col-md-offset-1">
              <div class="alert alert-warning fade in">
                    <button data-dismiss="alert" class="close close-sm" type="button">
                        <i class="fa fa-times"></i>
                    </button>
                    <p><strong><i class="fa fa-warning"></i>注意: </strong>请勿在任何地方公开节点地址！</p>
                    <p>流量比例为0.5即使用1000MB按照500MB流量记录记录结算。</p>
                    <p><a href="javascript:;" onClick="urlChange('guide')">如果您不知道如何查看节点的详细信息和二维码，请点我。</a></p>
                </div>
                <div class="panel panel-danger">
                  <div class="panel-heading">
                    节点列表
                  </div>
                  <div class="panel-body">
                  <div class="tile-wrap">
                      {$id=0}
                      {foreach $node_prefix as $prefix => $nodes}
                        {$id=$id+1}
                        
                          <div class="tile tile-collapse panel">
                            <div data-toggle="tile" data-target="#heading{$node_order->$prefix}">
                              <div class="tile-side pull-left" data-ignore="tile">
                                <div class="avatar avatar-sm">
                                  {if $node_heartbeat[$prefix]=='在线'}
                                  <span class="badge" style="background:#a9d86e;"><i class="fa fa-cloud"></i></span>
                                  {else}{if $node_heartbeat[$prefix]=='暂无数据'}
                                  <span class="badge" style="background:#FCB322;"><i class="fa fa-flash"></i></span>
                                  {else}
                                  <span class="badge" style="background:#ff6c60;"><i class="fa fa-exclamation-triangle"></i></span>
                                  {/if}{/if}
                                </div>
                              </div>
                              <div class="tile-inner panel-body">
                                <div class="text-overflow">{$prefix} | <i class="fa fa-user"></i> {$node_alive[$prefix]} | <i class="fa fa-wrench"></i> {$node_method[$prefix]} | <i class="fa fa-download"></i> {if isset($node_bandwidth[$prefix])==true}{$node_bandwidth[$prefix]}{else}N/A{/if}</div>
                              </div>
                            </div>
                            <div class="collapsible-region collapse" id="heading{$node_order->$prefix}">
                              <div class="tile-sub">
                                
                                <br>
                                
                                {foreach $nodes as $node}
                                
                                <div class="panel">
                                  <div class="panel-header">
                                    <div class="panel-title">
                                      <h4>
                                      <a href="javascript:void(0);" onClick="urlChange('{$node->id}')">{$node->name}</a>
                                      &nbsp;<span class="badge bg-success">{$node->status}</span>
                                      </h4>
                                    </div>
                                  </div>
                                  <div class="panel-body">
                                    {if $node->sort > 2 && $node->sort != 5}
                                        <p>地址：<span class="label label-warning" > 
                                        <a href="javascript:void(0);" onClick="urlChange('{$node->id}')">请点这里进入查看详细信息</a>
                                      {else}
                                        <p>地址：<span class="label label-warning"> 
                                        {$node->server}
                                      {/if}
                                        
                                        </span></p>
                                      
                                      {if $node->sort == 0||$node->sort==7||$node->sort==8}
                                        <p>加密方式：<span class="label label-info"> 
                                          {if $node->custom_method == 1}
                                            {$user->method}
                                          {else}
                                            {$node->method}
                                          {/if}
                                        </span></p>
                                        
                                        {if $node->sort==0&&$node->custom_rss==1&&$config['enable_rss']=='true'}
                                          <p>协议：<span class="label label-primary"> 
                                            {$user->protocol}
                                          </span></p>
                                          
                                          <p>协议参数：<span class="label label-success"> 
                                            {$user->protocol_param}
                                          </span></p>
                                          
                                          <p>混淆方式：<span class="label label-primary"> 
                                            {$user->obfs}
                                          </span></p>
                                          
                                          <p>混淆参数：<span class="label label-success"> 
                                            {$user->obfs_param}
                                          </span></p>
                                        {/if}
                                        
                                        
                                        <p>流量比例：<span class="label label-danger"> 
                                          {$node->traffic_rate}
                                        </span></p>
                                        
                                        
                                        <p>在线人数：<span class="label label-inverse"> 
                                          {$node->getOnlineUserCount()}
                                        </span></p>
                                      
                                        {if ($node->sort==0||$node->sort==7||$node->sort==8)&&($node->node_speedlimit!=0||$user->node_speedlimit!=0)}
                                          <p>节点限速：<span class="label label-warning"> 
                                            {if $node->node_speedlimit>$user->node_speedlimit}
                                              {$node->node_speedlimit}Mbps
                                            {else}
                                              {$user->node_speedlimit}Mbps
                                            {/if}
                                          </span></p>
                                        {/if}
                                      {/if}
                                      
                                      <h4>{$node->info}</h4>
                                  </div>
                                </div>
                                {if $node->sort==0}
                                    {$point_node=$node}
                                  {/if}
                                
                                {/foreach}
                                  
                                  
                                  
                                
                                {if $point_node!=null}
                                
                                  <div class="card">
                                    <div class="card-main">
                                      <div class="card-inner" id="info{$id}"> 
                                        
                                      </div>
                                    </div>
                                  </div>
                                  
                                  <script>
                                  $().ready(function(){
                                    $('#heading{$node_order->$prefix}').on("shown.bs.tile", function() {

                                      $("#info{$id}").load("/user/node/{$point_node->id}/ajax");

                                    });
                                  });
                                  </script>
                                {/if} 
                                
                                {$point_node=null}
                                  
                                  
                                
                                  
                              </div>
                              
                              
                            
                            </div>
                            
                            
                            
                        </div>
                        
                      {/foreach}
                    </div>
                  </div>
                </div>
            </div>

            <div aria-hidden="true" class="modal fade" id="nodeinfo" role="dialog" tabindex="-1">
                  <div class="modal-dialog modal-full">
                    <div class="modal-content">
                      <iframe class="iframe-seamless" title="Modal with iFrame" id="infoifram"></iframe>
                    </div>
                  </div>
                </div>

              <!-- page end-->
          </section>
      </section>
      <!--main content end-->







{include file='user/footer.tpl'}


<script>


function urlChange(id) {
    var site = './node/'+id;
  if(id == 'guide')
  {
    var doc = document.getElementById('infoifram').contentWindow.document;
    doc.open();
    doc.write('<img src="https://www.zhaoj.in/wp-content/uploads/2016/07/1469595156fca44223cf8da9719e1d084439782b27.gif" style="width: 100%;height: 100%; border: none;"/>');
    doc.close();
  }
  else
  {
    document.getElementById('infoifram').src = site;
  }
  $("#nodeinfo").modal();
}
</script>
<script>
  // tile
  (function ($) {
    'use strict';

    var Tile = function (element, options) {
      this.options       = $.extend({}, Tile.DEFAULTS, options);
      this.transitioning = null;
      this.$element      = $(element);

      if (this.options.parent) {
        this.$parent = this.getParent();
      };

      if (this.options.toggle) {
        this.toggle();
      };
    };

    if (!$.fn.collapse) {
      throw new Error('Menu requires Bootstrap collapse.js');
    };

    Tile.DEFAULTS = {
      keyboard: true,
      toggle: true
    };
    Tile.TRANSITION_DURATION = 150;

    Tile.prototype = $.extend({}, $.fn.collapse.Constructor.prototype);

    Tile.prototype.escape = function () {
      if (this.$element.hasClass('in') && this.options.keyboard) {
        $(document).on('keydown.dismiss.bs.tile', $.proxy(function (e) {
          e.which == 27 && this.hide();
        }, this));
      } else if (!this.$element.hasClass('in')) {
        this.$element.off('keydown.dismiss.bs.tile');
      };
    };

    Tile.prototype.hide = function () {
      if (this.transitioning || !this.$element.hasClass('in')) {
        return;
      };

      var startEvent = $.Event('hide.bs.tile');

      this.$element.trigger(startEvent);

      if (startEvent.isDefaultPrevented()) {
        return;
      };

      var dimension = this.dimension();

      this.$element[dimension](this.$element[dimension]())[0].offsetHeight;

      this.$element.addClass('collapsing').removeClass('collapse in');

      this.$element.closest('.tile-collapse').removeClass('active');

      this.transitioning = 1

      var complete = function () {
        this.transitioning = 0;
        this.$element.removeClass('collapsing').addClass('collapse').trigger('hidden.bs.tile');
        this.escape();
      };

      if (!$.support.transition) {
        return complete.call(this);
      };

      this.$element[dimension](0).one('bsTransitionEnd', $.proxy(complete, this)).emulateTransitionEnd(Tile.TRANSITION_DURATION);
    };

    Tile.prototype.show = function () {
      if (this.transitioning || this.$element.hasClass('in')) {
        return;
      };

      var actives = this.$parent && this.$parent.find('.tile-collapse').children('.in, .collapsing');
      var activesData;

      if (actives && actives.length) {
        activesData = actives.data('bs.tile');
        if (activesData && activesData.transitioning) {
          return;
        };
      };

      var startEvent = $.Event('show.bs.tile');

      this.$element.trigger(startEvent);

      if (startEvent.isDefaultPrevented()) {
        return;
      };

      if (actives && actives.length) {
        Plugin.call(actives, 'hide');
        activesData || actives.data('bs.tile', null);
      };

      var dimension = this.dimension();

      this.$element.removeClass('collapse').addClass('collapsing')[dimension](0);

      this.$element.closest('.tile-collapse').addClass('active');

      this.transitioning = 1;

      var complete = function () {
        this.$element.removeClass('collapsing').addClass('collapse in')[dimension]('');
        this.transitioning = 0;
        this.$element.trigger('shown.bs.tile');
        this.escape();
      };

      if (!$.support.transition) {
        return complete.call(this);
      };

      var scrollSize = $.camelCase(['scroll', dimension].join('-'));

      this.$element.one('bsTransitionEnd', $.proxy(complete, this)).emulateTransitionEnd(Tile.TRANSITION_DURATION)[dimension](this.$element[0][scrollSize]);
    };

    function getTargetFromTrigger($trigger) {
      var href;
      var target = $trigger.attr('data-target') || (href = $trigger.attr('href')) && href.replace(/.*(?=#[^\s]+$)/, '');

      return $(target);
    };

    function Plugin(option) {
      return this.each(function () {
        var $this   = $(this);
        var data    = $this.data('bs.tile');
        var options = $.extend({}, Tile.DEFAULTS, $this.data(), typeof option == 'object' && option);

        if (!data && options.toggle && /show|hide/.test(option)) {
          options.toggle = false;
        };

        if (!data) {
          $this.data('bs.tile', (data = new Tile(this, options)));
        };

        if (typeof option == 'string') {
          data[option]();
        };
      })
    };

    var old = $.fn.tile;

    $.fn.tile             = Plugin;
    $.fn.tile.Constructor = Tile;

    $.fn.tile.noConflict = function () {
      $.fn.tile = old;
      return this;
    };

    $(document).on('click.bs.tile.data-api', '[data-toggle="tile"]', function (e) {
      var $this = $(this);

      if (!$(e.target).is('[data-ignore="tile"], [data-ignore="tile"] *')) {
        if (!$this.attr('data-target')) {
          e.preventDefault();
        };

        var $target = getTargetFromTrigger($this);
        var data    = $target.data('bs.tile');
        var option  = data ? 'toggle' : $this.data();

        Plugin.call($target, option);
      };
    });
  }(jQuery));
</script>
