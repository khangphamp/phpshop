<?php
    class Page {
        public function firstStart($limit){
            if(!isset($_GET['page'])||$_GET['page']==1)
            {
                $start = 0;
                $_GET['page']=1;
            }
            else {
                $start=($_GET['page']-1)*$limit;
            }
            return $start;
        }
        public function findPage($count,$limit){
            $page = $count%$limit == 0?$count/$limit:ceil($count/$limit);
            return $page;
        }

    }
?>