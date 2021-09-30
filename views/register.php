
    <div  style="width:500px; border: 5px solid; margin: 100px">
        <div class="news_header">
            ĐĂNG KÍ
        </div>
        <div class="horizontal"></div>
        <div class="news_content">
        <form action="index.php?action=user&act=add" method="post">
            <div class="news_input_warp">
                <div class="news_input_icon">
                    <i class="fas fa-lock"></i>
                </div>

                <input class="news_input_email" name="ten" placeholder="Tên của bạn" type="text">
            </div>
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

                <i class="fas fa-check success hidden"></i>
                <i class="fas fa-times fail hidden"></i>
            </div>
            <button type="submit" class="btn btn_login">ĐĂNG Kí</button>
        </form>
        
            <span>Bạn đã có tài khoảng?</span>
            <span><a class="hover_link" style="color:#4d8ab7" href="index.php?action=user&act=login">Đăng Nhập ngay</a></span>
        </div>
    </div>
