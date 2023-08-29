package cl.centro_medico.servicios;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.centro_medico.modelos.entity.Sistemas;
import cl.centro_medico.modelos.repositorio.ISistemasRepositorio;


@Service
public class SistemasServicio {
	
	public SistemasServicio() {
		super();
	}
	
	@Autowired
	private ISistemasRepositorio SisRepo;
	
	public Sistemas obtenerSistemas(int id) {
		return SisRepo.findById(id).get();
	}
	
	public void crearAdministrativo(Sistemas Sis) {
		SisRepo.save(Sis);
	}
	
	public void actualizar(Sistemas Sis) {
		SisRepo.save(Sis);
	}
	
	public void borrarAdministrativo(int id) {
		SisRepo.delete(SisRepo.getOne(id));
	}
	
}
