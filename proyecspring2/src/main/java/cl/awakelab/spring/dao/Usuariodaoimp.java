package cl.awakelab.spring.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import cl.awakelab.spring.idao.iusuariodao;
import cl.awakelab.spring.modelo.ChequeoVisita;
import cl.awakelab.spring.modelo.Usuario;

public class Usuariodaoimp implements iusuariodao {
	
	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
   //  registrar  datos  a la tabla usuario sql
	@Override
	public boolean registrarusuario(Usuario usuario) {
		String sql= "insert into Usuarios (idusuario, nombre, apellidos, fecha_nacimiento, tipo) values ('"
				+ usuario.getIdusuario() + "','"
				+ usuario.getNombre() + "','"
				+ usuario.getApellidos() + "',TO_DATE('"
				+ usuario.getFechanacimiento() +"','dd/mm/yy') , '"
				+ usuario.getTipo() +"')";
				template.update(sql);
		return true;
	}
    //obtener  datos de la tabla usuario
	@Override
	public List<Usuario> obtenerusuario() {
		String query = "select * from USUARIOS";
		
	    return template.query(query,new RowMapper<Usuario>(){    
	        public Usuario mapRow(ResultSet rs, int row) throws SQLException {    
	        	Usuario c=new Usuario();
	        	c.setIdusuario(rs.getInt(1));
	        	c.setNombre(rs.getString(2));
	        	c.setApellidos(rs.getString(3));
				c.setFechanacimiento(rs.getString(4));
				c.setTipo(rs.getString(5));
//				c.setRun(rs.getString(5));
//				c.setRutcte(rs.getString(6));
//				c.setRutadmi(rs.getString(7));
//				c.setRutprof(rs.getString(8));
		     return c;
	        }
	    });
	}
    //editar datos de la tabla usuario
	@Override
	public boolean actualizarusuario(Usuario usuario) {
		String sql = "update usuarios set "
				+ "idusuario = " + usuario.getIdusuario() + "', "
				+ "nombre = " + usuario.getNombre() + "', "
				+ "apellidos = " + usuario.getApellidos() + "', "
				+ "fecha_nacimiento = " + usuario.getFechanacimiento() + "'"
				+ "tipo = " + usuario.getTipo();
		template.update(sql);
		return true;
	}
     // eliminar datos  de la tabla usuario
	@Override
	public boolean eliminarusuario(Usuario usuario) {
		String sql= "delete from usuarios where idusuario= " + usuario.getIdusuario();
		template.update(sql);
		return true;
	}
	//para seleccionar una fila de la tabla y poder llevar los datos al formulario de edicion 

	@Override
	public Usuario obtenerusuporrut(String rut) {
		 String sql = "SELECT * FROM USUARIOS WHERE IDUSUARIO = ?";

		    return template.queryForObject(sql, new Object[]{rut}, (rs, rowNum) ->
		            new Usuario(
		            	rs.getInt("idusuario"),
	                    rs.getString("nombre"),
	                    rs.getString("apellidos"),
	                    rs.getString("fecha_nacimiento"),
	                    rs.getString("tipo")
	                            
		            ));	 
	}

	@Override
	public boolean desplegarusuario(Usuario usuario) {
		// TODO Auto-generated method stub
		return false;
	}

	
	
	

	
}
