<%-- 
    Document   : login_signin
    Created on : Nov 29, 2017, 7:37:20 PM
    Author     : ducvu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="css/login_signin.css">
<div class="main-container">
    <div class="lc-form">
        <div class="lc-form-main">
            <div class="lc-form-main-content">
                <div role="tabpanel">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active">
                            <a href="#login" aria-controls="login" role="tab" data-toggle="tab">Đăng nhập</a>
                        </li>
                        <li role="presentation">
                            <a href="#signin" aria-controls="signin" role="tab" data-toggle="tab">Đăng ký</a>
                        </li>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="login">
                            <div class="lc-form-login-main">
                                <div class="lc-form-login-content">
                                    <p class="lc-login-title">Vui lòng nhập tên người dùng (email) và mật khẩu của bạn...</p>
                                    <div class="lc-login-content">
                                        <ul class="lc-form-list">
                                            <li class="lc-form-input-email">
                                                <div class="input-box">
                                                    <input type="text" name="email" id="email"  title="Địa chỉ email">
                                                </div>
                                            </li>
                                            <li class="lc-form-input-pass">
                                                <div class="input-box">
                                                    <input type="password" name="password" id="password"  title="Password">
                                                </div>
                                            </li>
                                        </ul>	
                                        <div class="lc-form-button">
                                            <button class="button" type="submit" title="Đăng nhập" name="send">
                                                <span>
                                                    <span>Đăng nhập</span>
                                                </span>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="signin">
                            <div class="lc-form-signin-main">
                                <div class="lc-form-signin-content">
                                    <div class="lc-form-signin-form">
                                        <div class="row">
                                            <form action="" method="POST" role="form">
                                                <div class="col-md-6 form-group">
                                                    <label for="name">Họ và tên <span class="important">*</span></label>
                                                    <input type="text" class="input-sign form-control" id="name" placeholder="Họ và tên">
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label for="email">Email <span class="important">*</span></label>
                                                    <input type="email" class="input-sign form-control" id="email" placeholder="Email">
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label for="address">Địa chỉ<span class="important">*</span></label>
                                                    <input type="text" class="input-sign form-control" id="address" placeholder="Địa chỉ">
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label for="phone">Số điện thoại<span class="important">*</span></label>
                                                    <input type="number" class="input-sign form-control" id="phone" placeholder="Số điện thoại">
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label for="password">Mật khẩu<span class="important">*</span></label>
                                                    <input type="password" class="input-sign form-control" id="password" placeholder="Mật khẩu">
                                                </div>
                                                <div class="col-md-6 form-group">
                                                    <label for="cf-password">Nhập lại Mật khẩu<span class="important">*</span></label>
                                                    <input type="password" class="input-sign form-control" id="cf-password" placeholder="Nhập lại Mật khẩu">
                                                </div>
                                                <div class="col-md-12 form-group">
                                                    <button type="submit" class="">
                                                        <span>
                                                            <span>Đăng ký</span>
                                                        </span>
                                                    </button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
