
/**
 * When the page loads, assign a on-click listener to the hamburger menu
 */
$(document).ready(function () {
  $("#hamburger-box").click(function () {
    $(this).toggleClass("open");
    $(".nav-menu").toggleClass("nav-menu-open");
  });
});
