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