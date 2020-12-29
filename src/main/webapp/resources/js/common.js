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
   
