package br.com.caelum.online.loja.dao;

import java.util.List;

import br.com.caelum.online.loja.dominio.Produto;

public interface Prod {
	
	public void salva(Produto produto);

	public List<Produto> pegaTodos();

	public void remove(Produto produto);

	public Produto pegaPorId(Long id);

}
