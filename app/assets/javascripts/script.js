(function() {
	'use strict';
$(document).ready(function (){
	setTimeout(function(){$('.notice').fadeIn("slow");
		setTimeout(function(){$('.notice').fadeOut("slow");},2000);
	},400);	
	
});
}());