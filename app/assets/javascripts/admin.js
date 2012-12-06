$(function() {
  $(".admin_add_user").click(function() {
    var lines = $(".add_user_lines").val();
    $.post("/api/add_to_newsletter", { lines: lines }, function() {

    });
  });
});
