
      <!--footer start-->
      <footer class="site-footer">
          <div class="text-center">
              &copy; {$config["appName"]} Powered by <a href="/staff">STAFF</a>
              <a href="#" class="go-top">
                  <i class="fa fa-angle-up"></i>
              </a>
          </div>
      </footer>
      <!--footer end-->
  </section>
  
    {if $config["enable_analytics_code"] == 'true'}{include file='analytics.tpl'}{/if}

    <!-- js placed at the end of the document so the pages load faster -->
    <!-- <script src="/theme/flatlab/js/jquery.js"></script> -->
    <script src="//cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
    <!-- <script src="/theme/flatlab/js/bootstrap.min.js"></script> -->
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="/theme/flatlab/js/jquery.dcjqaccordion.2.7.js"></script>
    <!-- <script src="/theme/flatlab/js/jquery.scrollTo.min.js"></script> -->
    <script src="//cdn.bootcss.com/jquery-scrollTo/1.4.6/jquery.scrollTo.min.js"></script>
    <!-- <script src="/theme/flatlab/js/slidebars.min.js"></script> -->
    <script src="//cdn.bootcss.com/slidebars/0.10/slidebars.min.js"></script>
    <!-- <script src="/theme/flatlab/js/jquery.nicescroll.js" type="text/javascript"></script> -->
    <script src="//cdn.bootcss.com/jquery.nicescroll/3.5.1/jquery.nicescroll.min.js"></script>
    <!-- <script src="/theme/flatlab/js/respond.min.js" ></script> -->
    <script src="//cdn.bootcss.com/respond.js/1.3.0/respond.min.js"></script>

    <!--common script for all pages-->
    <script src="/theme/flatlab/js/common-scripts.js"></script>
    <script src="/theme/flatlab/js/addActiveClass.js"></script>



  </body>
</html>