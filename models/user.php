<?php 
    class User extends connect {
        function add($ten, $email, $password) {
            $render = new Controller();
            try{
                $sql ='insert into khachhang(id,ten,email,password) 
                values(null,?,?,?)';
                $User = $this->execP($sql);
                $User->execute([$ten,$email,$password]);
                echo '<script> alert ("Đăng Ký Thành Công")</script>';
                $render->redirect('index.php?action=user&act=login');   
            }
            catch(Exception $e){
                echo '<script> alert (" email da ton tai")</script>';
                $render->redirect('index.php?action=user&act=register');  
            }
                   
        }
        function checkLogin($email, $password) {
                $select ="select * from khachhang where email='$email' and password='$password'";
                return $this->getInstance($select);      
               
            }
           
        }
?>