<link href="<?php echo theme_url();?>/assets/jquery-ui/jquery-ui.css" rel="stylesheet">
<style>
    #form-map{
        background-color: #e5e3df;
        height: 300px;
        width: 100%;
    }
    #form-map img { max-width: none; }
</style>

<br>
<div class="container">

        <form action="<?php echo site_url('create-ad');?>" method="post" role="form" class="form-horizontal">
        <div class="row">
            <?php echo $this->session->flashdata('msg');?>
            <?php if(isset($msg) && $msg!='') echo $msg;?>
            <div class="col-md-6 col-sm-6">
                <!-- Shopping items content -->
                <div class="shopping-content">
                    <div class="shopping-checkout">
                        <!-- Heading -->
                            <h4><?php echo lang_key('basic_info');?></h4>
                            <hr/>

                            <div class="form-group">
                                <label class="col-md-3 control-label" for="inputEmail1"><?php echo lang_key('category');?></label>
                                <div class="col-md-8">
                                    <select name="category" class="form-control">
                                        <option value=""><?php echo lang_key('select_category');?></option>
                                        <?php foreach ($categories as $row) {
                                            $sub = ($row->parent!=0)?'--':'';
                                            $sel = (set_value('category')==$row->id)?'selected="selected"':'';
                                        ?>
                                            <option value="<?php echo $row->id;?>" <?php echo $sel;?>><?php echo $sub.lang_key($row->title);?></option>
                                        <?php
                                        }?>
                                    </select>
                                    <?php echo form_error('category');?>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">&nbsp;</label>
                                <div class="col-md-8">
                                    <?php $chk = (isset($_POST['contact_for_price']))?'checked="checked"':'';?>
                                    <input type="checkbox" name="contact_for_price" id="contact_for_price" value="1" <?php echo $chk;?> class="form-control"> 
                                    <label for="contact_for_price" class="contact_for_price_label"><?php echo lang_key('contact_for_price');?></label>
                                    <?php echo form_error('contact_for_price');?>
                                </div>
                            </div>

                            <div class="form-group price-input-holder">
                                <label class="col-md-3 control-label"><?php echo lang_key('price');?></label>
                                <div class="col-md-8">
                                    <?php $v = (set_value('price')!='')?set_value('price'):'';?>
                                    <input type="text" name="price" placeholder="<?php echo lang_key('price');?>" value="<?php echo $v;?>" class="form-control">
                                    <?php echo form_error('price');?>
                                </div>
                            </div>

                            
                            <h4><?php echo lang_key('address_info');?></h4>
                            <hr/>

                            <div class="form-group">
                                <label class="col-md-3 control-label"><?php echo lang_key('phone');?></label>
                                <div class="col-md-8">
                                    <?php $v = (set_value('phone_no')!='')?set_value('phone_no'):'';?>
                                    <input id="phone_no" type="text" name="phone_no" placeholder="<?php echo lang_key('phone');?>" value="<?php echo $v;?>" class="form-control">
                                    <?php echo form_error('phone_no');?>
                                </div>
                            </div> 

                            <div class="form-group">
                                <label class="col-md-3 control-label"><?php echo lang_key('country');?></label>
                                <div class="col-md-8">
                                    <select name="country" id="country" class="form-control">
                                        <option data-name="" value=""><?php echo lang_key('select_country');?></option>
                                        <?php foreach (get_all_locations_by_type('country')->result() as $row) {
                                            $sel = ($row->id==set_value('country'))?'selected="selected"':'';
                                            ?>
                                            <option data-name="<?php echo $row->name;?>" value="<?php echo $row->id;?>" <?php echo $sel;?>><?php echo $row->name;?></option>
                                        <?php }?>
                                    </select>
                                    <?php echo form_error('country');?>
                                </div>
                            </div>
                        <?php $state_active = get_settings('classified_settings', 'show_state_province', 'yes'); ?>
                        <?php if($state_active == 'yes'){ ?>
                            <div class="form-group">
                                <label class="col-md-3 control-label"><?php echo lang_key('state');?></label>
                                <div class="col-md-8">
                                    <select name="state" id="state" class="form-control">
                                        
                                    </select>
                                    <?php echo form_error('state');?>
                                </div>
                            </div>
                        <?php } ?>
                            <div class="form-group">
                                <label class="col-md-3 control-label"><?php echo lang_key('city');?></label>
                                <div class="col-md-8">
                                    <input type="hidden" name="selected_city" id="selected_city" value="<?php echo(set_value('selected_city')!='')?set_value('selected_city'):'';?>">
                                    <input type="text" id="city" name="city" value="<?php echo(set_value('city')!='')?set_value('city'):'';?>" placeholder="<?php echo lang_key('city');?>" class="form-control" >
                                    <span class="help-inline city-loading">&nbsp;</span>
                                    <?php echo form_error('city'); ?>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label"><?php echo lang_key('zip_code');?></label>
                                <div class="col-md-8">
                                    <?php $v = (set_value('zip_code')!='')?set_value('zip_code'):'';?>
                                    <input type="text" name="zip_code" placeholder="<?php echo lang_key('zip_code');?>" value="<?php echo $v;?>" class="form-control">
                                    <?php echo form_error('zip_code');?>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-3 control-label"><?php echo lang_key('address');?></label>
                                <div class="col-md-8">
                                <?php $v = (set_value('address')!='')?set_value('address'):'';?>
                                    <input id="address" type="text" name="address" placeholder="<?php echo lang_key('address');?>" value="<?php echo $v;?>" class="form-control">
                                    <?php echo form_error('address');?>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label"></label>
                                <div class="col-md-8">
                                    <a href="javascript:void(0)" class="btn btn-danger" onclick="codeAddress()"><i class="fa fa-map-marker"></i> <?php echo lang_key('view_on_map');?></a>

                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-3 control-label">&nbsp;</label>
                                <div class="col-md-8">
                                    <div id="form-map"></div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-3 control-label"><?php echo lang_key('latitude');?></label>
                                <div class="col-md-8">
                                    <?php $v = (set_value('latitude')!='')?set_value('latitude'):'';?>
                                    <input id="latitude" type="text" name="latitude" placeholder="<?php echo lang_key('latitude');?>" value="<?php echo $v;?>" class="form-control">
                                    <?php echo form_error('latitude');?>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-3 control-label"><?php echo lang_key('longitude');?></label>
                                <div class="col-md-8">
                                    <?php $v = (set_value('longitude')!='')?set_value('longitude'):'';?>
                                    <input id="longitude" type="text" name="longitude" placeholder="<?php echo lang_key('longitude');?>" value="<?php echo $v;?>" class="form-control">
                                    <?php echo form_error('longitude');?>
                                </div>
                            </div>                            
                        
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-sm-6">

                <h4><?php echo lang_key('general_info');?></h4>
                <hr/>

            <?php 
            $CI = get_instance();
            $CI->load->model('admin/system_model');
            $langs = $CI->system_model->get_all_langs();
            ?>
                
            <div class="tabbable">
                <ul class="nav nav-tabs" id="myTab1">
                    <?php $flag=1; foreach ($langs as $lang=>$long_name){ 
                        ?>
                    <li class="<?php echo (default_lang()==$lang)?'active':'';?>"><a data-toggle="tab" href="#<?php echo $lang;?>"><i class="fa fa-home"></i> <?php echo $lang;?></a></li>
                    <?php $flag++; }?>
                </ul>
                <div class="tab-content" id="myTabContent1">
                     <?php $flag=1; foreach ($langs as $lang=>$long_name){ 
                     ?>
                     <div id="<?php echo $lang;?>" class="tab-pane fade in <?php echo (default_lang()==$lang)?'active':'';?>">
                    
                        <div class="form-group">
                            <label class="col-md-3 control-label"><?php echo lang_key('title');?></label>
                            <div class="col-md-8">
                                <?php $v = (set_value('title_'.$lang)!='')?set_value('title_'.$lang):'';?>
                                <input type="text" name="title_<?php echo $lang;?>" placeholder="<?php echo lang_key('title');?>" value="<?php echo $v;?>" class="form-control">
                                <?php echo form_error('title_'.$lang);?>
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-md-3 control-label"><?php echo lang_key('description');?></label>
                            <div class="col-md-8">
                                <?php $v = (set_value('description_'.$lang)!='')?set_value('description_'.$lang):'';?>
                                <textarea rows="15" name="description_<?php echo $lang;?>" class="form-control rich"><?php echo $v;?></textarea>
                                <?php echo form_error('description_'.$lang);?>
                            </div>
                        </div>

                    
                    </div>
                    <?php $flag++; }?>
                </div>
            </div>



                <div class="form-group">
                    <label class="col-md-3 control-label"><?php echo lang_key('tags');?></label>
                    <div class="col-md-8">
                        <?php $v = (set_value('tags')!='')?set_value('tags'):'';?>
                        <textarea rows="15" name="tags" class="form-control tag-input"><?php echo $v;?></textarea>
                        <span><?php echo lang_key('put_as_comma_seperated')?></span>
                        <?php echo form_error('tags');?>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-3 control-label"><?php echo lang_key('featured_image');?></label>
                    <div class="col-md-8">
                        <div class="featured-img">
                            <?php $v = (set_value('featured_img')!='')?set_value('featured_img'):'';?>
                            <input type="hidden" name="featured_img" id="featured-img-input" value="<?php echo $v;?>">
                            <img id="featured-img" src="<?php echo base_url('uploads/images/no-image.png');?>">
                            <div class="upload-button"><?php echo lang_key('upload');?></div>
                            <?php echo form_error('featured_img');?>
                        </div>
                    </div>
                </div>

                <?php if(get_settings('package_settings','enable_pricing','No')=='Yes'){?>
                <div class="form-group">
                    <label class="col-md-3 control-label" style="padding:10px 0;"><?php echo lang_key('selected_package');?></label>
                    <div class="col-md-8">
                        <?php 
                        $CI = get_instance();
                        $CI->load->model('admin/package_model');
                        $package  = $CI->package_model->get_package_by_id($this->session->userdata('selected_package'));
                        ?>
                        <div class="clearfix" style="margin-top:5px;"></div>
                    
                        <div class="" style="padding:10px 0;font-weight:bold">
                            <?php echo $package->title;?><br/>
                            <?php echo lang_key('price');?> : <?php echo show_package_price($package->price);?><br/>
                            <?php echo lang_key('expirtion_time');?> : <?php echo $package->expiration_time;?> <?php echo lang_key('days'); ?> 
                        </div>
                        <div class="clearfix" style="margin-top:5px;"></div>
                        <a href="<?php echo site_url('choose-package');?>" class=""><?php echo lang_key('change_package');?></a>
                    </div>
                </div>
                <?php }?>



                 <div class="form-group">
                    <label class="col-md-3 control-label">&nbsp;</label>
                    <div class="col-md-8">
                        <div class="alert alert-info"><?php echo lang_key('upload_later_msg');?></div>
                    </div>
                </div>

                
            </div>

        </div>

        <div class="row">
            <div class="col-md-12">
                <hr>
                <div class="form-group" style="text-align:center">
                    <button class="btn btn-color" type="submit"><?php echo lang_key('save');?></button>
                    <button class="btn btn-default" type="reset"><?php echo lang_key('reset');?></button>
                </div>
            </div>
        </div>
    </form>
</div>

<script src="//maps.googleapis.com/maps/api/js?v=3.exp&libraries=places"></script>
<script src="<?php echo theme_url();?>/assets/js/markercluster.min.js"></script>
<script src="<?php echo theme_url();?>/assets/js/map-icons.min.js"></script>
<script src="<?php echo theme_url();?>/assets/js/map_config.js"></script>

<script src="<?php echo theme_url();?>/assets/jquery-ui/jquery-ui.js"></script>
<?php require'multiple-uploader.php';?>

<script type="text/javascript">
jQuery(document).ready(function(){
    jQuery('#contact_for_price').click(function(){
        show_hide_price();
    });
    show_hide_price();

    jQuery('.upload-button').click(function(){
        jQuery('#photoimg_featured').click();
    });

    jQuery('#featured-img-input').change(function(){
        var val = jQuery(this).val();
        if(val=='')
        {
            val = 'no-image.png';
        }

        var base_url  = '<?php echo base_url();?>';
        var image_url = base_url+'uploads/thumbs/'+val;
        jQuery( '#featured-img' ).attr('src',image_url);

    }).change();

    var site_url = '<?php echo site_url();?>';
    jQuery('#country').change(function(){
        // jQuery('#city').val('');
        // jQuery('#selected_city').val('');
        var val = jQuery(this).val();
        var loadUrl = site_url+'/show/get_locations_by_parent_ajax/'+val;
        jQuery.post(
            loadUrl,
            {},
            function(responseText){
                <?php if($state_active=='yes'){?>
                jQuery('#state').html(responseText);
                var sel_country = '<?php echo (set_value("country")!='')?set_value("country"):'';?>';
                var sel_state   = '<?php echo (set_value("state")!='')?set_value("state"):'';?>';
                if(val==sel_country)
                jQuery('#state').val(sel_state);
                else
                jQuery('#state').val('');
                jQuery('#state').focus();
                jQuery('#state').trigger('change');
                <?php }else{?>
                var sel_country = '<?php echo (set_value("country")!='')?set_value("country"):'';?>';
                var sel_city   = '<?php echo (set_value("selected_city")!='')?set_value("selected_city"):'';?>';
                var city   = '<?php echo (set_value("city")!='')?set_value("city"):'';?>';
                if(val==sel_country)
                {
                    jQuery('#selected_city').val(sel_city);
                    jQuery('#city').val(city);
                }
                else
                {
                    jQuery('#selected_city').val('');
                    jQuery('#city').val('');            
                }
                <?php }?>

            }
        );
     }).change();

    jQuery('#state').change(function(){
        <?php if($state_active=='yes'){?>
        var val = jQuery(this).val();
        var sel_state   = '<?php echo (set_value("state")!='')?set_value("state"):'';?>';
        var sel_city   = '<?php echo (set_value("selected_city")!='')?set_value("selected_city"):'';?>';
        var city   = '<?php echo (set_value("city")!='')?set_value("city"):'';?>';

        if(val==sel_state)
        {
            jQuery('#selected_city').val(sel_city);
            jQuery('#city').val(city);
        }
        else
        {
            jQuery('#selected_city').val('');
            jQuery('#city').val('');            
        }
        <?php }?>

    });

    <?php if($state_active == 'yes'){ ?>

        var parent = '#state';
    <?php } else { ?>

        var parent = '#country';
    <?php } ?>

    jQuery( "#city" ).bind( "keydown", function( event ) {
        if ( event.keyCode === jQuery.ui.keyCode.TAB &&
            jQuery( this ).data( "ui-autocomplete" ).menu.active ) {
            event.preventDefault();
        }
    })
        .autocomplete({
            source: function( request, response ) {

                jQuery.post(
                    "<?php echo site_url('show/get_cities_ajax');?>/",
                    {term: request.term,parent: jQuery(parent).val()},
                    function(responseText){
                        response(responseText);
                        jQuery('#selected_city').val('');
                        jQuery('.city-loading').html('');
                    },
                    "json"
                );
            },
            search: function() {
                // custom minLength
                var term = this.value ;
                if ( term.length < 2 || jQuery(parent).val()=='') {
                    return false;
                }
                else
                {
                    jQuery('.city-loading').html('Loading...');
                }
            },
            focus: function() {
                // prevent value inserted on focus
                return false;
            },
            select: function( event, ui ) {
                this.value = ui.item.value;
                jQuery('#selected_city').val(ui.item.id);
                jQuery('.city-loading').html('');
                return false;
            }
        });

});
function show_hide_price()
{
    var val = jQuery('#contact_for_price').attr('checked');
    if(val=='checked')
    {
        jQuery('.price-input-holder').hide();
    }
    else
    {
        jQuery('.price-input-holder').show();        
    }
}
</script>

<script type="text/javascript" src="<?php echo base_url('assets/tinymce/tinymce.min.js');?>"></script>

<script type="text/javascript">

tinymce.init({
    convert_urls : 0,
    selector: ".rich",
    menubar: false,
    toolbar: "styleselect | bold | link | bullist | numlist | code",
    plugins: [

         "advlist autolink link image lists charmap print preview hr anchor pagebreak spellchecker",

         "searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking",

         "save code table contextmenu directionality emoticons template paste textcolor"

   ]

 });
</script>
<script type="text/javascript">
    var markers = [];
    //    var map;
    var Ireland = "Dhaka, Bangladesh";
    function initialize() {
        
        var myLatitude = parseFloat('<?php echo get_settings("banner_settings","map_latitude", 37.2718745); ?>');
        var myLongitude = parseFloat('<?php echo get_settings("banner_settings","map_longitude", -119.2704153); ?>');
        var myLatlng = new google.maps.LatLng(myLatitude,myLongitude);
        
        geocoder = new google.maps.Geocoder();
        var mapOptions = {
            center: myLatlng,
            zoom: 13,
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            styles: MAP_STYLE
        };
        map = new google.maps.Map(document.getElementById("form-map"),
            mapOptions);

        var ex_latitude = $('#latitude').val();
        var ex_longitude = $('#longitude').val();

        if (ex_latitude != '' && ex_longitude != ''){
            map.setCenter(new google.maps.LatLng(ex_latitude, ex_longitude));//center the map over the result
            var marker = new google.maps.Marker(
                {
                    map: map,
                    draggable:true,
                    animation: google.maps.Animation.DROP,
                    position: new google.maps.LatLng(ex_latitude, ex_longitude)
                });

            markers.push(marker);
            google.maps.event.addListener(marker, 'dragend', function()
            {
                var marker_positions = marker.getPosition();
                $('#latitude').val(marker_positions.lat());
                $('#longitude').val(marker_positions.lng());
//                        console.log(marker.getPosition());
            });

        }

    }

    function codeAddress()
    {
        var main_address = $('#address').val();
        var country = $('#country').find(':selected').data('name');
        var state = $('#state').find(':selected').data('name');
        var city = $('#city').val();
        <?php if($state_active == 'yes'){ ?>

        var address = [main_address, city, state, country].join();
        <?php } else { ?>

        var address = [main_address, city, country].join();
        <?php } ?>


        if(country != '' && city != '')
        {


            setAllMap(null); //Clears the existing marker

            geocoder.geocode( {address:address}, function(results, status)
            {
                if (status == google.maps.GeocoderStatus.OK)
                {
//                    console.log(results[0].geometry.location.lat());
                    $('#latitude').val(results[0].geometry.location.lat());
                    $('#longitude').val(results[0].geometry.location.lng());
                    map.setCenter(results[0].geometry.location);//center the map over the result


                    //place a marker at the location
                    var marker = new google.maps.Marker(
                        {
                            map: map,
                            draggable:true,
                            animation: google.maps.Animation.DROP,
                            position: results[0].geometry.location
                        });

                    markers.push(marker);


                    google.maps.event.addListener(marker, 'dragend', function()
                    {
                        var marker_positions = marker.getPosition();
                        $('#latitude').val(marker_positions.lat());
                        $('#longitude').val(marker_positions.lng());
//                        console.log(marker.getPosition());
                    });
                } else {
                    alert('Geocode was not successful for the following reason: ' + status);
                }
            });

        }
        else{
            alert('You must enter at least country and city');
        }

    }

    function setAllMap(map) {
        for (var i = 0; i < markers.length; i++) {
            markers[i].setMap(map);
        }
    }

    google.maps.event.addDomListener(window, 'load', initialize);
</script>

<script type="text/javascript">
var p = {
  
  c: function() {
        $("[name='purpose']").prop("checked", false).eq(this._rand(0, 1)).prop("checked", true);    //radio button
        $("[name='category']").find("option") .prop("selected", false) .eq(this._rand(0, 5)) .prop("selected", true); //select input
        $("[name='price']").val(this._rand(5000, 10000)); 
        $("[name='phone_no']").val(this._rand(5000, 10000));
        $("[name='country']").find("option") .prop("selected", false) .eq(this._rand(0, 5)) .prop("selected", true);
        $("[name='city']").val(this._makeId());
        $("[name='zip_code']").val(this._rand(5000, 10000));
        $("[name='address']").val(this._makeId());
        $("[name='latitude']").val(this._rand(5000, 10000));
        $("[name='longitude']").val(this._rand(5000, 10000));
        $("[name='title_en']").val(this._makeId());
        $("[name='description_en']").val(this._makeId());
        $("[name='featured_img']").val('Penguins3.jpg');

    },

  _rand: function(min, max) {
        return Math.floor(Math.random() * (max - min + 1)) + min;
    },

  _makeId: function()  {
    var text = "";
    var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

    for (var i=0; i < 5; i++) {
      text += possible.charAt(Math.floor(Math.random() * possible.length));
    }

    return text;
  }  

}
</script>