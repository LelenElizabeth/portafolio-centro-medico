package cl.centro_medico.servicios;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.centro_medico.modelos.entity.Usuario;
import cl.centro_medico.modelos.repositorio.IUsuarioRepositorio;


@Service
public class UsuarioServicio {

	public UsuarioServicio() {
		super();
	}
	@Autowired
	private IUsuarioRepositorio userRepo;
	
	
	public ArrayList<Usuario> obtenerUsuarios(){
		return (ArrayList<Usuario>) userRepo.findAll();
	}
	
	public Usuario obtenerUsuario(int id) {
		return userRepo.findById(id).get();
	}
	
	public void crearUsuario(Usuario usu) {
		userRepo.save(usu);
	}
	
	public void actualizar(Usuario usu) {
		userRepo.save(usu);
	}
	
	public void borrarUsuario(int id) {
		userRepo.delete(userRepo.getOne(id));
	}	

}
