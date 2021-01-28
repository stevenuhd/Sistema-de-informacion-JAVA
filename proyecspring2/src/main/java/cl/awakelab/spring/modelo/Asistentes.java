package cl.awakelab.spring.modelo;

public class Asistentes {

	private int idasistente;
	private String nombres;
	private int edad;
	private int capacitacion_idcapacitacion;
	
	public Asistentes() {
		super();
	}

	public Asistentes(int idasistente, String nombres, int edad, int capacitacion_idcapacitacion) {
		super();
		this.idasistente = idasistente;
		this.nombres = nombres;
		this.edad = edad;
		this.capacitacion_idcapacitacion = capacitacion_idcapacitacion;
	}

	public Asistentes(String nombres, int edad, int capacitacion_idcapacitacion) {
		super();
		this.nombres = nombres;
		this.edad = edad;
		this.capacitacion_idcapacitacion = capacitacion_idcapacitacion;
	}

	public int getIdasistente() {
		return idasistente;
	}

	public void setIdasistente(int idasistente) {
		this.idasistente = idasistente;
	}

	public String getNombres() {
		return nombres;
	}

	public void setNombres(String nombres) {
		this.nombres = nombres;
	}

	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

	public int getCapacitacion_idcapacitacion() {
		return capacitacion_idcapacitacion;
	}

	public void setCapacitacion_idcapacitacion(int capacitacion_idcapacitacion) {
		this.capacitacion_idcapacitacion = capacitacion_idcapacitacion;
	}

	@Override
	public String toString() {
		return "Asistentes [idasistente=" + idasistente + ", nombres=" + nombres + ", edad=" + edad
				+ ", capacitacion_idcapacitacion=" + capacitacion_idcapacitacion + "]";
	}
	
}
