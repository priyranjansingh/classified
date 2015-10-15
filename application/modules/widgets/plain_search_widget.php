<!-- Search Widget -->
<div class="s-widget">
    <!-- Heading -->
    <h5><i class="fa fa-search color"></i>  <?php echo lang_key('search'); ?></h5>
    <!-- Widgets Content -->
    <div class="widget-content search">
        <form role="form" action="<?php echo site_url('show/advfilter')?>" method="post">
            <div class="input-group">
                <input class="form-control" type="text" placeholder="Type Something" value="<?php echo (isset($data['plainkey']))?rawurldecode($data['plainkey']):'';?>" name="plainkey">
 <span class="input-group-btn">
                    <button type="submit" class="btn btn-color"><?php echo lang_key('search');?></button>
                </span>
            </div>
        </form>
    </div>
</div>
