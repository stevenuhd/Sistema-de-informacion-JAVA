package cl.awakelab.spring.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import cl.awakelab.spring.idao.iasistentesdao;
import cl.awakelab.spring.modelo.Asistentes;

public class Asistentesdaoimp implements iasistentesdao{
	
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
    //insersar datos a la tabla asistentes sql
	@Override
	public boolean registrarAsistentes(Asistentes asistentes) {
		String sql = "INSERT INTO ASISTENTES (NOMBRES , EDAD , CAPACITACION_IDCAPACITACION ) VALUES ('"
				+ asistentes.getNombres() + "','"
				+ asistentes.getEdad() + "',"
				+ asistentes.getCapacitacion_idcapacitacion() +")";
					template.update(sql);
					return true;
	}
    //seleccionar tabla asistentes por medio de idasistente
	@Override
	public List<Asistentes> obtenerAsistentes() {
		String query = "select * from ASISTENTES order by IDASISTENTE";
		
	    return template.query(query,new RowMapper<Asistentes>(){    
	        public Asistentes mapRow(ResultSet rs, int row) throws SQLException {    
	        	Asistentes a=new Asistentes();
	        	a.setIdasistente(rs.getInt(1));
				a.setNombres(rs.getString(2));
				a.setEdad(rs.getInt(3));
				a.setCapacitacion_idcapacitacion(rs.getInt(4));
	            return a;
	        }
	    });
	}
    // edicion de campos de la tabla ASISTENTES
	@Override
	public boolean actualizarAsistentes(Asistentes asistentes) {
		String sql =" UPDATE ASISTENTES SET "
			        +"    NOMBRES = '" + asistentes.getNombres() 
			        +"' , EDAD = '" + asistentes.getEdad() 
			        +"' , CAPACITACION_IDCAPACITACION = '" + asistentes.getCapacitacion_idcapacitacion()
			        +"'   WHERE IDASISTENTE = '" + asistentes.getIdasistente() + "'";                      
			         
			        template.update(sql);
			        return true;	
	}

	@Override
	public boolean eliminarAsistentes(Asistentes asistentes) {
		String sql = "delete from ASISTENTES where IDASISTENTE =" + asistentes.getIdasistente();
		template.update(sql);
		return true;
	}
    //para seleccionar una fila de la tabla y poder llevar los datos al formulario de edicion   
	@Override
	public Asistentes obtenerAsistentesporid(int idasistentes) {
		String sql = "SELECT * FROM ASISTENTES WHERE IDASISTENTE = ?";

	    return template.queryForObject(sql, new Object[]{idasistentes}, (rs, rowNum) ->
	            new Asistentes(
        		 	rs.getInt("IDASISTENTE"),
                    rs.getString("NOMBRES"),
                    rs.getInt("EDAD"),
                    rs.getInt("CAPACITACION_IDCAPACITACION")        
	            ));	   
}

	}
	

