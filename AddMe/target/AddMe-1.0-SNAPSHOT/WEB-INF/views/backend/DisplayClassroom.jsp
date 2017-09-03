<%-- 
    Document   : Display
    Created on : Aug 31, 2017, 11:16:15 AM
    Author     : romy
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Students</title>
        <title>Dashboard</title>
                <script src="http://code.jquery.com/jquery-1.12.4.js" ></script>

        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/assets/backend/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template -->
        <link href="${pageContext.request.contextPath}/assets/backend/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css"/>
        <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
        <!-- Custom styles for this template -->
        <link href="${pageContext.request.contextPath}/assets/backend/css/sb-admin.css" rel="stylesheet">
    </head>
    <body class="fixed-nav sticky-footer bg-dark" id="page-top">
        <%@include file="DashSiderBar.jsp" %>
        <div class="content-wrapper">

            <div class="container-fluid">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="#">Dashboard</a>
                    </li>
                    <li class="breadcrumb-item active">Display Students</li>
                </ol>
                <div class="table-responsive">
                    <table border="1" id="datatable" class="table table-striped">
                        <thead>

                        <th>Classroom ID</th>
                        <th> Class Room Name</th>
                        <th>Class Room Teacher</th>
                        <th>location</th>
                            

                        </thead>
                        <tbody>
                        <c:forEach items="${classroomdata}" var="classroom">
                            <tr> 
                                <td>${classroom.classroomid} </td>
                                <td>${classroom.classroomname} </td>
                                <td>${classroom.classroomteacher} </td>
                                <td>${classroom.location} </td>

                               
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                <script>
                    $(document).ready(function () {
                        $("#datatable").dataTable();
                    });
                </script>
            </div>
        </div>
    </body>

    <!-- Custom scripts for this template -->
    <script src="${pageContext.request.contextPath}/assets/backend/js/sb-admin.min.js"></script>


</html>



