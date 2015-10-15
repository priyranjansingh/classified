<?php
$CI = get_instance();
$CI->load->model('user/post_model');
$parent_categories = $CI->post_model->get_all_parent_categories();
?>

<div class="block-heading-two">
    <h3><span><i class="fa fa-folder"></i> <?php echo lang_key('categories') ?></span></h3>
</div>

<div class="icon-box-1 text-center">
    <?php 
    $i = 0;
    foreach ($parent_categories->result() as $parent) {
        $i++;
    ?>
    <div class="col-md-4 col-sm-6 col-xs-12">
        <!-- Icon Box One Item -->
        <div class="icon-box-1-item category-item">
            <!-- Icon Box One Icon -->
            <?php
            	$class = '';
                if($i%4 == 1) 
                    $class = "red";
                else if($i%4 == 2)
                    $class = "green";
                else if($i%4 == 3)
                    $class = "orange";
                else
                    $class = "blue";
            ?>
            <a href="<?php echo site_url('show/categoryposts/'.$parent->id.'/'.dbc_url_title(lang_key($parent->title)));?>"><i class="fa <?php echo $parent->fa_icon.' '.$class;?>"></i></a>
            <div class="category-bor bg-<?php echo $class;?>"></div>
            <!-- Icon Box One Headeing -->
            <h4><a href="<?php echo site_url('show/categoryposts/'.$parent->id.'/'.dbc_url_title(lang_key($parent->title)));?>"><?php echo lang_key($parent->title);?></a></h4>
            <!-- Icon Box One Paragraph -->
            <?php
            $child_categories = $CI->post_model->get_all_child_categories($parent->id, 5);
            ?>
            <ul>

                <?php
                foreach ($child_categories->result() as $child) :
                ?>

                <li>
                    <a class="" title="View posts in <?php echo lang_key($child->title);?>" href="<?php echo site_url('show/categoryposts/'.$child->id.'/'.dbc_url_title(lang_key($child->title)));?>">
                        <?php echo lang_key($child->title);?>
                        <span dir="rtl" class="category-counter <?php echo $class;?>">(<?php echo $CI->post_model->count_post_by_category_id($child->id);?>)&nbsp;</span>
                    </a>
                </li>

                <?php
                endforeach;
                ?>
            </ul>
            <div class="clearfix"></div>
        </div>
    </div>
    <?php }?>
</div>
<div class="clearfix"></div>
<!-- category box end -->