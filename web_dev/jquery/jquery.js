$(document).ready(function(){
    $("li:first").mouseenter(function()
      {alert("If you click on a the world link, it will turn blue!");
      });

    // $("li").click(function(){
    //   $(this).fadeOut("slow");
    // });

    $("#first_label").hide();
    $("[href]").mouseover(function(){
      $("#first_label").fadeIn("slow");
    });

    $("[href]").click(function() {
      $(this).css("background-color", "blue");
    });
});