package cl.awakelab.spring.idao;

import java.util.List;

import cl.awakelab.spring.modelo.Cliente;
import cl.awakelab.spring.modelo.Pago;



public interface ipagodao {
	public boolean registrarpago(Pago pagos);
	public List<Pago> obtenerpago();
	public boolean actualizarpago(Pago pagos);
	public boolean eliminarpago(Pago pagos);
	public boolean desplegarpago(Pago pago);
	public Pago obtenerpagoporid(int idpago);
	public List<Cliente> obtenerRuts();

}
