<!-- Footer Starts -->
<div class="foot">
    <!-- Container -->
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-sm-4">
                <!-- Foot Item -->
                <div class="foot-item">
                    <?php render_widgets('footer_first_column');?>
                </div>
            </div>  
            <div class="col-md-4 col-sm-4">
                <!-- Foot Item -->
                <div class="foot-item">
                    <!-- Heading -->
                    <?php render_widgets('footer_second_column');?>
                </div>
            </div>
            <div class="col-md-4 col-sm-4">
                <!-- Foot Item -->
                <div class="foot-item">
                    <?php render_widgets('footer_third_column');?>
                </div>
            </div>
        </div>
    </div>
</div>
<footer>
    <!-- Container -->
    <div class="container">
        <!-- Footer Content -->
            <!-- Paragraph -->
            <center> 
            <style>
.small
{
    line-height:100px;
}
</style>

<p>
Nuggplug.com | Powered by <a href="https://nuggplug.com/">NuggPlug</a> <br />
<img src="https://c.statcounter.com/10145564/0/9edc6ec3/0/"
alt="Nuggplug.com" style="border:none;"><br />
 </center>

            <?php render_widget('footer_links') ?>
            <!-- Clearfix -->
            <div class="clearfix"></div>
    </div>
</footer>