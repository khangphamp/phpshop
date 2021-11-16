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
        function addComment($id,$idkh,$name,$comment,$rating){
            $sql = "insert into binhluan(id,id_sanpham,id_khachhang,name,ngay,noidung,rating,parent_id) values (null,?,?,?,?,?,?,default)";
            $yt = $this->execP($sql);
            $yt->execute([$id,$idkh,$name,date('Y-m-d H:i:s'),$comment,$rating]);   
        }
        function addCommentSecond($id,$idkh,$name,$comment,$parent_id){
            $sql = "insert into binhluan(id,id_sanpham,id_khachhang,name,ngay,noidung,parent_id) values (null,?,?,?,?,?,?)";
            $yt = $this->execP($sql);
            $yt->execute([$id,$idkh,$name,date('Y-m-d H:i:s'),$comment,$parent_id]);   
        }
        function getComment($id,$parent_id =0){
            if(empty($_GET['rating']) ){
                 $select = "SELECT * FROM `binhluan` WHERE  id_sanpham=$id and parent_id=$parent_id";     
            }else {
                $rating = $_GET['rating'];
                $select = "SELECT * FROM `binhluan` WHERE  id_sanpham=$id and parent_id=$parent_id and rating=$rating";
            }
            $result =  $this->getList($select);
            return $result;    
        }
        function getUserComment($idkh, $id){
            $select = "SELECT * FROM `binhluan` WHERE  id_khachhang=$idkh AND id_sanpham=$id";
            $result =  $this->getInstance($select);
           

            if($result){
                return true;   
            }
            return false;     
        }
        function getRating($id){
            $select = "SELECT AVG(rating) FROM `binhluan` WHERE parent_id=0 AND id_sanpham=$id";
            $result =  $this->getInstance($select);
            if($result[0]!=true){
               return false;
            }
            return $result;    
        }
        function countRating($id,$rating =null ){
            if($rating==null){
                $select = "SELECT count(rating) FROM `binhluan` WHERE parent_id=0 AND id_sanpham=$id";
            }else{
                 $select = "SELECT count(rating) FROM `binhluan` WHERE parent_id=0 AND id_sanpham=$id AND rating = $rating";

            }
            $result =  $this->getInstance($select);
            if($result[0]!=true){
               return 0;
            }
            return $result[0];    
        }
    }
?>