<%-- 
    Document   : member_account
    Created on : Nov 29, 2017, 7:51:34 PM
    Author     : ducvu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="css/thanhvien.css">
<div class="main-container">
    <div class="main">
        <div class="container">
            <div class="row">
                <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                    <div class="col-left">
                        <div class="col-left-title">
                            <strong><span>Tài Khoản</span></strong>
                        </div>
                        <div class="col-left-content">
                            <ul>
                                <li><a href="">Thông tin chung</a></li>
                                <li><a href="">Thông tin tài khoản</a></li>
                                <li><a href="">Đơn hàng của tôi</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
                    <div class="col-main">
                        <div class="my-account">
                            <div class="dashboard">
                                <div class="dashboard-title">
                                    <h1>Sửa thông tin tài khoản</h1>
                                </div>
                                <form action="thanhvien-thongtintk_submit" method="get" accept-charset="utf-8" class="form-acc">
                                    <ul>
                                        <li class="form-left">
                                            <label>Name</label>
                                            <div class="input-box">
                                                ABC
                                            </div>
                                        </li>
                                        <li class="form-right">
                                            <label>Giới tính</label>
                                            <div class="input-box">
                                                Nam
                                            </div>
                                        </li>
                                        <li class="form-left">
                                            <label>Ngày sinh</label>
                                            <div class="input-box">
                                                00/00/1990
                                            </div>
                                        </li>
                                        <li class="form-right">
                                            <label>Điện thoại</label>
                                            <span class="star">*</span>
                                            <div class="input-box">
                                                <input type="text" name="txttel" value="099999999">
                                            </div>
                                        </li>
                                        <li class="form-left">
                                            <label>Địa chỉ email</label>
                                            <span class="star">*</span>
                                            <div class="input-box">
                                                mail@gamil.com
                                            </div>
                                        </li>
                                        <li class="form-right">
                                            <label>Online ID</label>
                                            <div class="input-box">
                                                mail@gmail.com
                                            </div>
                                        </li>
                                        <li class="form-left">
                                            <label>Địa chỉ</label>
                                            <div class="input-box">
                                                <input type="text" name="txtaddress" value="Ngõ 1 Hà Nội">
                                            </div>
                                        </li>
                                        <li class="control">
                                            <input type="checkbox" name="change_password" id="change_password" onclick="setPasswordForm(this.checked)" class="checkbox">
                                            <label for="change_password">Đổi mật khẩu</label>
                                        </li>

                                        <div class="change-pass">
                                            <ul>
                                                <li class="form-left">
                                                    <label>Mật khẩu cũ</label>
                                                    <span class="star">*</span>
                                                    <div class="input-box">
                                                        <input type="text" name="txtold_password" value="">
                                                    </div>
                                                </li>
                                                <li class="form-left">
                                                    <label>Mật khẩu mới</label>
                                                    <span class="star">*</span>
                                                    <div class="input-box">
                                                        <input type="text" name="txtnew_password" value="">
                                                    </div>
                                                </li>
                                                <li class="form-right">
                                                    <label>Nhập lại mật khẩu mới</label>
                                                    <span class="star">*</span>
                                                    <div class="input-box">
                                                        <input type="text" name="txtnew_password_cf" value="">
                                                    </div>
                                                </li>

                                            </ul>
                                        </div>
                                        <div class="button-edit">
                                            <button type="submit" title="Mua vé" class="button">
                                                <span>Lưu lại</span>
                                            </button>
                                        </div>
                                    </ul>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function () {
        $('.change-pass').hide();
        $('#change_password').on('click', function () {
            // body...
            if ($('.change-pass').css('display') == 'none') {
                $('.change-pass').css('display', 'block');
            } else {
                $('.change-pass').css('display', 'none');
            }

        });
    });
    var pass = $('.change-pass');
    window.onclick = function (event) {
        if (event.target == pass) {
            pass.style.css = "none";
        }
    }
</script>