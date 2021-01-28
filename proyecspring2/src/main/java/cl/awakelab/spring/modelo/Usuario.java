package cl.awakelab.spring.modelo;


public class Usuario {
	private int idusuario;
	private String nombre;
	private String Apellidos;
	private String fechanacimiento;
	private String run;
	private String rutcte;
	private String rutadmi;
	private String rutprof;
	private String tipo;
	
	public Usuario() {
		super();
	}

	public Usuario(String nombre, String fechanacimiento, String run) {
		super();
		this.nombre = nombre;
		this.fechanacimiento = fechanacimiento;
		this.run = run;
	}
	
	

	

	public Usuario(int idusuario, String nombre, String apellidos) {
		super();
		this.idusuario = idusuario;
		this.nombre = nombre;
		Apellidos = apellidos;
	}

	public Usuario(int idusuario, String nombre, String apellidos, String tipo) {
		super();
		this.idusuario = idusuario;
		this.nombre = nombre;
		Apellidos = apellidos;
		this.tipo = tipo;
	}

	public Usuario(int idusuario, String nombre, String apellidos, String fechanacimiento, String tipo) {
		super();
		this.idusuario = idusuario;
		this.nombre = nombre;
		Apellidos = apellidos;
		this.fechanacimiento = fechanacimiento;
		this.setTipo(tipo);
	}

	public Usuario(int idusuario, String nombre, String apellidos, String fechanacimiento, String run, String rutcte,
			String rutadmi, String rutprof) {
		super();
		this.idusuario = idusuario;
		this.nombre = nombre;
		Apellidos = apellidos;
		this.fechanacimiento = fechanacimiento;
		this.run = run;
		this.rutcte = rutcte;
		this.rutadmi = rutadmi;
		this.rutprof = rutprof;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getFechanacimiento() {
		return fechanacimiento;
	}

	public void setFechanacimiento(String fechanacimiento) {
		this.fechanacimiento = fechanacimiento;
	}

	public String getRun() {
		return run;
	}

	public void setRun(String run) {
		this.run = run;
	}
	
	

	public int getIdusuario() {
		return idusuario;
	}

	public void setIdusuario(int idusuario) {
		this.idusuario = idusuario;
	}

	public String getApellidos() {
		return Apellidos;
	}

	public void setApellidos(String apellidos) {
		Apellidos = apellidos;
	}

	public String getRutcte() {
		return rutcte;
	}

	public void setRutcte(String rutcte) {
		this.rutcte = rutcte;
	}

	public String getRutadmi() {
		return rutadmi;
	}

	public void setRutadmi(String rutadmi) {
		this.rutadmi = rutadmi;
	}

	public String getRutprof() {
		return rutprof;
	}

	public void setRutprof(String rutprof) {
		this.rutprof = rutprof;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	@Override
	public String toString() {
		return "Usuario [nombre=" + nombre + ", fechanacimiento=" + fechanacimiento + ", run=" + run + "]";
	}
	

	

}
