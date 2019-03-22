package br.edu.unoesc.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.edu.unoesc.model.Banco;
import br.edu.unoesc.model.Partida;

@Controller
@Path("/partida")
public class PartidaController {
		// @Inject 
		// private Result result;

		private final Result result;

		/**
		 * @deprecated CDI eyes only
		 */
		protected PartidaController() {
			this(null);
		}
		
		@Inject
		public PartidaController(Result result) {
			this.result = result;
		}
		
		@Get("/cadastro")
		public void cadastro() {
			
		}
		
		@Post("/enviar")
		public void mostrar(Partida partida) {
			Banco.partidas.add(partida);
			result.include("partidas", Banco.partidas);
		}
		
		@Get("/editar/{codigo}")
		public void editar(Long codigo){
			for(int i =0; i<=Banco.partidas.size(); i++) {
				Partida p = Banco.partidas.get(i);
				if(p.getCodigo().equals(codigo)){
					result.include("partida", Banco.partidas.get(i));
					Banco.partidas.remove(i);
					break;
				}
			}
		}
		
		@Get("/excluir/{codigo}")
		public void mostrar(Long codigo) {
			for(int i =0; i<=Banco.partidas.size(); i++) {
				Partida p = Banco.partidas.get(i);
				if(p.getCodigo().equals(codigo)){
					Banco.partidas.remove(i);
					result.include("partidas", Banco.partidas);
					break;
				}
			}
		}
}
