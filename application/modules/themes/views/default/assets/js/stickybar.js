/*--------------------------------------------------------------
# Copyright (C) joomla-monster.com
# License: http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
# Website: http://www.joomla-monster.com
# Support: info@joomla-monster.com
---------------------------------------------------------------*/

// Sticky Bar
jQuery(window).load(function(){   
    var body = jQuery('body');
	if(body.hasClass('sticky-bar')) {
		var bar = jQuery('#jm-bar');
		
		if (bar.length > 0) {
			var srcollposition = bar.offset().top;
			var barwrapp = jQuery('#jm-bar-wrapp');
			
			jQuery(window).scroll(function() {
	        	var currentposition = jQuery(window).scrollTop();
	        
				if(currentposition > srcollposition) {
					body.addClass('scrolled');
					var offset = bar.outerHeight();
					barwrapp.css({'height': offset});
				} else {
					body.removeClass('scrolled');
					barwrapp.removeAttr('style');
				}
		    });
	   }
    }
});
