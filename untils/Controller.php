<?php
    class Controller {
        public function view($view) {
            // echo '<pre>';
            // print_r($view);
            // echo '</pre>';
            if(file_exists('./views/'.$view.'.php')){
                include './views/'.$view.'.php';
            }
        }
        public function redirect($url) {
            echo "<script type=\"text/javascript\">
                 window.location.href =\"$url\"
             </script>";
        }

    }

?>