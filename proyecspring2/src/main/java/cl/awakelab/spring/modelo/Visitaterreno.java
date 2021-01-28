package cl.awakelab.spring.modelo;
/**
 * Una visita en terreno debe tener una o más revisiones por cada ocasión.
 * @author grupo 3 Fernando Cabrera, Jorge Navarrete, Karen Recabarren, Juvenal Colipi, Juan Lagos.
 *
 */
public class Visitaterreno extends Cliente{
	private int idterreno;
	private int rutterreno;
	private String dia;
	private String hora;
	private String lugar;
	
	public Visitaterreno() {
		super();
	}

	public Visitaterreno(int idterreno, int rutterreno, String dia, String hora, String lugar) {
		super();
		this.idterreno = idterreno;
		this.rutterreno = rutterreno;
		this.dia = dia;
		this.hora = hora;
		this.lugar = lugar;
	}

	public int getIdterreno() {
		return idterreno;
	}

	public void setIdterreno(int idterreno) {
		this.idterreno = idterreno;
	}

	public int getRutterreno() {
		return rutterreno;
	}

	public void setRutterreno(int rutterreno) {
		this.rutterreno = rutterreno;
	}

	public String getDia() {
		return dia;
	}

	public void setDia(String dia) {
		this.dia = dia;
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

	@Override
	public String toString() {
		return "Visitaterreno [idterreno=" + idterreno + ", rutterreno=" + rutterreno + ", dia=" + dia + ", hora="
				+ hora + ", lugar=" + lugar + "]";
	}
	
	
	
}
