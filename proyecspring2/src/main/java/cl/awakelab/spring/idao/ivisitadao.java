package cl.awakelab.spring.idao;

import java.util.List;

import cl.awakelab.spring.modelo.Cliente;
import cl.awakelab.spring.modelo.Visita;

public interface ivisitadao {
	
	public boolean registrarVisita(Visita visita);
	public List<Visita> obtenerVisita();
	public boolean actualizarVisita(Visita visita);
	public boolean eliminarVisita(Visita visita);
	public Visita obtenerVisitaporid(int idvisita);
	public List<Cliente> obtenerRuts();
}
