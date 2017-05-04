<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/busca.css">
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
					<li><a href="<c:url value='/produto/sobre'/>">Sobre Nós</a></li>
				</ul>
			</div>
		</div>
		</nav>

		<div class="form-group">
			<div">
				<label for="produto_id">Código do Produto</label> 
				<input type="text" id="produto_id" class="form-control">
				<button class="btn btn-primary" id="pesquisa-produto" type="button">Pesquisar</button>
			</div>
		</div>

		<div id="tabela-resultado" class="container desativa-tabela">
			<table id="tabela-principal" class="table table-hover">
				<tr>
					<th>Código</th>
					<th>Nome</th>
					<th>Descrição</th>
					<th>Preço</th>
				</tr>
			</table>
		</div>
		<div >
			<p class="esconde-avisos" esconde-avisos id="erro-requisição">Produto não encontrado!</p>
		</div>
	</div>
	
</body>
<script src="../jquery/jquery.js"></script>
<script src="../js/index/busca.js"></script>
</html>