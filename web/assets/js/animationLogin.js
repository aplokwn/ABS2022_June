
/**
 * This function hide the error button on loading the application
 */
function error() {
  //This function is loaded when the application is loaded
  $(document).ready(function () {
    //The element that has an ID alert will have a CSS class to hide it
    //This class will be a displat: hidden
    $("#alert").removeClass("hidden");
  });
}
