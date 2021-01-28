package cl.awakelab.spring.modelo;
/**
 * Clase hija de usuario en la cual establecemos los atributos del perfil que hereda usuario.
 * @author grupo 3 Fernando Cabrera, Jorge Navarrete, Karen Recabarren, Juvenal Colipi, Juan Lagos.
 *
 */
public class Administrativo extends Usuario{
	private String rut;
	private String nombre;
	private String apellidos;
	private String correo;
	private String area;
	private int adm_idusuario;
	
	
	
	public Administrativo() {
		super();
	}






	public Administrativo(String rut, String nombre, String apellidos) {
		super();
		this.rut = rut;
		this.nombre = nombre;
		this.apellidos = apellidos;
	}






	public Administrativo(String rut, String nombre, String apellidos, String correo, String area, int adm_idusuario) {
		super();
		this.rut = rut;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.correo = correo;
		this.area = area;
		this.adm_idusuario = adm_idusuario;
	}






	public String getRut() {
		return rut;
	}

	public void setRut(String rut) {
		this.rut = rut;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}



	public int getAdm_idusuario() {
		return adm_idusuario;
	}



	public void setAdm_idusuario(int adm_idusuario) {
		this.adm_idusuario = adm_idusuario;
	}
	
	

}
