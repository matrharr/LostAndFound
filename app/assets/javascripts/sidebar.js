$(document).on("page:change", function() {

    $('.slideout-menu-toggle').on('click', function(event){
      event.preventDefault();

      // create menu variables
      var slideoutMenu = $('.slideout-menu');
      var slideoutMenuWidth = $('.slideout-menu').width();
      
      // toggle open class
      slideoutMenu.toggleClass("open");
      
      // slide menu
      if (slideoutMenu.hasClass("open")) {
            // $(this).hide();
            slideoutMenu.animate({
                  right: "0px"
      

            });   
      } else {
            $('.slideout-menu-toggle').show();
            slideoutMenu.animate({
                  right: -slideoutMenuWidth
            }, 280);    
      }
    });

});


$(document).ready(function() {
    $(".dropdown-toggle").dropdown();
});