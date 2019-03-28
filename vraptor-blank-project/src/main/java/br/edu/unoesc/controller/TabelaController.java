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
@Path("/tabela")
public class TabelaController {
	
		
			// @Inject 
			// private Result result;

			private final Result result;

			/**
			 * @deprecated CDI eyes only
			 */
			protected TabelaController() {
				this(null);
			}
			
			@Inject
			public TabelaController(Result result) {
				this.result = result;
			}
		

}
