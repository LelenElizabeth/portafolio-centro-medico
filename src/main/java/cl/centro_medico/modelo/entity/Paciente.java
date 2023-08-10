package cl.centro_medico.modelo.entity;

import java.time.LocalDateTime;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="paciente")
@Inheritance(strategy = InheritanceType.JOINED)
public class Paciente {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	@Column(name="rut")
	private int rut;	
	private String nombres;
	private String apellido1;
	private String apellido2;
	private LocalDateTime fecha_hora;
	@OneToMany(mappedBy = "cliente", cascade = CascadeType.ALL)
	private List<Pago> pagos;

	public Paciente() {}
	
	public Paciente(int id) {
		super();
		this.id = id;
		
	}
	
	public Paciente(int id, String nombreUsuario) {
		super();
		this.id = id;
		this.nombreUsuario=nombreUsuario;
	}
	

	public Paciente(int id, String nombreUsuario, RolUsuario rol) {
		super();
		this.id = id;
		this.nombreUsuario = nombreUsuario;
		this.rol = rol;
	}

	public Paciente(String nombreUsuario, String contraseña, RolUsuario rol) {
		super();
		this.nombreUsuario = nombreUsuario;
		this.contraseña= contraseña;
		this.rol = rol;
	}
	
	public Paciente(int id, String nombreUsuario, String contraseña, RolUsuario rol) {
		super();
		this.id = id;
		this.nombreUsuario = nombreUsuario;
		this.contraseña= contraseña;
		this.rol = rol;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombre() {
		return nombreUsuario;
	}
	public void setNombre(String nombre) {
		this.nombreUsuario = nombre;
	}
	
	public String getContraseña() {
		return contraseña;
	}

	public void setContraseña(String contraseña) {
		this.contraseña = contraseña;
	}

	public RolUsuario getRol() {
		return rol;
	}
	public void setRol(RolUsuario rol) {
		this.rol = rol;
	}

	@Override
	public String toString() {
		return "Usuario [id=" + id + ", nombreUsuario=" + nombreUsuario + ", rol=" + rol + ", contraseña=" + contraseña + "]";
	}
	
}
