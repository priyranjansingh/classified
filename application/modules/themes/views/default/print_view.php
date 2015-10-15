<?php require_once'includes_top.php';?>
   <style type="text/css">
        @media print {
            a[href]:after {
                content: none !important;
            }

            .no-print{
                display: none !important;
            }
            .new-page{
                page-break-after: always;
            }
        }
    </style>


<style>

    #details-map img { max-width: none; }
    .stButton .stFb, .stButton .stTwbutton, .stButton .stMainServices{
        height: 23px;
    }
    .stButton .stButton_gradient{
        height: 23px;
    }
</style>
<?php $post = $post->row(); ?>

<!-- Page heading two ends -->
<div class="container real-estate">

    <!-- Actual content -->
    <div class="rs-property">
        <!-- Block heading two -->
        <div class="block-heading-two">
            <h3><span><?php echo get_post_data_by_lang($post,'title'); ?></span></h3>
        </div>
        <div class="row">
            <div class="col-md-12 col-sm-12">

                <!-- Nav tab style 1 starts -->
                <div class="nav-tabs-one">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs no-print">
                        <li class="active"><a href="#p-nav-1" data-toggle="tab"><?php echo lang_key('details'); ?></a></li>
                        <li><a href="#p-nav-2" data-toggle="tab"><?php echo lang_key('contact'); ?></a></li>
                    </ul>
                    <!-- Tab content -->
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="p-nav-1">

                            <!-- Real estate property item -->
                            <div class="single-property">

                                <?php $i=0; $images = ($post->gallery!='')?json_decode($post->gallery):array();?>

                                <!-- Outer layer -->
                                <div id="bs-carousel-1" class="carousel slide detail-slier" data-ride="carousel" data-interval="5000" data-pause="hover" data-wrap="true">
                                    <!-- Bootstrap indicators. If you don't need indicators, remove the below section -->
                                    <ol class="carousel-indicators">
                                        <li data-target="#bs-carousel-1" data-slide-to="0" class="active"></li>
                                        <?php foreach ($images as $img) { ?>
                                            <li data-target="#bs-carousel-1" data-slide-to="<?php echo ($i + 1); ?>"></li>
                                            <?php $i++; } ?>
                                    </ol>
                                    <!-- Slides. You can also add captions -->
                                    <div class="carousel-inner">
                                        <!-- Item, First item should have extra class "active" -->
                                        <div class="item active">
                                            <!-- Image -->
                                            <img src="<?php echo base_url('uploads/images/' . $post->featured_img); ?>">
                                        </div>
                                        <?php foreach ($images as $img) { ?>
                                            <div class="item">
                                                <img src="<?php echo base_url('uploads/gallery/' . $img); ?>" alt="">
                                            </div>
                                            <?php $i++; } ?>
                                    </div>
                                    <!-- Carousel controls (arrows). If you don't need controls, remove the below section -->
                                    <a class="left carousel-control" href="#bs-carousel-1" role="button" data-slide="prev">
                                        <span class="fa fa-chevron-left"></span>
                                    </a>
                                    <a class="right carousel-control" href="#bs-carousel-1" role="button" data-slide="next">
                                        <span class="fa fa-chevron-right"></span>
                                    </a>
                                </div>


                                <hr />
                                <div class="info-box">
                                    <?php $fa_icon = get_category_fa_icon($post->parent_category); ?>
                                    <i class="fa <?php echo $fa_icon; ?> bg-red category"></i>
                                    <div class="sub-cat">
                                        <a href="http://joinwebs.co.uk/products/classify/category/fashion/bags-beauty-products/"><?php echo get_category_title_by_id($post->category); ?></a>
                                    </div>
                                    <div class="ad-detail-info">
                                        <span class="span-left"><i class="fa fa-clock-o"></i> <?php echo lang_key('added'); ?>:</span>
                        <span class="span-right">
						    	<?php echo date('M d, Y', $post->create_time); ?>
                        </span>
                                    </div>

                                    <div class="ad-detail-info">
                                        <span class="span-left"><i class="fa fa-map-marker"></i> <?php echo lang_key('location'); ?>:</span>
                        <span class="span-right">
						    	<?php echo get_location_name_by_id($post->city); ?>
                        </span>
                                    </div>

                                    <div class="ad-detail-info">
                                        <span class="span-left"><i class="fa fa-money"></i> <?php echo lang_key('price'); ?>:</span>
                        <span class="span-right">
						    	<?php echo show_price($post->price); ?>
                        </span>
                                    </div>

                                    <div class="ad-detail-info">
                                        <span class="span-left"><i class="fa fa-eye"></i> <?php echo lang_key('views'); ?>:</span>
                        <span class="span-right">
						    	<?php echo $post->total_view; ?>
                        </span>
                                    </div>

                                    <div class="ad-detail-info">
                                        <span class="span-left"><i class="fa fa-phone"></i> <?php echo lang_key('phone'); ?>:</span>
                        <span class="span-right">
						    	<?php echo $post->phone_no; ?>
                        </span>
                                    </div>



                                </div>
                                <div class="clearfix"></div>
                                <div class="new-page"></div>



                                <!-- heading -->
                                <h4><?php echo lang_key('details') ?> <span class="color">:-</span></h4>
                                <!-- paragraph -->
                                <p><?php echo get_post_data_by_lang($post,'description'); ?></p>
                                <hr />
                                <!-- heading -->
                                <?php $full_address = get_formatted_address($post->address, $post->city, $post->state, $post->country, $post->zip_code); ?>
                                <div id="ad-address"><span><i class="fa fa-map-marker"></i><?php echo $full_address; ?></span></div>
                                <!-- heading -->
                                <h4><?php echo lang_key('property_location_on_map'); ?> <span class="color">:-</span></h4>
                                <div class="gmap" id="details-map"></div>

                                <div class="clearfix"></div>

                            </div>
                            <div class="new-page"></div>
                            <div class="single-property sp-agent">
                                <!-- agent image -->
                                <img class="img-responsive img-thumbnail" style="width:160px" src="<?php echo get_profile_photo_by_id($post->created_by); ?>" alt="" />
                                <!-- Agent Company name / heading -->
                                <h5><?php echo get_user_fullname_by_id($post->created_by); ?></h5>

                                <span><strong><?php echo lang_key('contact_mode'); ?></strong>: <?php echo lang_key('phone'); ?>, <?php echo lang_key('email'); ?></span>
                                <div class="clearfix"></div>
                                <!-- Agent details in table -->
                                <div class="table-responsive">
                                    <table class="table table-bordered" style="width:auto">
                                        <tr>
                                            <th><?php echo lang_key('address'); ?></th>
                                            <td><?php echo $full_address; ?></td>
                                        </tr>
                                        <tr>
                                            <th><?php echo lang_key('email'); ?></th>
                                            <td><?php echo get_user_email_by_id($post->created_by); ?></td>
                                        </tr>
                                        <tr>
                                            <th><?php echo lang_key('phone'); ?></th>
                                            <td><?php echo $post->phone_no; ?></td>
                                        </tr>
                                    </table>
                                </div>

                            </div>
                        </div>


                        <div class="tab-pane fade" id="p-nav-2">
                            <!-- Single property page Agent Details -->
                            <div class="single-property sp-agent">
                                <!-- agent image -->
                                <img class="img-responsive img-thumbnail" src="<?php echo get_profile_photo_by_id($post->created_by); ?>" alt="" />
                                <!-- Agent Company name / heading -->
                                <h5><?php echo get_user_fullname_by_id($post->created_by); ?></h5>

                                <span><strong><?php echo lang_key('contact_mode'); ?></strong>: <?php echo lang_key('phone'); ?>, <?php echo lang_key('email'); ?></span>
                                <div class="clearfix"></div>
                                <!-- Agent details in table -->
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <tr>
                                            <th><?php echo lang_key('address'); ?></th>
                                            <td><?php echo $full_address; ?></td>
                                        </tr>
                                        <tr>
                                            <th><?php echo lang_key('email'); ?></th>
                                            <td><?php echo get_user_email_by_id($post->created_by); ?></td>
                                        </tr>
                                        <tr>
                                            <th><?php echo lang_key('phone'); ?></th>
                                            <td><?php echo $post->phone_no; ?></td>
                                        </tr>
                                    </table>
                                </div>

                                <div class="rs-enquiry">
                                    <h3><?php echo lang_key('send_email_to_agent');?></h3>
                                    <span class="agent-email-form-holder">
                                    </span>


                                </div>
                            </div>

                        </div>

                        <!-- Gallery Widget -->
                        <div class="s-widget">
                            <!-- Heading -->
                            <h5><i class="fa fa-photo color"></i>&nbsp; <?php echo lang_key('image_gallery'); ?></h5>
                            <!-- Widgets Content -->
                            <div class="widget-content gallery">
                                <a href="<?php echo base_url('uploads/images/' . $post->featured_img); ?>" class="lightbox"><img src="<?php echo base_url('uploads/images/' . $post->featured_img); ?>" alt="" class="img-responsive img-thumbnail" /></a>
                                <?php foreach ($images as $img) { ?>
                                    <a href="<?php echo base_url('uploads/gallery/' . $img); ?>" class="lightbox"><img src="<?php echo base_url('uploads/gallery/' . $img); ?>" alt="" class="img-responsive img-thumbnail" /></a>
                                    <?php $i++; } ?>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            
        </div>

    </div>

</div>

</div>

<script src="//maps.googleapis.com/maps/api/js?v=3.exp&libraries=places"></script>
<script src="<?php echo theme_url();?>/assets/js/markercluster.min.js"></script>
<script src="<?php echo theme_url();?>/assets/js/map-icons.min.js"></script>
<script src="<?php echo theme_url();?>/assets/js/map_config.js"></script>

<script type="text/javascript">

    $(document).ready(function() {


    });

    var myLatitude = parseFloat('<?php echo $post->latitude; ?>');

    var myLongitude = parseFloat('<?php echo $post->longitude; ?>');

    function initialize() {


        var zoomLevel = parseInt('<?php echo get_settings('banner_settings','map_zoom',8); ?>');

        var myLatlng = new google.maps.LatLng(myLatitude,myLongitude);
        var map_data = jQuery.parseJSON('<?php echo get_classifieds_map_data_single($post); ?>');

        var mapOptions = {
            scrollwheel: false,
            zoom: zoomLevel,
            center: myLatlng,
            mapTypeControl: true,
            mapTypeControlOptions: {
                style: google.maps.MapTypeControlStyle.HORIZONTAL_BAR,
                position: google.maps.ControlPosition.RIGHT_BOTTOM
            },
            zoomControl: true,
            zoomControlOptions: {
                style: google.maps.ZoomControlStyle.SMALL,
                position: google.maps.ControlPosition.RIGHT_CENTER
            },
            panControl: true,
            panControlOptions: {
                position: google.maps.ControlPosition.RIGHT_TOP
            },
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            styles: MAP_STYLE
        }
        map = new google.maps.Map(document.getElementById('details-map'), mapOptions);




        var contentString = '<div class="img-box-4 text-center map-grid"><div class="img-box-4-item"><div class="image-style-one"><img class="img-responsive" alt="" src="'+ map_data.posts[0].featured_image_url + '"></div>'
            + '<div class="img-box-4-content"><h4 class="item-title"><a href="'+ map_data.posts[0].detail_link + '">'+ map_data.posts[0].post_title + '</a></h4><div class="bor bg-red"></div><div class="row"><div class="info-dta info-price">'
            + map_data.posts[0].price + '</div></div><div class="row"><div class="info-dta info-price">'+ map_data.posts[0].post_short_address + '</div></div>' + '</div></div></div>';



        var infowindow = new google.maps.InfoWindow({

            content: contentString

        });

        var marker, i;

        var markers = [];




        marker = new Marker({

            position: myLatlng,

            map: map,

            title: '<?php echo get_post_data_by_lang($post,'title'); ?>',
            zIndex: 9,
            icon: {
                path: SQUARE_PIN,
                fillColor: '#ed5441',
                fillOpacity: 1,
                strokeColor: '',
                strokeWeight: 0,
                scale: 1/3
            },
            label: '<i class="fa <?php echo $fa_icon; ?>"></i>'


        });

        google.maps.event.addListener(marker, 'click', (function(marker, i) {

            return function() {

//                    infowindow.setContent("Sample");

                infowindow.open(map, marker);

            }

        })(marker, i));

        markers.push(marker);

    }

    google.maps.event.addDomListener(window, 'load', initialize);
</script>

<!-- Main content ends -->

<script type="text/javascript">
    jQuery(document).ready(function(){
        var loadUrl = '<?php echo site_url("show/load_contact_agent_view/".$post->unique_id);?>';
        jQuery.post(
            loadUrl,
            {},
            function(responseText){
                jQuery('.agent-email-form-holder').html(responseText);
                init_send_contact_email_js();
            }
        );
    });

    function init_send_contact_email_js()
    {
        jQuery('#message-form').submit(function(e){
            var data = jQuery(this).serializeArray();
            var loading = '<?php echo theme_url();?>/assets/img/loading.gif';
            jQuery('.agent-email-form-holder').html('<img style="width:50px;" src="'+loading+'" atl="loading..."/>');
            e.preventDefault();
            var loadUrl = jQuery(this).attr('action');
            jQuery.post(
                loadUrl,
                data,
                function(responseText){
                    jQuery('.agent-email-form-holder').html(responseText);
                    init_send_contact_email_js();
                }
            );
        });

    }

    jQuery(document).ready(function(){

        //$('#myCarousel').carousel();

        jQuery('#video_url').change(function(){

            var url = jQuery(this).val();

            showVideoPreview(url);

        }).change();

        window.print();
        window.close();
    });
</script>
