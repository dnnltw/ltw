<%-- 
    Document   : detail_film
    Created on : Nov 29, 2017, 5:38:38 PM
    Author     : NguyenNgoc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css" href="css/phim-detail.css">

<script src="js/detail.js"></script>
<div class="main-container">

    <div class="breadcrumbs">
        <!-- // dành cho phim và rạp -->
        <ul>
            <li class="home">
                <a href="index.html"><span class="glyphicon glyphicon-home"></a>
                <span> / </span>
            </li>
            <li class="product">

            </li>
        </ul>
    </div>

    <div class="main">
        <div class="col-main">
            <div class="product-view">
                <div class="product-info">
                    <div class="product-tittle">
                        <h2>Nội Dung Phim</h2>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                                <div class="moive-image">

                                </div>
                            </div>
                            <div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
                                <div class="moive-info">
                                    <div class="moive-name">
                                    </div>
                                </div>
                                <div class="moive-detail-fb-booking">
                                    <button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-thumbs-up"></span>Like 858</button>

                                    <button type="button" title="Mua vé" class="button btn-booking">
                                        <span>MUA VÉ</span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="product-content">
                    <div role="tabpanel">
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs" role="tablist">
                            <li role="presentation" class="active">
                                <a href="#home" aria-controls="home" role="tab" data-toggle="tab"><span><img src="img/bg-icon-finger.png" alt="">Nội dung </span></a>
                            </li>
                            <li role="presentation" class="last">
                                <a href="#tab" aria-controls="tab" role="tab" data-toggle="tab"><span><img src="img/bg-icon-finger.png" alt="">Trailer</span></a>
                            </li>
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="home">

                            </div>
                            <div role="tabpanel" class="tab-pane" id="tab">
                                <iframe width="560" height="315" src="https://www.youtube.com/embed/xgpAYEcaShM" frameborder="0" allowfullscreen></iframe>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>

</div>