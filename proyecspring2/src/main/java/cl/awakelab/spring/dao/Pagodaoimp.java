package cl.awakelab.spring.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import cl.awakelab.spring.idao.ipagodao;
import cl.awakelab.spring.modelo.Cliente;
import cl.awakelab.spring.modelo.Pago;

public class Pagodaoimp implements ipagodao {

	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	// registrar datps en la tabla pagocliente
	@Override
	public boolean registrarpago(Pago pagos) {
		String query = "insert into pagocliente(idpago, fechadepago, montodepago, mesdepago, añodepago, cliente_rutcliente) values ('"
				+ pagos.getIdpago() + "', '"
				+ pagos.getFechadepago() + "', '"
				+ pagos.getMesdepago() + "', '"
				+ pagos.getMontodepago() + "', '"
				+ pagos.getAniodepago() + "', '"
				+ pagos.getPagrutclte() +"')";
					template.update(query);
		return true;
	}
    //obtener la informacion  de la tabla ordenado por idpago
	@Override
	public List<Pago> obtenerpago() {
		String query = "Select * from pagocliente order by idpago";
		return template.query(query,new RowMapper<Pago>(){    
	        public Pago mapRow(ResultSet rs, int row) throws SQLException { 
	        	Pago p = new Pago();
	        	p.setIdpago(rs.getInt(1));
	        	p.setFechadepago(rs.getString(2));
	        	p.setMontodepago(rs.getInt(3));
	        	p.setMesdepago(rs.getInt(4));
	        	p.setAniodepago(rs.getInt(5));
	        	p.setPagrutclte(rs.getInt(6));
	        	return p;
	        }
	        
		});

		
		
	}
     //editar la informacion de la tabla pago cliente
	@Override
	public boolean actualizarpago(Pago pagos) {
		String sql = "UPDATE PAGOCLIENTE SET "
				+ "FECHADEPAGO = to_date('" + pagos.getFechadepago() + "','dd/mm/yy'), "
				+ "MESDEPAGO = '" + pagos.getMesdepago() + "', "
				+ "MONTODEPAGO = '" + pagos.getMontodepago() + "', "
				+ "AÑODEPAGO = '" + pagos.getAniodepago() + "', "
				+ "CLIENTE_RUTCLIENTE = '" + pagos.getPagrutclte() + "' "
				+ "WHERE IDPAGO = '" + pagos.getIdpago() + "'";
		template.update(sql);
		return true;
	}
    // eliminar datos de la tabla pagocliente
	@Override
	public boolean eliminarpago(Pago pagos) {
		String sql = "delete from pagocliente where idpago= " + pagos.getIdpago();
		template.update(sql);
		return true;
	}

	@Override
	public boolean desplegarpago(Pago pago) {
		// TODO Auto-generated method stub
		return false;
	}
    // 	para seleccionar una fila de la tabla y poder llevar los datos al formulario de edicion 

	@Override
	public Pago obtenerpagoporid(int idpago) {
		 String sql = "SELECT * FROM PAGOCLIENTE WHERE IDPAGO = ?";
		return template.queryForObject(sql, new Object[]{idpago}, (rs, rowNum) ->
        new Pago(
                rs.getInt("idpago"),
                rs.getString("fechadepago"),
                rs.getInt("mesdepago"),
                rs.getInt("montodepago"),
                rs.getInt("añodepago"),
                rs.getInt("cliente_rutcliente")
                
        ));
	}
    // obtener RUTCLIENTE
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
