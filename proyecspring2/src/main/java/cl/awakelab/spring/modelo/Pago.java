package cl.awakelab.spring.modelo;

public class Pago extends Cliente{
	private int idpago;
	private String fechadepago;
	private int montodepago;
	private int mesdepago;
	private int aniodepago;
	private int pagrutclte;
	
	public Pago() {
		super();
	}

	public Pago(int idpago, String fechadepago, int mesdepago, int montodepago, int aniodepago, int pagrutclte) {
		super();
		this.idpago = idpago;
		this.fechadepago = fechadepago;
		this.mesdepago = mesdepago;
		this.montodepago = montodepago;
		this.aniodepago = aniodepago;
		this.pagrutclte =pagrutclte;
	}

	



	public int getPagrutclte() {
		return pagrutclte;
	}

	public void setPagrutclte(int pagrutclte) {
		this.pagrutclte = pagrutclte;
	}

	public int getIdpago() {
		return idpago;
	}

	public String getFechadepago() {
		return fechadepago;
	}

	public int getMontodepago() {
		return montodepago;
	}

	public int getAniodepago() {
		return aniodepago;
	}

	public void setIdpago(int idpago) {
		this.idpago = idpago;
	}

	public void setFechadepago(String fechadepago) {
		this.fechadepago = fechadepago;
	}

	public void setMontodepago(int montodepago) {
		this.montodepago = montodepago;
	}

	public void setAniodepago(int aniodepago) {
		this.aniodepago = aniodepago;
	}

	@Override
	public String toString() {
		return "Pago [idpago=" + idpago + ", fechadepago=" + fechadepago + ", montodepago=" + montodepago
				+ ", aniodepago=" + aniodepago + "]";
	}

	public int getMesdepago() {
		return mesdepago;
	}

	public void setMesdepago(int mesdepago) {
		this.mesdepago = mesdepago;
	}
	
	

}
