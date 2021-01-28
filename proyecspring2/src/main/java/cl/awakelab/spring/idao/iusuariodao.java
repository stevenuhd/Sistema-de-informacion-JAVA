package cl.awakelab.spring.idao;

import java.util.List;

import cl.awakelab.spring.modelo.Usuario;



public interface iusuariodao {
	public boolean registrarusuario(Usuario usuario);
	public List<Usuario> obtenerusuario();
	public boolean actualizarusuario(Usuario usuario);
	public boolean eliminarusuario(Usuario usuario);
	public Usuario obtenerusuporrut(String rut);
	public boolean desplegarusuario(Usuario usuario);
	
}
