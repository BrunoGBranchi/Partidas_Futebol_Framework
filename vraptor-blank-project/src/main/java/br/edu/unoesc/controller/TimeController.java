package br.edu.unoesc.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.edu.unoesc.model.Banco;
import br.edu.unoesc.model.Time;

@Controller
@Path("/time")
public class TimeController {
	
		// @Inject 
		// private Result result;

		private final Result result;

		/**
		 * @deprecated CDI eyes only
		 */
		protected TimeController() {
			this(null);
		}
		
		@Inject
		public TimeController(Result result) {
			this.result = result;
		}
		
		@Get("/cadastro")
		public void cadastro() {
		}
		
		@Post("/enviar")
		public void mostrar(Time time) {
			Banco.times.add(time);
			result.include("times", Banco.times);
		}
		
		@Get("/editar/{codigo}")
		public void editar(Long codigo){
			for(int i =0; i<=Banco.times.size(); i++) {
				Time t = Banco.times.get(i);
				if(t.getCodigo().equals(codigo)){
					result.include("time", Banco.times.get(i));
					Banco.times.remove(i);
					break;
				}
			}
		}
		
		@Get("/excluir/{codigo}")
		public void mostrar(Long codigo) {
			for(int i =0; i<=Banco.times.size(); i++) {
				Time t = Banco.times.get(i);
				if(t.getCodigo().equals(codigo)){
					Banco.times.remove(i);
					result.include("pessoas", Banco.times);
					break;
				}
			}
		}
}
