<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>
	<meta charset="UTF-8">
	<title>Data User</title>
	<link rel="stylesheet" type="text/css" href="/webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
	<c:url value="/css/main.css" var="jstlCss" />
	<link href="${jstlCss}" rel="stylesheet" />
</head>

<body>

<h1>Menu Inventory</h1>
<hr>

<div class="menu">
<ul id="navigasi">
 <li><a href="suppliers">Supplier</a></li>
 <li><a href="barangs">Barang</a></li>
 <li><a href="users">User</a></li>
</ul>
</div>

<div class="footer">
Copyright DG2021
</div>

</body>
</html>