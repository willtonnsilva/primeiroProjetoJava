<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/lista.css">
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
					<li><a href="<c:url value='/'/>">Inicio</a></li>
					<li><a href="<c:url value='/produto/lista'/>">Listar Produtos</a></li>
					<li><a href="<c:url value='/produto/buscar'/>">Buscar por Produto</a></li>
					<li><a href="<c:url value='/produto/pegaxml'/>">Buscar XML</a></li>
					<li><a href="<c:url value='/produto/sobre'/>">Sobre Nós</a></li>
				</ul>
			</div>
		</div>
		</nav>

		<div class="container">
			<h3>Lista de Produtos Cadastrados</h3>
			<table id="tabela-cad" class="table table-hover">
				<tr class="table-head">
					<th>Código</th>
					<th>Nome</th>
					<th>Descrição</th>
					<th>Preço</th>
				</tr>
				<c:forEach items="${produtoList}" var="produto">
					<tr>
						<td>${produto.id}</td>
						<td>${produto.nome}</td>
						<td>${produto.descricao}</td>
						<td>${produto.preco}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
</body>
<script src="../jquery/jquery.js"></script>
<script src="../js/index/buscar.js"></script>
</html>





















