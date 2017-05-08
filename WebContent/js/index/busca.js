$("#pesquisa-produto").click(function() {
	console.log("ajax");
	var id = $("#produto_id").val();
	$.ajax({
		url : 'http://localhost:8080/vraptor-produto/produto/' + id,
		method : 'GET',
		dataType : 'json',
		success : function(json) {
			$( "#tabela-resultado" ).removeClass("desativa-tabela");
			$("#erro-requisição").addClass("esconde-avisos");
			$("#tabela-principal").append(
					"<tr>"+
						"<td>"+json.id+"</td>"+
						"<td>"+json.nome+"</td>"+
						"<td>"+json.descricao+"</td>"+
						"<td>"+json.preco+"</td>"+
					"</tr>"
			);	
		},

		error : function(xhr, status) {
			$("#erro-requisição").removeClass("esconde-avisos");
			console.log("Falhou a requisição")
		},

		complete : function(xhr, status) {
			console.log("terminou a requisição")
		}
	})	
});

