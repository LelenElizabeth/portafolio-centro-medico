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
@Table(name="ficha")

public class Ficha {
	@Id
	@Column(name="id")
	private int id;
	private String anamnesis;
	private String indicaciones_generales;
	private String receta_medica;
	private String diagnostico;
	

	public Ficha() {}

	public Ficha(int id, String anamnesis, String indicaciones_generales, String receta_medica, String diagnostico) {
		super();
		this.id = id;
		this.anamnesis = anamnesis;
		this.indicaciones_generales = indicaciones_generales;
		this.receta_medica = receta_medica;
		this.diagnostico = diagnostico;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getAnamnesis() {
		return anamnesis;
	}


	public void setAnamnesis(String anamnesis) {
		this.anamnesis = anamnesis;
	}


	public String getIndicaciones_generales() {
		return indicaciones_generales;
	}


	public void setIndicaciones_generales(String indicaciones_generales) {
		this.indicaciones_generales = indicaciones_generales;
	}


	public String getReceta_medica() {
		return receta_medica;
	}


	public void setReceta_medica(String receta_medica) {
		this.receta_medica = receta_medica;
	}


	public String getDiagnostico() {
		return diagnostico;
	}


	public void setDiagnostico(String diagnostico) {
		this.diagnostico = diagnostico;
	}


	@Override
	public String toString() {
		return "Ficha [id=" + id + ", anamnesis=" + anamnesis + ", indicaciones_generales=" + indicaciones_generales
				+ ", receta_medica=" + receta_medica + ", diagnostico=" + diagnostico + "]";
	}

}

