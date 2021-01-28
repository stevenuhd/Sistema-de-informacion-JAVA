package cl.awakelab.spring.modelo;

public class ChequeoVisita extends Visita{
	
	private int idchequeovisita;
	private String estado;
	private int chequeovisita_idvisita;
	private String nombrechequeo;
	
	public ChequeoVisita() {
		super();
	}

	public ChequeoVisita(int idchequeovisita, String estado, int chequeovisita_idvisita, String nombrechequeo) {
		super();
		this.idchequeovisita = idchequeovisita;
		this.estado = estado;
		this.chequeovisita_idvisita = chequeovisita_idvisita;
		this.nombrechequeo = nombrechequeo;
	}
	
	

	

	public ChequeoVisita(String estado, int chequeovisita_idvisita, String nombrechequeo) {
		super();
		this.estado = estado;
		this.chequeovisita_idvisita = chequeovisita_idvisita;
		this.nombrechequeo = nombrechequeo;
	}

	public ChequeoVisita(int int1) {
		// TODO Auto-generated constructor stub
	}

	public int getIdchequeovisita() {
		return idchequeovisita;
	}

	public String getEstado() {
		return estado;
	}

	public int getChequeovisita_idvisita() {
		return chequeovisita_idvisita;
	}

	public String getNombrechequeo() {
		return nombrechequeo;
	}

	public void setIdchequeovisita(int idchequeovisita) {
		this.idchequeovisita = idchequeovisita;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public void setChequeovisita_idvisita(int chequeovisita_idvisita) {
		this.chequeovisita_idvisita = chequeovisita_idvisita;
	}

	public void setNombrechequeo(String nombrechequeo) {
		this.nombrechequeo = nombrechequeo;
	}

	@Override
	public String toString() {
		return "ChequeoVisita [idchequeovisita=" + idchequeovisita + ", estado=" + estado + ", chequeovisita_idvisita="
				+ chequeovisita_idvisita + ", nombrechequeo=" + nombrechequeo + "]";
	}
	
	
		
}
