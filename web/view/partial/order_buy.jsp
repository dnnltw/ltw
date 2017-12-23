<%-- 
    Document   : order_buy
    Created on : Dec 23, 2017, 7:45:43 PM
    Author     : ducvu
--%>

<%@page import="model.Client"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% Client client = (Client) session.getAttribute("user");%>
<div class="main-container">
    <div class="main">
        <div class="container">
            <div class="row">
                <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                    <div class="col-left">
                        <div class="col-left-title">
                            <strong><span>Hóa đơn</span></strong>
                        </div>
                        <div class="col-left-content">
                            <ul>
                                <li><a href="">Thông tin Hóa đơn</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
                    <div class="col-main">
                        <div class="my-account">
                            <div class="dashboard">
                                <div class="dashboard-title">
                                    <h1>Thông tin Hóa đơn</h1>
                                </div>
                                <ul>
                                    <li class="form-left">
                                        <label>Name</label>
                                        <div class="input-box">
                                            <%=client.getName()%>
                                            <input type="hidden" name="checkpass" value=<%=client.getPassword()%>>
                                        </div>
                                    </li>
                                    <li class="form-right">
                                        <label>Địa chỉ</label>
                                        <div class="input-box">
                                            <%=client.getAddress()%>
                                        </div>
                                    </li>
                                    <li class="form-left">
                                        <label>Email</label>
                                        <div class="input-box">
                                            <%=client.getMail()%>
                                        </div>
                                    </li>
                                    <li class="form-right">
                                        <label>Điện thoại</label>
                                        <span class="star">*</span>
                                        <div class="input-box">
                                            <%=client.getPhone()%>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
