
        <div class="contenter_shop">
            <!-- contenter_shop_categogy -->
            <div class="contenter_shop_categogy_warp">
                <div class="contenter_shop_categogy grid wide">
                    <li  class="shop_categogy_list shop_categogy_list_link"><a  href="index.php?action=home">THịNH HANH</a></li>
                    <li class="shop_categogy_list shop_categogy_list_link"><a  href="index.php?action=home&act=child&title=moinhat">MỚI NHẤT</a></li>
                    <li class="shop_categogy_list shop_categogy_list_link"><a  href="index.php?action=home&act=child&title=khuyenmai">KHUYẾN MÃI</a></li>
                </div>
            </div>
      
 
             <div class="contenner_product grid wide">
                        <!-- cac phan san pham chinh theo ten -->
<!-- phan trang -->
<?php 
    $seach ='';
    $mdPage = new Page();
    $limit = 12;
 
    $start = $mdPage -> firstStart($limit);
    $products = new Home();
    if(isset($_POST['search'])){
        $result = $products->getAll($_POST['search']);
        $count = $result->rowCount();
        $seach = $_POST['search'];
    // tra ve  so dong
        $pro =$products -> getPagination($start,$limit,$_POST['search']);    
    }
    else{
        $result = $products->getAll();
        $count = $result->rowCount();
        // tra ve  so dong
        $pro =$products -> getPagination($start,$limit);
    }
    $page =$mdPage -> findPage($count, $limit);
    $current_page = isset($_GET['page'])?$_GET['page']:1;

?>
    
               <div>  
                   <?php if(isset($_POST['search'])){
                       $s = $_POST['search'];
                       echo "<h1>BẠN ĐANG TÌM KIẾM TỪ KHÓA $s</h1>";
                   } ?>                        
                                <div class="header_product_main">
                                    <div class="header_product_main_left">
                                        <li class="product_main_name">
                                            <i class="fas fa-shopping-bag"></i>
                                            All Products
                                        </li>
                                        <li style="border-color:#71be11 ;" onclick="papechangenmain(this)" class="product_main_name_list active">MỚI NHẤT</li>
                                        <li style="border-color:#71be11 ;" onclick="papechangenmain(this)" class="product_main_name_list">BÁN CHẠY </li>
                                        <li style="border-color:#71be11 ;" onclick="papechangenmain(this)" class="product_main_name_list">GIÁ TỐT</li>
                                    </div>
                                    <div class="header_product_main_right">
                                        <li class="name_product_header">continue</li>
                                        <li class="name_product_header">continue</li>
                                        <li class="name_product_header">continue</li>
                                        <li class="product_header_main_view">continue <i class="fas fa-long-arrow-alt-right"></i></li>
                                    </div>
                                </div>
                                <div class="row">
                      <?php while ($set = $pro->fetch()): ?>
                                    <div class="col p-3 t-4 m-6">
                                        <div class="product_warp">
                                            <a href="index.php?action=home&act=detail&id=<?php echo $set['id'] ?>" class="product_img_wrap"><img class="product_img" src="./asset/img/<?php echo $set['hinhanh'] ?>"/>
        
                                                <span class="btn btn_other">
                                                    Tp.Hồ Chí Minh
                                                </span>
                                                <span class="btn btn_other btn_other_right ">
                                                    HOANG HA
                                                </span>
                                               <span class="item_product_img hidden">
                                                <div class="btn btn_view">
                                                    Xem ngay
                                                </div>
                                                <span class="btn btn_other btn_other_top">
                                                    <i class="far fa-clock"></i> Còn
                                                </span>
                                               </span>
                                                
                                             </a>
                                            <div class="product_name"> <?php echo $set['ten'] ?></div>
                                        <?php if($set['giakhuyenmai'] == 0): ?>
                                            <div class="product_price">
                                                <span class="product_price_value" ><?php echo $set['giamacdinh'] ?>
                                                    <span class="product_price_symboy">đ</span>
                                                </span>                           
                                            </div>
                                            <div class="product_price_info">
                                                <span style="text-decoration:line-through;" class="product_price_value" >
                                                    <span class="product_price_symboy"></span>
                                                </span> 
                                                <span class="product_price_view" >
                                                    <i style="color: #aaaaaa;" class="fas fa-user"></i>
                                                    <span style="color: #aaaaaa;" class="count_view"><?php echo $set['slxem'] ?></span>
                                                </span>     
                                            </div>
                                        <?php else : ?>
                                            <div class="product_price">
                                                <span class="product_price_value" ><?php echo $set['giakhuyenmai'] ?>
                                                    <span class="product_price_symboy">đ</span>
                                                </span>   
                                            </div>
                                            <div class="product_price_info">
                                                <span style="text-decoration:line-through;" class="product_price_value" ><?php echo $set['giamacdinh'] ?>
                                                    <span class="product_price_symboy">đ</span>
                                                    <div class="price__discount">
                                                        <span>-<?php echo round(($set['giamacdinh']-$set['giakhuyenmai'])*100/$set['giamacdinh']) ?>%</span>
                                                    </div>
                                                </span> 
                                                <span class="product_price_view" >
                                                    <i style="color: #aaaaaa;" class="fas fa-user"></i>
                                                    <span style="color: #aaaaaa;" class="count_view"><?php echo $set['slxem'] ?></span>
                                                </span>     
                                            </div>
                                        <?php endif; ?>
                                        </div>
                                    </div>
                  <?php endwhile; ?>
                 
                                </div>
            </div> 
            <div style="text-align:center" class="pagination">
                     <a class="<?php echo $_GET['page'] == 1 ? 'remove' : ''?>" href="index.php?action=home&seach=<?php echo $seach ?>&page=<?php echo $_GET['page']-1; ?>">&raquo;</a>
                <?php for($i=1;$i<=$page;$i++): ?>    
                    <a class="<?php echo $_GET['page'] == $i ? 'active':''?>" href="index.php?action=home&seach=<?php echo $seach ?>&page=<?php echo $i ?>"><?php echo $i; ?></a>
                <?php endfor; ?>
                    <a class="<?php echo $_GET['page'] == $page-1 ? 'remove' : ''?>" href="index.php?action=home&seach=<?php echo $seach ?>&page=<?php echo $_GET['page']+1; ?>">&raquo;</a>
            </div>
              <!-- end -->
                     </div>
                    
                 </div>
            </div>
        </div>
     
    