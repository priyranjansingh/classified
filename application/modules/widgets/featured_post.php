<?php
$CI = get_instance();
$CI->load->database();
$limit = 5;
$CI->db->order_by('id','desc');
$query = $CI->db->get_where('posts',array('status'=>1,'featured'=>1),$limit,0);
?>
<div class="s-widget">
    <!-- Heading -->
    <h5><i class="fa fa-bookmark color"></i>Sponsored Plugs</h5>
    <!-- Widgets Content -->
    <div class="widget-content hot-properties">
        <?php if($query->num_rows()<=0){?>
            <div class="alert alert-info"><?php echo lang_key('no_posts');?></div>
        <?php }else{?>
            <ul class="list-unstyled">
                <?php
                foreach ($query->result() as $post) {
                    ?>
                    <li class="col-xs-12 col-sm-6 col-md-12 col-lg-12">
                        <!-- Image -->
                        <a href="<?php echo post_detail_url($post);?>"><img class="img-responsive img-thumbnail" src="<?php echo get_featured_photo_by_id($post->featured_img);?>" alt="<?php echo get_post_data_by_lang($post,'title');?>" /></a>
                        <!-- Heading -->
                        <h4><a href="<?php echo post_detail_url($post);?>"><?php echo get_post_data_by_lang($post,'title');?></a></h4>
                        <!-- Price -->
                        <div class="price"><strong><?php echo lang_key('price');?></strong>: <?php echo show_price($post->price,$post->contact_for_price);?>, 
                            <strong><?php echo lang_key('city');?></strong>: <?php echo get_location_name_by_id($post->city);?></div>
                        <div class="clearfix"></div>
                    </li>
                <?php
                }
                ?>
            </ul>
        <?php }?>
    </div>
</div>
<div style="clear:both"></div>