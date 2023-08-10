package cl.centro_medico.modelos.entity;

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
public class Paciente {
	@Id
	@Column(name="id")
	private int id;
	@Column(name="rut")
	private int rut;	
	private String nombres;
	private String apellido1;
	private String apellido2;
	private LocalDateTime fecha_hora;
	private String genero;
	private String direccion;
	private String comuna;
	private int telefono;
	private String correo;
	

	public Paciente(int id, int rut, String nombres, String apellido1, String apellido2, LocalDateTime fecha_hora,
			String genero, String direccion, String comuna, int telefono, String correo) {
		super();
		this.id = id;
		this.rut = rut;
		this.nombres = nombres;
		this.apellido1 = apellido1;
		this.apellido2 = apellido2;
		this.fecha_hora = fecha_hora;
		this.genero = genero;
		this.direccion = direccion;
		this.comuna = comuna;
		this.telefono = telefono;
		this.correo = correo;
	}

	public Paciente() {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getRut() {
		return rut;
	}

	public void setRut(int rut) {
		this.rut = rut;
	}

	public String getNombres() {
		return nombres;
	}

	public void setNombres(String nombres) {
		this.nombres = nombres;
	}

	public String getApellido1() {
		return apellido1;
	}

	public void setApellido1(String apellido1) {
		this.apellido1 = apellido1;
	}

	public String getApellido2() {
		return apellido2;
	}

	public void setApellido2(String apellido2) {
		this.apellido2 = apellido2;
	}

	public LocalDateTime getFecha_hora() {
		return fecha_hora;
	}

	public void setFecha_hora(LocalDateTime fecha_hora) {
		this.fecha_hora = fecha_hora;
	}

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getComuna() {
		return comuna;
	}

	public void setComuna(String comuna) {
		this.comuna = comuna;
	}

	public int getTelefono() {
		return telefono;
	}

	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}
	
	@Override
	public String toString() {
		return "Paciente [id=" + id + ", rut=" + rut + ", nombres=" + nombres + ", apellido1=" + apellido1
				+ ", apellido2=" + apellido2 + ", fecha_hora=" + fecha_hora + ", genero=" + genero + ", direccion="
				+ direccion + ", comuna=" + comuna + ", telefono=" + telefono + ", correo=" + correo + "]";
	}

}
