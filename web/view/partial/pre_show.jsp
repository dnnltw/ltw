<%-- 
    Document   : pre_show
    Created on : Dec 23, 2017, 5:32:25 PM
    Author     : NguyenNgoc
--%>
<%@page import="model.Film"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css" href="css/style_showing.css">
<link rel="stylesheet" type="text/css" href="css/now_showing_responsive.css">
<% ArrayList<Film> listPreFilm = (ArrayList <Film>) request.getAttribute("listPreFilm"); 
%>
<div class="content">
    <div class="container">
        <section>
            <h2>Phim sắp chiếu</h2>
            <div class="content-items">
                <!-- row -->
                <div class="row">
                    <!-- col1 -->
                    <div class="col-md-3 col-res">
                        <div class="content-item-wrapper">
                            <div class="content-item">
                                <a href="#"></a>
                                <img src="img/logan.jpg" alt="Chú hề ma quái">

                                <div class="info">
                                    <h4><a href="#">IT: Chú  hề ma quái</a></h4>
                                    <p>thể loại:
                                        <span>kinh dị</span>
                                    </p>

                                    <p>thời lượng:
                                        <span>133 phút</span>
                                    </p>

                                    <p>Khởi chiếu:
                                        <span>08/09/2017</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end col -->
                </div>
                <!-- end row -->


            </div>
        </section>
    </div>
</div>
