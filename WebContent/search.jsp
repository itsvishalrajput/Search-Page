<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html >
<html>
<head>

<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Shop Homepage </title>

    <!-- Bootstrap Core CSS -->
    <link href="views/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="views/css/shop-homepage.css" rel="stylesheet">
</head>

<body style="text-align:center;">

<!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Start Shopping</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#">About</a>
                    </li>
                    <li>
                        <a href="#">Services</a>
                    </li>
                    <li>
                        <a href="#">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    
    
    
<!-- <form method="post" action="login">
	<input type="text" placeholder="Username" name="uname"/>
	<input type="text" placeholder="Password" name="pswd"/>
	<input type="submit" value="Login" id="loginButton"/>
</form> -->

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    	$(function () {
     	   $("input[name=searchBox]").click(function () {
       	     if ($(this).val() == 'Price' && $(this).is(":checked")) {
        	        $("#dvSearchField").show();
         	   } else if ($(this).val() == 'Popularity' && $(this).is(":checked")){
         	       $("#dvSearchField").show();
         	   } else if ($(this).val() == 'Brand' && $(this).is(":checked")){
         	       $("#dvSearchField").show();
         	   } else{
         		  $("#dvSearchField").hide();
         	   }
			});
   		});
</script>

	<!-- Page Content -->
    <div class="container">

        <div class="row">

            <div class="col-md-3">
                <p class="lead">Shop Name</p>
                <div class="list-group">
                    <a href="#" class="list-group-item">Category 1</a>
                    <a href="#" class="list-group-item">Category 2</a>
                    <a href="#" class="list-group-item">Category 3</a>
                </div>
            </div>

            <div class="col-md-9">

                <div class="row carousel-holder">

                    <div class="col-md-12">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img class="slide-image" src="http://placehold.it/800x300" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="http://placehold.it/800x300" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="http://placehold.it/800x300" alt="">
                                </div>
                            </div>
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>

                </div>
                
		<form method="get" action="Products">
		<input type="radio" name="searchBox" id="chkBrand" value="Brand">Search By Brand &emsp;&emsp;&emsp;&emsp;
		<input type="radio" name="searchBox" id="chkPrice" value="Price">Search By Price &emsp;&emsp;&emsp;&emsp;
		<input type="radio" name="searchBox" id="chkPopularity" value="Popularity">Search By Popularity &nbsp;&nbsp;	
		
			<div id="dvSearchField" style="display: none">
			<!-- <form action="Products" method="get"> -->
			<input type="text" placeholder="Search a product" name="searchProduct">
			<input type="submit" value="SEARCH">
			</div>
			</form>
			<c:if test="${fn:length(productList) ge 0}">
			<c:forEach var="ProductObj" items="${productList}">
			<div class="row">

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="${ProductObj.image }" alt="">
                            <div class="caption">
                                <h4 class="pull-right"></h4>
                                <h4><a href="#">${ProductObj.name }</a>
                                </h4>
                                <h5>Price- ${ProductObj.price }</h5>
                                <p>Brand- ${ProductObj.brand }</p>
                                <p>Specs- ${ProductObj.desc }.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">15 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>
                    
                    
             </div>
             </c:forEach>
             </c:if>
          </div>
        </div>
      </div>
             
        <div class="container">

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Website 2016</p>
                </div>
            </div>
        </footer>

    	</div>
    	<!-- /.container -->
    	
    	<!-- jQuery -->
    <script src="views/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="views/js/bootstrap.min.js"></script>
             
             
			<%-- <c:if test="${fn:length(productList) ge 0}">
				<table border='1'>
				<tr>
					<th>Product ID</th>
					<th>Product Name</th>
					<th>Price</th>
					<th>Brand</th>
					<th>Description</th>
					<th>Image</th>
					</tr>
				<c:forEach var="ProductObj" items="${productList}">
					<tr>
					<td>${ProductObj.id }</td>
					<td>${ProductObj.name }</td>
					<td>${ProductObj.price }</td>
					<td>${ProductObj.brand }</td>
					<td>${ProductObj.desc }</td>
					<td><img src = "${ProductObj.image }"></td>
					</tr>
				</c:forEach>
				</table>
			</c:if> --%>
</body>
</html>