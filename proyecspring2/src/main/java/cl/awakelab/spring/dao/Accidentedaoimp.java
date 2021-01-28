package cl.awakelab.spring.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import cl.awakelab.spring.idao.iaccidentedao;
import cl.awakelab.spring.modelo.Accidente;
import cl.awakelab.spring.modelo.Cliente;



public class Accidentedaoimp implements iaccidentedao  {
	

	
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	// registro para la tabla Accidente sql
	@Override    
	public boolean registrarAccidente(Accidente accidente) {
		
		String sql = "INSERT INTO ACCIDENTE (IDACCIDENTE , ACCIFECHA , ACCIHORA , ACCILUGAR , ACCIORIGEN , ACCICONSECUENCIAS , CLIENTE_RUTCLIENTE ) VALUES ('"
				+ accidente.getIdaccidente() +"','" 
				+ accidente.getFecha() + "','"
				+ accidente.getHora() +"','"
				+ accidente.getLugar() +"','"
				+ accidente.getOrigen() + "','"
				+ accidente.getConsecuencias() + "','"
				
				+ accidente.getRutacc() +"')";
					template.update(sql);
					return true;
			}

	// selecciona la fila de la tabla accidente segun el IDACCIDENTE para drvolver la lista
	@Override
	public List<Accidente> obteneraccidente() {
		
String query = "select * from ACCIDENTE order by IDACCIDENTE";
		
	    return template.query(query,new RowMapper<Accidente>(){    
	        public Accidente mapRow(ResultSet rs, int row) throws SQLException {    
	        	Accidente ac=new Accidente();
	        	ac.setIdaccidente(rs.getInt(1));
				ac.setFecha(rs.getString(2));
				ac.setHora(rs.getString(3));
				ac.setLugar(rs.getString(4));
				ac.setOrigen(rs.getString(5));
				ac.setConsecuencias(rs.getString(6));
				ac.setRutacc(rs.getInt(7
						));
	            return ac;
	        }
	    });
	}
   //  editar informacion de  la tabla accidente sql
	@Override
	public boolean actualizarAccidente(Accidente accident) {
		String sql =" UPDATE ACCIDENTE SET ACCIFECHA = '" + accident.getFecha() 
		           
		           +"' , ACCIHORA = '"+ accident.getHora()
		           +"' , ACCILUGAR = '"+ accident.getLugar() 
		           +"' , ACCIORIGEN = '"+ accident.getOrigen() 
		           +"' , ACCICONSECUENCIAS = '"+ accident.getConsecuencias() 
		           +"' , CLIENTE_RUTCLIENTE = ' " + accident.getRutacc()
		           +"' WHERE IDACCIDENTE = ' " + accident.getIdaccidente() + "'";
		           template.update(sql);
		           
		           
		return true;
	}
   // eliminar datos de la tabla accidente desde el sql
	@Override
	public boolean eliminarAccidente(Accidente accidente) {
		String sql = "DELETE FROM ACCIDENTE WHERE IDACCIDENTE=" + accidente.getIdaccidente();
		template.update(sql);
		return true;
	}

	
	
	//obtener informacion  segun el idaccidente
	@Override
	public Accidente obteneracciporida(int idacci) {
		
		String sql = "SELECT * FROM ACCIDENTE WHERE IDACCIDENTE = ?";

	    return template.queryForObject(sql, new Object[]{idacci}, (rs, rowNum) ->
	            new Accidente(
        		 	rs.getInt("IDACCIDENTE"),
                    rs.getString("ACCIFECHA"),
                    rs.getString("ACCIHORA"),
                    rs.getString("ACCILUGAR"),
                    rs.getString("ACCIORIGEN"),
                    rs.getString("ACCICONSECUENCIAS"),
                    rs.getInt("CLIENTE_RUTCLIENTE") 
                        
	            ));	   
	}


	@Override
	public boolean editarAccidente(Accidente accidente) {
		// TODO Auto-generated method stub
		return false;
	}


	@Override
	public Accidente obteneraccid(Accidente accidente) {
		// TODO Auto-generated method stub
		return null;
	}

    // rescatar la columna  rutcliente para luego ser usado en la edicion    
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


