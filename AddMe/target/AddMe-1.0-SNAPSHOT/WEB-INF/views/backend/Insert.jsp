<%-- 
    Document   : Dashboard
    Created on : Aug 31, 2017, 10:12:47 AM
    Author     : romy
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard</title>
        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/assets/backend/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template -->
        <link href="${pageContext.request.contextPath}/assets/backend/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <!-- Plugin CSS -->
        <link href="${pageContext.request.contextPath}/assets/backend/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="${pageContext.request.contextPath}/assets/backend/css/sb-admin.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/backend/css/form.css" rel="stylesheet" type="text/css"/>
        <script src="${pageContext.request.contextPath}/assets/backend/js/EmailValidation.js" type="text/javascript"></script>
    </head>
    <body class="fixed-nav sticky-footer bg-dark" id="page-top">
        <%@include file="DashSiderBar.jsp" %>

        <div class="content-wrapper">

            <div class="container-fluid">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="#">Dashboard</a>
                    </li>
                    <li class="breadcrumb-item active">Insert Students</li>
                </ol>
                <form role="form" class="col-md-9 go-right" action="${pageContext.request.contextPath}/add" method="POST" enctype="multipart/form-data">
                    <h2>Insert</h2>
      <div class="form-group">
                        <input  name="studentid" type="hidden" class="form-control" value="${studentvalue.get(0).studentid}" required>
                        <label for="studentid">Student Id</label>
                    </div>
                    <div class="form-group">
                        <input  name="firstname" type="text" class="form-control" value="${studentvalue.get(0).firstname}" required>
                        <label for="firstname">First Name</label>
                    </div>
                    <div class="form-group">
                        <input  name="lastname" type="text" class="form-control" value="${studentvalue.get(0).lastname}" required>
                        <label for="lastname">Last Name</label>
                    </div>
                    <div class="form-group">
                        <input  name="phonenumber" type="text" class="form-control" value="${studentvalue.get(0).phonenumber}" required>
                        <label for="phonenumber">Primary Phone</label>
                    </div>
                    <div class="form-group" >
                        <input  name="email" type="text" class="form-control" value="${studentvalue.get(0).email}" required>
                        <label for="email">Email</label>
                    </div>
                    <div class="col-md-10" style="margin-bottom: 20px;">                    
                        <input class="file" type='file' name="file" id="imgSel" />${studentvalue.get(0).photo}
                    </div>        


                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="#">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Insert Classroom</li>
                    </ol>
                    <div class="form-group">
                        <input id="classroomname" name="classroomname" type="text" class="form-control" value="" required>
                        <label for="classroomname"> Class Room Name</label>
                    </div>
                    <div class="form-group" >
                        <input id="classroomteacher" name="classroomteacher" type="text" class="form-control" value="" required>
                        <label for="classroomteacher">Class Teacher</label>
                    </div>
                    <div class="form-group" >
                        <input id="location" name="location" type="text" class="form-control" value=""required>
                        <label for="Location">Location </label>
                    </div>
                    <div class="form-group" style="margin-top: 20px;">
                        <button type="submit" class="btn btn-primary">Submit</button>
                        <button type="reset" class="btn btn-success">Reset</button>
                    </div>
                </form>

            </div>
        </div>
    </div>
















    <!-- Bootstrap core JavaScript -->
    <script src="${pageContext.request.contextPath}/assets/backend/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/backend/vendor/popper/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/backend/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="${pageContext.request.contextPath}/assets/backend/vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/backend/vendor/chart.js/Chart.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/backend/vendor/datatables/jquery.dataTables.js"></script>
    <script src="${pageContext.request.contextPath}/assets/backend/vendor/datatables/dataTables.bootstrap4.js"></script>

    <!-- Custom scripts for this template -->
    <script src="${pageContext.request.contextPath}/assets/backend/js/sb-admin.min.js"></script>
</body>
</html>
