package cl.awakelab.spring.idao;

import java.util.List;

import cl.awakelab.spring.modelo.Profesional;
import cl.awakelab.spring.modelo.Usuario;





public interface iprofesionaldao {
	public boolean registrarprofesional(Profesional profesional);
	public List<Profesional> obtener();
	public boolean actualizarprofesional(Profesional profesional);
	public boolean eliminarprofesional(Profesional profesional);
	public Profesional obtenerprofporrut(String rut);
	public Usuario obtenerDatosporID();

}


