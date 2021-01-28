package cl.awakelab.spring.idao;

import java.util.List;

import cl.awakelab.spring.modelo.Cliente;
import cl.awakelab.spring.modelo.Usuario;

public interface iclientedao {
	
	public boolean registrarCliente(Cliente cliente);
	public List<Cliente> obtenerCliente();
	public boolean actualizarCliente(Cliente cliente);
	public boolean eliminarCliente(Cliente cliente);
	public Cliente obtenerClienteporid(int cliente);
	public Usuario obtenerDatosuser(int id);

}
