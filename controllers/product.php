<?php
    $action = 'favorite';
    $render = new Controller();
    if (isset($_GET['act']))
      $action = $_GET['act'];
    switch ($action) {
      case 'favorite':
       
        if(isset($_SESSION['id'])){
            $product = new Product();
            $id = $_GET['id'];
            $idkh = $_SESSION['id'];
            $product->addFavorite($id,$idkh);  
            $render->redirect("index.php?action=home&act=detail&id=$id");
        }
        else {
            echo '<script> alert ("phai dang nhap trước")</script>';
            $render->redirect("index.php?action=user&act=login");
        }
    
        break;
      case 'removefavorite':
          $product = new Product();
          $id = $_GET['id'];
          $idkh = $_SESSION['id'];
          $product->deleteFavorite($id,$idkh);  
          $render->redirect("index.php?action=home&act=detail&id=$id");
        break;
      case 'addcart':
        if(isset($_SESSION['id'])){
          $idkh = $_SESSION['id'];
          $item=array(
            'id'=>$_GET['id'],
            'hinh'=>$_POST['hinhanh'],
            'ten'=>$_POST['ten'],
            'gia'=>$_POST['gia'],
            'sl'=>1,
        );
        $_SESSION['cart'][$idkh][$_GET['id']]=$item;
        }else {
          echo '<script> alert ("phai dang nhap trước")</script>';
          $render->redirect("index.php?action=user&act=login");
        }
          
  
        break;

      case 'addcomment':
        $product = new Product();
        $id =$_GET['id'];
        $idkh= $_SESSION['id'];
        $name= $_SESSION['ten'];
        $comment = $_POST['comment'];
        $product ->addComment($id,$idkh,$name,$comment);
        $render->redirect("index.php?action=home&act=detail&id=$id");
        break;
        case 'addcommentsecond':
          $product = new Product();
          $id =$_GET['id'];
          $idkh= $_SESSION['id'];
          $name= $_SESSION['ten'];
          $comment = $_POST['comment'];
          $parent_id = $_POST['parent'];
          $product ->addCommentSecond($id,$idkh,$name,$comment,$parent_id);
          $render->redirect("index.php?action=home&act=detail&id=$id");
          break;
      }
      

?>