<link href="<?php echo base_url();?>assets/datatable/dataTables.bootstrap.css" rel="stylesheet">
<?php 
$curr_page = $this->uri->segment(5);
if($curr_page=='')
  $curr_page = 0;
$dl = default_lang();
?>
<div class="row">
  

  <div class="col-md-12">

    <div class="box">

      <div class="box-title">

        <h3><i class="fa fa-bars"></i> <?php echo lang_key('all_posts');?></h3>

        <div class="box-tool">

          <a href="#" data-action="collapse"><i class="fa fa-chevron-up"></i></a>


        </div>

      </div>

      <div class="box-content">

        <?php echo $this->session->flashdata('msg');?>

        <?php if($posts->num_rows()<=0){?>

        <div class="alert alert-info"><?php echo lang_key('no_posts_found');?></div>

        <?php }else{?>
        
        <div id="no-more-tables" class="table-responsive" style="border:0">

        <table id="all-posts" class="table table-hover table-advance">

           <thead>

               <tr>

                  <th class="numeric">#</th>

                  <th class="numeric"><?php echo lang_key('image');?></th>

                  <th class="numeric"><?php echo lang_key('title');?></th>

                  <th class="numeric"><?php echo lang_key('category');?></th>

                  <th class="numeric"><?php echo lang_key('price');?></th>
                  
                  <th class="numeric"><?php echo lang_key('city');?></th>

                  <th class="numeric"><?php echo lang_key('status');?></th>

                  <th class="numeric"><?php echo lang_key('featured');?></th>

                  <th class="numeric"><?php echo lang_key('actions');?></th>

               </tr>

           </thead>

           <tbody>

        	<?php $i=1;foreach($posts->result() as $row):  ?>

               <tr>

                  <td data-title="#" class="numeric"><?php echo $i;?></td>

                  <td data-title="<?php echo lang_key('image');?>" class="numeric"><img class="thumbnail" style="width:50px;margin-bottom:0px;" src="<?php echo get_featured_photo_by_id($row->featured_img);?>" /></td>

                  <td data-title="<?php echo lang_key('title');?>" class="numeric"><?php echo get_post_data_by_lang($row,'title');?></td>

                  <td data-title="<?php echo lang_key('category');?>" class="numeric"><?php echo get_category_title_by_id($row->category);?></td>

                  <td data-title="<?php echo lang_key('price');?>" class="numeric"><?php echo show_price($row->price,$row->contact_for_price)?></td>
                  
                  <td data-title="<?php echo lang_key('city');?>" class="numeric"><?php echo get_location_name_by_id($row->city);?></td>
                  
                  <td data-title="<?php echo lang_key('status');?>" class="numeric"><?php echo get_status_title_by_value($row->status);?></td>
                  
                  <td data-title="<?php echo lang_key('featured');?>" class="numeric"><?php echo ($row->featured==1)?'<span class="label label-success">Yes</span>':'<span class="label label-info">No</span>';?></td>

                  <td data-title="<?php echo lang_key('actions');?>" class="numeric">

                    <div class="btn-group">

                      <a class="btn btn-info dropdown-toggle" data-toggle="dropdown" href="#"><i class="fa fa-cog"></i> <?php echo lang_key('action');?> <span class="caret"></span></a>

                      <ul class="dropdown-menu dropdown-info">

                          <li><a href="<?php echo site_url('edit-ad/'.$curr_page.'/'.$row->id);?>"><?php echo lang_key('edit');?></a></li>
                          <li><a href="<?php echo site_url('admin/classified/deletepost/'.$curr_page.'/'.$row->id);?>"><?php echo lang_key('delete');?></a></li>
                          <?php if(is_admin()){?>
                            <?php if($row->status==2){?>
                            <li><a href="<?php echo site_url('admin/classified/approvepost/'.$curr_page.'/'.$row->id);?>"><?php echo lang_key('approve');?></a></li>
                            <?php }?>
                            <?php if($row->featured==0){?>
                            <li><a class="make-featured" data-postid="<?php echo $row->id;?>" href="javascript:void(0)"><?php echo lang_key('make_featured');?></a></li>
                            <?php }else{?>
                            <li><a href="<?php echo site_url('admin/classified/removefeaturepost/'.$curr_page.'/'.$row->id);?>"><?php echo lang_key('remove_featured');?></a></li>
                            <li><a class = "renew-featured" data-postid="<?php echo $row->id;?>" href="javascript:void(0)"><?php echo lang_key('renew_featured');?></a></li>
                            <?php }?>
                          <?php }else{?>
                            <?php if($row->status==4){ // if post is expired give an option to renew?>
                              <li><a href="<?php echo site_url('user/payment/chooserenewpackage/'.$row->id);?>"><?php echo lang_key('renew_package');?></a></li>
                            <?php }?> 
                            <?php if(get_settings('package_settings','enable_featured_pricing','No')=='Yes' && $row->featured==0){?>
                            <li><a href="<?php echo site_url('admin/classified/choosefeaturepackage/'.$row->id);?>"><?php echo lang_key('make_featured');?></a></li>
                            <?php }else{?>
                            <li><a href="<?php echo site_url('admin/classified/choosefeaturepackagerenew/'.$row->id);?>"><?php echo lang_key('renew_featured');?></a></li>
                            <?php }?>
                          <?php }?>
                      </ul>

                    </div>

                  </td>

               </tr>

            <?php $i++;endforeach;?>   

           </tbody>

        </table>

        </div>


        <?php }?>

        </div>

    </div>

  </div>

</div>



<script src="<?php echo base_url();?>assets/datatable/jquery.dataTables.min.js"></script>
<script src="<?php echo base_url();?>assets/datatable/dataTables.bootstrap.js"></script>
<script type="text/javascript">
jQuery(document).ready(function(){
    jQuery('#all-posts').dataTable();
    var page_num = "<?php echo $curr_page?>";
    $("#all-posts").on('click','.renew-featured',function(){
      var post_id = jQuery(this).data("postid");
      var action = "<?php echo site_url('admin/classified/renewfeatured');?>"+'/'+page_num+'/'+post_id+'/';

      jQuery('#modal_form').attr("action",action);
      jQuery('#modal_post_id').attr("value",post_id);
      jQuery('#featuredModal').modal('show');
    });

    $("#all-posts").on('click','.make-featured',function(){
      //alert('clicked');
      var post_id = jQuery(this).data("postid");
      var action = "<?php echo site_url('admin/classified/featurepost');?>"+'/'+page_num+'/'+post_id+'/';

      jQuery('#modal_form').attr("action",action);
      jQuery('#modal_post_id').attr("value",post_id);
      jQuery('#featuredModal').modal('show');
    });
});
</script>

<div id="featuredModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">

    <div class="modal-dialog">

        <div class="modal-content">

            <div class="modal-header">

                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>

                <h4 class="modal-title" id="myModalLabel"><?php echo lang_key('number_of_featured_days'); ?></h4>

            </div>

            <div class="modal-body">

                <form id="modal_form" action="" method="post">

                    <input type="hidden" name="post_id" id="modal_post_id" value="">

                    <div class="row">

                        <div class="col-sm-3" style="padding-top:7px; font-weight:bold;">

                            <?php echo lang_key('no_of_days'); ?>:

                        </div>

                        <div class="col-sm-9">

                            <input type="text" class="form-control" name="no_of_days" placeholder="" autofocus>

                        </div>

                    </div>

                    <br>

                    <div class="row">

                        <div class="col-sm-12">

                            <button type="submit" class="btn btn-primary pull-left"> Submit</button>

                        </div>

                    </div>

                </form>

            </div>

            <div class="modal-footer">

            </div>

        </div>

        <!-- /.modal-content -->

    </div>

    <!-- /.modal-dialog -->

</div>