
    <div style="width:500px; border: 5px solid; margin: 100px">
        <div class="news_header">
            ĐĂNG NHẬP
        </div>
        <div class="horizontal"></div>
        <div class="news_content">
        <form action="index.php?action=user&act=check" method="post">
            <div class="news_input_warp">
      
                <div class="news_input_icon">
                    <i class="fas fa-user"></i>
                </div>
                <input class="news_input_email" name="email" placeholder="Nhập email" type="text">
            </div>
            <div class="news_input_warp">
                <div class="news_input_icon">
                    <i class="fas fa-lock"></i>
                </div>

                <input class="news_input_email" name="password" placeholder="Mật khẩu" type="text">
            </div>
            <div class="news_rules">
                <div class="utility_login">
                    <span><input type="checkbox">Ghi nhớ đăng nhập</span>
                    <span><a class="hover_link" style="color:#4d8ab7" href="">Quên mật
                            khẩu?</a></span>
                </div>

                <i class="fas fa-check success hidden"></i>
                <i class="fas fa-times fail hidden"></i>
            </div>
            <button class="btn btn_login">ĐĂNG NHẬP</button>
        </form>
            <span>Bạn chưa có tài khoảng?</span>
            <span><a class="hover_link" style="color:#4d8ab7" href="index.php?action=user&act=register">Đăng kí ngay</a></span>
        </div>
        <div class="footer_login">
            <div style="margin-bottom: 10px;">Hoặc đăng nhập bằng</div>
            <a href=""><img src="//www.hotdeal.vn/assets/img/icon-facebook.png"
                    alt="Đăng nhập bằng Facebook"></a>
            <a href=""><img src="//www.hotdeal.vn/assets/img/icon-google.png"
                    alt="Đăng nhập bằng Facebook"></a>
            <a href=""><img src="//www.hotdeal.vn/assets/img/icon-yahoo.png"
                    alt="Đăng nhập bằng Facebook"></a>
        </div>
    </div>
