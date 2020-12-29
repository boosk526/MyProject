/**
 * 
 */
	$('.header-menu-all').hide();
	$('.menu-bar').click(function(){
		$(this).toggleClass('active');
	});
	$('.menu-bar').click(function(){
		$('.header-menu-all').fadeToggle(500);
	});
   
   
	$('.footer-family-hover').hide();
	$('.footer-family, .footer-family-hover').hover(function(){
		$(this).toggleClass('active');
	});
	$('.footer-family, .footer-family-hover').hover(function(){
		$('.footer-family-hover').toggle();
	});
   
   	$('.member-info-sb').hide();
	$('.mem-sb').click(function(){
		$(this).toggleClass('active');
	});
	$('.mem-sb, .info-back-sb').click(function(){
        $('.member-info-sb').toggle();
	});
	
	$('.member-info-yj').hide();
	$('.mem-yj').click(function(){
		$(this).toggleClass('active');
	});
	$('.mem-yj, .info-back-yj').click(function(){
        $('.member-info-yj').toggle();
	});
	
	$('.member-info-bg').hide();
	$('.mem-bg').click(function(){
		$(this).toggleClass('active');
	});
	$('.mem-bg, .info-back-bg').click(function(){
        $('.member-info-bg').toggle();
	});
	
	$('.member-info-th').hide();
	$('.mem-th').click(function(){
		$(this).toggleClass('active');
	});
	$('.mem-th, .info-back-th').click(function(){
        $('.member-info-th').toggle();
	});
	
	$('.member-info-hk').hide();
	$('.mem-hk').click(function(){
		$(this).toggleClass('active');
	});
	$('.mem-hk, .info-back-hk').click(function(){
        $('.member-info-hk').toggle();
	});
	
	
	$('.scroll-up').click(function() {
		$('body,html').animate({
			scrollTop: 0
		}, 200);
		return false;
	});
	
	
	$('.slider').bxSlider({ 
	 	speed: 500, 
	 	pager:true, 
 	});
   