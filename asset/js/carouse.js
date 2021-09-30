$(document).ready(function() { 
      $(".owl-carousel.product_details_left_img").owlCarousel({
        items:1,
        loop:false,
        margin:10,
        URLhashListener:true,
        autoplayHoverPause:true,
        startPosition: 'URLHash',       
      });   
      $(".owl-carousel.innerCarousel").owlCarousel({
        items:6,
        loop:false,
        margin:10,
        URLhashListener:true,
        autoplayHoverPause:true,
        startPosition: 'URLHash',       
      });   
    });
    var img_litle=document.querySelectorAll(".img_litle");
    changeImg=(data)=>{
      img_litle.forEach(img=>{
        img.style.border="none";
      })
      data.style.border="2px solid #71be11";
    }
    