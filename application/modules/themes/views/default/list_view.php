<?php $CI = get_instance();?>
<div class="blog-one">
	<?php
	if($posts->num_rows()<=0)
	{
		echo '<div class="alert alert-info">'.lang_key('no_posts').'</div>';
	}
	else
	{
    $i = 0;
    foreach($posts->result() as $post){
        $i++;
        $detail_link = post_detail_url($post);
    ?>

    <div class="blog-one-item row">
		<!-- blog One Img -->
		<div class="blog-one-img col-md-3 col-sm-3 col-xs-12">
			<!-- Image -->
			<a href="<?php echo $detail_link;?>">
				<div class="image-style-one">
				<?php if($post->featured == 1){ ?>
                    <span class="hot-tag-list" data-toggle="tooltip" data-placement="left" data-original-title="<?php echo lang_key('featured');?>"><i class="fa fa-bookmark"></i></span>
                <?php } ?>
				<img class="img-responsive img-thumbnail" alt="<?php echo get_post_data_by_lang($post,'title');?>" src="<?php echo get_featured_photo_by_id($post->featured_img);?>">
                </div>
			</a>
		</div>
		<!-- blog One Content -->
		<div class="blog-one-content col-md-9 col-sm-9 col-xs-12">
			<!-- Heading -->
			<h3><a href="<?php echo $detail_link;?>"><?php echo get_post_data_by_lang($post,'title');?></a></h3>
			<?php
			if($post->contact_for_price==1)
				$price = lang_key('contact_for_price');
			else
				$price = show_price($post->price);
			?>
			<!-- Blog meta -->
			<div class="blog-meta">
				<!-- Date -->
				<i class="fa fa-money"></i> &nbsp; <?php echo $price ?> &nbsp;
				<!-- Author -->
				<a href="<?php echo site_url('show/categoryposts/'.$post->parent_category.'/'.dbc_url_title(lang_key(get_category_title_by_id($post->parent_category))));?>"><i class="fa <?php echo get_category_fa_icon($post->parent_category); ?>"></i> &nbsp; <?php echo get_category_title_by_id($post->parent_category); ?></a> &nbsp;
				<!-- Comments -->
				<a href="<?php echo site_url('location-posts/'.$post->city.'/city/'.dbc_url_title(get_location_name_by_id($post->city)));?>"><i class="fa fa-map-marker"></i> &nbsp; <?php echo get_location_name_by_id($post->city);?></a> &nbsp;

				<i class="fa fa-calendar"></i> &nbsp; <?php echo date('M d, Y', $post->create_time); ?>
			</div>
			<!-- Paragraph -->
			<p><?php echo truncate(strip_tags(get_post_data_by_lang($post,'description')),200,'',false);?></p>
		</div>
		<div class="clearfix"></div>
	</div>
	<?php
		}
	}
	?>

</div>
<div class="clearfix"></div>
<?php echo (isset($pages))?'<ul class="pagination">'.$pages.'</ul>':'';?>