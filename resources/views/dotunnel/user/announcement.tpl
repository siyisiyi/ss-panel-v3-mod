





{include file='user/main.tpl'}





                <!-- BEGIN CONTENT -->
                <div class="page-content-wrapper">
                    <!-- BEGIN CONTENT BODY -->
                    <div class="page-content">
                        <!-- BEGIN PAGE HEADER-->
                        <!-- BEGIN PAGE TITLE-->
                        <h1 class="page-title">Announcement&nbsp;|&nbsp;
                            <small>系统公告</small>
                        </h1>
                        <!-- END PAGE TITLE-->
                        <!-- END PAGE HEADER-->
                        <!-- TRAFFIC LOG -->
                        <div class="row">
                          <div class="col-md-10 col-md-offset-1">
                            <!-- ANNOUNCEMENT -->
                                <div class="">
                                {foreach $anns as $ann}
                                    <div class="portlet solid bordered">
                                        <div class="portlet-title">
                                            <div class="caption font-red-intense">
                                                <i class="icon-speech font-red-intense"></i>
                                                <span class="caption-subject bold uppercase"> 最新公告 #{$ann->id}</span>
                                                <span class="caption-helper">{$ann->date}</span>
                                            </div>
                                            <div class="tools">
                                                <a href="" class="collapse" data-original-title="" title=""> </a>
                                                <a href="" class="fullscreen" data-original-title="" title=""> </a>
                                                <a href="" class="remove" data-original-title="" title=""> </a>
                                            </div>
                                        </div>
                                        <div class="portlet-body">
                                            <div id="context" data-toggle="context" data-target="#context-menu">
                                                <div>{$ann->content}</div>
                                            </div>
                                        </div>
                                    </div>
                                {/foreach}
                                </div>
                                <!-- END ANNOUNCEMENT -->
                          </div>
                        </div>
                        <!-- END TRAFFIC LOG -->
                        {include file='dialog.tpl'}
                    </div>
                    <!-- END CONTENT BODY -->
                </div>
                <!-- END CONTENT -->






{include file='user/footer.tpl'}