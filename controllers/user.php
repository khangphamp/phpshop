<?php
    $action = 'user';
    $render = new Controller();
    $user = new User();
    if (isset($_GET['act']))
      $action = $_GET['act'];
    switch ($action) {
        case 'login':
            $render->view('login');
            break;
        case 'register':
            $render->view('register');
            break;
        case 'logout':{
            unset ($_SESSION["id"]);
            unset ($_SESSION["ten"]);
            $render->redirect('index.php?action=user&act=login');
        }
        case 'add':
            $ten = $_POST['ten'];
            $email = $_POST['email'];
            $password =md5($_POST['password']);      
            $user -> add($ten, $email, $password);
           
  
            break;
        case 'check':
            $email = $_POST['email'];
            $password =md5($_POST['password']);
            $result = $user -> checklogin($email, $password);
            if(!$result){
                echo '<script> alert ("ten dang nhap or mat khau ko chinh xac")</script>';
                $render->redirect('index.php?action=user&act=login');
            }else{
                $_SESSION['id']=$result[0];
                $_SESSION['ten']=$result[1];    
                echo '<script> alert ("dang nhap thanh cong")</script>';
                $render->redirect('index.php?action=home');
            }
        
    }

?>