<div class="main-block">        
    <!-- Page heading two starts -->
    <div class="page-heading-two">
        <div class="clearfix"></div>
      </div>
    </div>        
    <!-- Page heading two ends -->
  
    <div class="container">
      <!-- blog two -->
      <div class="blog-two">
        <?php 
        if($this->session->userdata('search_view_type')=='plain' || $this->session->userdata('search_view_type')=='')
          require'plain_search_view.php';
        else
          require'map_search_view.php';
        ?>
      </div>    
    </div>
</div><!-- main block end -->

