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

import cl.awakelab.spring.dao.Profesionaldaoimp;
import cl.awakelab.spring.dao.Usuariodaoimp;
import cl.awakelab.spring.modelo.ChequeoVisita;
import cl.awakelab.spring.modelo.Profesional;
import cl.awakelab.spring.modelo.Usuario;



@Controller 
public class Profesionalcontrolador {
	
	private static final Logger logger = LoggerFactory.getLogger(Profesionalcontrolador.class);
	
	@Autowired
	Profesionaldaoimp profedao;
	Usuariodaoimp usudao;

	@RequestMapping(value="/listarprofe", method = RequestMethod.GET)
	public String listarprofesional(Model model) {
		logger.info("Entramos al método para obtener Profesional de la BD");
		List<Profesional> listaprofe = new ArrayList<Profesional>();
		listaprofe = profedao.obtener();
		model.addAttribute("listaprofe",listaprofe);
		logger.info("Llamo a la vista(tabla) de Profesional");
		return "listarprofesional";
	}
	
	@RequestMapping(value="/listarprofe2", method = RequestMethod.GET)
	public String listarprofesional2(Model model) {
		logger.info("Entramos al método para obtener Profesional de la BD");
		List<Profesional> listaprofe = new ArrayList<Profesional>();
		listaprofe = profedao.obtener();
		model.addAttribute("listaprofe",listaprofe);
		logger.info("Llamo a la vista(tabla) de Profesional");
		return "listarprofesional2";
	}
	
	@RequestMapping (value="/crearprofe", method = RequestMethod.GET)
	public String  crearprofesionales(Model model) {
		logger.info("Entramos al método para desplegar el formulario de Crear profesional");
		


		
		return "crearprofesionales";
	}
	 
	
	@RequestMapping(value = "/procesarprofe", method = RequestMethod.POST)
	public String crearprofeProcesa(Model model, 
			@RequestParam ("rutprof") String rutprof,
			@RequestParam ("nombre") String nombre,
			@RequestParam ("apellidos") String apellidos,
			@RequestParam ("telefono") String telefono,
			@RequestParam ("titulo") String titulo,
			@RequestParam ("proyecto") String proyecto) {
		logger.info("Entramos al método para crear Profesional en la BD");
		Profesional profe = new Profesional(rutprof,nombre,apellidos,telefono,titulo,proyecto);
		profedao.registrarprofesional(profe);
		String proc = "Profesional";
		model.addAttribute("proceso",proc);
		return "msgcrear";
	}
	
	@RequestMapping (value="/eliminarprofe/{rutprof}", method = RequestMethod.GET)
	public String  eliminarprofesional(Model model, @PathVariable ("rutprof") String rutprof) {
		logger.info("Entramos al método para eliminar un profesional");
		Profesional profe=new Profesional ();
		profe.setRut(rutprof);
		profedao.eliminarprofesional(profe);	
		String proc = "Profesional";
		model.addAttribute("proceso",proc);
		return "msgeliminar";
	}
	 
	@RequestMapping(value = "/editarprofe/{rutprof}", method = RequestMethod.GET)
	public String editarprofe(Model model, @PathVariable ("rutprof") String rutprof) {
		logger.info("Entramos al método para editar un Profesional");
		Profesional profe=new Profesional ();
		profe = profedao.obtenerprofporrut(rutprof);
		model.addAttribute("myprofe", profe);
		return "editarprofesional";
	}
	
	@RequestMapping(value = "/procesareditarprof", method = RequestMethod.POST)
	public String editarProfesionalProcesa(Model model, 
			@RequestParam ("rutprof") String rut,
			@RequestParam ("nombre") String nombre,
			@RequestParam ("apellidos") String apellidos,
			@RequestParam ("telefono") String telefono,
			@RequestParam ("titulo") String titulo,
			@RequestParam ("proyecto") String proyecto) {
		logger.info("Entramos al método para editar un Profesional en la BD");
		Profesional profe=new Profesional (rut,nombre,apellidos,telefono,titulo,proyecto);
		profedao.actualizarprofesional(profe);
		String proc = "Profesional";
		model.addAttribute("proceso",proc);
		return "msgeditar";
	}

}
	


