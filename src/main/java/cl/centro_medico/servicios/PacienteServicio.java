package cl.centro_medico.servicios;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.centro_medico.modelos.entity.Paciente;
import cl.centro_medico.modelos.repositorio.IPacienteRepositorio;

@Service
public class PacienteServicio {

	
	public PacienteServicio() {
		super();
	}
	
	@Autowired
	private IPacienteRepositorio pacRepo;
	
	public ArrayList<Paciente> obtenerPacientes(){
		return (ArrayList<Paciente>) pacRepo.findAll();
	}
	
	public Paciente obtenerPaciente(int id) {
		return pacRepo.findById(id).orElse(null);
	}
	
	public void crearPaciente(Paciente pac) {
		pacRepo.save(pac);
	}
	
	public void actualizar(Paciente pac) {
		pacRepo.save(pac);
	}
	
	public void borrarPaciente(int id) {
		pacRepo.delete(pacRepo.getOne(id));
	}
	
}
