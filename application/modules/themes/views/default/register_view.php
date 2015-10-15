<div class="page-heading-two">

    <div class="container">

        <h2><?php echo lang_key('signup');?> <span><?php echo lang_key('signup_title');?></span></h2>        

        <div class="clearfix"></div>

    </div>

</div>

<div class="container">

    <div class="row">

        <div class="col-md-5">

            <?php render_widget('register_page_description') ?>

        </div>

        <div class="col-md-7">

            <!-- Login starts -->

            <div class="well login-reg-form" >

                <!-- Heading -->

                <h4><?php echo lang_key('register_your_account'); ?></h4>

                <hr />

                <!-- Form -->

                <!-- Form Horizontal -->

                <form style="max-width: 615px" class="form-horizontal" role="form" action="<?php echo site_url('account/register/');?>" method="post" enctype="multipart/form-data">



                    <input type="hidden" name="package_id" value="<?php echo (isset($package->id))?$package->id:'';?>">
                    <input type="hidden" name="membership_type" value="<?php echo (isset($membership_type))?$membership_type:'';?>">

                    <div class="form-group">

                        <!-- Label -->

                        <label for="name" class="col-sm-3 control-label"></label>

                        <div class="col-sm-9">

                            <!-- Input -->

                            <!--<div class="radio">

                                <label>
                                
                                    <input type="radio" name="user_type" value="individual" <?php echo set_radio('user_type', 'individual', TRUE); ?>/>

                                    <?php echo lang_key('individual');?></label>

                            </div>

                            <div class="radio">

                                <label>

                                    <input type="radio" name="user_type" value="business" <?php echo set_radio('user_type', 'business'); ?>/>

                                    <?php echo lang_key('business');?></label>

                            </div>-->

                            <?php echo form_error('user_type');?>

                        </div>

                    </div>

                    <input type="hidden" value="individual" name="user_type" />

                    <!-- Form Group -->

                    <div class="form-group">

                        <!-- Label -->

                        <label for="name" class="col-sm-3 control-label"><?php echo lang_key('first_name'); ?> <span class="text-danger">*</span></label>
                        <div class="col-sm-9">

                            <!-- Input -->

                            <input type="text" name="first_name" value="<?php echo set_value('first_name');?>" placeholder="<?php echo lang_key('first_name'); ?>" class="form-control">

                            <?php echo form_error('first_name');?>

                        </div>

                    </div>



                    <div class="form-group">

                        <!-- Label -->

                        <label for="name" class="col-sm-3 control-label"><?php echo lang_key('last_name'); ?> <span class="text-danger">*</span></label>

                        <div class="col-sm-9">

                            <!-- Input -->

                            <input type="text" name="last_name" value="<?php echo set_value('last_name');?>" placeholder="<?php echo lang_key('last_name'); ?>" class="form-control">

                            <?php echo form_error('last_name');?>

                        </div>

                    </div>

                    <div class="form-group">

                        <label for="email" class="col-sm-3 control-label"><?php echo lang_key('email'); ?> <span class="text-danger">*</span></label>

                        <div class="col-sm-9">

                            <input type="text" name="useremail" value="<?php echo set_value('useremail');?>" placeholder="<?php echo lang_key('email'); ?>" class="form-control">

                            <?php echo form_error('useremail');?>

                        </div>

                    </div>



                    <div class="form-group">

                        <label for="email" class="col-sm-3 control-label"><?php echo lang_key('username'); ?> <span class="text-danger">*</span></label>

                        <div class="col-sm-9">

                            <input type="text" name="username" value="<?php echo set_value('username');?>" placeholder="<?php echo lang_key('username'); ?>" class="form-control">

                            <?php echo form_error('username');?>

                        </div>

                    </div>

                    <div class="form-group">

                        <label for="password" class="col-sm-3 control-label"><?php echo lang_key('password');?> <span class="text-danger">*</span></label>

                        <div class="col-sm-9">

                            <input type="password" name="password" placeholder="<?php echo lang_key('password'); ?>" class="form-control">

                            <?php echo form_error('password');?>

                        </div>

                    </div>



                    <div class="form-group">

                        <label for="password" class="col-sm-3 control-label"><?php echo lang_key('confirm_password');?> <span class="text-danger">*</span></label>

                        <div class="col-sm-9">

                            <input type="password" name="repassword"  placeholder="<?php echo lang_key('confirm_password'); ?>" class="form-control">

                            <?php echo form_error('repassword');?>

                        </div>

                    </div>

                    <div class="form-group">

                        <label for="your-city" class="col-sm-3 control-label"><?php echo lang_key('gender');?></label>

                        <div class="col-sm-5">

                            <?php $curr_value=(set_value('gender')!='')?set_value('gender'):$this->session->userdata('gender');?>

                            <select class="form-control" name="gender">

                                <?php $sel=($curr_value=='male')?'selected="selected"':'';?>

                                <option value="male" <?php echo $sel;?>><?php echo lang_key('male');?></option>

                                <?php $sel=($curr_value=='female')?'selected="selected"':'';?>

                                <option value="female" <?php echo $sel;?>><?php echo lang_key('female');?></option>

                            </select>

                        </div>

                    </div>



                    <!--<span class="company-holder">

                        <div class="form-group">

                            <label for="email" class="col-sm-3 control-label"><?php echo lang_key('company_name'); ?> <span class="text-danger">*</span></label>

                            <div class="col-sm-9">

                                <input type="text" name="company_name" value="<?php echo set_value('company_name');?>" placeholder="<?php echo lang_key('company_name'); ?>" class="form-control">

                                <?php echo form_error('company_name');?>

                            </div>

                        </div>

                    </span>-->
                    <span class="company-holder">

                        <div class="form-group">

                            <label for="state_id" class="col-sm-3 control-label">State ID <span class="text-danger">*</span></label>

                            <div class="col-sm-9">

                                <input type="file" name="state_id" class="form-control">

                                <?php echo form_error('state_id');?>

                            </div>

                        </div>

                    </span>
                    <span class="company-holder">

                        <div class="form-group">

                            <label for="doc_prec" class="col-sm-3 control-label">Doctor Prescription <span class="text-danger">*</span></label>

                            <div class="col-sm-9">

                                <input type="file" name="doc_prec" class="form-control">

                                <?php echo form_error('doc_prec');?>

                            </div>

                        </div>

                    </span>



                    <span class="phone-holder">

                        <div class="form-group">

                            <label for="email" class="col-sm-3 control-label"><?php echo lang_key('phone'); ?></label>

                            <div class="col-sm-9">

                                <input type="text" name="phone" value="<?php echo set_value('phone');?>" placeholder="<?php echo lang_key('phone'); ?>" class="form-control">

                                <?php echo form_error('phone');?>

                            </div>

                        </div>

                    </span>


                    <div class="form-group">

                        <div class="col-sm-offset-3 col-sm-9">

                            <input type="hidden" name="terms_conditon" id="terms_conditon" value="<?php echo (isset($_POST['terms_conditon_field']))?$_POST['terms_conditon_field']:'';?>">



                            <!-- Checkbox -->

                            <div class="checkbox">

                                <label>

                                    <input type="checkbox" name="terms_conditon_field" id="terms_conditon_field" <?php echo (isset($_POST['terms_conditon_field']))?'checked':'';?>>

                                    I've read the <a target="_blank" href="<?php echo site_url('show/terms');?>">Terms and Conditions</a>

                                </label>

                                <?php echo form_error('terms_conditon');?>

                            </div>

                        </div>

                    </div>

                    <div class="form-group">

                        <div class="col-sm-offset-3 col-sm-9">

                            <!-- Buton -->

                            <button type="submit" class="btn btn-red"><?php echo lang_key('register'); ?></button>&nbsp;

                            <button type="submit" class="btn btn-white"><?php echo lang_key('reset'); ?></button>

                        </div>

                    </div>

                </form>

                <hr>

                <?php

                $fb_enabled = get_settings('classified_settings','enable_fb_login','No');

                $gplus_enabled = get_settings('classified_settings','enable_gplus_login','No');

                if($fb_enabled=='Yes' || $gplus_enabled=='Yes'){

                    ?>

                    <!-- Social Media Login -->

                    <div class="s-media text-center">

                        <!-- Button -->

                        <?php if($gplus_enabled=='Yes'){?>

                            <a href="<?php echo site_url('account/newaccount/google_plus');?>" class="btn btn-red"><i class="fa fa-google-plus"></i> &nbsp; Register with Google</a>

                        <?php }?>

                        <?php if($fb_enabled=='Yes'){?>

                            <a href="<?php echo site_url('account/newaccount/fb');?>" class="btn btn-blue"><i class="fa fa-facebook"></i> &nbsp; Register with Facebook</a>

                        <?php }?>

                    </div>

                <?php } ?>

            </div>

            <!-- Login ends -->

        </div>

    </div>



</div>



</div>    

<script type="text/javascript">

jQuery(document).ready(function(e){

    jQuery('#terms_conditon_field').click(function(e){

        var val = jQuery(this).attr('checked');

        jQuery('#terms_conditon').val(val);



    });



    var user_type = jQuery('input[name=user_type]:checked').val();

    if(user_type=='individual')

    {



        jQuery(':radio[value=individual]').attr('checked','checked');

        jQuery('.fb-signup').attr('href',"<?php echo site_url('account/newaccount/fb/individual');?>");

        jQuery('.company-holder').hide();

    }

    else

    {

        jQuery(':radio[value=business]').attr('checked','checked');

        jQuery('.fb-signup').attr('href',"<?php echo site_url('account/newaccount/fb/business');?>");

        jQuery('.company-holder').show();

    }



    jQuery('input[name=user_type]').click(function(){

        var val = jQuery('input[name=user_type]:checked').val();

        if(val=='individual')

        {

            jQuery('.fb-signup').attr('href',"<?php echo site_url('account/newaccount/fb/individual');?>");

            jQuery('.company-holder').hide();

        }

        else

        {            

            jQuery('.fb-signup').attr('href',"<?php echo site_url('account/newaccount/fb/business');?>");

            jQuery('.company-holder').show();

        }

    });

});

</script>

