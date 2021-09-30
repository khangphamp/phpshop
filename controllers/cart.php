<?php
    $action = 'cart';
    $render = new Controller();
    if (isset($_GET['act']))
      $action = $_GET['act'];
    switch ($action) {
      case 'cart':    
        if(isset($_SESSION['id'])){
            $render->view('cart');
          }else {
            echo '<script> alert ("phai dang nhap trước")</script>';
            $render->redirect("index.php?action=user&act=login");
          }
        break;
      case 'update':
        $_SESSION['cart'][$_SESSION['id']][$_GET['id']]['sl']= $_POST['sl'];
        $render->redirect("index.php?action=cart");
        break;
      case 'delete':
        unset($_SESSION['cart'][$_SESSION['id']][$_GET['id']]);
        $render->redirect("index.php?action=cart");
        break;
      }

?>