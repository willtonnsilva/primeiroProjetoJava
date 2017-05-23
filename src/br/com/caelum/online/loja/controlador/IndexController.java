package br.com.caelum.online.loja.controlador;

import java.util.List;

import br.com.caelum.online.loja.dao.Prod;
import br.com.caelum.online.loja.dao.ProdDAO;
import br.com.caelum.online.loja.dominio.Produto;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.view.Results;

@Resource
public class IndexController {

	private ProdDAO produtoDao;
	private Result result;
	
	public IndexController(Result result, ProdDAO produtoDao){
		//this.produtoDao = produtoDao;
		this.result = result;
		this.produtoDao = produtoDao;
	}
		
	@Get("/")	
	public void form() {
		System.out.println("Meu sistema com vraptor");
	}
	
	@Post("/produto/salva")
	public void salva(Produto produto){
		produtoDao.salva(produto);
		result.redirectTo(IndexController.class).lista();
	}
	
	@Get
	@Path("/produto/lista")
	public List<Produto> lista(){

		return produtoDao.pegaTodos();
	}
	
	@Get
	@Path("/produto/buscar")
	public void buscar() {
		System.out.println("passou pelo vraptor buscar ");
	}
	
	@Get
	@Path("/produto/sobre")
	public void sobre() {
	}
	
	@Get
	@Path("/produto/pegaxml")
	public void pegaxml() {
	}
	
	@Get
	@Path("/produto/{id}")
	public void retornaJson(long id){
		Produto produto= produtoDao.pegaPorId(id);
		if (produto!=null){
			result.use(Results.json()).withoutRoot().from(produto).serialize();
		}
	}
	
	@Get	
	@Path("/produto/xml")
	public void retornaXML(Produto produto){
		produto = produtoDao.pegaPorId(produto.getId());
		if (produto!=null){
			result.use(Results.xml()).from(produto).serialize();
		}
	}
}
