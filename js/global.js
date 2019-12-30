
if ( window.history.replaceState ) {
  window.history.replaceState( null, null, window.location.href );
}
$(document).ready(function(){
  $("#hosting_data").keyup(function(){
      $("#searchclear").toggle(Boolean($(this).val()));
  });
  $("#searchclear").toggle(Boolean($("#hosting_data").val()));
  $("#searchclear").click(function(){
      $("#hosting_data").val('').focus();
      $(this).hide();
  });
});