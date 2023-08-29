package cl.centro_medico.controladores;

import java.time.LocalDateTime;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cl.centro_medico.modelos.entity.Paciente;
import cl.centro_medico.servicios.PacienteServicio;

@Controller
public class PacienteControlador {

	@Autowired
	private PacienteServicio pac;

	@RequestMapping(value = "/CrearPaciente")
	public ModelAndView mostrarPaciente() {
		return new ModelAndView("crear-paciente");
	}

	@RequestMapping(value = "/ModificarPaciente/{id}")
	public ModelAndView mostrarVista(@PathVariable int id, ModelMap model) {
		Paciente paciente = pac.obtenerPaciente(id);
		model.addAttribute("paciente", paciente);
		return new ModelAndView("modificar-paciente", model);
	}

	@RequestMapping(value = "/ListaPacientes")
	public ModelAndView mostrarLista() {
		return new ModelAndView("listado-pacientes");
	}

	@RequestMapping(value = "/ListarPacientes", method = RequestMethod.GET)
	public ModelAndView listarPacientes() {
		ArrayList<Paciente> listaPaciente = new ArrayList<>();
		listaPaciente = pac.obtenerPacientes();

		return new ModelAndView("listado-pacientes", "pacientes", listaPaciente);
	}

	@RequestMapping(value = "/GuardarPaciente", method = RequestMethod.POST)
	public ModelAndView guardar(@RequestParam String rut, @RequestParam String nombres,
			@RequestParam String apellido1, @RequestParam String apellido2,
			@RequestParam String fechaNacimiento, @RequestParam String genero, @RequestParam String telefono,
			@RequestParam String correo, @RequestParam String direccion, @RequestParam(defaultValue = "0") int idPaciente, @RequestParam String comuna, Model model) {

		System.out.println("Id Paciente: " + idPaciente);
		Paciente paciente = new Paciente();
		if (idPaciente > 0) {
			paciente.setId(idPaciente);
		}
		
		int fono = Integer.parseInt(telefono);

		paciente.setRut(rut);
		paciente.setNombres(nombres);
		paciente.setApellido1(apellido1);
		paciente.setApellido2(apellido2);
		paciente.setFecha_nacimiento(LocalDateTime.now());
		paciente.setGenero(genero);
		paciente.setTelefono(fono);
		paciente.setCorreo(correo);
		paciente.setDireccion(direccion);
		paciente.setComuna(comuna);

		if (idPaciente > 0) {
			paciente.setId(idPaciente);
			pac.actualizar(paciente);
		} else {
			pac.crearPaciente(paciente);
		}
		return new ModelAndView("listado-pacientes", "pacientes", pac.obtenerPacientes());
	}

}
