





{include file='user/main.tpl'}





      <!--main content start-->
      <section id="main-content">
          <section class="wrapper site-min-height">
            <!-- page start-->
            <h2 class="page-title"><i class="icon-speech"></i>&nbsp;系统公告 | <small>Announcement</small></h2>

			<div class="col-lg-10 col-lg-offset-1">
				{foreach $anns as $ann}
                    <section class="panel">
                        <header class="panel-heading bold" style="color:#667fa0;">
                              <i class="fa fa-inbox"></i>&nbsp;公告&nbsp;#{$ann->id}&nbsp;
                              <span style="color:#acacac;font-size:12px;">{$ann->date}</span>
                            <span class="tools pull-right">
                                <a class="fa fa-chevron-down" href="javascript:;"></a>
                                <a class="fa fa-times" href="javascript:;"></a>
                            </span>
                        </header>
                        <div class="panel-body">
                        {$ann->content}
                        </div>
                    </section>
                    {/foreach}
			</div>

			{include file='dialog.tpl'}
              <!-- page end-->
          </section>
      </section>
      <!--main content end-->






{include file='user/footer.tpl'}