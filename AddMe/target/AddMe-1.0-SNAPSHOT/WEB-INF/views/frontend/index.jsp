<%-- 
    Document   : index
    Created on : Aug 30, 2017, 12:31:18 PM
    Author     : romy
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AddMe</title>
        <link href="${pageContext.request.contextPath}/assets/frontend/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="${pageContext.request.contextPath}/assets/frontend/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <link href="${pageContext.request.contextPath}/assets/frontend/css/style.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/assets/frontend/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.4.1/font/roboto/Roboto-Thin.woff2"/>
        <script src="${pageContext.request.contextPath}/assets/frontend/js/mdb.min.js" type="text/javascript"></script>
        <link href="${pageContext.request.contextPath}/assets/frontend/css/mdb.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!--        <link href="${pageContext.request.contextPath}/assets/frontend/css/thumbnail.css" rel="stylesheet" type="text/css"/>-->


        <style type="text/css">
            .navbar-nav>li>a{
                color:#90a4ae;
                font-family: cursive;
                font-size:25px;
                padding:20px;

            }
            .navbar-nav>li>a:hover{
                color:#1E88E5;
                font-family: cursive;
                font-size:25px;
                padding:20px;

            }
            .nav{
                opacity:0.5;
            }

            .container-fluid .bg{
                /*      padding: 60px 50px;*/
                background-color: #006064;
                color:#ffffff;
            }        
        </style>
    </head>

    <body>

        <!--        NAVBAR BEGINS-->



        <nav class="navbar navbar-dark #000000 cyan darken-4 ">
            <div class="container-fluid">
                <div class="navbar-header">
                    <!--        <a class="navbar-brand" href="#" >    <img src="/assets/frontend/images/logo2.png" alt="" style="height:36px;width: 36px"/></a>-->
                    <a class="navbar-brand" href="#" style="font-family:Comic Sans MS;color: #90a4ae;font-weight: bolder;font-size: 25px">AddMe</a>
                </div>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#">Home</a></li>
                    <li><a href="${pageContext.request.contextPath}/dashboard">Dashboard</a></li>
                </ul>
            </div>
        </nav>

        <!--    --------------------------NAVBAR ENDS----------------------->


        <div id="myCarousel" class="carousel slide" data-ride="carousel" style="margin-top:-20px">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="${pageContext.request.contextPath}/assets/frontend/images/IMAGES4.jpg" alt="Los Angeles" style="width:100%;height:400px"/>
                </div>

                <div class="item">
                    <img src="${pageContext.request.contextPath}/assets/frontend/images/IMAGE3.png" alt="Chicago" style="width:100%;height:400px;"/>
                </div>

                <div class="item">
                    <img src="${pageContext.request.contextPath}/assets/frontend/images/images.jpg" alt="New York" style="width:100%;height:400px;"/>
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <!--     -----------------------Corousal Closed-------------------------           -->



        <!--------------------------Classroom Gallery--------------------------------->

        <div class="container-fluid text-center">
            <h2>Portfolio of Students</h2>
            <div class="col-md-12">

                <c:forEach items="${studentdata}" var="st">

                    <div class="row text-center">
                        <div class="col-md-2">
                            <div class="thumbnail">
                                <img src="${pageContext.request.contextPath}/${st.photo}" alt="Insert from Dashboard" style="height:70px;width:70px;">
                                <p><strong>${st.firstname} <span>${st.lastname}</span></strong></p>
                                <p>Yes, we built Paris</p>
                            </div>
                        </div>
                    </c:forEach>
                </div>

            </div>
        </div>
        <!--  -------------------------------Classroom Gallery Closed---------------------->





        <!--        -------------------------------------Footer------------------------------------------>

        <div class="container-fluid bg">
            <h2 class="text-center">CONTACT</h2>
            <div class="row">
                <div class="col-sm-5">
                    <p>Contact us and we'll get back to you within 24 hours.</p>
                    <p><span class="glyphicon glyphicon-map-marker"></span> Chicago, US</p>
                    <p><span class="glyphicon glyphicon-phone"></span> +00 1515151515</p>
                    <p><span class="glyphicon glyphicon-envelope"></span> myemail@something.com</p> 
                </div>
                <div class="col-sm-7">
                    <div class="row">
                        <div class="col-sm-6 form-group">
                            <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
                        </div>
                        <div class="col-sm-6 form-group">
                            <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
                        </div>
                    </div>
                    <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
                    <div class="row">
                        <div class="col-sm-12 form-group">
                            <button class="btn btn-default pull-right" type="submit">Send</button>
                        </div>
                    </div> 
                </div>
            </div>
        </div>
        <!---------------------------------------Footer------------------------------------->
    </body>
</html>
