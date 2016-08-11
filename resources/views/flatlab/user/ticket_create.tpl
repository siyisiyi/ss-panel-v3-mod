


{include file='user/main.tpl'}




      <!--main content start-->
      <section id="main-content">
          <section class="wrapper site-min-height">
            <!-- page start-->
            <h2 class="page-title"><i class="fa fa-comments-o"></i>&nbsp;新建工单 | <small>Create Ticket</small></h2>

            <div class="row">

	            <div class="col-lg-10 col-lg-offset-1">
	            	<div class="panel">
						<div class="panel-body">
							<div class="form-group">
								<input class="form-control" id="title" type="text" placeholder="标题">
							</div>
							<div class="form-group form-group-label">
											<link rel="stylesheet" href="/theme/material/editor/css/editormd.min.css" />
											<div id="editormd">
												<textarea style="display:none;" id="content" placeholder="请输入您的问题..."></textarea>
											</div>
										</div>
										<div class="form-group">
											<div class="row">
												<div class="col-md-10 col-md-push-1">
													<button id="submit" type="submit" class="btn btn-block btn-info">添加</button>
												</div>
											</div>
										</div>
						</div>
	            	</div>
	            </div>
            	
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
                type: "POST",
                url: "/user/ticket",
                dataType: "json",
                data: {
                    content: editor.getHTML(),
					title: $("#title").val()
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
            submit();
        });
    });
	
    $(function() {
        editor = editormd("editormd", {
            path : "/theme/material/editor/lib/", // Autoload modules mode, codemirror, marked... dependents libs path
			height: 720,
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







