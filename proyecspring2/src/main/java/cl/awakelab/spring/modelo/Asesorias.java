package cl.awakelab.spring.modelo;

public class Asesorias {
	private int idaseso;
	private String Fecha;
	private String Motivo;
	private int Profrut;

	
	
	
	
	public Asesorias(String fecha2, String motivo2, int rut) {
		super();
		// TODO Auto-generated constructor stub
	}





	public Asesorias(int idaseso, String fecha, String motivo, int profrut) {
		super();
		this.idaseso = idaseso;
		this.Fecha = fecha;
		this.Motivo = motivo;
		this.Profrut = profrut;
	}





	





	public Asesorias() {
		// TODO Auto-generated constructor stub
	}





	public int getIdaseso() {
		return idaseso;
	}





	public void setIdaseso(int idaseso) {
		this.idaseso = idaseso;
	}





	public String getFecha() {
		return Fecha;
	}





	public void setFecha(String fecha) {
		Fecha = fecha;
	}





	public String getMotivo() {
		return Motivo;
	}





	public void setMotivo(String motivo) {
		Motivo = motivo;
	}





	public int getProfrut() {
		return Profrut;
	}





	public void setProfrut(int profrut) {
		Profrut = profrut;
	}





	@Override
	public String toString() {
		return "Asesorias [idaseso=" + idaseso + ", Fecha=" + Fecha + ", Motivo=" + Motivo + ", Profrut=" + Profrut
				+ "]";
	}





	





	public static void eliminarAsesorias(Asesorias as) {
		// TODO Auto-generated method stub
		
	}
	



}
