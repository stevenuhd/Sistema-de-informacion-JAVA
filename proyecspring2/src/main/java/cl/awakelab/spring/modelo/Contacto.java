package cl.awakelab.spring.modelo;

public class Contacto {
	private String nombre;
	private String apellidopaterno;
	private String apellidomaterno;
	private String telefono;
	private String correoelectronico;
	private String comentarios;
	private String tipodeusuario;
	
	public Contacto() {
		super();
	}

	public Contacto(String nombre, String apellidopaterno, String apellidomaterno, String telefono,
			String correoelectronico, String comentarios, String tipodeusuario) {
		super();
		this.nombre = nombre;
		this.apellidopaterno = apellidopaterno;
		this.apellidomaterno = apellidomaterno;
		this.telefono = telefono;
		this.correoelectronico = correoelectronico;
		this.comentarios = comentarios;
		this.tipodeusuario = tipodeusuario;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellidopaterno() {
		return apellidopaterno;
	}

	public void setApellidopaterno(String apellidopaterno) {
		this.apellidopaterno = apellidopaterno;
	}

	public String getApellidomaterno() {
		return apellidomaterno;
	}

	public void setApellidomaterno(String apellidomaterno) {
		this.apellidomaterno = apellidomaterno;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getCorreoelectronico() {
		return correoelectronico;
	}

	public void setCorreoelectronico(String correoelectronico) {
		this.correoelectronico = correoelectronico;
	}

	public String getComentarios() {
		return comentarios;
	}

	public void setComentarios(String comentarios) {
		this.comentarios = comentarios;
	}

	public String getTipodeusuario() {
		return tipodeusuario;
	}

	public void setTipodeusuario(String tipodeusuario) {
		this.tipodeusuario = tipodeusuario;
	}

	@Override
	public String toString() {
		return "Contacto [nombre=" + nombre + ", apellidopaterno=" + apellidopaterno + ", apellidomaterno="
				+ apellidomaterno + ", telefono=" + telefono + ", correoelectronico=" + correoelectronico
				+ ", comentarios=" + comentarios + ", tipodeusuario=" + tipodeusuario + "]";
	}

	public void setIdcontacto(int idcontacto) {
		// TODO Auto-generated method stub
		
	}
	
	
}