<%-- 
    Document   : schelude
    Created on : Nov 29, 2017, 5:44:57 PM
    Author     : NguyenNgoc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="css/view_lichchieu_main.css">
<div class="main-container">
    <div class="lc-main">
        <div class="row">
            <div class="lc-col-main">
                <!-- main-container -->
                <div class="lc-main-container">
                    <div class="lc-main-theater-header">
                        <div class="home-title">
                            <h3>Rạp chiếu phim</h3>
                        </div>
                        <div class="page-title theater-title">
                            <h3>CGV Hồ Gươm Plaza</h3>
                        </div>
                    </div>
                    <!-- slide  -->
                    <div class="lc-main-slide">
                        <div id="carousel-id" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="item">
                                    <img alt="CGV Hồ Gươm Plaza" src="img/slide1.jpg">
                                </div>
                                <div class="item">
                                    <img  alt="CGV Hồ Gươm Plaza" src="img/slide2.jpg">
                                </div>
                                <div class="item active">
                                    <img alt="CGV Hồ Gươm Plaza" src="img/slide3.jpg">
                                </div>
                            </div>
                            <div class="carousel-caption-text">
                                <div class="carousel-caption-left">
                                    <div class="carousel-caption-left-content">
                                        <h6>Tầng 3, TTTM Hồ Gươm Plaza, 102 Trần Phú, Phường Mỗ Lao, Quận Hà Đông, Hà Nội</h6>
                                        <h6><strong>Fax: </strong>+84 4 6 275 5240</h6>
                                        <h6><strong>Hotline: </strong> 1900 6017</h6>
                                    </div>
                                </div>
                                <div class="carousel-caption-right">
                                    <ul class="carousel-caption-right-nav">
                                        <li><a href="#" class="btn-carousel">XEM BẢN ĐỒ</a></li>
                                        <li><a href="#" class="btn-carousel">LIÊN HỆ CGV</a></li>
                                    </ul>
                                </div>
                            </div>
                            <a class="left carousel-control" href="#carousel-id" data-slide="prev"><span class="prev-left"></span></a>
                            <a class="right carousel-control" href="#carousel-id" data-slide="next"><span class="next-right"></span></a>
                        </div>
                    </div>
                    <!-- showtime -->
                    <div class="lc-main-showtimes-title">
                        <div role="tabpanel" class="lc-main-showtimes-tabs">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs nav-showtimes" role="tablist">
                                <li role="presentation" class="active">
                                    <a href="#lichchieu" aria-controls="lichchieu" role="tab" data-toggle="tab" class="showtime-select-one">Lịch chiếu</a>
                                </li>
                                <li role="presentation">
                                    <a href="#giave" aria-controls="giave" role="tab" data-toggle="tab" class="showtime-select-one">Giá vé</a>
                                </li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane active" id="lichchieu">
                                    <!-- lich  -->
                                    <div class="lc-main-showtimes">
                                        <div role="tabpanel">
                                            <!-- Nav tabs -->
                                            <!-- tab child -->
                                            <ul class="nav nav-tabs nav-showtimes-child" role="tablist">
                                                <li role="presentation" class="active">
                                                    <a href="#theater1" aria-controls="theater1" role="tab" data-toggle="tab">
                                                        <span>09</span>
                                                        <em>Tue</em>
                                                        <strong>26</strong>
                                                    </a>
                                                </li>
                                                <li role="presentation">
                                                    <a href="#theater2" aria-controls="theater2" role="tab" data-toggle="tab">
                                                        <span>10</span>
                                                        <em>Wue</em>
                                                        <strong>27</strong>
                                                    </a>
                                                </li>
                                            </ul>
                                            <!-- end tab child -->
                                            <!-- Tab panes  showtimes film-->
                                            <div class="tab-content tabs-showtimes">
                                                <div role="tabpanel" class="tab-pane active" id="theater1">
                                                    <!-- film -->
                                                    <div class="lc-main-showtimes-film">
                                                        <!-- title -->
                                                        <div class="lc-main-showtimes-film-header">
                                                            <h3><a href="#" title="Kingsman : Tổ Chức Hoàng Kim">KINGSMAN : TỔ CHỨC HOÀNG KIM</a></h3>
                                                        </div>
                                                        <!-- end title -->
                                                        <div class="lc-main-showtimes-film-left">
                                                            <!-- poster -->
                                                            <div class="lc-main-showtimes-film-poster">
                                                                <a href="#" title="Kingsman : Tổ Chức Hoàng Kim">
                                                                    <img src="img/kingman.jpg" alt="Kingsman : Tổ Chức Hoàng Kim">
                                                                </a>
                                                            </div>
                                                            <!-- end poster -->
                                                        </div>
                                                        <div class="lc-main-showtimes-film-right">
                                                            <div class="showtimes-film-tech">
                                                                <strong>2D Phụ Đề Việt</strong>
                                                            </div>
                                                            <div class="showtimes-film-all">
                                                                <ul>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>14:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>15:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>16:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>17:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>18:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>19:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>20:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>21:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>22:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>23:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="clear-both"></div>
                                                            <div class="showtimes-film-tech">
                                                                <strong>3D Phụ Đề Việt</strong>
                                                            </div>
                                                            <div class="showtimes-film-all">
                                                                <ul>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>14:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>15:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>16:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>17:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>18:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>19:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>20:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>21:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>22:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>23:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="clear-both"></div>
                                                    <hr>
                                                    <!-- end film -->
                                                    <!-- film -->
                                                    <div class="lc-main-showtimes-film">
                                                        <div class="lc-main-showtimes-film-header">
                                                            <!-- title -->
                                                            <h3><a href="#" title="Amityville: Quỷ Dữ Thức Tỉnh">Amityville: Quỷ Dữ Thức Tỉnh</a></h3>
                                                            <!-- end title -->
                                                        </div>
                                                        <div class="lc-main-showtimes-film-left">
                                                            <!-- poster -->
                                                            <div class="lc-main-showtimes-film-poster">
                                                                <a href="#" title="Amityville: Quỷ Dữ Thức Tỉnh">
                                                                    <img src="img/amityville.jpg" alt="Amityville: Quỷ Dữ Thức Tỉnh">
                                                                </a>
                                                            </div>
                                                            <!-- end poster -->
                                                        </div>
                                                        <div class="lc-main-showtimes-film-right">
                                                            <div class="showtimes-film-tech">
                                                                <strong>2D Phụ Đề Việt</strong>
                                                            </div>
                                                            <div class="showtimes-film-all">
                                                                <!-- time list -->
                                                                <ul>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>14:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>15:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>16:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>17:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>18:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                                <!-- end time list -->
                                                            </div>
                                                            <div class="clear-both"></div>
                                                            <div class="showtimes-film-tech">
                                                                <strong>3D Phụ Đề Việt</strong>
                                                            </div>
                                                            <div class="showtimes-film-all">
                                                                <!-- time list -->
                                                                <ul>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>14:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>15:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                                <!-- end time list -->
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="clear-both"></div>
                                                    <hr>
                                                    <!-- end film -->
                                                </div>
                                                <div role="tabpanel" class="tab-pane" id="theater2">
                                                    <!-- film -->
                                                    <div class="lc-main-showtimes-film">
                                                        <!-- title -->
                                                        <div class="lc-main-showtimes-film-header">
                                                            <h3><a href="#" title="Chí Phèo Ngoại Truyện">Chí Phèo Ngoại Truyện</a></h3>
                                                        </div>
                                                        <!-- end title -->
                                                        <div class="lc-main-showtimes-film-left">
                                                            <!-- poster -->
                                                            <div class="lc-main-showtimes-film-poster">
                                                                <a href="#" title="Chí Phèo Ngoại Truyện">
                                                                    <img src="img/cp.jpg" alt="Chí Phèo Ngoại Truyện">
                                                                </a>
                                                            </div>
                                                            <!-- end poster -->
                                                        </div>
                                                        <div class="lc-main-showtimes-film-right">
                                                            <div class="showtimes-film-tech">
                                                                <strong>2D Phụ Đề Việt</strong>
                                                            </div>
                                                            <div class="showtimes-film-all">
                                                                <ul>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>14:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>15:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>16:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>17:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>18:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>19:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>20:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>21:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>22:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>23:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="clear-both"></div>
                                                            <div class="showtimes-film-tech">
                                                                <strong>3D Phụ Đề Việt</strong>
                                                            </div>
                                                            <div class="showtimes-film-all">
                                                                <ul>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>14:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>15:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>16:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>17:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>18:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>19:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>20:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>21:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>22:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>23:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="clear-both"></div>
                                                    <hr>
                                                    <!-- end film -->
                                                    <!-- film -->
                                                    <div class="lc-main-showtimes-film">
                                                        <div class="lc-main-showtimes-film-header">
                                                            <!-- title -->
                                                            <h3><a href="#" title="IT: Chú Hề Ma Quái">IT: Chú Hề Ma Quái</a></h3>
                                                            <!-- end title -->
                                                        </div>
                                                        <div class="lc-main-showtimes-film-left">
                                                            <!-- poster -->
                                                            <div class="lc-main-showtimes-film-poster">
                                                                <a href="#" title="IT: Chú Hề Ma Quái">
                                                                    <img src="img/it.png" alt="IT: Chú Hề Ma Quái">
                                                                </a>
                                                            </div>
                                                            <!-- end poster -->
                                                        </div>
                                                        <div class="lc-main-showtimes-film-right">
                                                            <div class="showtimes-film-tech">
                                                                <strong>2D Phụ Đề Việt</strong>
                                                            </div>
                                                            <div class="showtimes-film-all">
                                                                <!-- time list -->
                                                                <ul>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>14:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>15:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>16:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>17:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>18:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                                <!-- end time list -->
                                                            </div>
                                                            <div class="clear-both"></div>
                                                            <div class="showtimes-film-tech">
                                                                <strong>3D Phụ Đề Việt</strong>
                                                            </div>
                                                            <div class="showtimes-film-all">
                                                                <!-- time list -->
                                                                <ul>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>14:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <span>15:20 PM</span>
                                                                            <br>
                                                                            <span>89 ghế trống</span>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                                <!-- end time list -->
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="clear-both"></div>
                                                    <hr>
                                                    <!-- end film -->
                                                </div>
                                            </div>
                                            <!-- end showtimes film -->
                                        </div>
                                    </div>
                                    <!-- end lich -->
                                </div>
                                <div role="tabpanel" class="tab-pane" id="giave">
                                    <!-- gia ve  -->
                                    <div class="lc-main-ticket">
                                        <!-- qc -->
                                        <div class="lc-main-ticket-qc">
                                            <img src="img/qc.png" alt="">
                                        </div>	
                                        <!-- end qc -->
                                        <!-- table gia ve  -->
                                        <div class="lc-main-ticket-table">
                                            <table>
                                                <thead>
                                                    <tr>
                                                        <th colspan="7" class="table-ticket-title">BẢNG GIÁ VÉ 2D</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td colspan="3" class="table-ticket-col3 ticket-day">Thứ Hai, Thứ Ba, Thứ Năm</td>
                                                        <td rowspan="2" class="table-ticket-col1 ticket-day">Thứ Tư Vui Vẻ</td>
                                                        <td colspan="3" class="table-ticket-col3 ticket-day">Thứ Sáu, Thứ Bảy,Chủ Nhật Và Ngày Lễ</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="table-ticket-col1 ticket-cate">
                                                            Suất Chiếu Đầu Tiên,<br>
                                                            Trẻ Em, <br>
                                                            Thành Viên CGV Young</td>
                                                        <td class="table-ticket-col1 ticket-cate">Trước 12:00, <br>
                                                            Học Sinh, Sinh Viên, <br>
                                                            Người Cao Tuổi</td>
                                                        <td class="table-ticket-col1 ticket-cate">
                                                            Người Lớn,<br>
                                                            Sau 12:00</td>
                                                        <td class="table-ticket-col1 ticket-cate">
                                                            Thành Viên CGV Young, <br>
                                                            Trước 17:00, <br>
                                                            Trẻ Em</td>
                                                        <td class="table-ticket-col1 ticket-cate">Học Sinh Sinh Viên, <br>
                                                            Trước 17:00, <br>
                                                            Người Cao Tuổi</td>
                                                        <td class="table-ticket-col1 ticket-cate">Người Lớn</td>
                                                    </tr>
                                                    <tr class="value">
                                                        <td class="table-ticket-col1">55.000</td>
                                                        <td class="table-ticket-col1">60.000</td>
                                                        <td class="table-ticket-col1">75.000</td>
                                                        <td class="table-ticket-col1">60.000</td>
                                                        <td class="table-ticket-col1">60.000</td>
                                                        <td class="table-ticket-col1">70.000</td>
                                                        <td class="table-ticket-col1">90.000</td>
                                                    </tr>
                                                    <tr>
                                                        <th colspan="7" class="ticket-footer" >PHỤ THU: ● Ghế VIP +5.000</th>
                                                    </tr>
                                                </tbody>
                                            </table>

                                            <table class="table-nl">
                                                <thead>
                                                    <tr>
                                                        <th colspan="3" class="table-ticket-title">Ngày Lễ</th>
                                                    </tr>

                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td class="table-ticket-col3-nl">Trẻ Em, <br>Thành Viên CGV Young</td>
                                                        <td class="table-ticket-col3-nl">Học Sinh, Sinh Viên, <br>Người Cao Tuổi</td>
                                                        <td class="table-ticket-col3-nl">Người Lớn</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="table-ticket-col1-nl">60.000</td>
                                                        <td class="table-ticket-col1-nl">80.000</td>
                                                        <td class="table-ticket-col1-nl">105.000</td>
                                                    </tr>
                                                    <tr>
                                                        <th colspan="3" class="ticket-footer" >PHỤ THU: ● Ghế VIP +5.000</th>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <!-- end table gia ve -->

                                        <!-- luu y  -->

                                        <div class="lc-main-note">
                                            <h2>Lưu ý:</h2>
                                            <ul>
                                                <li>- Vui lòng xuất trình thẻ thành viên CGV trước khi mua vé để được tích điểm.</li>
                                                <li>- Giá vé khi đặt vé trực tuyến trên website CGV là giá vé người lớn. Các loại vé như học sinh-sinh viên, vé trẻ em và người cao tuổi vui lòng mua trực tiếp tại quầy vé tại các rạp CGV Cinemas.</li>
                                                <li>- Vé trẻ em chỉ xuất khi có sự hiện diện của trẻ dưới 1m3 và trên 2 tuổi.</li>
                                                <li>- Vé người cao tuổi chỉ dành cho khách hàng từ 55 tuổi trở lên. Vui lòng xuất trình CMND khi mua vé.</li>
                                                <li>- Vé học sinh – sinh viên: xuất trình thẻ học sinh – sinh viên để được hưởng các quyền lợi trên.</li>
                                            </ul>
                                        </div>
                                        <!-- end luu y  -->
                                    </div>
                                    <!-- end gia ve -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end showtime -->

                </div>
            </div>
        </div>
    </div>
</div>
