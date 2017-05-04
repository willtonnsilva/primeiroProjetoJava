var nome = $("#nome").on("input", function() {
	nomeValor = nome.val().length;
	if (nomeValor == 0) {
		nome.removeClass("remove-validacao-visual");
		nome.addClass("adiciona-validacao-visual");
	} else {
		nome.removeClass("adiciona-validacao-visual");
		nome.addClass("remove-validacao-visual");
	}
});

var descricao = $("#descricao").on("input", function() {
	descricaoValor = descricao.val().length;
	if (descricaoValor == 0) {
		descricao.removeClass("remove-validacao-visual");
		descricao.addClass("adiciona-validacao-visual");
	} else {
		descricao.removeClass("adiciona-validacao-visual");
		descricao.addClass("remove-validacao-visual");
	}
});

var preco = $("#preco").on("input", function() {
	precoValor = preco.val().length;
	if (precoValor == 0) {
		preco.removeClass("remove-validacao-visual");
		preco.addClass("adiciona-validacao-visual");
	} else {
		preco.removeClass("adiciona-validacao-visual");
		preco.addClass("remove-validacao-visual");
	}
});




