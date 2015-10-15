<div class="row">	
  <div class="col-md-12">
  	<?php echo $this->session->flashdata('msg');?>
    <div class="box">
      <div class="box-title">
        <h3><i class="fa fa-bars"></i> <?php echo lang_key('edit_category');?></h3>
        <div class="box-tool">
          <a href="#" data-action="collapse"><i class="fa fa-chevron-up"></i></a>

        </div>
      </div>
      <div class="box-content">
      		
      		<form class="form-horizontal" id="addcategory" action="<?php echo site_url('admin/category/updatecategory');?>" method="post">
      			<input type="hidden" name="id" value="<?php echo $post->id;?>"/>
				<div class="form-group">
					<label class="col-sm-3 col-md-3 control-label"><?php echo lang_key('name');?>:</label>
					<div class="col-sm-4 col-md-4 controls">
						<input type="text" name="title" value="<?php echo(set_value('fa_icon')!='')?set_value('fa_icon'):$post->title;?>" placeholder="<?php echo lang_key('type_something');?>" class="form-control input-sm" >
						<?php echo form_error('title'); ?>
					</div>
				</div>			
				<div class="form-group">
					<label class="col-sm-3 col-md-3 control-label"><?php echo lang_key('parent');?>:</label>
					<div class="col-sm-4 col-md-4 controls">
						<select class="form-control input-sm" name="parent" id="parent">
							<option value="0"><?php echo lang_key('no_parent');?></option>
							<?php 
							$CI = get_instance();
							$CI->load->model('admin/category_model');
							$categories = $CI->category_model->get_all_parent_categories_by_range();
							foreach ($categories->result() as $cat) {
								$sel = ($post->parent==$cat->id)?'selected="selected"':'';
							?>
							<option value="<?php echo $cat->id;?>" <?php echo $sel;?>><?php echo $cat->title;?></option>
							<?php
							}
							?>	
						</select>
						<?php echo form_error('parent'); ?>
					</div>
				</div>

				<div class="form-group icon-class-holder">
					<label class="col-sm-3 col-md-3 control-label"><?php echo lang_key('fa_icon');?>:</label>
					<div class="col-sm-4 col-md-4 controls">
						<input type="text" name="fa_icon" value="<?php echo(set_value('fa_icon')!='')?set_value('fa_icon'):$post->fa_icon;?>" placeholder="<?php echo lang_key('fa-car');?>" class="form-control input-sm" >
						<?php echo form_error('fa_icon'); ?>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-3 col-md-3 control-label">&nbsp;</label>
					<div class="col-sm-4 col-md-4 controls">						
						<button class="btn btn-primary" type="submit"><i class="fa fa-check"></i> <?php echo lang_key('save');?></button>
					</div>
				</div>


			</form>

	  </div>
    </div>
  </div>
</div>
<script type="text/javascript">
jQuery(document).ready(function(){
	jQuery('#parent').change(function(){
		var val = jQuery(this).val();
		if(val==0)
		{
			jQuery('.icon-class-holder').show();
		}
		else
		{
			jQuery('.icon-class-holder').hide();
		}

	}).change();
});
</script>