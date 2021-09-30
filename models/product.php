<?php 
    class Product extends connect {
        function getDetail($id) {
            $query = "SELECT * FROM `sanpham` WHERE id=$id";       
            return  $this->getInstance($query);
        }
        
        function getDetailImage($id) {
            $query = "SELECT * FROM `hinh_chitiet` WHERE id_sanpham=$id";       
            return  $this->getList($query);
        }
        function getkhuyenmai($id) {
            $query = "SELECT * FROM `khuyenmai` WHERE id_sanpham=$id";       
            $km =$this->getInstance($query);
            if(!$km) {
                return false;
            }else {
                $time = strtotime($km['ngayketthuc'])-strtotime('now');
                if($time <=0){
                    return false;
                }
                return $time;
            }          
        }
        function addFavorite($id,$idkh) {
            $sql = "insert into yeuthich(id,id_sanpham,id_khachhang) values (null,?,?)";       
            $yt = $this->execP($sql);
            $yt->execute([$id,$idkh]);          
        }
        function deleteFavorite($id,$idkh) {
            $sql = "DELETE FROM  `yeuthich` WHERE id_sanpham=$id and id_khachhang=$idkh";       
            $yt = $this->exec($sql);
            return $yt;          
        }
        function getFavorite($idkh) {
            $products =[];
            $query = "SELECT * FROM `yeuthich` WHERE  id_khachhang=$idkh";
            $result =  $this->getList($query);  
            if(!$result == true ){
                return false;
            }else{
                while($set = $result->fetch()){
                    $product = $this->getDetail($set['id_sanpham']);
                    array_push($products,$product);
                }
             return $products;
            }
                    
        }
        function getFavoriteDetail($id,$idkh) {
            $query = "SELECT * FROM `yeuthich` WHERE  id_khachhang=$idkh and id_sanpham =$id";
            $result =  $this->getInstance($query);
            return $result;                  
        }
        function addComment($id,$idkh,$name,$comment){
            $sql = "insert into binhluan(id,id_sanpham,id_khachhang,name,ngay,noidung,parent_id) values (null,?,?,?,?,?,default)";
            $yt = $this->execP($sql);
            $yt->execute([$id,$idkh,$name,date('Y-m-d H:i:s'),$comment]);   
        }
        function addCommentSecond($id,$idkh,$name,$comment,$parent_id){
            $sql = "insert into binhluan(id,id_sanpham,id_khachhang,name,ngay,noidung,parent_id) values (null,?,?,?,?,?,?)";
            $yt = $this->execP($sql);
            $yt->execute([$id,$idkh,$name,date('Y-m-d H:i:s'),$comment,$parent_id]);   
        }
        function getComment($id,$parent_id =0){
            $select = "SELECT * FROM `binhluan` WHERE  id_sanpham=$id and parent_id=$parent_id";
            $result =  $this->getList($select);
            return $result;    
        }
    }
?>