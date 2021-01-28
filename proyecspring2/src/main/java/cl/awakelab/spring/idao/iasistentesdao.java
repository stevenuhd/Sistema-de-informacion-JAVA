package cl.awakelab.spring.idao;

import java.util.List;

import cl.awakelab.spring.modelo.Asistentes;

public interface iasistentesdao {
	
	public boolean registrarAsistentes(Asistentes asistentes);
	public List<Asistentes> obtenerAsistentes();
	public boolean actualizarAsistentes(Asistentes asistentes);
	public boolean eliminarAsistentes(Asistentes asistentes);
	public Asistentes obtenerAsistentesporid(int idasistentes);

}
