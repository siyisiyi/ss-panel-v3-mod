


{include file='user/main.tpl'}


      <!--main content start-->
      <section id="main-content">
          <section class="wrapper site-min-height">
            <!-- page start-->
            <h2 class="page-title"><i class="icon-remove"></i>&nbsp;工单详情 | <small>Ticket Details</small></h2>

            <div class="col-md-10 col-md-offset-1">
            	<section class="panel">
                          <header class="panel-heading">
                            <span class="tools pull-right">
                                <a class="fa fa-chevron-down" href="javascript:;"></a>
                            </span>
                          <h3>工单 #{$ticketset->last()->id}</h3>
                          <h4 style="color:#39b5aa;">{$ticketset->last()->title}</h4>
                          <div class="row">
							<div class="col-md-8">
							客户: {$ticketset->last()->User()->user_name}
							(<a href="mailto:{$ticketset->last()->User()->email}">{$ticketset->last()->User()->email}</a>)
							</div>
							<div class="col-md-4">
							创建时间: {$ticketset->last()->datetime()}
							</div>
                          </div>
                              
                          </header>
                          <div class="panel-body">
                              <div class="timeline-messages">
                            	{foreach $ticketset as $ticket}
                                  <!-- Comment -->
                                  <div class="msg-time-chat">
                                      <a href="#" class="message-img"><img class="avatar" src="{$ticket->User()->gravatar}" alt=""></a>
                                      <div class="message-body msg-in">
                                          <span class="arrow"></span>
                                          <div class="text">
                                              <p class="attribution"><span style="color:
                                              {if $ticket->User()->id == $ticketset->last()->User()->id }
                                              #288f98
                                              {else}#b64c4c{/if}
                                              ;">{$ticket->User()->user_name}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;at {$ticket->datetime()}</p>
                                              <p>{$ticket->content}</p>
                                          </div>
                                      </div>
                                  </div>
                                  <!-- /comment -->
                            	{/foreach}
                                  
                              </div>
                              <div class="text-center"> 
                              {$ticketset->render()}
                              </div>
                              <div class="chat-form">
                                 <div class="form-group">
                                                        <div class="row">
                                                            <div class="col-md-12">
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
														<div class="col-md-6 col-md-offset-3">
															<div class="col-md-6">
																<button id="submit" type="submit" class="btn btn-block btn-info">添加</button>
															</div>
															<div class="col-md-6">
																<button id="close" type="submit" class="btn btn-block btn-danger">添加并关闭</button>
															</div>
														</div>
													</div>

                              </div>
                          </div>
                      </section>
            </div>

            {include file='user/dialog.tpl'}

              <!-- page end-->
          </section>
      </section>
      <!--main content end-->





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







