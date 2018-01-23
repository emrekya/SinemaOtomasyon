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
						<h3 class="box-title">Gelecek Filmler</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<div class="box box-info">

							<div class="box-header with-border" align="left">
								<h3 class="box-title">AİLECEK ŞAŞKINIZ</h3>

								<!-- /.box-header -->
								<div class="box-body">

										
									<div class="col-md-3">
										<a href="#"><img alt=""
											src='<s:url value="resources/dist/img/aileceksaskiniz.jpg"></s:url>'
											style="width: 100%; height: 100%;"> </a>
									</div>
									<div class="col-md-9">
										<table class="table table-hover">
											<tr>
												<td><b>Seans Salon 1 :</b></td>
												<td>11:00 - 13:30 - 16:15 - 19:00 - 21:45 - c.cts :
													22:45</td>
											</tr>
											<tr>
												<td><b>Vizyon Tarihi :</b></td>
												<td>5 Ocak 2018 , Cuma</td>
											</tr>
											<tr>
												<td><b>Tür :</b></td>
												<td>Komedi , Macera</td>
											</tr>
											<tr>
												<td><b>Yönetmen :</b></td>
												<td>Kıvanç Baruönü</td>
											</tr>
											<tr>
												<td><b>Oyuncular :</b></td>
												<td>Cem Yılmaz, Ozan Güven, Seda Bakan, Özkan Uğur,
													Zafer Algöz</td>

											</tr>
											<tr>
												<td><b>Yapım :</b></td>
												<td>2018 - Türkiye</td>
											</tr>
											<tr>
												<td><b>Süre :</b></td>
												<td>126 Dk</td>
											</tr>
											<tr>
												<td><b>Dil :</b></td>
												<td>Türkçe</td>
										</table>
									</div>
								</div>

							</div>
						</div>
						<div class="box box-info">
							<div class="box-header with-border" align="left">
								<h3 class="box-title">Deliha</h3>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<a href="#"><img alt=""
									src='<s:url value="resources/dist/img/labirent.jpg" ></s:url>'
									style="width: 20%; height: 20%;"> </a>
							</div>
						</div>


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
