


{include file='user/main.tpl'}
<link href="/theme/metronic/apps/css/inbox.min.css" rel="stylesheet" type="text/css" />
<link href="/theme/metronic/apps/css/ticket.min.css" rel="stylesheet" type="text/css" />

                <!-- BEGIN CONTENT -->
                <div class="page-content-wrapper">
                    <!-- BEGIN CONTENT BODY -->
                    <div class="page-content">
                        <!-- BEGIN PAGE HEADER-->
                        <!-- BEGIN PAGE TITLE-->
                        <h1 class="page-title">Review Ticket&nbsp;|&nbsp;
                            <small>查看工单</small>
                        </h1>
                        <!-- END PAGE TITLE-->
                        <!-- END PAGE HEADER-->
                        <!-- TICKET VIEW -->
                        <div class="inbox">
                            <div class="row">
                                <div class="col-md-10 col-md-offset-1">
                                    <div class="inbox-body">
                                        <div class="inbox-header">
                                            <h1 class="pull-left">工单{$ticketset->render()}
                                                            	#{$ticketset->last()->id}
                                                            	{$ticketset->render()}</h1>
                                        </div>
                                        <div class="inbox-content">
                                        	<div class="app-ticket app-ticket-details">
                                        		<div class="portlet-body">
                                                    <div class="row">
                                                        <div class="col-xs-12">
                                                            <div class="ticket-title bold uppercase font-blue">{$ticketset->last()->title}</div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-8">
                                                            <div class="ticket-cust">
                                                                <span class="bold">客户:</span> {$ticketset->last()->User()->user_name} (
                                                                <a href="mailto:{$ticketset->first()->user()->email}">{$ticketset->last()->User()->email})</a>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="ticket-date">
                                                                <span class="bold">创建日期: </span> {$ticketset->last()->datetime()}</div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-xs-12">
                                                            <div class="ticket-msg">
                                                                <h3><i class="icon-note"></i>&nbsp;聊天记录</h3>
                                                                {$ticketset->render()}
					
																{foreach $ticketset as $ticket}
																<div class="portlet light grey-cararra">
																	<div class="portlet-title">
																		<div class="tools">
								                                            <a href="javascript:;" class="collapse"></a>
								                                        </div>
								                                        <div class="caption">
								                                            <i class="icon-speech"></i>
								                                            <span class="caption-subject bold uppercase"> {$ticket->User()->user_name}</span>
								                                            <span class="caption-helper">{$ticket->datetime()}</span>
								                                        </div>
								                                    </div>
																	<div class="portlet-body">
																		{$ticket->content}
																	</div>
																</div>
																{/foreach}
																
																{$ticketset->render()}
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="ticket-line"></div>
                                                    <div class="form-group">
                                                        <div class="row">
                                                            <div class="col-xs-12">
                                                                <h3>
                                                                    <i class="icon-action-redo"></i>回复</h3>
                                                                <div class="form-group form-group-label">
																<link rel="stylesheet" href="/theme/material/editor/css/editormd.min.css" />
																<div id="editormd">
																	<textarea style="display:none;" id="content"></textarea>
																</div>
															</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
														<div class="row">
															<div class="col-md-10 col-md-push-1">
																<button id="submit" type="submit" class="btn btn-block blue">添加</button><button id="close" type="submit" class="btn btn-block red">添加并关闭</button>
															</div>
														</div>
													</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END TICKET VIEW -->
                        {include file='dialog.tpl'}
                    </div>
                    <!-- END CONTENT BODY -->
                </div>
                <!-- END CONTENT -->







{include file='user/footer.tpl'}




<script src="/theme/material/editor/editormd.min.js"></script>
<script>
    $(document).ready(function () {
        function submit() {
			$("#result").modal();
            $("#msg").html("正在提交。");
            $.ajax({
                type: "PUT",
                url: "/user/ticket/{$id}",
                dataType: "json",
                data: {
                    content: editor.getHTML(),
					title: $("#title").val(),
					status:status
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
                        $("#msg").html(data.msg);
                        window.setTimeout("location.href='/user/ticket'", {$config['jump_delay']});
                    } else {
                        $("#result").modal();
                        $("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#msg-error").hide(10);
                    $("#msg-error").show(100);
                    $("#msg-error-p").html("发生错误：" + jqXHR.status);
                }
            });
        }
		
        $("#submit").click(function () {
			status=1;
            submit();
        });
		
		$("#close").click(function () {
			status=0;
            submit();
        });
    });
	
    $(function() {
        editor = editormd("editormd", {
            path : "/theme/material/editor/lib/", // Autoload modules mode, codemirror, marked... dependents libs path
			height: 450,
			saveHTMLToTextarea : true
        });

        /*
        // or
        var editor = editormd({
            id   : "editormd",
            path : "../lib/"
        });
        */
    });
</script>







