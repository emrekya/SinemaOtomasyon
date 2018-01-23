<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="" content="">
<title>MVC Sinema Sitesi</title>
<jsp:include page="${request.contextPath}/css"></jsp:include>

</head>
<body class="hold-transition skin-blue sidebar-mini">
	<jsp:include page="${request.contextPath}/header"></jsp:include>


	<!-- Main content -->
	<section class="content">
		<div class="row">

			<div class="col-md-1"></div>
			<div class="col-md-10">
				<div class="box box-info">
					<div class="box-header with-border" align="left">
						<h3 class="box-title">Hakkımızda</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						


							


					</div>
				</div>

				<div class="col-md-1"></div>
			</div>
		</div>
	</section>


	<jsp:include page="${request.contextPath}/footer"></jsp:include>
	<jsp:include page="${request.contextPath}/js"></jsp:include>
</body>
</html>
