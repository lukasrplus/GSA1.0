// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.ui.datepicker
//= require jquery.timepicker.js
//= require fancybox
//= require transition
//= require_tree .




 $(document).ready(function() {
  $('#cta1').on("click", function() {
    $('#cta_landing').slideUp('slow').delay( 3000 );
    $('#features').fadeIn('slow');
   // return false;
  });});

  $(document).ready(function() {
  $('#cta2').on("click", function() {
    $('#feature_section').slideUp('slow').delay( 3000 );
    $('#relax_section').fadeIn('slow');
   // return false;
  });});


$(document).ready(function() {
  $("a.fancybox").fancybox({
});
});




// $(document).ready(function() {
//   $('.collapse').on("click", function(
//     $(this).collapse('hide');
//     ));
// });




// $(document).ready(function(){
//   alert('Fackkking JS');
// });




