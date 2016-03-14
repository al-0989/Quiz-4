$(document).ready(function(){

  $.ajax({
    url: "http://localhost:3000/companies.json",
    method: "GET",
    error: function(){
      alert("Companies failed to load. Please retry.");
    },
    success: function(data){
      var companies = data.companies;
      $("#companies").html("");
      for(var i = 0; i < companies.length; i++){
        var template = $("#all-companies").html();
        var renderedHtml = Mustache.render(template, companies[i]);
        $("#companies").append(renderedHtml);
      }
      // hide each div then iterate through and show them.
      $("#companies div").hide().each(function(i){
        console.log("fading in: " + $(this));
        $(this).delay(i*500).fadeIn(500);
      });
    } // Closing success bracket
  }); // End of Ajax request

  $("#companies").on("click", "i.fa.fa-thumbs-o-up", function(){
    console.log("clicky");
    if ($(this).data('count')) { // already been clicked
            $(this).data('count', $(this).data('count') + 1); // add one
        } else { // first click
            $(this).data('count', 1); // initialize the count
        }
        $(this).html(" (" + $(this).data('count') +") "); // show it
  }); // End of likes

}); // End of document ready
