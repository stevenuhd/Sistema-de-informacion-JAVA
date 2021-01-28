package cl.awakelab.spring.modelo;


/**
 * Establecemos los atributos de cada capacitacion  que quiera la persona que este utilizando el programa.
 * @author grupo 3 Fernando Cabrera, Jorge Navarrete, Karen Recabarren, Juvenal Colipi, Juan Lagos.
 *
 */
public class Capacitacion {
	private int idcapa;
	private int rutclte;
	private String dia;
	private String hora;
	private String lugar;
	private int duracion;
	private int cantasist;
	
	public Capacitacion() {
		super();
	}
	
	
	public Capacitacion(int idcapa, String dia, String hora, String lugar, int duracion,int cantasist, int rutclte) {
		
		this.idcapa = idcapa;
		this.dia = dia;
		this.hora = hora;
		this.lugar = lugar;
		this.duracion = duracion;
		this.cantasist = cantasist;
		this.rutclte = rutclte;
	}

	/*
	 * @RequestParam ("idcapacitacion") int id,
	 * 
	 * @RequestParam ("fechacapa") String fecha,
	 * 
	 * @RequestParam ("horacapa") String hora,
	 * 
	 * @RequestParam ("lugar") String lugar,
	 * 
	 * @RequestParam ("duracion") int duracion,
	 * 
	 * @RequestParam ("cantasist") int cantasist,
	 * 
	 * @RequestParam ("rut") int rut)
	 */
	
	
	public Capacitacion( String dia, String hora, String lugar, int duracion,int cantasist, int rutclte) {
	

		this.dia = dia;
		this.hora = hora;
		this.lugar = lugar;
		this.duracion = duracion;
		this.cantasist = cantasist;
		this.rutclte = rutclte;
	}
	
	
	public Capacitacion(int idcapa, int rutclte, String dia, String hora, String lugar, int duracion, int cantasist) {
		super();
		this.idcapa = idcapa;
		this.rutclte = rutclte;
		this.dia = dia;
		this.hora = hora;
		this.lugar = lugar;
		this.duracion = duracion;
		this.cantasist = cantasist;
	}

	public int getIdcapa() {
		return idcapa;
	}

	public void setIdcapa(int idcapa) {
		this.idcapa = idcapa;
	}

	public int getRutclte() {
		return rutclte;
	}

	public void setRutclte(int rutclte) {
		this.rutclte = rutclte;
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

	public int getDuracion() {
		return duracion;
	}

	public void setDuracion(int duracion) {
		this.duracion = duracion;
	}

	public int getCantasist() {
		return cantasist;
	}

	public void setCantasist(int cantasist) {
		this.cantasist = cantasist;
	}

	@Override
	public String toString() {
		return "Capacitacion [idcapa=" + idcapa + ", rutclte=" + rutclte + ", dia=" + dia + ", hora=" + hora
				+ ", lugar=" + lugar + ", duracion=" + duracion + ", cantasist=" + cantasist + "]";
	}
	/**
	 * @return retorna los atributos principales que definen la clase capacitacion para que puedan ser vistos por pantalla
	 */
	public String  mostrarDetalle() {
		
		return "La capacitación será en "+ lugar + " a las "+ hora + " del día "+ dia + ", y durará " + duracion +" minutos"; 
	}


	
}
