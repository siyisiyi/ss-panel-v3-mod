<div class="bottom-menu bottom-menu-inverse">
    <div class="container">
        <div class="row">
            <div class="col-md-2 col-sm-2">
                <a href="/" class="bottom-menu-brand">{$config["appName"]}</a>
            </div>
            <div class="col-md-10 col-sm-10">
                <ul class="bottom-menu-list pull-left">
                    <li class="active"><a href="/">首页</a></li>
                    <li><a href="/tutorial">教程</a></li>
                    <li><a href="/price">价格</a></li>
                    <li><a href="/code">邀请</a></li>
                    <li><a href="/tos">协议</a></li>
                    <li><a href="http://www.miitbeian.gov.cn/" target="_blank">闽ICP备16017208号</a></li>
                </ul>
                <span class="pull-right" style="font-size: 14px;">&copy; 2016 <a href="/" style="font-weight: bold;">{$config["appName"]}</a> Powered by <a href="/staff" style="font-weight: bold;">STAFF</a>.</span>
            </div>
        </div>
    </div>
</div>
<!-- <script src="/theme/flatui/js/vendor/jquery.min.js"></script> -->
<script src="https://cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<script src="/theme/flatui/js/flat-ui.min.js"></script>
<script src="/theme/flatui/js/custom.min.js"></script>

{if $config["enable_analytics_code"] == 'true'}{include file='analytics.tpl'}{/if}

<!-- Javascript -->
<script type="text/javascript">
$(window).load(function() {
   $("#loading").fadeOut(300);
}); 
</script>

</body>
</html>
