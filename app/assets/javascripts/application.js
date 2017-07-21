//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require materialize

$(document).ready(function() {
  $(document).on('turbolinks:load', function() {
    $('.button-collapse').sideNav();
    $('.parallax').parallax();
    $('.dropdown-button').dropdown({
      inDuration: 300,
      outDuration: 225,
      constrainWidth: true, // Does not change width of dropdown to that of the activator
      hover: true, // Activate on hover
      gutter: 0, // Spacing from edge
      belowOrigin: true, // Displays dropdown below the button
      alignment: 'right', // Displays dropdown with edge aligned to the right of button
      stopPropagation: false // Stops event propagation
    });
    $('.fixed-action-btn').hide();
    $(window).scroll(function() {
      var y_scroll_pos = window.pageYOffset;
      var scroll_pos_test = 50;

      if (y_scroll_pos > scroll_pos_test) {
        $(".fixed-action-btn").show();
      } else {
        $(".fixed-action-btn").hide();
      }
    });
  });
});
