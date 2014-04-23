$(document).ready(function(){
      $(".section1").height($(window).height());
          $(window).resize(function(){
              $(".section2").height($(window).height());
      });
  });