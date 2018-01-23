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

			<div class="col-md-3"></div>
			<div class="col-md-6">
				<div class="box box-info">
					<div class="box-header with-border" align="left">
						<h3 class="box-title">Yeni Kullanıcı Kayıt</h3>
					</div>
					<form action="yenikullanicikayit" method="post">
					<!-- /.box-header -->
					<div class="box-body">
						<div class="form-group">
							<label for="#">E-Mail</label>
							<div class="input-group date">
								<div class="input-group-addon">
									<i class="fa fa-envelope"></i>
								</div>
								<input type="text" name="kEmail" placeholder="E-Mail"
									class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="#">Giriş Şifresi</label> <input type="password"
								name="kSifre" id="perParola" placeholder="Giriş Şifresi"
								class="form-control" autocomplete=off />

						</div>
						<div class="form-group">
							<label for="#">Adı</label> <input type="text" name="kAdi"
								placeholder="Adı" class="form-control" />
						</div>
						<div class="form-group">
							<label for="#">Soyadı</label> <input type="text" name="kSoyadi"
								placeholder="Soyadı" class="form-control" />
						</div>
						<div class="form-group">
							<label>Doğum Tarihi:</label>

							<div class="input-group date">
								<div class="input-group-addon">
									<i class="fa fa-calendar"></i>
								</div>
								<input type="text" class="form-control pull-right"
									name="kDogumTarihi" id="datepicker"
									data-inputmask="'alias': 'dd/mm/yyyy'" data-mask="">
							</div>

							<!-- /.input group -->
						</div>


						<!-- phone mask -->
						<div class="form-group">
							<label>Telefon</label>

							<div class="input-group">
								<div class="input-group-addon">
									<i class="fa fa-phone"></i>
								</div>
								<input type="text" class="form-control" name="kTelefon"
									data-inputmask='"mask":"(999) 999-9999"' data-mask />
							</div>
							<!-- /.input group -->
						</div>
						<div class="form-group">
							<button type="submit" id="btnKaydet"
								class="btn btn-block btn-success">Kaydet</button>
						</div>
						<!-- /.form group -->
					</div>
						</form>

				</div>
			</div>

			<div class="col-md-3"></div>
		</div>

	</section>


	<jsp:include page="${request.contextPath}/footer"></jsp:include>
	<jsp:include page="${request.contextPath}/js"></jsp:include>
	<script>
		$(function() {
			$('[data-mask]').inputmask()
			//Datemask dd/mm/yyyy
			$('#datemask').inputmask('dd/mm/yyyy', {
				'placeholder' : 'dd/mm/yyyy'
			})
		});
	</script>
</body>
</html>
