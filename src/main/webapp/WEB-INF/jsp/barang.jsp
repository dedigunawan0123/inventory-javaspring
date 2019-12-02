<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
	<meta charset="UTF-8">
	<title>Form Barang</title>
	<link rel="stylesheet" type="text/css" href="/webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
	<c:url value="/css/main.css" var="jstlCss" />
	<link href="${jstlCss}" rel="stylesheet" />
</head>
<body>
<div class="container">
	<div class="row">
  		<div class="col-md-12">
   			<div class="panel panel-primary">
    			<div class="panel-heading">
    				<div class="panel-title">Add Barang</div>
    			</div>
    			
    			<div class="panel-body">
    				<form:form method="post" modelAttribute="barang">
    				<form:hidden path="id" />
    				<div class="form-group col-md-3 col-xs-12">
    					<form:label path="id_supplier">ID Supplier</form:label>
    					<div class="input-group">
    						<span class="input-group-addon">
    							<i class="fa fa-clone"></i>
    						</span>
    						<form:input path="id_supplier" type="text" class="form-control" required="required" />
    					</div>
    					<form:errors path="id_supplier" cssClass="text-warning" />
    				</div>
    				<div class="form-group col-md-3 col-xs-12">
    					<form:label path="kode_barang">Kode Barang</form:label>
    					<div class="input-group">
    						<span class="input-group-addon">
    							<i class="fa fa-clone"></i>
    						</span>
    						<form:input path="kode_barang" type="text" class="form-control" required="required" />
    					</div>
    					<form:errors path="kode_barang" cssClass="text-warning" />
    				</div>
    				<div class="form-group col-md-3 col-xs-12">
    					<form:label path="nama_barang">Nama Barang</form:label>
    					<div class="input-group">
							<span class="input-group-addon">
								<i class="fa fa-clone"></i>
							</span>
							<form:input path="nama_barang" type="text" class="form-control" required="required" />
						</div>
						<form:errors path="nama_barang" cssClass="text-warning" />
					</div>
					<div class="form-group col-md-3 col-xs-12">
						<form:label path="harga_barang">Harga Barang</form:label>
						<div class="input-group">
							<span class="input-group-addon">
								<i class="fa fa-clone"></i>
							</span>
							<form:input path="harga_barang" type="text" class="form-control" required="required" />
						</div>
						<form:errors path="harga_barang" cssClass="text-warning" />
					</div>
					<div class="form-group col-md-3 col-xs-12">
						<form:label path="stok_barang">Stok Barang</form:label>
						<div class="input-group">
							<span class="input-group-addon">
								<i class="fa fa-clone"></i>
							</span>
							<form:input path="stok_barang" type="text" class="form-control" required="required" />
						</div>
						<form:errors path="stok_barang" cssClass="text-warning" />
					</div>
					<div class="form-group col-md-12">
						<a href="/barangs/" class="btn btn-danger">
							<i class="fa fa-arrow-left"></i> Cancel
						</a>
						<button type="submit" class="btn btn-primary">
							<i class="fa fa-save"></i> Save
						</button>
					</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="/webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>