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

        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/assets/backend/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/backend/css/sb-admin.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/assets/backend/vendor/chart.js/Chart.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/backend/vendor/jquery-easing/jquery.easing.min.js"></script>
       <script src="${pageContext.request.contextPath}/assets/backend/vendor/jquery/jquery.min.js"></script>

        <!-- Custom fonts for this template -->
        <link href="${pageContext.request.contextPath}/assets/backend/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/assets/backend/css/sb-admin.css" rel="stylesheet">


        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css"/>
        <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
        <!-- Custom styles for this template -->
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
                <center> <a href="${pageContext.request.contextPath}/index"><button class="btn btn-success">&Lleftarrow;<span>Go To Home & See Gallery</span></button></a></center>
                <div class="table-responsive">
                    <table border="1" id="datatable" class="table table-striped">
                        <thead>

                        <th>SId</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Phone Number</th>
                        <th> E-Mail</th>
                        <th>Photo</th>
                        <th>classroom_classroomid</th>
                                                <th>Edit</th>

                        <th>Delete</th>

                        </thead>
                        <tbody>
                        <c:forEach items="${studentdata}" var="student">
                            <tr> 
                                <td>${student.studentid} </td>
                                <td>${student.firstname} </td>
                                <td>${student.lastname} </td>
                                <td>${student.phonenumber} </td>
                                <td>${student.email} </td>
                                <td><img src="${student.photo}"  alt="nothing" height="60px" width="60px"/></td>
                                <td>${student.classroom} </td>

                                <td><a href="${pageContext.request.contextPath}/admin/student/edit/${student.studentid}">Edit</a></td>
                                <td><a href="${pageContext.request.contextPath}/admin/student/delete/${student.studentid}">Delete</a></td>
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
                
                
                
                
                
                
                 <!-- Custom scripts for this template -->
    <script src="${pageContext.request.contextPath}/assets/backend/vendor/popper/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/backend/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="${pageContext.request.contextPath}/assets/backend/vendor/chart.js/Chart.min.js"></script>
/

    <!-- Custom scripts for this template -->
    <script src="${pageContext.request.contextPath}/assets/backend/js/sb-admin.min.js"></script>

    </body>

   
</html>



