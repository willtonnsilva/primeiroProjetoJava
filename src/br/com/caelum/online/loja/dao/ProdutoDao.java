package br.com.caelum.online.loja.dao;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

import br.com.caelum.online.loja.dominio.Produto;
import br.com.caelum.online.loja.repositorio.RepositorioDeProdutos;

public class ProdutoDao implements RepositorioDeProdutos {

	private final static List<Produto> PRODUTOS = new ArrayList<Produto>();
	
	public ProdutoDao(){
		if(PRODUTOS.isEmpty())
			populaProdutosIniciais();
	}
	
	public void salva(Produto produto) {
		produto.setId(PRODUTOS.size() +1l);
		PRODUTOS.add(produto);
	}

	public List<Produto> pegaTodos() {
		return Collections.unmodifiableList(PRODUTOS);
	}

	public void remove(Produto produto) {
		Iterator<Produto> it = PRODUTOS.iterator();
		while(it.hasNext()) {
			Produto existente = it.next();
			if(existente.getId().equals(produto.getId())) {
				it.remove();
				break;
			}
		}
	}

	public void populaProdutosIniciais() {
		PRODUTOS.add(new Produto(1l, "iPod", "tocador de mp3 da apple", 699.90));
		PRODUTOS.add(new Produto(2l, "iPad", "tablet da apple", 2999.99));
		PRODUTOS.add(new Produto(3l, "Notebook Dell", "Notebook para desenvolvedores (Notebook Raiz) ", 67.80));
		PRODUTOS.add(new Produto(4l, "O Rappa Ao Vivo", "cd da banda", 29.90));
	}

	public Produto pegaPorId(Long id) {
		for(Produto produto : PRODUTOS) {
			if(produto.getId().equals(id)) return produto;
		}
		return null;
	}
}
