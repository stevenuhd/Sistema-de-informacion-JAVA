package cl.awakelab.spring.dao;

import java.sql.ResultSet;


import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import cl.awakelab.spring.idao.iclientedao;
import cl.awakelab.spring.modelo.Cliente;
import cl.awakelab.spring.modelo.Usuario;

public class Clientedaoimp implements iclientedao{
	
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
  // registrar datos en la tabla cliente
	@Override
	public boolean registrarCliente(Cliente cliente) {
		// INSERT INTO "ASISTENTES" (NOMBRES,EDAD,CAPACITACION_IDCAPACITACION) VALUES ('Mariana Marchesse','35',1);
		String sql = "INSERT INTO CLIENTE (RUTCLIENTE , NOMBRES , APELLIDOS , TELEFONO , AFP , SISTEMASALUD , DIRECCION, COMUNA , EDAD, CLIENTE_IDUSUARIO ) VALUES ('"
				+ cliente.getRutcliente() +"','" 
				+ cliente.getNombres() + "','"
				+ cliente.getApellidos() +"','"
				+ cliente.getTelefono() +"','"
				+ cliente.getAfp() + "','"
				+ cliente.getSistemasalud() + "','"
				+ cliente.getDireccion() + "','"
				+ cliente.getComuna() + "','"
				+ cliente.getEdad() + "','"
				+ cliente.getCliente_idusuario() + "')";
					template.update(sql);
					return true;
			}
    // obtener el listado de la tabla cliente por medio de RUTCLIENTE
	@Override
	public List<Cliente> obtenerCliente() {
		
String query = "select * from CLIENTE order by RUTCLIENTE";
		
	    return template.query(query,new RowMapper<Cliente>(){    
	        public Cliente mapRow(ResultSet rs, int row) throws SQLException {    
	        	Cliente c=new Cliente();
	        	c.setRutcliente(rs.getInt(1));
				c.setNombres(rs.getString(2));
				c.setApellidos(rs.getString(3));
				c.setTelefono(rs.getString(4));
				c.setAfp(rs.getString(5));
				c.setSistemasalud(rs.getInt(6));
				c.setDireccion(rs.getString(7));
				c.setComuna(rs.getString(8));
				c.setEdad(rs.getInt(9));
				c.setCliente_idusuario(rs.getInt(10));
	            return c;
	        }
	    });
	}
    //Editar datos de la tabla cliente 
	@Override
	public boolean actualizarCliente(Cliente cliente) {
		String sql =" UPDATE CLIENTE SET NOMBRES = '" + cliente.getNombres() 
		           +"' , APELLIDOS = '" + cliente.getApellidos() 
		           +"' , TELEFONO = '"+ cliente.getTelefono() 
		           +"', AFP = '"+ cliente.getAfp() 
		           +"' , SISTEMASALUD = '"+ cliente.getSistemasalud() 
		           +"' , DIRECCION = '"+ cliente.getDireccion() 
		           +"' , COMUNA = '"+ cliente.getComuna() 
		           +"' , EDAD = '"+ cliente.getEdad() 
		           +"' , CLIENTE_IDUSUARIO= '"+ cliente.getCliente_idusuario()
		           +"' WHERE RUTCLIENTE = ' "+ cliente.getRutcliente() + "'";
		           template.update(sql);
		return true;
	}
    // eliminar datos de la tabla cliente
	@Override
	public boolean eliminarCliente(Cliente cliente) {
		String sql = "DELETE FROM CLIENTE WHERE RUTCLIENTE=" + cliente.getRutcliente();
		template.update(sql);
		return true;
	}
	//para seleccionar una fila de la tabla y poder llevar los datos al formulario de edicion 
	@Override
	public Cliente obtenerClienteporid(int cliente) {
		
		String sql = "SELECT * FROM CLIENTE WHERE RUTCLIENTE = ?";

	    return template.queryForObject(sql, new Object[]{cliente}, (rs, rowNum) ->
	            new Cliente(
        		 	rs.getInt("RUTCLIENTE"),
                    rs.getString("NOMBRES"),
                    rs.getString("APELLIDOS"),
                    rs.getString("TELEFONO"),
                    rs.getString("AFP"),
                    rs.getInt("SISTEMASALUD"),
                    rs.getString("DIRECCION"),
                    rs.getString("COMUNA"),
                    rs.getInt("EDAD")     
	            ));	   
	}

	@Override
	public Usuario obtenerDatosuser(int id) {
		String sql = "SELECT IDUSUARIO, NOMBRE, APELLIDOS FROM USUARIOS WHERE IDUSUARIO = ?";

	    return template.queryForObject(sql, new Object[]{id}, (rs, rowNum) ->
	            new Usuario(
        		 	rs.getInt("idusuario"),
                    rs.getString("nombre"),
                    rs.getString("apellidos")
                        
	            ));	   
	}
	
	

}
