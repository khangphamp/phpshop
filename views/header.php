<?php 
    $md = new Header();
    $brands = $md->getBrand();
    $favorites = false;
    if(isset($_SESSION['id'])){
        $product =new Product();
        $favorites=$product->getFavorite($_SESSION['id']);
        $count =count($favorites);
        
    }
?>
<div class="header_shop">
   <div class="header_shop_top_wrap">
       <div class="header_shop_top grid wide">
           <div class="header_shop_top_left">
               <div class="shop_area">
                   <div onclick="openClick(this)" class="shop_area_select">
                       <i class="fas fa-map-marker-alt"></i>
                       Hồ Chí Minh
                       <i class="fa fa-caret-down"></i>
                       <div class="dropdown-menu dropdown-menu_wrap_select">
                           <li class="dropdown-menu_select"><i class="fas fa-map-marker-alt"></i> Hồ Chí Minh</li>
                           <li class="dropdown-menu_select"><i class="fas fa-map-marker-alt"></i> Hà Nội</li>
                           <li class="dropdown-menu_select"><i class="fas fa-map-marker-alt"></i> Tỉnh Thành Khác
                           </li>
                       </div>
                   </div>
                  
               </div>
               <span class="line-vertical"></span>
               <div class="shop_news">
                   <i class="fas fa-newspaper"></i>
                   Đăng kí bản tin
               </div>
               <!--dropdown ban tin  -->
               <div class="dropdown-menu dropdown-menu_wrap_news">
                   <div class="news_header">
                       ĐĂNG KÍ BẢN TIN
                   </div>
                   <div class="horizontal"></div>
                   <div class="news_content">
                       <div class="news_input_warp">
                           <div class="news_input_icon">
                               <i class="far fa-envelope "></i>
                           </div>
                           <input class="news_input_email" placeholder="Nhập email" type="text">
                       </div>
                       <select class="form_control">
                           <option value="">Chọn tỉnh thành </option>
                           <option value="">Hồ Chí Minh</option>
                           <option value=""> Hà Nội</option>
                           <option value="">Tỉnh Thành Khác</option>
                       </select>
                       <div class="news_rules">
                           <input class="news_rules_check" type="checkbox">
                           <span>Đồng ý với <a style="color:#8bc7e8;">chính sách bảo mật thông tin</a></span>
                           <i class="fas fa-check success hidden"></i>
                           <i class="fas fa-times fail hidden"></i>
                       </div>
                       <button class="btn btn_register">ĐĂNG KÝ</button>
                   </div>
               </div>
           </div>
           <div class="header_shop_top_right">
               <div class="header_shop_right_group">
                   <i class="fa fa-phone"></i>
                   <a>Hotline: 1900 6760</a>
               </div>
               <div class="header_shop_right_group">
                   <i class="fa fa-envelope"></i>
                   <a>Email: didong.vn</a>
               </div>
               <div class="header_shop_right_group">
                   <i class="fa fa-question-circle"></i>
                   <a>Hỗ trợ trực tuyến</a>
               </div>
               <span class="line-vertical"></span>
               <?php if(isset($_SESSION['ten'])):?>
                <div onclick="openClick(this)" class="header_shop_right_group">
                    <a href="index.php?action=user&act=logout"class="shop_right_group_login">Logout</a>            
                </div>
               
               <?php else: ?>
                    <div class="header_shop_right_group header_shop_right_register">
                    <i class="fas fa-user"></i>
                    <a href="index.php?action=user&act=register">Đăng ký</a>
                </div>
                <div onclick="openClick(this)" class="header_shop_right_group">
                    <a href="index.php?action=user&act=login"class="shop_right_group_login">Đăng nhập</a>
                    
                </div>
                <?php endif; ?>
          
           </div>
       </div>
       <!--header_shop_bottom  -->
       <div class="header_shop_bottom">
           <div class="header_shop_bottom_warp grid wide">
               <a  href="index.php?action=home" class="header_shop_bottom-logo">
                   <img style="width:64px; height:47px" src="https://brasol.vn/public/uploads/1521194768-brasol.vn-logo-gioi-di-dong-logo-the-gioi-di-dong.jpg" />
                </a>
               <div class="search">
                   <div class="search_warp">
                       <div class="search_category">
                           <span onclick="openClick(this)" class="itemclick">Tất cả danh mục
                               <i style="margin-left: 10px;" class="fa fa-caret-down"></i>
                           </span>
                           <div class="dropdown-menu dropdown-menu_category ">
                             <li class="dropdown-menu_select"><a>Tất cả danh mục</a></li>
                               <?php 
                                 while($set = $brands->fetch())
                                    {
                                        echo "<a href='index.php?action=home&act=child&title=".strtolower($set['ten'])."'><li class='dropdown-menu_select'>-".$set['ten']. "</li></a>";
                                    }
                               ?>
                            
                           </div>
                       </div>
                       <form style="display: flex" action="index.php?action=home" method="post">
                        <input required="required" name="search" type="text" class="input_search" placeholder="Tìm kiếm sản phẩm " />
                        <button type="submit" class="btn btn-search"><i style="font-size:18px;color:white"
                                class="fas fa-search"></i></button>
                        </form>
                   </div>
               </div>
               <?php if(isset($_SESSION['ten'])){
                   echo " <span class=\"product_main_name\"> Hi ". $_SESSION['ten']. "!</span>";
               } 
               ?>
                 
                <a  href="index.php?action=cart"class="header__cart-wrap">
                       <!-- <span class="header-cart-notice">3</span> -->
                       <i class="header_cart-icon fas fa-shopping-cart"></i>
              </a>
               <div class="header__cart">
                   <div onclick="openClick(this)" class="header__cart-wrap">
                       <span class="header-cart-notice"><?php echo !empty($count)?$count:'0' ?></span>
                       <i class="header_cart-icon fas fa-heart"></i>
                       <!-- <i class="header_cart-icon fas fa-shopping-cart"></i> -->
                   </div>
                   <!-- dropdown cart -->
                   <div class="dropdown-menu dropdown_menu_cart">
                       <div class="cart_list">
                        <?php if(isset($_SESSION['id']) && !$favorites == false ): ?>
                            <?php foreach($favorites as $value):?>                        
                           
                           <a href="index.php?action=home&act=detail&id=<?php echo $value['id'] ?>" class="cart_item">
                                   <span>
                                      <img src="./asset/img/<?php echo $value['hinhanh'] ?>" />
                                   </span>
                                   <span class="item_info">
                                       <div><?php echo $value['ten'] ?></div>
                                       <?php if($value['giakhuyenmai'] == 0): ?>
                                       <div><?php echo $value['giamacdinh'] ?></div>
                                       <?php else: ?>
                                       <div><?php echo $value['giakhuyenmai'] ?></div>
                                       <?php endif; ?>
                                   </span>
                            </a>
                           <?php

                           ?>
     
                          <?php endforeach; ?> 
                            
                        <?php else: ?>
                            <h1>Ko co gì ở đây cả</h1>
                       
                        <?php endif; ?>
                       </div>
                   </div>
               </div>
           </div>
       </div>
   </div>
</div>
