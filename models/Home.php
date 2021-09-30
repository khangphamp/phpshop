<?php 
    class Home extends connect {
        function getByBrand($id){
            $query = "SELECT id,ten,giamacdinh,giakhuyenmai,hinhanh,slxem FROM `sanpham` WHERE phanloai_id=$id limit 8";       
            return  $this->getList($query);
        } 
        function getAll($seach = ''){
            if($seach == ''){
                $query = "SELECT id,ten,giamacdinh,giakhuyenmai,hinhanh,slxem FROM `sanpham`"; 
            }else{
                $query = "SELECT id,ten,giamacdinh,giakhuyenmai,hinhanh,slxem FROM `sanpham` where ten LIKE '%$seach%'"; 
            }          
            $result =   $this->getList($query);
            return $result;
        }
        function getPagination($start,$limit,$seach = ''){
            if($seach == ''){
                $query = "SELECT id,ten,giamacdinh,giakhuyenmai,hinhanh,slxem FROM `sanpham` limit $start,$limit";
            }else {
                $query = "SELECT id,ten,giamacdinh,giakhuyenmai,hinhanh,slxem FROM `sanpham`  where ten LIKE '%$seach%' limit $start,$limit";
            }
            
            return  $this->getList($query);
        }
        function getByTitlePagination ($title,$start,$limit){
            $query ='';
            switch($title){
                case "khuyenmai":
                    $query = "SELECT id,ten,giamacdinh,giakhuyenmai,hinhanh,slxem FROM `sanpham` WHERE giakhuyenmai!=0 limit $start,$limit ";
                    break;
                case "moinhat":
                    $query = "SELECT id,ten,giamacdinh,giakhuyenmai,hinhanh,slxem FROM `sanpham` ORDER By id DESC limit $start,$limit";
                    break;
                case "iphone":
                    $query = "SELECT id,ten,giamacdinh,giakhuyenmai,hinhanh,slxem FROM `sanpham`WHERE phanloai_id=1 limit $start,$limit";
                    break;
                case "samsung":
                    $query = "SELECT id,ten,giamacdinh,giakhuyenmai,hinhanh,slxem FROM `sanpham`WHERE phanloai_id=2 limit $start,$limit";
                    break;
                case "oppo":
                    $query = "SELECT id,ten,giamacdinh,giakhuyenmai,hinhanh,slxem FROM `sanpham`WHERE phanloai_id=3 limit $start,$limit";
                    break; 
                case "xiaomi":
                    $query = "SELECT id,ten,giamacdinh,giakhuyenmai,hinhanh,slxem FROM `sanpham` WHERE phanloai_id=4 limit $start,$limit"; 
                    break;
                case "vivo":
                    $query = "SELECT id,ten,giamacdinh,giakhuyenmai,hinhanh,slxem FROM `sanpham`WHERE phanloai_id=5 limit $start,$limit"; 
                    break;      
               

            }
                   
            return  $this->getList($query);
        }
    function getByTitle($title){
        $query ='';
        switch($title){
            case "khuyenmai":
                $query = "SELECT id,ten,giamacdinh,giakhuyenmai,hinhanh,slxem FROM `sanpham` WHERE giakhuyenmai!=0";
                break;
            case "moinhat":
                $query = "SELECT id,ten,giamacdinh,giakhuyenmai,hinhanh,slxem FROM `sanpham` ORDER By id DESC limit 12";
                break;
            case "iphone":
                $query = "SELECT id,ten,giamacdinh,giakhuyenmai,hinhanh,slxem FROM `sanpham`WHERE phanloai_id=1";
                break;
            case "samsung":
                $query = "SELECT id,ten,giamacdinh,giakhuyenmai,hinhanh,slxem FROM `sanpham`WHERE phanloai_id=2";
                break;
            case "oppo":
                $query = "SELECT id,ten,giamacdinh,giakhuyenmai,hinhanh,slxem FROM `sanpham`WHERE phanloai_id=3";
                break; 
            case "xiaomi":
                $query = "SELECT id,ten,giamacdinh,giakhuyenmai,hinhanh,slxem FROM `sanpham` WHERE phanloai_id=4"; 
                break;
            case "vivo":
                $query = "SELECT id,ten,giamacdinh,giakhuyenmai,hinhanh,slxem FROM `sanpham`WHERE phanloai_id=5"; 
                break;
             
                 
        }
               
        return  $this->getList($query);
    }
}
?>