package br.com.caelum.online.loja.conexao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import br.com.caelum.vraptor.ioc.Component;

@Component
public class ConnectionFactory {

	EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("default");

	public EntityManager getEntityManager() {
		return entityManagerFactory.createEntityManager();
	}
}
