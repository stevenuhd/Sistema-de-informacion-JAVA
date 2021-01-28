package cl.awakelab.spring.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import cl.awakelab.spring.idao.iprofesionaldao;
import cl.awakelab.spring.modelo.Profesional;
import cl.awakelab.spring.modelo.Usuario;




public class Profesionaldaoimp implements iprofesionaldao {

	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
    // obtener datos de la tabla profesionales sql 
	public List<Profesional> obtener() {
		
		String query = "select * from PROFESIONALES";
		
	    return template.query(query,new RowMapper<Profesional>(){    
	        public Profesional mapRow(ResultSet rs, int row) throws SQLException {    
	        	Profesional c=new Profesional();
	        	c.setRut(rs.getString(1));
	        	c.setNombre(rs.getString(2));
	        	c.setApellidos(rs.getString(3));
				c.setTelefono(rs.getString(4));
				c.setTitulo(rs.getString(5));
				c.setProyecto(rs.getString(6));
		     return c;
	        }
	    });
	
	}

	 
	// insertar datos a la tabla profesionales
	@Override
	public boolean registrarprofesional(Profesional profesional) {
		String sql = "INSERT INTO PROFESIONALES (RUTPROF, NOMBRE, APELLIDOS, TELEFONO, TITULO,PROYECTO ) VALUES ('"
				+ profesional.getRut() +"','" 
				+ profesional.getNombre() + "','"
				+ profesional.getApellidos() +"', '"
				+ profesional.getTelefono() +"', '"
				+ profesional.getTitulo() + "','"
				+ profesional.getProyecto() +"')";
					template.update(sql);
					return true;
	}

  //editar tabla profesional
	@Override
	public boolean actualizarprofesional(Profesional profesional) {
		String sql = "UPDATE PROFESIONALES SET "
			
				+ "NOMBRE = '" + profesional.getNombre() + "',"
				+ "APELLIDOS = '" + profesional.getApellidos() +"', "
				+ "TELEFONO = '" + profesional.getTelefono() +"', "
				+ "TITULO = '" + profesional.getTitulo() + "',"
				+ "PROYECTO= '" + profesional.getProyecto() + "'"
				+ "WHERE RUTPROF = '" + profesional.getRut() + "'";
		template.update(sql);
		return true;
	}




// ELIMINAR DATOS DE LA TABLA PROFESIONAL
@Override
public boolean eliminarprofesional(Profesional profesional) {
	String sql = "delete from PROFESIONALES where RUTPROF='" + profesional.getRut() + "'";
	template.update(sql);
	return true;
}


//para seleccionar una fila de la tabla y poder llevar los datos al formulario de edicion 

@Override
public Profesional obtenerprofporrut(String Rut) {
    String sql = "SELECT * FROM PROFESIONALES WHERE RUTPROF= ?";

   
    
    return template.queryForObject(sql, new Object[]{Rut}, (rs, rowNum) ->
            new Profesional(
                    rs.getString("rutprof"),
                    rs.getString("nombre"),
                    rs.getString("apellidos"),
                    rs.getString("telefono"),
                    rs.getString("titulo"),
                    rs.getString("proyecto")
                    
            		));
           		
        
}



@Override
public Usuario obtenerDatosporID() {
	// TODO Auto-generated method stub
	return null;
}

}



