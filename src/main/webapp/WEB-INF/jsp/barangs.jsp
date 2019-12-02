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
   		<h1>Barangs List</h1>
   		<table class="table table-striped table-hover table-condensed table-bordered">
    	<tr>
     		<th>No</th>
     		<th>ID Supplier</th>
     		<th>Kode Barang</th>
     		<th>Nama Barang</th>
     		<th>Harga Barang</th>
     		<th>Stok Barang</th>
     		<th style="width:200px;">
     			<a type="button" class="btn btn-primary" href="/barangs/add">Tambah</a>
     		</th>
    	</tr>
    	<c:forEach var="barang" items="${barangs}" varStatus="loop">
     	<tr>
      		<td>${loop.count}</td>
      		<td>${barang.id_supplier}</td>
      		<td>${barang.kode_barang}</td>
      		<td>${barang.nama_barang}</td>
      		<td>${barang.harga_barang}</td>
      		<td>${barang.stok_barang}</td>
      		<td>
      			<a type="button" class="btn btn-info" href="/barangs/update?id=${barang.id}">Edit</a>
       			<a type="button" class="btn btn-danger" href="/barangs/delete?id=${barang.id}">Delete</a></td>
     		</tr>
    	</c:forEach>
   		</table>
  	</div>
</div>
<script type="text/javascript" src="/webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>