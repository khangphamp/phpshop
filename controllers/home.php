<?php
    $action = 'home';
    $render = new Controller();
    if (isset($_GET['act']))
      $action = $_GET['act'];
    switch ($action) {
      case 'home':
        $render->view('home');
        break;
      case 'child':
        $render->view('home2');
        break;
      case 'detail':
        $render->view('product');
        break;
      }

?>