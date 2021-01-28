package cl.awakelab.spring.idao;

import java.util.List;

import cl.awakelab.spring.modelo.Asesorias;
import cl.awakelab.spring.modelo.Profesional;



	
	public interface iasesoriasdao {
		
		public boolean registrar(Asesorias asesorias);
		public List<Asesorias> obtener();
		public boolean actualizar(Asesorias asesorias);
		public boolean eliminarAsesorias(Asesorias asesorias);
		public boolean editarAsesorias(Asesorias asesorias);
		public Asesorias obtenerasesoporid(Asesorias asesorias);
		public Asesorias obtenerasesoporida(int idaseso);
		public List<Profesional> obtenerRut();
		
			

}
