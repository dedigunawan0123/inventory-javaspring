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
<div class="container">
	<header>
   		<h1>Spring MVC + JSP + JPA + Spring Boot 2</h1>
  	</header>
  	<div class="starter-template">
   		<h1>Users List</h1>
   		<table class="table table-striped table-hover table-condensed table-bordered">
    	<tr>
     		<th>No</th>
     		<th>Username</th>
     		<th>Password</th>
     		<th>Role</th>
     		<th>Status</th>
     		<th style="width:200px;">
     			<a type="button" class="btn btn-primary" href="/users/add">Tambah</a>
     		</th>
    	</tr>
    	<c:forEach var="user" items="${users}" varStatus="loop">
     	<tr>
      		<td>${loop.count}</td>
      		<td>${user.username}</td>
      		<td>${user.password}</td>
      		<td>${user.role}</td>
      		<td>${user.status}</td>
      		<td>
      			<a type="button" class="btn btn-info" href="/users/update?id=${user.id}">Edit</a>
       			<a type="button" class="btn btn-danger" href="/users/delete?id=${user.id}">Delete</a></td>
     		</tr>
    	</c:forEach>
   		</table>
  	</div>
</div>
<script type="text/javascript" src="/webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>