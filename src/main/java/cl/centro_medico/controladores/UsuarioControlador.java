package cl.centro_medico.controladores;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cl.centro_medico.modelos.entity.Usuario;
import cl.centro_medico.servicios.UsuarioServicio;

@Controller
public class UsuarioControlador {
	
	@Autowired
	private UsuarioServicio usu;

	
	@RequestMapping(path = "/CrearUsuario", method = RequestMethod.GET)
    public ModelAndView mostrarVista() {
        return new ModelAndView("crear-usuario");
    }
	
	@RequestMapping(value ="/ListadoUsuarios",method = RequestMethod.GET)
	public ModelAndView listarUsuarios() {
		ArrayList<Usuario> listarUsuarios = new ArrayList<>();
		listarUsuarios = usu.obtenerUsuarios();
		
		return new ModelAndView ("listado-usuarios","listarUsuarios",listarUsuarios);
	}
	
	@RequestMapping(path = "/crear-usuario", method = RequestMethod.GET)
    public ModelAndView mostrarInicio() {
        return new ModelAndView("crearUsuario");
    }
	

}
