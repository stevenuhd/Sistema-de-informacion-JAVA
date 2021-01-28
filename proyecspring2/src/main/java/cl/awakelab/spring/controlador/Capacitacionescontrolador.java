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

import cl.awakelab.spring.dao.Capacitaciondaoimp;
import cl.awakelab.spring.modelo.Capacitacion;
import cl.awakelab.spring.modelo.ChequeoVisita;
import cl.awakelab.spring.modelo.Cliente;




@Controller 
public class Capacitacionescontrolador {
	
	private static final Logger logger = LoggerFactory.getLogger(Capacitacionescontrolador.class);
	
	@Autowired
	Capacitaciondaoimp capadao;

	@RequestMapping(value="/listarcapas", method = RequestMethod.GET)
	public String listarcapacitaciones(Model model) {
		logger.info("Entramos al método para obtener las Capacitaciones de la BD");
		List<Capacitacion> listacapac = new ArrayList<Capacitacion>();
		listacapac = capadao.obtener();
		model.addAttribute("listacapa",listacapac);
		logger.info("Llamo a la vista(tabla) de Capacitaciones");
		return "listarcapacitaciones";
	}
	
	@RequestMapping(value="/listarcapas2", method = RequestMethod.GET)
	public String listarcapacitaciones2(Model model) {
		logger.info("Entramos al método para obtener las Capacitaciones de la BD");
		List<Capacitacion> listacapac = new ArrayList<Capacitacion>();
		listacapac = capadao.obtener();
		model.addAttribute("listacapa",listacapac);
		logger.info("Llamo a la vista(tabla) de Capacitaciones");
		return "listarcapacitaciones2";
	}
	
	@RequestMapping (value="/crearcapa", method = RequestMethod.GET)
	public String  crearcapacitaciones(Model model) {
		logger.info("Entramos al método para desplegar el formulario de Crear capacitacion");
		
//		metodo para obtener lista de ruts disponibles
		logger.info("Entramos al método para crear un array de ruts");
		List<Cliente> listarut =new ArrayList<Cliente>();
		listarut =capadao.obtenerRuts();
		model.addAttribute("lstrut" ,listarut);
		return "crearcapacitaciones";
	}
	 
	
	@RequestMapping(value = "/procesarcapa", method = RequestMethod.POST)
	public String crearcapaProcesa(Model model, 
			@RequestParam ("fechacapa") String fecha,
			@RequestParam ("horacapa") String hora,
			@RequestParam ("lugar") String lugar,
			@RequestParam ("duracion") int duracion,
			@RequestParam ("cantasist") int cantasist,
			@RequestParam ("rut") int rut) {
		logger.info("Entramos al método para crear una Capacitacion en la BD");
		Capacitacion capa = new Capacitacion(fecha,hora,lugar,duracion,cantasist,rut);
		capadao.registrar(capa);
		String proc = "Capacitacion";
		model.addAttribute("proceso",proc);
		return "msgcrear";
	}
	
	@RequestMapping(value = "/eliminarcapa/{id}", method = RequestMethod.GET)
	public String eliminarcapa(Model model, @PathVariable ("id") int id) {
		logger.info("Entramos al método para eliminar una Capacitacion de la BD");
		Capacitacion capa = new Capacitacion();
		capa.setIdcapa(id);
		capadao.eliminar(capa);
		String proc = "Capacitacion";
		model.addAttribute("proceso",proc);
		return "msgeliminar";
	}
	
	@RequestMapping(value = "/editarcapa/{id}", method = RequestMethod.GET)
	public String editarcapa(Model model, @PathVariable ("id") int id) {
		logger.info("Entramos al método para editar una Capacitacion");
		Capacitacion capa = new Capacitacion();
		capa = capadao.obtenercapaporid(id);
		model.addAttribute("mycapa", capa);
//		metodo para obtener lista de ruts disponibles
		logger.info("Entramos al método para crear un array de ruts");
		List<Cliente> listarut =new ArrayList<Cliente>();
		listarut =capadao.obtenerRuts();
		model.addAttribute("lstrut" ,listarut);
		
		return "editarcapacitaciones";
	}
	
	
	@RequestMapping(value = "/procesareditar", method = RequestMethod.POST)
	public String editarCapacitacionProcesa(Model model, 
			@RequestParam ("idcapacitacion") int idcapa,
			@RequestParam ("fechacapa") String dia,
			@RequestParam ("horacapa") String hora,
			@RequestParam ("lugar") String lugar,
			@RequestParam ("duracion") int duracion,
			@RequestParam ("cantasist") int cantasist,
			@RequestParam ("rut") int rut) {
		logger.info("Entramos al método para editar una Capacitacion en la BD");
		Capacitacion capa = new Capacitacion(idcapa,dia,hora,lugar,duracion,cantasist,rut);
		capadao.actualizar(capa);
		String proc = "Capacitacion";
		model.addAttribute("proceso",proc);
		return "msgeditar";
	}
	
}
