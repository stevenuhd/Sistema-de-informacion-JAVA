package cl.awakelab.spring.dao;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import cl.awakelab.spring.idao.iadministrativodao;
import cl.awakelab.spring.modelo.Administrativo;
import cl.awakelab.spring.modelo.ChequeoVisita;
import cl.awakelab.spring.modelo.Usuario;


public class Administrativodaoimp implements iadministrativodao {

	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
   // obtener  datos segun la tabla administrativos segun slq
	public List<Administrativo> obtener() {
		
		String query = "select * from ADMINISTRATIVOS";
		
	    return template.query(query,new RowMapper<Administrativo>(){    
	        public Administrativo mapRow(ResultSet rs, int row) throws SQLException {    
	        	Administrativo c = new Administrativo();
	        	c.setRut(rs.getString(1));
	        	c.setNombre(rs.getString(2));
	        	c.setApellidos(rs.getString(3));
				c.setCorreo(rs.getString(4));
				c.setArea(rs.getString(5));
				c.setAdm_idusuario(rs.getInt(6));
		     return c;
	        }
	    });
	
	}

//registrar datos a la tabla administrativo sql
@Override
public boolean registrarAdministrativo(Administrativo administrativo) {
	String sql = "INSERT INTO ADMINISTRATIVOS (RUTADMI, NOMBRE, APELLIDOS, CORREO, AREA, ADM_IDUSUARIO ) VALUES ('"
			+ administrativo.getRut() +"','" 
			+ administrativo.getNombre() + "','"
			+ administrativo.getApellidos() +"', '"
			+ administrativo.getCorreo() +"', '"
			+ administrativo.getArea() + "', '"
			+ administrativo.getAdm_idusuario() + "')";				
				template.update(sql);
				return true;
}

// para editar datos a la tabla administrativo
@Override
public boolean actualizarAdministrativo(Administrativo administrativo) {
		String sql = "UPDATE ADMINISTRATIVOS SET "
			
				+ "NOMBRE = '" + administrativo.getNombre() + "',"
				+ "APELLIDOS = '" + administrativo.getApellidos() +"', "
				+ "CORREO = '" + administrativo.getCorreo() +"', "
				+ "AREA = '" + administrativo.getArea() + "',"
				+ "WHERE RUTADMI = '" + administrativo.getRut() + "')";
		template.update(sql);
		return true;
	}


// eliminar campo de la tabla administrativo segun rutadmi
@Override
public boolean eliminarAdministrativo(Administrativo administrativo) {
	String sql = "delete from ADMINISTRATIVOS where RUTADMI='" + administrativo.getRut() + "'";
	template.update(sql);
	return true;
}
//obtener datos segun rutadmi
@Override
public Administrativo obtenerAdmporrut(String rut) {
	  String sql = "SELECT * FROM ADMINISTRATIVOS WHERE RUTADMI= ?";

	     
	    return template.queryForObject(sql, new Object[]{rut}, (rs, rowNum) ->
	            new Administrativo(
	                    rs.getString("rutadmi"),
	                    rs.getString("nombre"),
	                    rs.getString("apellidos"),
	                    rs.getString("correo"),
	                    rs.getString("area"),
	                    rs.getInt("adm_idusuario")
	                    
	            		));
}
	        
@Override
public boolean desplegarAdministrativo(Administrativo administrativo) {
	// TODO Auto-generated method stub
	return false;
}

@Override
public boolean crearAdministrativo(Administrativo administrativo) {
	// TODO Auto-generated method stub
	return false;
}
//rescata el rut del usuario
@Override
public List<Administrativo> obtenerRuts() {
	String query = "Select nombre, apellidos from usuarios where idusuario= ?";
		return template.query(query,new RowMapper<Administrativo>(){    
		    public Administrativo mapRow(ResultSet rs, int row) throws SQLException { 
		    	Administrativo cv = new Administrativo();
		    	cv.setRut(rs.getString(1));
		    	cv.setNombre(rs.getString(2));
		    	cv.setApellidos(rs.getString(3));
				return cv;
	    		}
	    	});
}
//rescatar datos para poder crear los perfiles
@Override
public Usuario obtenerDatosporRut(String rut) {
	 String sql = "Select nombre, apellidos from usuarios where idusuario= ?";
     
	    return template.queryForObject(sql, new Object[]{rut}, (rs, rowNum) ->
	            new 	Administrativo(
	                    rs.getString("rut"),
	                    rs.getString("nombre"),
	                    rs.getString("apellidos")
	                   
	                    
	                    
	            		));
}

}