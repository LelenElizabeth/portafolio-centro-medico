package cl.centro_medico.modelos.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="usuarios")
public class Usuario {

	@Id
	@Column(name="id")
	private int id;
	@Column(name="nombres")
	private String nombres;
	@Column(name="usuario")
	private String usuario;
	@Column(name="contrasena")
	private String contrasena;
	
	
	public Usuario() {}
	
	public Usuario(int id) {
		super();
		this.id = id;	}


	public Usuario(int id, String nombres, String usuario, String contrasena) {
		super();
		this.id = id;
		this.nombres = nombres;
		this.usuario = usuario;
		this.contrasena = contrasena;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombres() {
		return nombres;
	}

	public void setNombres(String nombres) {
		this.nombres = nombres;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getContrasena() {
		return contrasena;
	}

	public void setContrasena(String contrasena) {
		this.contrasena = contrasena;
	}

	@Override
	public String toString() {
		return "Usuario [id=" + id + ", nombres=" + nombres + ", usuario=" + usuario + ", contrasena=" + contrasena
				+ "]";
	}
	

}
