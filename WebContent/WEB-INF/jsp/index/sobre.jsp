<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../jquery/jquery.js"></script>
<link rel="stylesheet" type="text/css"
	href="../bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/sobre.css">
</head>
<body>
	<nav class="navbar navbar-default">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span 1950class="icon-bar"></span> <span
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

	<div class="container">

		<h1 id="titulo-sobre">Bem-Vindo à Nossa Casa</h1>

		<div id="paineis-grupo">
			<div>
				<div>
					<h4 data-toggle="collapse" data-target="#primeiro-paragrafo"
						data-parent="#paineis-grupo">Quem Somos?</h4>
					<div id="primeiro-paragrafo" class="collapse">
						<div class="panel panel-body">
							<p>O Grupo Casa Magalhães oferece ao mercado soluções
								completas em automação para o varejo. Nossa missão é tornar as
								organizações mais eficientes fornecendo soluções tecnológicas
								acessíveis. Inovação, ética, foco do cliente, excelência em
								serviços e compromisso com os resultados são valores presentes
								em nossa filosofia empresarial.</p>
						</div>
					</div>
				</div>
			</div>

			<div id="carousel-example-generic" class="carousel slide"
				data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0"
						class="active"></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"></li>
					<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img class="img-responsive" alt="Equipe casa Magalhães"
							src="../midia/casa_magalhaes.jpg">
						<div class="carousel-caption">...</div>
					</div>
					<div class="item">
						<img class="img-responsive" alt="Equipe casa Magalhães"
							src="../midia/casa_magalhaes.jpg">
						<div class="carousel-caption">...</div>
					</div>
					<div class="item">
						<img class="img-responsive" alt="Equipe casa Magalhães"
							src="../midia/casa_magalhaes.jpg">
						<div class="carousel-caption">...</div>
					</div>
				</div>

				<!-- Controls -->
				<a class="left carousel-control" href="#carousel-example-generic"
					role="button" data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#carousel-example-generic"
					role="button" data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>

		<div id="rodape" class="container">
			<footer>
			<address>
				<strong>Casa Magalhães</strong> <br> Endereço: Rua Luiza
				Miranda Coelho, 800 <br> Eng. Luciano Cavalcante, Fortaleza
				-CE, 60811-110 <br>
			</address>
			</footer>
		</div>
	</div>
</body>
<script src="../jquery/jquery.js"></script>
<script src="../bootstrap/js/bootstrap.min.js"></script>
<script src="../js/index/busca.js"></script>
</html>


















