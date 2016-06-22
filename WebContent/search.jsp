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
<body>
	<form>
		<input type="radio" name="searchBox" value="Brand" checked>Search By Brand
		<input type="radio" name="searchBox" value="Price">Search By Price
		<input type="radio" name="searchBox" value="Popularity">Search By Popularity
		<input type="submit" value="Submit">	
	</form>
	<c:if test="">
		<form action="Products" method="get">
			<input type="text" placeholder="Search by Brand" name="brandName">
			<input type="submit" value="SEARCH">
		</form>
		<c:if test="${fn:length(productList) ge 0}">
			<table border='1'>
				<c:forEach var="ProductObj" items="${productList}">
					<tr>
					<td>${ProductObj.id }</td>
					<td>${ProductObj.name }</td>
					<td>${ProductObj.desc }</td>
					<td>${ProductObj.brand }</td>
					<td>${ProductObj.price }</td>
					<td><img src = "${ProductObj.image }"></td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</c:if>
</body>
</html>