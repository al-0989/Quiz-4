// Solution to question 1
$("span.txt:contains('eal')").css("color","red");

// Solution to Question 2
$("a").on("click", function(event){
  event.preventDefault();
  $(this).fadeOut();
});
