package cl.awakelab.spring.dao;

import java.sql.ResultSet;


import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import cl.awakelab.spring.idao.ivisitadao;
import cl.awakelab.spring.modelo.Cliente;
import cl.awakelab.spring.modelo.Visita;

public class Visitadaoimp implements ivisitadao{
	
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
 // insertar datos a la tabla de visita
	@Override
	public boolean registrarVisita(Visita visita) {
				String sql = "INSERT INTO VISITA (IDVISITA , VISFECHA , VISHORA , VISLUGAR , VISCOMENTARIOS , CLIENTE_RUTCLIENTE ) VALUES ('"
						+ visita.getIdvisita() +"',TO_DATE('" 
						+ visita.getVisfecha() + "','dd/mm/yy'),'"
						+ visita.getVishora() +"','"
						+ visita.getVislugar() +"','"
						+ visita.getViscomentarios() + "',"
						+ visita.getCliente_rutcliente() +")";
							template.update(sql);
							return true;
	}
  // obtiene los datos de la tabla visita en el orden de la columna idvisita
	@Override
	public List<Visita> obtenerVisita() {
		
		 String query = "select * from VISITA order by IDVISITA";
			
		    return template.query(query,new RowMapper<Visita>(){    
		        public Visita mapRow(ResultSet rs, int row) throws SQLException {    
		        	Visita v=new Visita();
		        	v.setIdvisita(rs.getInt(1));
					v.setVisfecha(rs.getString(2));
					v.setVishora(rs.getString(3));
					v.setVislugar(rs.getString(4));
					v.setViscomentarios(rs.getString(5));
					v.setCliente_rutcliente(rs.getInt(6));
		            return v;
		        }
		    });
	}
 // esto permite editar los datos de la tabla visita
	@Override
	public boolean actualizarVisita(Visita visita) {
		String sql =" UPDATE VISITA SET VISFECHA = to_date('" + visita.getVisfecha() 
        +"','dd/mm/yy'), VISHORA = '" + visita.getVishora() 
        +"' , VISLUGAR = '" + visita.getVislugar() 
        +"' , VISCOMENTARIOS = '" + visita.getViscomentarios() 
        +"' , CLIENTE_RUTCLIENTE = '" + visita.getCliente_rutcliente()
        +"'   WHERE IDVISITA = '" + visita.getIdvisita() + "'";                      
         
		
        template.update(sql);
        return true;	
        }
	
	/**
    @Override
	public boolean actualizarVisita(Visita visita) {
		String sql =" UPDATE VISITA SET IDVISITA = " + visita.getIdvisita() 
        +"  , VISFECHA = '" + visita.getVisfecha() 
        +"' , VISHORA = '"+ visita.getVishora() 
        +"' , VISLUGAR = '"+ visita.getVislugar() 
        +"' , VISCOMENTARIOS = '"+ visita.getViscomentarios() 
        +"' WHERE CLIENTE_RUTCLIENTE = "+ visita.getCliente_rutcliente() + "";
        template.update(sql);
        return true;	
        }
	 * 
	 * */
	
	/**
	 * @Override
	public boolean actualizarVisita(Visita visita) {
		String sql =" UPDATE VISITA SET IDVISITA = " + visita.getIdvisita() 
        +"  , VISFECHA = '" + visita.getVisfecha() 
        +"' , VISHORA = '"+ visita.getVishora() 
        +"' , VISLUGAR = '"+ visita.getVislugar() 
        +"' , VISCOMENTARIOS = '"+ visita.getViscomentarios() 
        +"' WHERE CLIENTE_RUTCLIENTE = "+ visita.getCliente_rutcliente() + "";
        template.update(sql);
        return true;	
        }
	 * */
	
	/**  Se le sacó las comillas de los int
	 * 
	 * @Override
	public boolean actualizarVisita(Visita visita) {
		String sql =" UPDATE VISITA SET IDVISITA = '" + visita.getIdvisita() 
        +"' , VISFECHA = '" + visita.getVisfecha() 
        +"' , VISHORA = '"+ visita.getVishora() 
        +"' , VISLUGAR = '"+ visita.getVislugar() 
        +"' , VISCOMENTARIOS = '"+ visita.getViscomentarios() 
        +"' WHERE CLIENTE_RUTCLIENTE = '"+ visita.getCliente_rutcliente() + "'";
        template.update(sql);
        return true;	
        }
	 * */
    // eliminar datos de la tabla visita
	@Override
	public boolean eliminarVisita(Visita visita) {
		String sql = "DELETE FROM VISITA WHERE IDVISITA=" + visita.getIdvisita();
		template.update(sql);
		return true;
	}
 // obtener datos por la tabla visita para un id especifico
	@Override
	public Visita obtenerVisitaporid(int idvisita) {
		String sql = "SELECT * FROM VISITA WHERE IDVISITA = ?";

	    return template.queryForObject(sql, new Object[]{idvisita}, (rs, rowNum) ->
	            new Visita(
        		 	rs.getInt("IDVISITA"),
                    rs.getString("VISFECHA"),
                    rs.getString("VISHORA"),
                    rs.getString("VISLUGAR"),
                    rs.getString("VISCOMENTARIOS"),
                    rs.getInt("CLIENTE_RUTCLIENTE")     
	            ));	 
	}
    
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
