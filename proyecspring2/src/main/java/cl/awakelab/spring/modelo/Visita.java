package cl.awakelab.spring.modelo;

public class Visita {
	
	private int idvisita;
	private String visfecha;
	private String vishora;
	private String vislugar;
	private String viscomentarios;
	private int cliente_rutcliente;
	
	public Visita() {
		super();
	}

	public Visita(int idvisita, String visfecha, String vishora, String vislugar, String viscomentarios,
			int cliente_rutcliente) {
		super();
		this.idvisita = idvisita;
		this.visfecha = visfecha;
		this.vishora = vishora;
		this.vislugar = vislugar;
		this.viscomentarios = viscomentarios;
		this.cliente_rutcliente = cliente_rutcliente;
	}

	public int getIdvisita() {
		return idvisita;
	}

	public void setIdvisita(int idvisita) {
		this.idvisita = idvisita;
	}

	public String getVisfecha() {
		return visfecha;
	}

	public void setVisfecha(String visfecha) {
		this.visfecha = visfecha;
	}

	public String getVishora() {
		return vishora;
	}

	public void setVishora(String vishora) {
		this.vishora = vishora;
	}

	public String getVislugar() {
		return vislugar;
	}

	public void setVislugar(String vislugar) {
		this.vislugar = vislugar;
	}

	public String getViscomentarios() {
		return viscomentarios;
	}

	public void setViscomentarios(String viscomentarios) {
		this.viscomentarios = viscomentarios;
	}

	public int getCliente_rutcliente() {
		return cliente_rutcliente;
	}

	public void setCliente_rutcliente(int cliente_rutcliente) {
		this.cliente_rutcliente = cliente_rutcliente;
	}

	@Override
	public String toString() {
		return "Visita [idvisita=" + idvisita + ", visfecha=" + visfecha + ", vishora=" + vishora + ", vislugar="
				+ vislugar + ", viscomentarios=" + viscomentarios + ", cliente_rutcliente=" + cliente_rutcliente + "]";
	}

}
