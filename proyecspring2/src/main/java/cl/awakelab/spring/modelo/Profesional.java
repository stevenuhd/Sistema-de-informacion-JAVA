package cl.awakelab.spring.modelo;
/**
 * Clase hija de usuario en la cual establecemmos los atributos del perfil que hereda usuario.
 * @author grupo 3 Fernando Cabrera, Jorge Navarrete, Karen Recabarren, Juvenal Colipi, Juan Lagos.
 *
 */
public class Profesional {
	private String rut;
	private String nombre;
	private String apellidos;
	private String telefono;
	private String titulo;
	private String proyecto;

public Profesional() {
	super();
}

public Profesional(String rut, String nombre, String apellidos, String telefono, String titulo, String proyecto) {
	super();
	this.rut = rut;
	this.nombre = nombre;
	this.apellidos = apellidos;
	this.telefono = telefono;
	this.titulo = titulo;
	this.proyecto = proyecto;
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

public String getTelefono() {
	return telefono;
}

public void setTelefono(String telefono) {
	this.telefono = telefono;
}

public String getTitulo() {
	return titulo;
}

public void setTitulo(String titulo) {
	this.titulo = titulo;
}

public String getProyecto() {
	return proyecto;
}

public void setProyecto(String proyecto) {
	this.proyecto = proyecto;
}

@Override
public String toString() {
	return "Profesional [rut=" + rut + ", nombre=" + nombre + ", apellidos=" + apellidos + ", telefono=" + telefono
			+ ", titulo=" + titulo + ", proyecto=" + proyecto + "]";
	
	
}





}





















