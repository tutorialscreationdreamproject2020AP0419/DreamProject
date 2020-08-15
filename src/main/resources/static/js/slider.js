/**
 * 
 */
$(document).ready(
		function() {
			  $('#msbo').on('click', function(){
			    $('body').toggleClass('msb-x');
			  });
			  
			  $(".navbar-nav li").click(function () {
				    $(".navbar-nav li.active").removeClass("active");
				    // $(".tab").addClass("active"); // instead of this do the below
				    $(this).addClass("active");   
				});

		});