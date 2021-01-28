package cl.awakelab.spring.modelo;

public class Cliente {
	
	private int rutcliente;
	private String nombres;
	private String apellidos;
	private String telefono;
	private String afp;
	private int sistemasalud;
	private String direccion;
	private String comuna;
	private int edad;
	private int cliente_idusuario;
	
	public Cliente() {
		super();
	}

	public Cliente(int rutcliente, String nombres, String apellidos, String telefono, String afp, int sistemasalud,
			String direccion, String comuna, int edad) {
		super();
		this.rutcliente = rutcliente;
		this.nombres = nombres;
		this.apellidos = apellidos;
		this.telefono = telefono;
		this.afp = afp;
		this.sistemasalud = sistemasalud;
		this.direccion = direccion;
		this.comuna = comuna;
		this.edad = edad;
	}
	
	

	public Cliente(int rutcliente, String nombres, String apellidos, String telefono, String afp, int sistemasalud,
			String direccion, String comuna, int edad, int cliente_idusuario) {
		super();
		this.rutcliente = rutcliente;
		this.nombres = nombres;
		this.apellidos = apellidos;
		this.telefono = telefono;
		this.afp = afp;
		this.sistemasalud = sistemasalud;
		this.direccion = direccion;
		this.comuna = comuna;
		this.edad = edad;
		this.setCliente_idusuario(cliente_idusuario);
	}

	public int getRutcliente() {
		return rutcliente;
	}

	public void setRutcliente(int rutcliente) {
		this.rutcliente = rutcliente;
	}

	public String getNombres() {
		return nombres;
	}

	public void setNombres(String nombres) {
		this.nombres = nombres;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getAfp() {
		return afp;
	}

	public void setAfp(String afp) {
		this.afp = afp;
	}

	public int getSistemasalud() {
		return sistemasalud;
	}

	public void setSistemasalud(int sistemasalud) {
		this.sistemasalud = sistemasalud;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getComuna() {
		return comuna;
	}

	public void setComuna(String comuna) {
		this.comuna = comuna;
	}

	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

	@Override
	public String toString() {
		return "Cliente [rutcliente=" + rutcliente + ", nombres=" + nombres + ", apellidos=" + apellidos + ", telefono="
				+ telefono + ", afp=" + afp + ", sistemasalud=" + sistemasalud + ", direccion=" + direccion
				+ ", comuna=" + comuna + ", edad=" + edad + "]";
	}

	public int getCliente_idusuario() {
		return cliente_idusuario;
	}

	public void setCliente_idusuario(int cliente_idusuario) {
		this.cliente_idusuario = cliente_idusuario;
	}

}
