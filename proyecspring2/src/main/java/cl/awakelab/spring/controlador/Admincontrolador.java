package cl.awakelab.spring.controlador;

import java.util.ArrayList;  
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import cl.awakelab.spring.dao.Administrativodaoimp;
import cl.awakelab.spring.modelo.Administrativo;


	@Controller 
	public class Admincontrolador {
		
		private static final Logger logger = LoggerFactory.getLogger(Admincontrolador.class);
		
		@Autowired
		Administrativodaoimp admindao;

		@RequestMapping(value="/listadmin", method = RequestMethod.GET)
		public String listaradministrativos(Model model) {
			logger.info("Entramos al método para obtener Administrativo de la BD");
			List<Administrativo> listaadmi = new ArrayList<Administrativo>();
			listaadmi = admindao.obtener();
			model.addAttribute("listaadmi",listaadmi);
			logger.info("Llamo a la vista(tabla) de Administrativos");
			return "listaradministrativos";
		}
		
		@RequestMapping(value="/listadmin2", method = RequestMethod.GET)
		public String listaradministrativos2(Model model) {
			logger.info("Entramos al método para obtener Administrativo de la BD");
			List<Administrativo> listaadmi = new ArrayList<Administrativo>();
			listaadmi = admindao.obtener();
			model.addAttribute("listaadmi",listaadmi);
			logger.info("Llamo a la vista(tabla) de Administrativos");
			return "listaradministrativos2";
		}
		
		@RequestMapping (value="/crearadmi", method = RequestMethod.GET)
		public String  crearadministrativo(Model model) {
			logger.info("Entramos al método para desplegar el formulario de Crear Administrativo");
			
			logger.info("Entramos al método para crear un array de ruts");
			List<Administrativo> listarut =new ArrayList<Administrativo>();
			listarut =admindao.obtenerRuts();
			model.addAttribute("lstrut" ,listarut);
			return "crearadministrativo";
		}
		 
		
		@RequestMapping(value = "/procesaradmi", method = RequestMethod.POST)
		public String crearadmiProcesa(Model model, 
				@RequestParam ("rutadmi") String rutadmi,
				@RequestParam ("nombre") String nombre,
				@RequestParam ("apellidos") String apellidos,
				@RequestParam ("correo") String correo,
				@RequestParam ("area") String area,
			    @RequestParam ("rutadmi") int adm_idusuario) {
			logger.info("Entramos al método para crear Administrativo en la BD");
			Administrativo admi = new Administrativo(rutadmi,nombre,apellidos,correo,area,adm_idusuario);
			admindao.registrarAdministrativo(admi);
			return "msgecrear";
		}
		
		@RequestMapping (value="/eliminaradmi/{rutadmi}", method = RequestMethod.GET)
		public String eliminarAdministrativo(Model model, @PathVariable ("rutadmi") String rutadmi) {
			logger.info("Entramos al método para eliminar un Administrativo");
			Administrativo admi = new Administrativo ();
			admi.setRut(rutadmi);
			admindao.eliminarAdministrativo(admi);	
			return "msgeliminar";
		}
		 
		@RequestMapping(value = "/editaradmi/{rutadmi}", method = RequestMethod.GET)
		public String editaradmin(Model model, @PathVariable ("rutadmi") String rutadmi) {
			logger.info("Entramos al método para editar un Administrativo");
			Administrativo admi=new Administrativo ();
			admi = admindao.obtenerAdmporrut(rutadmi);
			model.addAttribute("myprofe", admi);
			
			
			return "editaradministrativo";
		}
		
		@RequestMapping(value = "/procesareditaradmi", method = RequestMethod.POST)
		public String editarAdministrativoProcesa(Model model, 
				@RequestParam ("rutadmi") String rutadmi,
				@RequestParam ("nombre") String nombre,
				@RequestParam ("apellidos") String apellidos,
				@RequestParam ("correo") String correo,
				@RequestParam ("area") String area,
			    @RequestParam ("rutadmi") int adm_idusuario) {
			
			logger.info("Entramos al método para editar un Administrativo en la BD");
			Administrativo admi=new Administrativo (rutadmi,nombre,apellidos,correo,area,adm_idusuario);
			admindao.actualizarAdministrativo(admi);
			return "msgeditar";
		}

	}
