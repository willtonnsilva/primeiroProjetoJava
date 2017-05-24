package br.com.caelum.online.loja.dao;


import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.com.caelum.online.loja.conexao.ConnectionFactory;
import br.com.caelum.online.loja.dominio.Produto;
import br.com.caelum.vraptor.ioc.Component;

@Component
public class ProdDAO implements Prod {
	
	private EntityManager manager;
	public ProdDAO(){	
		this.manager = new ConnectionFactory().getEntityManager();
	}
	
	@Override
	public void salva(Produto produto) {
	
		manager.getTransaction().begin();
		manager.persist(produto);
		manager.getTransaction().commit();
	}
	
	@Override
	public List<Produto> pegaTodos() {

		Query query = manager.createQuery("select p from Produto p");

		 return (List<Produto>) query.getResultList();
	}
	
	@Override
	public void remove(Produto produto) {
		
		manager.getTransaction().begin();
		manager.remove(produto);
		manager.getTransaction().commit();
		
	}
	
	@Override
	public Produto pegaPorId(Long id) {
		
		manager.getTransaction().begin();
		Produto produto = manager.find(Produto.class, id);
		manager.getTransaction().commit();
		return produto;
	}
	
	
}
