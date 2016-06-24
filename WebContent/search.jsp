<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Page</title>
</head>
<body style="text-align:center;">
<h2> Search Products </h2>
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
		</c:if>
</body>
</html>