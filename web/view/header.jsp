<%-- 
    Document   : header
    Created on : Nov 29, 2017, 3:41:30 PM
    Author     : NguyenNgoc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--<link rel="stylesheet" type="text/css" href="css/style.css">-->

<div class="header">
    <div class="Quangcao">
        <a href="#" target="_blank">
            <img class="banner img-responsive" src="img/banner.png" alt="Du hoc cung RMIT">
        </a>
    </div>
    <div class="menu">
        <ul>
            <li><a href="#">Đăng Nhập</a></li>
            <li><a href="#">Đăng Ký</a></li>
            <li><a href="#" id="lienhe">Liên Hệ</a></li>
            <li><a href="#" id="tuyendung">Tuyển Dụng</a></li>
        </ul>
    </div>
    <div class="navbar-default">
        <div class="navbar-header">
            <a href="#" class="logo">
                <img src="img/cgvlogo.png" alt="cgv" class="large">
                <img src="img/cgvlogo-small.png" alt="cgv" class="small">
            </a>
            <div class="icon">
                <button data-target="#item3" class="navbar-toggle icon3" data-toggle="collapse" >
                    <span class="sr-only"></span>
                    <span>EN</span>
                </button>

                <button data-target="#item2" class="navbar-toggle icon2" data-toggle="collapse" >
                    <span class="sr-only"></span>
                    <span class="glyphicon glyphicon-user"></span>
                </button>

                <button data-target="#item1" class="navbar-toggle icon1" data-toggle="collapse">
                    <span class="sr-only"></span>
                    <span class="glyphicon glyphicon-search"></span>
                </button>
                <button data-target="#item" class="navbar-toggle icon0" data-toggle="collapse" >
                    <span class="sr-only"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
        </div>
        <div class="navbar-collapse collapse menu-top" id="item">
            <ul class="nav navbar-nav">
                <li>
                    <a href="" title="">PHIM</a>
                    <ul class="menu-sub">
                        <li><a href="" title="">Phim Đang Chiếu</a></li>
                        <li><a href="" title="">Phim Sắp Chiếu</a></li>
                        <li><a href="" title="">CGV ArtHouse</a></li>
                    </ul>
                </li>
                <li><a href="" title="">LỊCH CHIẾU</a></li>
                <li>
                    <a href="" title="">RẠP CGV</a>
                    <ul class="menu-sub">
                        <li><a href="" title="Về Rạp CGV">Về Rạp CGV</a></li>
                        <li><a href="" title="Đặc Trưng CGV">Đặc Trưng CGV</a></li>
                    </ul>
                </li>
                <li>
                    <a href="" title="">THÀNH VIÊN</a>
                    <ul class="menu-sub">
                        <li><a href="" title="Thành Viên">Thành Viên</a></li>
                        <li><a href="" title="Đăng Ký">Đăng Ký</a></li>
                    </ul>
                </li>
            </ul>
            <div class="search">
                <div class="search-left">
                    <a href="#">
                        <img src="img/tin-moi-uu-dai.gif">
                    </a>
                    <div class="navbar-collapse collapse" id="">
                        <input type="text" class="search_mini" placeholder="enter the search">
                    </div>
                </div>
                <div class="search-right">
                    <p><a href="#"><img src="img/mua-ve_ngay.png" alt="mua-ve-ngay"></a></p>
                </div>
            </div>
        </div>
        <div class="navbar-collapse collapse" id="item1">
            <input type="text" class="form-control" placeholder="enter the search">
        </div>
        <!-- <div class="navbar-collapse collapse" id="item2">
          <ul class="nav navbar-nav listmenu2">
            <li><a href="#">Tài khoản</a></li>
            <li><a href="#">Giỏ Hàng</a></li>
            <li><a href="#">Thanh Toán</a></li>
            <li><a href="#">Đăng Ký</a></li>
            <li><a href="#">Đăng Nhập</a></li>
          </ul>
        </div> -->
    </div>
</div>