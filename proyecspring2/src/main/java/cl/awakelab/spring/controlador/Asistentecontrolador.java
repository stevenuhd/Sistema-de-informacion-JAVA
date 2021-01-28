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

import cl.awakelab.spring.dao.Asistentesdaoimp;
import cl.awakelab.spring.modelo.Asistentes;

@Controller
public class Asistentecontrolador {
	
private static final Logger logger = LoggerFactory.getLogger(Asistentecontrolador.class);
	
	@Autowired
	Asistentesdaoimp asistdao;

	@RequestMapping(value="/listarasistentes", method = RequestMethod.GET)
	public String listarasistentes(Model model) {
		logger.info("Entramos al método para obtener los asistentes de la BD");
		List<Asistentes> listaasist = new ArrayList<Asistentes>();
		listaasist = asistdao.obtenerAsistentes();
		model.addAttribute("listaasist",listaasist);
		logger.info("Llamo a la vista(tabla) de Asistentes");
		return "listarasistentes";
	}
	
	@RequestMapping(value="/listarasistentes2", method = RequestMethod.GET)
	public String listarasistentes2(Model model) {
		logger.info("Entramos al método para obtener los asistentes de la BD");
		List<Asistentes> listaasist = new ArrayList<Asistentes>();
		listaasist = asistdao.obtenerAsistentes();
		model.addAttribute("listaasist",listaasist);
		logger.info("Llamo a la vista(tabla) de Asistentes");
		return "listarasistentes2";
	}
	
	@RequestMapping (value="/crearasist", method = RequestMethod.GET)
	public String  crearasistentes(Model model) {
		logger.info("Entramos al método para desplegar el formulario de Crear Asistentes");
		return "crearasistente";
	}
	
	@RequestMapping(value = "/procesarasist", method = RequestMethod.POST)
	public String crearasistProcesa(Model model, 
			@RequestParam ("nombres") String nombres,
			@RequestParam ("edad") int edad,
			@RequestParam ("capacitacion_idcapacitacion") int capacitacion_idcapacitacion) {
		logger.info("Entramos al método para crear una Capacitacion en la BD");
		Asistentes asist = new Asistentes(nombres,edad,capacitacion_idcapacitacion);
		asistdao.registrarAsistentes(asist);
		String proc = "Asistente";
		model.addAttribute("proceso",proc);
		return "msgcrear";
	}
	
	@RequestMapping(value = "/eliminarasist/{id}", method = RequestMethod.GET)
	public String eliminarasist(Model model, @PathVariable ("id") int id) {
		logger.info("Entramos al método para eliminar un Asistente de la BD");
		Asistentes asist = new Asistentes();
		asist.setIdasistente(id);
		asistdao.eliminarAsistentes(asist);
		String proc = "Asistente";
		model.addAttribute("proceso",proc);
		return "msgeliminar";
	}
	
	@RequestMapping(value = "/editarasist/{id}", method = RequestMethod.GET)
	public String editarasist(Model model, @PathVariable ("id") int id) {
		logger.info("Entramos al método para editar un Asistente");
		Asistentes asist = new Asistentes();
		asist = asistdao.obtenerAsistentesporid(id);
		model.addAttribute("myasist", asist);
		return "editarasistente";
	}
	
	@RequestMapping(value = "/procesareditarasist", method = RequestMethod.POST)
	public String editarAsistenteProcesa(Model model, 
			@RequestParam ("idasistente") int idasistente,
			@RequestParam ("nombres") String nombre,
			@RequestParam ("edad") int edad,
			@RequestParam ("capacitacion_idcapacitacion") int capacitacion_idcapacitacion) {
		logger.info("Entramos al método para editar una Capacitacion en la BD");
		Asistentes asist = new Asistentes(idasistente,nombre,edad,capacitacion_idcapacitacion);
		asistdao.actualizarAsistentes(asist);
		String proc = "Asistente";
		model.addAttribute("proceso",proc);
		return "msgeditar";
	}

}
