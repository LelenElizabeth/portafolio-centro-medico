package cl.centro_medico.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginControlador {
	@RequestMapping(value = "/login")
    public ModelAndView mostrarLogin() {
        return new ModelAndView("login");
    }
	@RequestMapping(value = "/error")
    public ModelAndView errorLogin() {
        return new ModelAndView("login","error",true);
    }
}
