var A=document.querySelector.bind(document);
var AA=document.querySelectorAll.bind(document);

A(".shop_area_select").onclick=function(){
    A(".dropdown-menu_wrap_select").classList.toggle("show");   
}
var check_news_rules= A(".news_rules").querySelectorAll("i");
var input=A(".news_rules_check");
var shop=A(".shop");
input.onchange=() =>{
    if(input.checked==true){
        check_news_rules[0].classList.remove("hidden");
        check_news_rules[1].classList.add("hidden");
        A(".btn_register").style.backgroundColor="#71be0f";
        A(".btn_register").style.cursor="pointer";
    }
    else{
        check_news_rules[0].classList.add("hidden");
        check_news_rules[1].classList.remove("hidden");
        A(".btn_register").style.backgroundColor="#a3d564";
        A(".btn_register").style.cursor="no-drop";
        
    }
};
A(".shop_news").onclick=function(){
    A(".dropdown-menu_wrap_news").classList.toggle("show");
}
// open dropdown when click 

openClick=function(data){
   data.parentElement.querySelector(".dropdown-menu").classList.toggle("show");
}
window.onclick = function(event){
    let lists=(document.querySelectorAll('.dropdown-menu'));
    for(var i=0;i<lists.length;i++){
         if(lists[i].getAttribute("class").indexOf("show")!==-1){
            if(!lists[i].contains(event.target) && !lists[i].parentElement.contains(event.target)){
                lists[i].classList.remove("show");
            }
                
            }
        }
};
// chuyên trang header
var papes=AA(".header_contenner_product_item");
papechange=(data)=>{
    papes.forEach(item =>{
        item.classList.remove("active");
    });
    data.classList.add("active");
}


papechangenmain=(data)=>{
    var papesmain=data.parentElement.querySelectorAll(".product_main_name_list");
    papesmain.forEach(item =>{
        item.classList.remove("active");
    });
    data.classList.add("active");
}
// hover category

var hover_category=AA(".category_main_list_extra");
hover_category.forEach(item=>{
});
var hover_category_list= A(".category_main_list_hover")
onhover=(data)=>{
    data.querySelector(".category_main_list_hover").style.display="block";
}
offhover=(data)=>{
    data.querySelector(".category_main_list_hover").style.display="none";
}


// var count=0;
Slider.addEventListener('pointerdown',e =>{
    pressed = true;
    startx =e.offsetX-innerSlider.offsetLeft;
    console.log(startx);
})
// Slider.addEventListener('offhover',e =>{
//     pressed = false;
// })
// Slider.addEventListener('mouseenter',e =>{
//     Slider.style.cursor="grab";
// })
// Slider.addEventListener('mouseleave',e =>{
//     // count=0;
// })
// Slider.addEventListener('mouseup',e =>{
//     Slider.style.cursor="grab";
// })
window.addEventListener('pointerup',e =>{
    pressed=false;
})
Slider.addEventListener("pointermove",(e)=>{
    if(!pressed) return;
        e.preventDefault();
        x=e.offsetX;
        innerSlider.style.left=`A{x-startx}px`;
        checkboundary();
});
function checkboundary(){
    let outer=Slider.getBoundingClientRect();
    let inner=innerSlider.getBoundingClientRect();
    if(parseInt(innerSlider.style.left)>0){
        innerSlider.style.left="0px";
    }
    else if(inner.right<outer.right){
        innerSlider.style.left=`-A{inner.width - outer.width}px`;
    }
}
// chuyển trang slide
var arr=[
    {
        id:"https://s3-hd.hotdeal.vn/original/2021/5/1/609cee1d1f2cf-des-la-vela-dimsum.jpg"
    },
    {
        id:"https://s3-hd.hotdeal.vn/original/2021/5/0/609115f772429-1180x450.jpg"
    },
   
    {
        id:"https://s3-hd.hotdeal.vn/original/2021/5/2/60af7c87120f2-1180x450.jpg"
    }
]
// animation

// pc
// onanimationend lang nghe su kien animetion
var cirles=AA(".advertise_pape_next li");
var image=A(".advertise_top_img");


A(".next_right").onclick=function(){
    image.classList.add('animation');
    // ----------------------------------------------------------best ganh team
    image.onanimationend=()=>{
        image.classList.remove('animation');
    }
    
    let vt;
    let img=image.getAttribute('src');
        arr.forEach((i,index)=>{
            if(i.id==img){
                vt=index
            }
        });
        if(vt<arr.length-1){
            image.setAttribute('src',arr[vt+1].id);      
        }
        else{
            image.setAttribute('src',arr[0].id);
        }
        
        changeColor();
    
  
 
}
A(".next_left").onclick=function(){
    image.classList.add('animation');
    // ----------------------------------------------------------best ganh team
    image.onanimationend=()=>{
        image.classList.remove('animation');
    }
    let vt;
    let img=image.getAttribute('src');
    arr.forEach((i,index)=>{
        if(i.id==img){
            vt=index;
           
        }
    })
    if(vt>0){
        image.setAttribute('src',arr[vt-1].id);
    }
    else{
        image.setAttribute('src',arr[arr.length-1].id);
    }
    changeColor();
}
// thay doi mau nut
function changeColor(){
    let img=image.getAttribute('src');
    arr.forEach((x,index1)=>{
        if(x.id==img){
            cirles.forEach((y,index2)=>{
                if(index1==index2){
                    y.style.backgroundColor="#71be11";
                }
                else{
                    y.style.backgroundColor="#cbcbcb";
                }
            })
           
          
        }
    })
}
changeImg=(data)=>{
    cirles.forEach((i,index)=>{
        if(i===data){
            image.classList.add('animation');
            // ----------------------------------------------------------best ganh team
            image.onanimationend=()=>{
                image.classList.remove('animation');
            }
            image.setAttribute('src',arr[index].id);
        }
    })
    changeColor();
}
setInterval(A(".next_right").onclick,4000);
