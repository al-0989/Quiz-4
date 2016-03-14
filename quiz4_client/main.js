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
      for(var i = 0; i < companies.length ; i++){
        var template = $("#all-companies").html();
        console.log(companies[i]);
        console.log(companies[i].products);
        var renderedHtml = Mustache.render(template, companies[i]);
        $("#comapanies").append(renderedHtml);
      }
        // $("#courses").fadeIn(1000); // FadeIn using jQuery fadeIn method
      }
    }); // End of Ajax request
}); // End of document ready
