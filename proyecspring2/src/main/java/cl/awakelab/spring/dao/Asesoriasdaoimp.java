package cl.awakelab.spring.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import cl.awakelab.spring.dao.Asesoriasdaoimp;

import cl.awakelab.spring.idao.iasesoriasdao;
import cl.awakelab.spring.modelo.Asesorias;
import cl.awakelab.spring.modelo.Cliente;
import cl.awakelab.spring.modelo.Profesional;





	public class Asesoriasdaoimp implements iasesoriasdao {

		JdbcTemplate template;

		public void setTemplate(JdbcTemplate template) {
			this.template = template;
		}
        // obtener datos de la tabla asesoria segun idasesorias
		@Override
		public List<Asesorias> obtener() {
			
			String query = "select * from ASESORIA order by IDASESORIAS";
			
		    return template.query(query,new RowMapper<Asesorias>(){    
		        public Asesorias mapRow(ResultSet rs, int row) throws SQLException {    
		        	Asesorias a=new Asesorias();
		        	a.setIdaseso(rs.getInt(1));
					a.setFecha(rs.getString(2));	
					a.setMotivo(rs.getString(3));
					a.setProfrut(rs.getInt(4));
					
		            return a;
		        }
		    });
		
		}

		
		// registrar datos a la tabla asesorias
		@Override
		public boolean registrar(Asesorias asesorias) {
			String sql = "INSERT INTO ASESORIA (IDASESORIAS, FECHAREALIZACION, MOTIVO, PROF_RUTPROF) VALUES  ("
					+ asesorias.getIdaseso()+" , TO_DATE('"
					+ asesorias.getFecha() +"','dd/mm/yy'),'" 
					+ asesorias.getMotivo() + "','"
					
					+ asesorias.getProfrut() +"')";
						template.update(sql);
						return true;
		}

		@Override
		public boolean actualizar(Asesorias asesorias) {
			// TODO Auto-generated method stub
			return false;
		}

		@Override
		public boolean eliminarAsesorias(Asesorias asesorias) {
			String sql=" delete from ASESORIA where IDASESORIAS="+ asesorias.getIdaseso();
			template.update(sql);
			return true;
		}

		
		@Override
		public Asesorias obtenerasesoporid(Asesorias asesorias) {
			// TODO Auto-generated method stub
			return null;
		}
         // editar dartos de la tabla asesoria
		@Override
		public boolean editarAsesorias(Asesorias asesorias) {
			// TODO Auto-generated method stub
			String sql=" UPDATE ASESORIA SET FECHAREALIZACION='"+ asesorias.getFecha() +"', MOTIVO='"+ asesorias.getMotivo() +"', PROF_RUTPROF='"+asesorias.getProfrut()+"' WHERE IDASESORIAS='"+ asesorias.getIdaseso() +"'";
			template.update(sql);
			return false;
		}
        // seleccionar infotmacion de la tabla asesoria por medio de la columna idasesorias
		@Override
		public Asesorias obtenerasesoporida(int idaseso) {
			// TODO Auto-generated method stub
			 String sql = "SELECT *  FROM ASESORIA WHERE IDASESORIAS = ?";
				return template.queryForObject(sql, new Object[]{idaseso}, (rs, rowNum) ->
		        new Asesorias (
		                rs.getInt("IDASESORIAS"),
		                rs.getString("FECHAREALIZACION"),
		                rs.getString("MOTIVO"),
		                rs.getInt("PROF_RUTPROF")
		               
		                
		        ));
			}
         // obtener rutprof  por medio de la tabla profesionales 
		@Override
		public List<Profesional> obtenerRut() {
			String query = "Select rutprof from profesionales";
			return template.query(query,new RowMapper<Profesional>(){    
			    public Profesional mapRow(ResultSet rs, int row) throws SQLException { 
			    	Profesional cp = new Profesional();
			    	cp.setRut(rs.getString(1));
					return cp;
		    		}
		    	});
		}
		
		
		

		
		

	}



