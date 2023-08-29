package cl.centro_medico.modelos.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.centro_medico.modelos.entity.Usuario;

@Repository
public interface IUsuarioRepositorio extends JpaRepository<Usuario,Integer>{

}
