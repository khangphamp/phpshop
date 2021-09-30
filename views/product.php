<?php 
    $md = new Product();
    $product = $md->getDetail($_GET['id']);
    if($product['giakhuyenmai'] !== 0){
        $time = $md->getkhuyenmai($_GET['id']);
    }
    $imgs = $md -> getDetailImage($_GET['id']);
    $imgs2 = $md -> getDetailImage($_GET['id']);
    $favorite = false;
    if(isset($_SESSION['id'])){
        $favorite = $md -> getFavoriteDetail($_GET['id'],$_SESSION['id']);
        
    }
    $comments = $md -> getComment($_GET['id']);
    function handleTime($ss) {
        $m = ceil($ss/60);
        $h = ceil($ss/3600);
        $d = ceil($ss/86400);          
        if($m < 60){
            return "$m phút trước";
        }else if($h<=24) {
            return "$h giờ trước";
        }else {
            return "$d ngày trước"; 
        }
    }
?>
        <!-- content -->
        <div style="padding-top:20px;" class="contenter_shop">
            <!-- contenter_shop_categogy -->

            <div class="grid wide">
                <div class="product_details">
                    <div class="product_details_left">
                        <div class="product_details_left_img owl-carousel">
                            <img data-hash="10" src="./asset/img/<?php echo $product['hinhanh'] ?>" />
                            <?php   $i = 0; ?> 
                            <?php while($set = $imgs->fetch()):
                             $i = $i +1;
                            ?>
                            <img data-hash="<?php echo $i ?>" src="./asset/img/<?php echo $set['hinhanh'] ?>"/>
                            <?php      
                                endwhile;  
                            ?>   
                          
                        </div>
                        <div class="product_details_left_imgs">
                            <i class="fas fa-chevron-left"></i>
                            <div class="Carousel">
                                <div class="innerCarousel owl-carousel"> 
                                <a href="#10"> <img onclick="changeImg(this)" class="img_litle" src="./asset/img/<?php echo $product['hinhanh'] ?>" /></a>
                                <?php   $i = 0; ?>    
                                <?php while($set = $imgs2->fetch()):
                                    $i = $i +1; 
                                ?>
                                 <a href="#<?php echo $i ?>"><img onclick="changeImg(this)" class="img_litle" src="./asset/img/<?php echo $set['hinhanh'] ?>"/></a>
                                <?php      
                                    endwhile;  
                                ?>          
                               
                                    
                                       
                                </div>
                            </div>
                            <i class="fas fa-chevron-right"></i>
                        </div>
                    </div>
                    <div class="product_detail_right">
                        <h3 class="product_detail_right_title">
                        <?php echo $product['ten'] ?>
                        </h3>
                        <div class="product_detail_right_sharing">
                            <div class="like_group">
                                <i class="fas fa-thumbs-up"></i>
                                <span class="like_item">Thích</span>
                                <span class="like_number">1</span>
                            </div>
                            <div class="share_group">
                                <i class="fas fa-share-alt"></i>
                                <span class="like_item">Chia sẻ</span>
                            </div>
                        </div>
                        <p class="product_detail_right_info"><?php echo $product['mota'] ?></p>
                        <div class="product_details_buy">
                            <div class="product_price_main">

                        <?php if($product['giakhuyenmai'] == 0): ?>
                                <span class="product_price_initial">
                                    Giá : <span class="box_product product_price_value"><?php echo $product['giamacdinh'] ?></span>
                                    <span class="product_price_symboy">đ</span>
                                </span>
                        <?php else : ?>
                            <span class="product_price_initial">
                                    Giá gốc: <span class="price_initial"><?php echo $product['giamacdinh'] ?></span>
                                    <span class="product_price_symboy">đ</span>
                                </span>
                                <span class="box_product product_price_value  "><?php echo $product['giakhuyenmai'] ?>
                                    <span class="product_price_symboy">đ</span>
                                    <div class="box_product price__discount">
                                        <span>-<?php echo round(($product['giamacdinh']-$product['giakhuyenmai'])*100/$product['giamacdinh']) ?>%</span>
                                    </div>
                            </span>
                        <?php endif ?>
                        
                            </div>
                            <div class="box_refund_money">
                                <div class="box-select-membership">
                                    <img src="https://www.hotdeal.vn/assets/img/membership/icon-money.png" alt="">
                                    <div class="text-hoan-tien-membership">Hoàn đến <span>2,250đ</span> vào tài khoản
                                        của bạn</div>
                                    <img src="https://www.hotdeal.vn/assets/img/membership/ero-down.png" alt="">
                                </div>
                            </div>
                            <div class="box_qr_code">
                                <img
                                    src="https://s3-hd.hotdeal.vn/original/qrcode/qrcode_363182_188000_20210626.png?v=20200527">
                                Quét mua bằng QRPay
                            </div>
                            <div class="box_amount_product">
                                <span class="box_amount">
                                    <span style="color:#7a7575;font-size: 14px;">Số lượng</span>
                                    <select>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                        <option value="13">13</option>
                                        <option value="14">14</option>
                                        <option value="15">15</option>
                                        <option value="16">16</option>
                                        <option value="17">17</option>
                                        <option value="18">18</option>
                                        <option value="19">19</option>
                                        <option value="20">20</option>
                                        <option value="21">21</option>
                                        <option value="22">22</option>
                                        <option value="23">23</option>
                                        <option value="24">24</option>
                                        <option value="25">25</option>
                                        <option value="26">26</option>
                                        <option value="27">27</option>
                                        <option value="28">28</option>
                                        <option value="29">29</option>
                                        <option value="30">30</option>
                                        <option value="31">31</option>
                                        <option value="32">32</option>
                                        <option value="33">33</option>
                                        <option value="34">34</option>
                                        <option value="35">35</option>
                                        <option value="36">36</option>
                                        <option value="37">37</option>
                                        <option value="38">38</option>
                                        <option value="39">39</option>
                                        <option value="40">40</option>
                                        <option value="41">41</option>
                                        <option value="42">42</option>
                                        <option value="43">43</option>
                                        <option value="44">44</option>
                                        <option value="45">45</option>
                                        <option value="46">46</option>
                                        <option value="47">47</option>
                                        <option value="48">48</option>
                                        <option value="49">49</option>
                                        <option value="50">50</option>
                                    </select>
                                </span>
                                <div class="box_select_voucher">
                                    <p class="box_evc">
                                        <i class="fas fa-money-bill"></i>                   
                                            E-Voucher 
                                    </p>
                                    <p class="box_evc">
                                        <i class="fas fa-money-bill-alt"></i>
                                            Voucher
                                    </p>
                                </div>
                            </div>
                            <div class="add_to_cart">
                                <?php if(!$favorite == true): ?>
                                <a style="font-size:12px" href="index.php?action=product&act=favorite&id=<?php echo $_GET['id'] ?>" class="btn btn_buy_now">THÊM VÀO MỤC YÊU THÍCH</a>
                                <?php else: ?>
                                    <a style="font-size:12px" href="index.php?action=product&act=removefavorite&id=<?php echo $_GET['id'] ?>" class="btn btn_buy_now">XÓA KHỎI MỤC YÊU THÍCH</a>
                                <?php endif; ?>
                            <form action="index.php?action=product&act=addcart&id=<?php echo $_GET['id'] ?>" method="post">
                               <input type="hidden" name="ten" value="<?php echo $product['ten']?>" />      
                               <input type="hidden" name="hinhanh" value="<?php echo $product['hinhanh']?>" />  
                               <?php if ($product['giakhuyenmai']==0):?>   
                               <input type="hidden" name="gia" value="<?php echo $product['giamacdinh']?>" />
                               <?php else: ?>    
                               <input type="hidden" name="gia" value="<?php echo $product['giakhuyenmai']?>" />
                               <?php endif; ?> 
                                <button class="btn btn_add_cart">
                                    <i  class="header_cart-icon fas fa-shopping-cart"></i>
                                    THÊM VÀO GIỎ HÀNG
                                </button>
                            </form>
                            </div>
                            <div class="info_product_other">
                                <div class="user_buy">
                                    <i class="far fa-user"></i>
                                    100 đã mua
                                </div>
                                <!-- "$time[d] ngày $time[h] giờ $time[m]p $time[s]s"; -->
                             <?php if($time != false): ?> 
                                <div class="time_buy">
                                    <i class="far fa-clock"></i>
                                <span class="timeauto"><?php echo $time  ?></span>
                                </div>                              
                            <?php endif; ?>
                            </div>
                            <div class="product_grap_bike">
                                <p><i class="fas fa-car"></i>  Giao hàng miễn phí tại Hà Nội và TP.HCM cho đơn hàng từ 150,000đ</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="box box_info_other">
                    <div class="box_info_other_wrap">
                    <div class="box_info_character">
                        <h3  class="box_info_other_title">Điểm nổi bật</h3>
                       <p>- <?php echo $product['mota'] ?></p> </p>     
                    </div>
                    <div class="box_info_use">
                        <h3  class="box_info_other_title">THÔNG SỐ KĨ ThUẬT</h3>
                        - Màn hình: <?php echo $product['manhinh']?>
                    </br>

                        - Hệ điều hành: <?php echo $product['hedieuhanh']?>
                    </br>

                        
                        - Camera trước -<?php echo $product['cameratruoc']?>.
                    </br>

                        
                        - Camera sau: <?php echo $product['camerasau']?>.
                    </br>
                        
                        - Chip : <?php echo $product['chip']?>.
                    </br>
                        
                        - Ram : <?php echo $product['ram']?>
                    </br>
                        
                        - Màu sắc: <?php echo $product['mausac']?>
                    </div>
                </div>
                </div>
                <div class="row">
                    <div class="col p-9 t-12 m-12">
                        <div class="box box_detail-coment-address">
                            <div class="box_detail">
        <?php if(isset($_SESSION['id'])): ?>
        <form action="index.php?action=product&act=addcomment&id=<?php echo $product['id']?>" method="post">                   
            <textarea required="required" name="comment" type="text" class="input" placeholder="Write a comment"></textarea>
          <button  type="submit">Comment</button>
        </form>
        <?php endif ?>
                               <h3 id="danhgia" class="box_detail-coment-address_title detail_title">ĐÁNH GIÁ SẢN PHẨM</h3>                    
                               <div class="box_adress box_adress_review">
                                    <div class="review_rate_stars_wrap">
                                        <div class="review_rate_stars_sum">
                                            <div>
                                            <span class="review_rate_stars_store">5</span>  
                                            <span class="review_rate_stars_store_up"> trên 5</span>
                                            </div>
                                            <div>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                        </div>
                                        <div class="review_rate_filter_wrap">
                                            <span class="review_rate_filter">
                                                5 Sao (5)
                                            </span>
                                            <span class="review_rate_filter">
                                                4 Sao (1)
                                            </span>
                                            <span class="review_rate_filter">
                                                3 Sao (0)
                                            </span>
                                            <span class="review_rate_filter">
                                                2 Sao (0)
                                            </span>
                                            <span class="review_rate_filter">
                                                1 Sao (0)
                                            </span>
                                            <span class="review_rate_filter">
                                                Có bình luận (6)
                                            </span>
                                            <span class="review_rate_filter">
                                                Có hình ảnh, video(6)
                                            </span>
                                        </div>
                                    </div>
                    <?php while ($set = $comments->fetch()): ?> 
                                    <div class="box_user_comment_warp">
                                        <div class="avatar_comment">
                                            <img class="shop_avatar_img" src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/User_font_awesome.svg/1200px-User_font_awesome.svg.png">
                                        </div>

                                     
                                        <div class="comment_content_wrap">
                                            <div class="comment_name"><?php echo $set['name'] ?></div>
                                            <div class="comment_rate">
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <div class="comment_product_size">
                                                Phân loại hàng: Freesize(38- 62kg)
                                            </div>
                                            <div class="comment_main">
                                                  <?php echo $set['noidung'] ?>
                                            </div>
                                            <div class="comment_date">
                                                <?php
                                                 $time = strtotime('now')-strtotime($set['ngay']);                                               
                                                echo handleTime($time);
                                                ?>                                    
 
                                            </div>
                                        </div>
                                        <div>
                                        <button onclick="document.getElementById('comment<?php echo $set['id']?>').style.display='block'">tra loi comment nay</button>

<div style="display:none" id="comment<?php echo $set['id']?>" class="w3-modal">
  <div class="modal-content">
    <div class="container">
      <span onclick="document.getElementById('comment<?php echo $set['id']?>').style.display='none'" >&times;</span>
      <form action="index.php?action=product&act=addcommentsecond&id=<?php echo $product['id']?>" method="post">
            <input type="hidden" name="parent" value="<?php echo $set['id']?>"/>                   
          <textarea required="required" name="comment" type="text" class="input" placeholder="Write a comment"></textarea>
        <button   type="submit">Comment</button>
      </form>
    </div>
  </div>
</div>
</div>   
              

                            <div style="display: flex; flex-direction: column !important;: ;" class="box_user_comment_warp">
            <?php 
                
                $commentSeconds = $md -> getComment($_GET['id'],$set['id']);
                while ($set2 = $commentSeconds->fetch()):
            ?>
                <div>
                                        <div class="avatar_comment">
                                            <img class="shop_avatar_img" src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/User_font_awesome.svg/1200px-User_font_awesome.svg.png">
                                        </div>

                                     
                                        <div class="comment_content_wrap">
                                            <div class="comment_name"><?php echo $set2['name'] ?></div>
                                            <div class="comment_rate">
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <div class="comment_main">
                                                  <?php echo $set2['noidung'] ?>
                                            </div>
                                            <div class="comment_date">
                                                <?php
                                                 $time = strtotime('now')-strtotime($set2['ngay']);                                               
                                                echo handleTime($time);
                                                ?>                                    
 
                                            </div>
                                        </div>

                                        </div>  
                    <?php endwhile;  ?> 
                    
                                    </div>
                  
                                </div>
                                            
                     <?php endwhile; ?>        
                               </div>
                            </div>
                        </div>
                    </div>
                </div>              
            </div>
        </div>

        
