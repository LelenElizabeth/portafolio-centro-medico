package cl.centro_medico.modelos.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="sistemas")
@PrimaryKeyJoinColumn(name="id")
public class Sistemas extends Usuario{

	@Column(name="nombre_s")
	private String nombreSistema;
	@Column(name="area")
	private String area;
	
	public Sistemas() {
		super();
	}
	

	public Sistemas(String nombreSistema, String area) {
		super();
		this.nombreSistema = nombreSistema;
		this.area = area;
	}


	public String getNombreSistema() {
		return nombreSistema;
	}

	public void setNombreSistema(String nombreSistema) {
		this.nombreSistema = nombreSistema;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	@Override
	public String toString() {
		return "Sistemas [nombreSistema=" + nombreSistema + ", area=" + area + "]";
	}
	
	

}
