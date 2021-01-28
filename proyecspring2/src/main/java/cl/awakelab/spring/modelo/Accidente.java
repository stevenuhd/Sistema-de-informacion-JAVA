package cl.awakelab.spring.modelo;
/**
 * Registramos uno o muchos accidentes de Cliente.
 * @author grupo 3 Fernando Cabrera, Jorge Navarrete, Karen Recabarren, Juvenal Colipi, Juan Lagos.
 *
 */
public class Accidente extends Cliente {
	private int idaccidente;
	private String fecha;
	private String hora;
	private String lugar;
	private String origen;
	private String consecuencias;
	private int rutacc;
	public Accidente() {
		super();
	}
	public Accidente(int idaccidente, String fecha, String hora, String lugar, String origen, String consecuencias,
			int rutacc) {
		super();
		this.idaccidente = idaccidente;
		this.fecha = fecha;
		this.hora = hora;
		this.lugar = lugar;
		this.origen = origen;
		this.consecuencias = consecuencias;
		this.rutacc = rutacc;
	}
	public int getIdaccidente() {
		return idaccidente;
	}
	public void setIdaccidente(int idaccidente) {
		this.idaccidente = idaccidente;
	}
	public String getFecha() {
		return fecha;
	}
	public void setFecha(String fecha) {
		this.fecha = fecha;
	}
	public String getHora() {
		return hora;
	}
	public void setHora(String hora) {
		this.hora = hora;
	}
	public String getLugar() {
		return lugar;
	}
	public void setLugar(String lugar) {
		this.lugar = lugar;
	}
	public String getOrigen() {
		return origen;
	}
	public void setOrigen(String origen) {
		this.origen = origen;
	}
	public String getConsecuencias() {
		return consecuencias;
	}
	public void setConsecuencias(String consecuencias) {
		this.consecuencias = consecuencias;
	}
	public int getRutacc() {
		return rutacc;
	}
	public void setRutacc(int rutacc) {
		this.rutacc = rutacc;
	}
	@Override
	public String toString() {
		return "Accidente [idaccidente=" + idaccidente + ", fecha=" + fecha + ", hora=" + hora + ", lugar=" + lugar
				+ ", origen=" + origen + ", consecuencias=" + consecuencias + ", rutacc=" + rutacc + "]";
	}
	
	
}
