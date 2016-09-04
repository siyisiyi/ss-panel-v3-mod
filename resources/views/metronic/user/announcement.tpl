





{include file='user/main.tpl'}


                <!-- BEGIN CONTENT -->
                <div class="page-content-wrapper">
                    <!-- BEGIN CONTENT BODY -->
                    <div class="page-content">
                        <!-- BEGIN PAGE HEADER-->
                        <!-- BEGIN PAGE TITLE-->
                        <h1 class="page-title">Announcement&nbsp;|&nbsp;
                            <small>公告</small>
                        </h1>
                        <!-- END PAGE TITLE-->
                        <!-- END PAGE HEADER-->
                        <!-- ANNOUNCEMENT -->
                        <div class="row">
                        	<div class="col-md-12">
                        		{foreach $anns as $ann}
	                        	<div class="portlet box blue-hoki" id="{$ann->id}">
			                        <div class="portlet-title">
			                        	<div class="caption">公告#{$ann->id}&nbsp;&nbsp;&nbsp;
			                        		<small>{$ann->date}</small>
			                        	</div>
			                        </div>
			                        <div class="portlet-body text-center">
			                        	{$ann->content}
			                        </div>
								</div>
								{/foreach}
							</div>
                        </div>
                        <!-- END ANNOUNCEMENT -->
                    </div>
                    <!-- END CONTENT BODY -->
                </div>
                <!-- END CONTENT -->







{include file='user/footer.tpl'}