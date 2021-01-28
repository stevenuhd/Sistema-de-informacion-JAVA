package cl.awakelab.spring.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import cl.awakelab.spring.idao.ichequeosdao;
import cl.awakelab.spring.modelo.ChequeoVisita;


public class ChequeoVisitadaoimp implements ichequeosdao {

	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	} 
	//para registrar  los datos en la tabla chequevisitas sql 
	@Override
	public boolean registrarChequeo(ChequeoVisita chequeovisita) {
		String query = "insert into chequeovisita (ESTADO,CHEQUEOVISITA_IDVISITA,nombrechequeo) values ('"
				
				+ chequeovisita.getEstado() + "', '"
				+ chequeovisita.getChequeovisita_idvisita() + "', '"
				+ chequeovisita.getNombrechequeo() + "')";
				template.update(query);
			
		return false;
	}
   //obtener los datos de la tabla
	@Override
	public List<ChequeoVisita> obtenerChequeo() {
		String query = "Select \r\n"
				+ "ch.idchequeovisita ,\r\n"
				+ "ch.estado,\r\n"
				+ "ch.chequeovisita_idvisita,\r\n"
				+ "ch.nombrechequeo,\r\n"
				+ "c.cliente_rutcliente\r\n"
				+ "from chequeovisita ch\r\n"
				+ "left join visita c\r\n"
				+ "on ch.chequeovisita_idvisita=c.idvisita\r\n"
				+ "order by idchequeovisita";
				
		return template.query(query,new RowMapper<ChequeoVisita>(){    
	        public ChequeoVisita mapRow(ResultSet rs, int row) throws SQLException { 
	        	ChequeoVisita cv = new ChequeoVisita();
	        	cv.setIdchequeovisita(rs.getInt(1));
	        	cv.setEstado(rs.getString(2));
	        	cv.setChequeovisita_idvisita(rs.getInt(3));
	           	cv.setNombrechequeo(rs.getString(4));
	           	cv.setCliente_rutcliente(rs.getInt(5));
	        	return cv;
	        }
		});
	}
    // editar datos de la tabla
	@Override
	public boolean actualizarChequeo(ChequeoVisita chequeovisita) {
		String sql = "UPDATE CHEQUEOVISITA SET "
				+ "ESTADO = '" + chequeovisita.getEstado() + "', "
				+ "CHEQUEOVISITA_IDVISITA = '" + chequeovisita.getChequeovisita_idvisita() + "', "
				+ "NOMBRECHEQUEO = '" + chequeovisita.getNombrechequeo() + "'" 
				+ "WHERE IDCHEQUEOVISITA = '" + chequeovisita.getIdchequeovisita() + "'";
		template.update(sql);
		return true;
	}
   // eliminar datos de la tabla
	@Override
	public boolean eliminarChequeo(ChequeoVisita chequeovisita) {
		String sql = "delete from chequeovisita where idchequeovisita= " + chequeovisita.getIdchequeovisita();
		template.update(sql);
		return true;
	}

	@Override
	public boolean desplegarChequeo(ChequeoVisita chequeovisita) {
		// TODO Auto-generated method stub
		return false;
	}
	//para seleccionar una fila de la tabla y poder llevar los datos al formulario de edicion  
	@Override
	public ChequeoVisita obtenerChequeoporid(int idchequeo) {
		 String sql = "SELECT * FROM CHEQUEOVISITA WHERE IDCHEQUEOVISITA = ?";
			return template.queryForObject(sql, new Object[]{idchequeo}, (rs, rowNum) ->
	        new ChequeoVisita(
	                rs.getInt("idchequeovisita"),
	                rs.getString("estado"),
	                rs.getInt("chequeovisita_idvisita"),
	                rs.getString("nombrechequeo")
	              
	                       					
	        ));
	}

	@Override
	public List<ChequeoVisita> obtenerRuts() {
		String query = "Select\r\n"
		+ "cliente_rutcliente\r\n"
		+ "from visita";
	return template.query(query,new RowMapper<ChequeoVisita>(){    
	    public ChequeoVisita mapRow(ResultSet rs, int row) throws SQLException { 
	    	ChequeoVisita cv = new ChequeoVisita();
	    	cv.setCliente_rutcliente(rs.getInt(1));
			return cv;
    		}
    	});
	}
    // seleccionar el idvisitas que proviene de la tabla visita //
	@Override
	public List<ChequeoVisita> obtenerIDs() {
		String query = "Select idvisita from visita ";
			return template.query(query,new RowMapper<ChequeoVisita>(){    
			    public ChequeoVisita mapRow(ResultSet rs, int row) throws SQLException { 
			    	ChequeoVisita id = new ChequeoVisita();
			    	id.setIdvisita(rs.getInt(1));
					return id;
		    		}
		    	});
	}
	@Override
	public ChequeoVisita obtenerIDmax(int idmax) {
		String sql = "select MAX(idchequeovisita) from chequeovisita";
		return template.queryForObject(sql, new Object[]{idmax}, (rs, rowNum) ->
        new ChequeoVisita(
                rs.getInt("idchequeovisita")
             
                       					
        ));
	}
	
	
	
	

	

}
