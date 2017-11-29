<%-- 
    Document   : index
    Created on : Nov 29, 2017, 3:20:56 PM
    Author     : NguyenNgoc
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
        <script src="js/home.js"></script>
    </head>
    <body>
        <jsp:include page='view/header.jsp' />
        <%
            try {
                if (request.getParameter("controller") != null) {
                    String t = "view/partial/" + request.getParameter("controller") + ".jsp";%>
                    <jsp:include page='<%=t%>' /> 
        <%      }else{ %>
                    <jsp:include page='view/partial/home.jsp' /> 
        <%      } 
            } catch (Exception e) { %>
                <jsp:include page='view/partial/home.jsp' /> 
        <%    }%>

        
        <jsp:include page='view/footer.jsp' /> 
    </body>
</html>
