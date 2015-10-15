<div id="jm-offcanvas">
	<div id="jm-offcanvas-toolbar">
		<a class="toggle-nav close-menu"><span class="icon-remove"></span></a>
	</div>
	<div id="jm-offcanvas-content" class="jm-offcanvas">
		
	</div>
</div>
<section id="jm-bar-wrapp" class="">
	<div id="jm-bar">  
	    <div class="container-fluid">
	        <div id="jm-bar-in" class="clearfix">
	            <div class="row-fluid">
		            <div id="jm-logo-sitedesc" class="span5">
		                <div id="jm-logo">
		                    <a href="<?php echo base_url(); ?>">
		                        <img src="https://nuggplug.com/images/NPLOGO.png" alt="Nuggplug.com">
		                    </a>
		                </div>
		            </div>
					<div class="span5" style="padding-top:15px">
					    <div class="jm-module-raw search-ms margin-ms category-ms">
        					<style type="text/css">
								.input-group:before {
								    content: '';
								    position: absolute;
								    left: -72px;
								    top: -18px;
								    background: url(https://nuggplug.com/images/searchimg.png) no-repeat center;
								    width: 130px;
								    height: 94px;
								    background-size: 100% auto;
								}
								.input-group:after {
								    content: '';
								    position: absolute;
								    right: 0;
								    top: 0;
								    background: url(https://nuggplug.com/images/search-icon.png) no-repeat center;
								    width: 52px;
								    height: 52px;
								    background-size: 50% auto;
								}
								.real-estate .re-big-form {
								    background: #6e863a !important;
								}
							</style>
							<div id="mod_djcf_search211" class="dj_cf_search dj_cf_search_horizontal">
								<form action="#" method="get" name="" id="form-search">
							   		<div class="search_word djcf_se_row input-group"> 	
										<input type="text" size="35" name="search" class="inputbox first_input" value="What are you looking for...?" onfocus="if(this.value=='What are you looking for...?') this.value='';" onblur="if (this.value=='') this.value='What are you looking for...?';">
									</div>
								</form>
								<div style="clear:both"></div>
							</div>
	    				</div>
					</div>
					<div class="span2 pull-right">
						<style type="text/css">
							.logout,.signin {
							    display: inline-block;
							    vertical-align: top;
							    text-align: right;
							}
							.logout a,.signin a 
							{
							    display: table;
							    color: #fff;
							    text-transform: uppercase;
							    margin: 19px 0 0px;
							}
							img.sign-icon 
							{
							    max-width: 56px;
							    height: auto;
							    display: inline-block;
							    vertical-align: top;
							}
						</style>
						<div class="signin-wrap">
						    	<?php if(is_loggedin()): ?>
					    		<div class="logout">
						    		<a href="<?php echo base_url(); ?>index.php/en/account/logout">Logout</a>
						    	<?php else: ?>
						    	<div class="signin">
						    		<a class="sign-in" href="<?php echo base_url(); ?>index.php/en/account/login">Sign In</a>
						        	<a class="sign-up" href="<?php echo base_url(); ?>/index.php/en/account/signup">Sign Up</a>
						    	<?php endif; ?>
						    </div>
						    <img class="sign-icon" src="<?php echo base_url(); ?>assets/images/sign-icon.png" width="138" height="224" alt="">
						</div>
					</div>
				</div>
	        </div>
	    </div>
	</div>
</section>