<%-- 
    Document   : index
    Created on : Dec 3, 2017, 12:06:23 AM
    Author     : ducvu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="admin/css/bootstrap.css">
        <link rel="stylesheet" href="admin/css/dataTables.bootstrap4.css">
    </head>
    <body>
        <jsp:include page='view/header.jsp' />

        <%
            try {
                if (request.getParameter("controller") != null && session.getAttribute("admin_login") != null) {
                    String t = "view/partial/" + request.getParameter("controller") + ".jsp";%>
        <jsp:include page='<%=t%>' /> 
        <%      } else { %>
        <jsp:include page='view/partial/login.jsp' /> 
        <%      }
        } catch (Exception e) { %>
        <jsp:include page='view/partial/login.jsp' /> 
        <%    }%>


        <footer>

        </footer> <!-- /footer -->
        <!-- script -->
        <script type="text/javascript" src="admin/js/jquery-1.10.2.min.js"></script>
        <script type="text/javascript" src="admin/js/jquery-slim.min.js"></script>
        <script type="text/javascript" src="admin/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="admin/js/vendor/popper.min.js"></script>
        <script type="text/javascript" src="admin/js/bootstrap.js"></script>
        <script type="text/javascript" src="admin/js/dataTables.bootstrap4.js"></script>
        <script type="text/javascript" src="admin/js/schedule/stepbystep.js"></script>
        <script type="text/javascript" src="admin/js/sale.js"></script>
        <script>
            (function () {
                window.addEventListener('load', function () {
                    var form = document.getElementById('needs-validation');
                    form.addEventListener('submit', function (event) {
                        if (form.checkValidity() === false) {
                            event.preventDefault();
                            event.stopPropagation();
                        }
                        form.classList.add('was-validated');
                    }, false);
                }, false);
            })();
        </script>
    </body>
</html>
