package br.com.caelum.online.loja.controlador;

import java.util.List;

import br.com.caelum.online.loja.dao.ProdutoDao;
import br.com.caelum.online.loja.dominio.Produto;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.view.Results;

@Resource
public class IndexController {

	private ProdutoDao produtos;
	private Result result;
	
	public IndexController(Result result){
		this.produtos = new ProdutoDao();
		this.result = result;
	}
		
	@Path("/")
	@Get
	public void form() {
		System.out.println("Meu sistema com vraptor");
	}
	
	@Post
	@Path("/produto/salva")
	public void salva(Produto produto){
		produtos.salva(produto);
		 result.redirectTo(IndexController.class).lista();
	}
	
	@Get
	@Path("/produto/lista")
	public List<Produto> lista(){

		return produtos.pegaTodos();
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
	@Path("/produto/{id}")
	public void retornaJson(long id){
		Produto produto= produtos.pegaPorId(id);
		if (produto!=null){
			result.use(Results.json()).withoutRoot().from(produto).serialize();
		}
	}
}
