package cl.awakelab.spring.idao;

import java.util.List;

import cl.awakelab.spring.modelo.Administrativo;
import cl.awakelab.spring.modelo.Usuario; 


public interface iadministrativodao {
	
	public boolean registrarAdministrativo(Administrativo administrativo);
	public List<Administrativo> obtener();
	public boolean actualizarAdministrativo(Administrativo administrativo);
	public boolean eliminarAdministrativo(Administrativo administrativo);
	public Administrativo obtenerAdmporrut(String rut);
	public boolean desplegarAdministrativo(Administrativo administrativo);
	boolean crearAdministrativo(Administrativo administrativo);
	public List<Administrativo> obtenerRuts();
	public Usuario obtenerDatosporRut(String rut);
}
