package cl.awakelab.spring.idao;



import java.util.List;

import cl.awakelab.spring.modelo.Accidente;
import cl.awakelab.spring.modelo.Cliente;

public interface iaccidentedao {
	
	
	public boolean actualizarAccidente(Accidente accidente);
	public boolean eliminarAccidente(Accidente accidente);
	public boolean editarAccidente(Accidente accidente);
	public Accidente obteneraccid(Accidente accidente);
	public Accidente obteneracciporida(int idacci);
	public boolean registrarAccidente(Accidente accidente);
	public List<Accidente> obteneraccidente();
	public List<Cliente> obtenerRuts();
	

}



