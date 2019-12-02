<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
	<meta charset="UTF-8">
	<title>Form User</title>
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
    				<div class="panel-title">Add User</div>
    			</div>
    			
    			<div class="panel-body">
    				<form:form method="post" modelAttribute="user">
    				<form:hidden path="id" />
    				<div class="form-group col-md-3 col-xs-12">
    					<form:label path="username">Username</form:label>
    					<div class="input-group">
    						<span class="input-group-addon">
    							<i class="fa fa-clone"></i>
    						</span>
    						<form:input path="username" type="text" class="form-control" required="required" />
    					</div>
    					<form:errors path="username" cssClass="text-warning" />
    				</div>
    				<div class="form-group col-md-3 col-xs-12">
    					<form:label path="password">Password</form:label>
    					<div class="input-group">
    						<span class="input-group-addon">
    							<i class="fa fa-clone"></i>
    						</span>
    						<form:input path="password" type="password" class="form-control" required="required" />
    					</div>
    					<form:errors path="password" cssClass="text-warning" />
    				</div>
    				<div class="form-group col-md-3 col-xs-12">
    					<form:label path="role">Role</form:label>
    					<div class="input-group">
							<span class="input-group-addon">
								<i class="fa fa-clone"></i>
							</span>
							<form:input path="role" type="text" class="form-control" required="required" />
						</div>
						<form:errors path="role" cssClass="text-warning" />
					</div>
					<div class="form-group col-md-3 col-xs-12">
						<form:label path="status">Status</form:label>
						<div class="input-group">
							<span class="input-group-addon">
								<i class="fa fa-clone"></i>
							</span>
							<form:input path="status" type="text" class="form-control" required="required" />
						</div>
						<form:errors path="status" cssClass="text-warning" />
					</div>
					<div class="form-group col-md-12">
						<a href="/users/" class="btn btn-danger">
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