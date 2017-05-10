<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="../jquery/jquery.js"></script>
<link rel="stylesheet" type="text/css" href="../css/fom.css">
<link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<nav class="navbar navbar-default">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Casa Magalhães</a>
			</div>
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="#">Inicio</a></li>
					<li><a href="<c:url value='/produto/lista'/>">Listar
							Produtos</a></li>
					<li><a href="<c:url value='/produto/buscar'/>">Buscar por
							Produto</a></li>
					<li><a href="<c:url value='/produto/sobre'/>">Sobre Nós</a></li>
				</ul>
			</div>
		 </div>
		</nav>
		<h2>XML por produto</h2>
		<div class="form-group">
		<form method="get" action="<c:url value='/produto/xml'/>">
			<div">
				<label for="produto_id">Código do Produto</label> 
				<input type="text" name="produto.id" class="form-control">
				<button class="btn btn-primary" id="pesquisa-produto" type="submit">Pesquisar</button>
			</div>
		</form>
		</div>
	</div>
</body>
<script type="text/javascript"
	src="<c:url value='../bootstrap/js/bootstrap.min.js'/>"></script>
</html>