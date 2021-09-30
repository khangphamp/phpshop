<?php 
$cart = [];
if(isset($_SESSION['cart'][$_SESSION['id']])){
    $cart = $_SESSION['cart'][$_SESSION['id']];
    $valuegia = 0;
}
?>
<?php if(count($cart)!=0): ?>


    <div style=" border: 5px solid;" class="app__container">
        <div class="grid wide">
             <div class="shop_cart_count col p-12">
                 <div class="shop_cart_count_header">
                     <div class="shop_cart_count_header_left">
                         <span>Sản phẩm trong giỏ hàng</span>
                     </div>
                     <div  class="shop_cart_count_header_right">
                         <span>Đơn giá</span>
                         <span>Số lượng</span>
                         <span>Thành tiền</span>
                     </div>
                 </div>
                 <div class="shop_cart_count_content">
                 <?php foreach($cart as $value): ?>
                     <div class="shop_cart_count_item">
                         <li style="display: flex" class="header__cart-list-item-icon shop_cart_count_header_left">
                                     <img style="width: 50px;margin-right: 10px;" src="./asset/img/<?php echo $value['hinh']?>" alt="" class="header__cart-img">
                                    <div class="header__cart-list-info">
                                        <div class="header__cart-item-head">
                                            <div class="header__cart-item-name"><?php echo $value['ten']?></div>
                                        <div class="header__cart-item-last">
                                            <div class="header__cart-item-class">Phân loại hàng:Cao cấp</div>
                                        </div>
                                     </div>
                                </div>
                         </li>
                         <div class="shop_cart_count_header_right shop_cart_count_content_right">
                             <span class="header__cart-item-money cart_fee" ><?php echo $value['gia']?></span>
                             <span>
                    <form action="index.php?action=cart&act=update&id=<?php echo $value['id'] ?>" method="post">
                                 <input value="<?php echo $value['sl']?>" style="width: 40px;" type="number" min="1" max="100"  name="sl"/>
                       </span>
                             <span class="header__cart-item-money cart_sum"><?php echo $value['gia']*$value['sl']?></span>
                         </div>
                    
                         <button type="submit" style="width:70px; background-color:green" class="btn btn-primary">Update</button>
                    </form>
                         <button><a href="index.php?action=cart&act=delete&id=<?php echo $value['id'] ?>">xoa</a></button>
                     </div>
                     
                     <?php $valuegia=$valuegia + $value['gia']*$value['sl']?>
                     <?php endforeach; ?>
                   
                 </div>
                   
                 <div  class="shop_cart_count_footer">      
             

                    <h3>TổNG CỘNG</h3>
                     <h3 class="sum_fee_all"><?php echo $valuegia ?></h3>
  
              </div>
             
             </div>
           
        </div> 
    </div>
 

    <?php else: ?>
        <h1>KO CO GI CA</h1>
    <?php endif; ?>