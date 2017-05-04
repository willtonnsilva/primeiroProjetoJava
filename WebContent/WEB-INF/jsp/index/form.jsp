<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script src="jquery/jquery.js"></script>
	<link rel="stylesheet" type="text/css" href="css/fom.css">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">

</head>
<body>
	<div class="container">
		<nav class="navbar navbar-default">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Casa Magalhães</a>
				</div>
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="#">Inicio</a></li>
						<li><a href="<c:url value='/produto/lista'/>">Listar Produtos</a></li>
						<li><a href="<c:url value='/produto/buscar'/>">Buscar por Produto</a></li>
						<li><a href="<c:url value='/produto/sobre'/>">Sobre Nós</a></li>
					</ul>
				</div>
			</div>
		</nav>

		<section id="sessao-form-cad" class="container form-group">
			<h2>Cadastro de Produtos</h2>
			<p>Realize aqui o cadastro dos produtos</p>
			<form class="form_cadastro " action="<c:url value='/produto/salva'/>" method="post">
				<div class="form-group">
					<label for="nome">Nome</label>
					<input id="nome" type="text" name="produto.nome" placeholder="Nome" class="form-control"/>
					
					<label for="descricao">Descriçao</label>
					<textarea id="descricao" class="form-control" name="produto.descricao" rows="3" placeholder="Descriçao"></textarea>
					
					<label for="preco">Preço</label>
					<input id="preco" type="text" name="produto.preco" placeholder="Preço" class="form-control">
				</div>
				<button id="submit" type="submit" class="btn btn-primary">Salvar</button>
			</form>
		</section>
		
		<div id="rodape" class="container">	
			<footer>
				<address>
					<strong>Casa Magalhães</strong> <br>
					Endereço: Rua Luiza Miranda Coelho, 800 <br> 
					Eng. Luciano Cavalcante, Fortaleza - CE, 60811-110 <br>	
				</address>
			</footer>
		</div>

	</div>

	</div>
	<script type="text/javascript" src="<c:url value='bootstrap/js/bootstrap.min.js'/>"></script>
</body>
</html>