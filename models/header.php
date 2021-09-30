<?php 
    class Header extends connect {
        function getBrand(){
            $query = "SELECT id,ten FROM `phanloai`";       
            return  $this->getList($query);
        }
    }
?>