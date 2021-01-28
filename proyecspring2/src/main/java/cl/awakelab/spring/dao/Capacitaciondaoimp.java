package cl.awakelab.spring.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import cl.awakelab.spring.idao.icapacitaciondao;
import cl.awakelab.spring.modelo.Capacitacion;
import cl.awakelab.spring.modelo.ChequeoVisita;
import cl.awakelab.spring.modelo.Cliente;



public class Capacitaciondaoimp implements icapacitaciondao {

	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
    // obtener los datos de la tabla capacitacion por medio de  idcapacitacion sql
	@Override
	public List<Capacitacion> obtener() {
		
		String query = "select * from CAPACITACION order by IDCAPACITACION";
		
	    return template.query(query,new RowMapper<Capacitacion>(){    
	        public Capacitacion mapRow(ResultSet rs, int row) throws SQLException {    
	        	Capacitacion c=new Capacitacion();
	        	c.setIdcapa(rs.getInt(1));
				c.setDia(rs.getString(2));
				c.setHora(rs.getString(3));
				c.setLugar(rs.getString(4));
				c.setDuracion(rs.getInt(5));
				c.setCantasist(rs.getInt(6));
				c.setRutclte(rs.getInt(7));
	            return c;
	        }
	    });
	
	}
     // para llenar los campos de la tabla capacitacion sql
	
	@Override
	public boolean registrar(Capacitacion capacitacion) {
		String sql = "INSERT INTO CAPACITACION (FECHA, HORA, LUGAR, DURACION, cantidadasistentes,cliente_rutcliente ) VALUES  (TO_DATE('"
				+ capacitacion.getDia() +"','dd/mm/yy'),'" 
				+ capacitacion.getHora() + "','"
				+ capacitacion.getLugar() +"', '"
				+ capacitacion.getDuracion() +"', '"
				+ capacitacion.getCantasist() + "', "
				+ capacitacion.getRutclte() +")";
					template.update(sql);
					return true;
	}
    // para editar  la tabla capacitacion
	@Override
	public boolean actualizar(Capacitacion capacitacion) {
		String sql = "UPDATE CAPACITACION SET "
				+ "FECHA = to_date('" + capacitacion.getDia() + "','dd/mm/yy'), "
				+ "HORA = '" + capacitacion.getHora() + "', "
				+ "LUGAR = '" + capacitacion.getLugar() + "', "
				+ "DURACION = '" + capacitacion.getDuracion() + "', "
				+ "CANTIDADASISTENTES = '" + capacitacion.getCantasist() + "', "
				+ "CLIENTE_RUTCLIENTE = '" + capacitacion.getRutclte() + "' "
				+ "WHERE IDCAPACITACION = '" + capacitacion.getIdcapa() + "'";
		template.update(sql);
		return true;
	}
   // para eliminar  datos desde la tabla capacitacion 
	@Override
	public boolean eliminar(Capacitacion capacitacion) {
		String sql = "delete from CAPACITACION where IDCAPACITACION=" + capacitacion.getIdcapa();
		template.update(sql);
		return true;
	}
	//para seleccionar una fila de la tabla y poder llevar los datos al formulario de edicion  
	@Override
	public Capacitacion obtenercapaporid(int idcliente) {
		 String sql = "SELECT * FROM CAPACITACION WHERE IDCAPACITACION = ?";

		    return template.queryForObject(sql, new Object[]{idcliente}, (rs, rowNum) ->
		            new Capacitacion(
            		 	rs.getInt("IDCAPACITACION"),
	                    rs.getString("FECHA"),
	                    rs.getString("HORA"),
	                    rs.getString("LUGAR"),
	                    rs.getInt("DURACION"),
	                    rs.getInt("CANTIDADASISTENTES"),
	                    rs.getInt("CLIENTE_RUTCLIENTE")        
		            ));	   
	}
   // para obtener rut proveniente de la tabla cliente
	@Override
	public List<Cliente> obtenerRuts() {
		String query = "Select rutcliente from cliente";
		return template.query(query,new RowMapper<Cliente>(){    
		    public Cliente mapRow(ResultSet rs, int row) throws SQLException { 
		    	Cliente cp = new Cliente();
		    	cp.setRutcliente(rs.getInt(1));
				return cp;
	    		}
	    	});
	}
}




