package cl.centro_medico.modelos.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.centro_medico.modelos.entity.Paciente;

@Repository
public interface IPacienteRepositorio extends JpaRepository<Paciente,Integer> {

}
