
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<nav class="navbar navbar-expand-md navbar-light bg-faded">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			
			<a class="navbar-brand" href='<c:out value="/sinema"></c:out>'><img alt=""
				src='<s:url value="resources/dist/img/sinemalogo.jpg"></s:url>'>
			</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav" class="align-bottom" style="margin-top: 80px;">
			
				<li><a href='<c:out value="/sinema"></c:out>'>ANASAYFA</a></li>
				<li class="active"><a href='<c:out value="vizyondakifilmler"></c:out>'>VIZYONDAKI FILMLER</a></li>
				<li><a href='<c:out value="gelecekfilmler"></c:out>'>GELECEK FILMLER</a></li>
				<li><a href='<c:out value="kampanyalar"></c:out>'>KAMPAMYALAR</a></li>
				<li><a href='<c:out value="hakkimizda"></c:out>'>HAKKIMIZDA</a></li>
				<li><a href='<c:out value="iletisim"></c:out>'>ILETISIM</a></li>
			</ul>

			<ul class="nav navbar-nav navbar-right">
				<form action="#" method="get">
					<div class="form-group" align="left">
						<input type="text" class="form-control" placeholder="E-Posta">
						<input type="text" class="form-control" placeholder="Şifre">
					<button type="submit" class="btn btn-primary">Giriş</button>
					<a href='<c:out value="kayitol"></c:out>' class="btn btn-primary">Kayıt Ol</a>
					</div>
				</form>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>
