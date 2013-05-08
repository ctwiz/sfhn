// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree
$(function()  {
  var add_to_newsletter = function() {
    $("#email_thanks").modal();
    var email = $(".email input[type=text]").val();
    $(".email input[type=text]").val('');
    $.post("/api/newsletter", { email : email }, function(data) {
    });
    return false;
  };
  $(".email .btn").click(add_to_newsletter);
  $("form#newsletter").submit(add_to_newsletter);
});
