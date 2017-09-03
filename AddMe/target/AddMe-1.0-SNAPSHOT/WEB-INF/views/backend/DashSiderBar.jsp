<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard</title>
   
    </head>
    <body >
         <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/index">ADD ME</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
          <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
            <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseComponents" data-parent="#exampleAccordion">
              <i class="fa fa-fw fa-graduation-cap"></i>
              <span class="nav-link-text">
                Students & Classrooms</span>
            </a>
            <ul class="sidenav-second-level collapse" id="collapseComponents">
              <li>
                  <a href="${pageContext.request.contextPath}/dashboard"><i class="fa fa-fw fa-plus"></i><span class="classnav-link-text">Add </span></a>
              </li>
              <li>
                  <a href="${pageContext.request.contextPath}/displayclassroom"><i class="fa fa-fw fa-list"></i><span class="classnav-link-text">Display Classrooms</span></a>
              </li>
               <li>
                  <a href="${pageContext.request.contextPath}/displaystudents"><i class="fa fa-fw fa-list"></i><span class="classnav-link-text">Display Students</span></a>
              </li>
            </ul>
          </li>

        </ul>
        <ul class="navbar-nav sidenav-toggler">
          <li class="nav-item">
            <a class="nav-link text-center" id="sidenavToggler">
              <i class="fa fa-fw fa-angle-left"></i>
            </a>
          </li>
        </ul>
          <%@include file="DashHeader.jsp" %>
      </div>
    </nav>
    </body>
</html>