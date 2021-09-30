<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./asset/other/owlcarousel/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="./asset/other/owlcarousel/assets/owl.theme.default.min.css">
    <link rel="stylesheet" href="./asset/css/grid.css">
    <link rel="stylesheet" href="./asset/fonts/fontawesome-free-5.15.2-web/css/all.min.css">
    <link rel="stylesheet" href="./asset/css/base.css">
    <link rel="stylesheet" href="./asset/css/main.css">
    <link rel="stylesheet" href="./asset/css/product.css">
    
</head>
<style>
.pagination {
    display: flex;
    justify-content: center;
}

.pagination a {
  color: black;
  float: left;
  padding: 8px 16px;
  text-decoration: none;
}
.pagination .active {
    background-color:green;
}
.pagination .remove {
    display: none;
}
</style>
<body>
<?php 
    include "./models/connect.php";
    include "./untils/Controller.php";
    include "./models/Home.php";
    include "./models/header.php";
    include "./models/product.php";
    include "./models/user.php";
    include "./models/page.php";
  
    session_start();
?>
    
<?php
         include "views/header.php";  
 ?>
        <div class="shop">
            <?php
                $ctrl="home";
                if(isset($_GET['action']))
                    $ctrl=$_GET['action'];
                include 'controllers/'.$ctrl.'.php';

                
            ?>
        </div>
<?php
        include "views/footer.php";
 ?>       
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="./asset/other/owlcarousel/owl.carousel.min.js"></script>
<script src="./asset/js/carouse.js"></script>
<script src="./asset/js/main.js"></script>
<script>
    const SelectTime = document.querySelector('.timeauto');
    let time =parseInt(SelectTime.innerHTML);
    function handleTime(num){
        if(num<10){
            return '0'+num;
        }
        return num
    }
    function secondtoday($ss) {
         const s = handleTime($ss%60);
         const m = handleTime(Math.floor(($ss%3600)/60));
         const h = handleTime(Math.floor(($ss%86400)/3600));
         const d = handleTime(Math.floor(($ss%2592000)/86400));          
         return `${d} ngày ${h} giờ ${m} phút ${s} giây`
    }
    setInterval(() => {
        document.querySelector('.timeauto').innerHTML= secondtoday(time);
        time--;
    }, 1000);
    
</script>
</html>