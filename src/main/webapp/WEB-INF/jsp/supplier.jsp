<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
	<meta charset="UTF-8">
	<title>Form Supplier</title>
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
    				<div class="panel-title">Add Supplier</div>
    			</div>
    			
    			<div class="panel-body">
    				<form:form method="post" modelAttribute="supplier">
    				<form:hidden path="id" />
    				<div class="form-group col-md-3 col-xs-12">
    					<form:label path="kode_supplier">Kode Supplier</form:label>
    					<div class="input-group">
    						<span class="input-group-addon">
    							<i class="fa fa-clone"></i>
    						</span>
    						<form:input path="kode_supplier" type="text" class="form-control" required="required" />
    					</div>
    					<form:errors path="kode_supplier" cssClass="text-warning" />
    				</div>
    				<div class="form-group col-md-3 col-xs-12">
    					<form:label path="nama_supplier">Nama Supplier</form:label>
    					<div class="input-group">
    						<span class="input-group-addon">
    							<i class="fa fa-clone"></i>
    						</span>
    						<form:input path="nama_supplier" type="text" class="form-control" required="required" />
    					</div>
    					<form:errors path="nama_supplier" cssClass="text-warning" />
    				</div>
    				<div class="form-group col-md-3 col-xs-12">
    					<form:label path="alamat_supplier">Alamat</form:label>
    					<div class="input-group">
							<span class="input-group-addon">
								<i class="fa fa-clone"></i>
							</span>
							<form:input path="alamat_supplier" type="text" class="form-control" required="required" />
						</div>
						<form:errors path="alamat_supplier" cssClass="text-warning" />
					</div>
					<div class="form-group col-md-3 col-xs-12">
						<form:label path="telp_supplier">Telepon Supplier</form:label>
						<div class="input-group">
							<span class="input-group-addon">
								<i class="fa fa-clone"></i>
							</span>
							<form:input path="telp_supplier" type="text" class="form-control" required="required" />
						</div>
						<form:errors path="telp_supplier" cssClass="text-warning" />
					</div>
					<div class="form-group col-md-12">
						<a href="/suppliers/" class="btn btn-danger">
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