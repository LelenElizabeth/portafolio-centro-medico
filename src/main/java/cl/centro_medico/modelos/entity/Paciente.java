package cl.centro_medico.modelos.entity;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="paciente")
public class Paciente {
	
	@Id
	@Column(name="id")
	private int id;
	@Column(name="rut")
	private String rut;	
	private String nombres;
	private String apellido1;
	private String apellido2;
	private LocalDateTime fecha_nacimiento;
	private String genero;
	private String direccion;
	private String comuna;
	private int telefono;
	private String correo;
	

	public Paciente(int id, String rut, String nombres, String apellido1, String apellido2, LocalDateTime fecha_nacimiento,
			String genero, String direccion, String comuna, int telefono, String correo) {
		super();		
		setId(id);
		setRut(rut);
		setNombres(nombres);
		setApellido1(apellido1);
		setApellido2(apellido2);
		setFecha_nacimiento(fecha_nacimiento);
		setGenero(genero);
		setDireccion(direccion);
		setComuna(comuna);
		setTelefono(telefono);
		setCorreo(correo);
		
	}
	

	public Paciente() {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRut() {
		return rut;
	}

	public void setRut(String rut) {
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

	public LocalDateTime getFecha_nacimiento() {
		return fecha_nacimiento;
	}


	public void setFecha_nacimiento(LocalDateTime fecha_nacimiento) {
		this.fecha_nacimiento = fecha_nacimiento;
	}	
	@Override
	public String toString() {
		return "Paciente [id=" + id + ", rut=" + rut + ", nombres=" + nombres + ", apellido1=" + apellido1
				+ ", apellido2=" + apellido2 + ", fecha_nacimiento=" + fecha_nacimiento + ", genero=" + genero + ", direccion="
				+ direccion + ", comuna=" + comuna + ", telefono=" + telefono + ", correo=" + correo + "]";
	}



}
