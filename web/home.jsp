<%-- 
    Document   : home
    Created on : Dec 2, 2017, 3:46:04 PM
    Author     : ducvu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>DNN</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/header01.css">
        <link rel="stylesheet" type="text/css" href="css/header_responsive.css">
        <link rel="stylesheet" type="text/css" href="css/css_footer.css">
        <link rel="stylesheet" type="text/css" href="css/respon-footer.css">
        <link rel="stylesheet" type="text/css" href="css/slider.css">
        <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        
        <script defer src="https://code.getmdl.io/1.2.1/material.min.js"></script>
        
    </head>
    <body>
        <!--day la trong index-->
        <jsp:include page='view/header.jsp' />
        <%
            try {
                if (request.getParameter("controller") != null) {
                    String t = "view/partial/" + request.getParameter("controller") + ".jsp";%>
        <jsp:include page='<%=t%>' /> 
        <%      } else { %>
        <jsp:include page='view/partial/home.jsp' /> 
        <%      }
        } catch (Exception e) { %>
        <jsp:include page='view/partial/home.jsp' /> 
        <%    }%>

        <style>
            .notify {
                position: fixed;
                top: 25px;
                left: 25px;
                width: 75px;
                height: 75px;
                /*background-image: url(img/notify.png);*/
            }
        </style>
        <div class="notify">
            <p>
                <button disabled class="js-push-btn mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">
                    Enable
                </button>
            </p>
<!--            <div class="subscription-details js-subscription-details is-invisible">
                <pre><code class="js-subscription-json"></code></pre>
            </div>-->
        </div>
        <script src="js/main.js"></script>
        <jsp:include page='view/footer.jsp' /> 
    </body>
</html>
