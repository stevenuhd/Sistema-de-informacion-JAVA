package cl.awakelab.spring.idao;

import java.util.List;

import cl.awakelab.spring.modelo.Capacitacion;
import cl.awakelab.spring.modelo.ChequeoVisita;
import cl.awakelab.spring.modelo.Cliente;





public interface icapacitaciondao {
	
	public boolean registrar(Capacitacion capacitacion);
	public List<Capacitacion> obtener();
	public boolean actualizar(Capacitacion capacitacion);
	public boolean eliminar(Capacitacion capacitacion);
	public Capacitacion obtenercapaporid(int idcliente);
	public List<Cliente> obtenerRuts();
}
