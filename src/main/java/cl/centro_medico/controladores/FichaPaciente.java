package cl.centro_medico.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


	@Controller
	public class FichaPaciente {

		@RequestMapping(value = "/FichaPaciente")
	    public ModelAndView mostrarFicha() {
	        return new ModelAndView("ficha-paciente");
	    }
		
		@RequestMapping(value = "/CrearFicha/{id}")
		public ModelAndView mostrarVista(@PathVariable int id) {
			System.out.println("Id paciente: " + id);
			return new ModelAndView("ficha-paciente");
		}

	}
