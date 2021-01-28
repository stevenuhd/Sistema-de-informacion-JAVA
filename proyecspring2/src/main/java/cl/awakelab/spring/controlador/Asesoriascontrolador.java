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



import cl.awakelab.spring.dao.Asesoriasdaoimp;
import cl.awakelab.spring.modelo.Asesorias;
import cl.awakelab.spring.modelo.Cliente;
import cl.awakelab.spring.modelo.Profesional;



@Controller 
public class Asesoriascontrolador {
	private static final Logger logger = LoggerFactory.getLogger(Asesoriascontrolador.class);
	@Autowired
	Asesoriasdaoimp Asesodao;

	@RequestMapping(value="/listarasesorias", method = RequestMethod.GET)
	public String listarasesorias(Model model) {
		logger.info("Entramos al método para obtener las Asesorias de la BD");
		List<Asesorias> listaasesorias = new ArrayList<Asesorias>();
		listaasesorias = Asesodao.obtener();
		model.addAttribute("listaasesorias",listaasesorias);
		logger.info("Llamo a la vista(tabla) de Asesorias");
		return "listarasesorias";
	}
	
	@RequestMapping(value="/listarasesorias2", method = RequestMethod.GET)
	public String listarasesorias2(Model model) {
		logger.info("Entramos al método para obtener las Asesorias de la BD");
		List<Asesorias> listaasesorias = new ArrayList<Asesorias>();
		listaasesorias = Asesodao.obtener();
		model.addAttribute("listaasesorias",listaasesorias);
		logger.info("Llamo a la vista(tabla) de Asesorias");
		return "listarasesorias2";
	}
	
	@RequestMapping (value="/crearasesorias", method = RequestMethod.GET)
	public String  crearasesorias(Model model) {
		logger.info("Entramos al método para desplegar el formulario de Crear Asesorias");
		
		logger.info("Entramos al método para crear un array de ruts");
		List<Profesional> listarut =new ArrayList<Profesional>();
		listarut =Asesodao.obtenerRut();
		model.addAttribute("lstrut" ,listarut);
		return "crearasesorias";
	}
	 
	
	@RequestMapping(value = "/procesaraseso", method = RequestMethod.POST)
	public String crearasesoProces(Model model, 
			@RequestParam ("idasesorias") int IDaseso,
			@RequestParam ("fechaaseso") String Fecha,
			@RequestParam ("motivoaseso") String Motivo,
			@RequestParam ("rut") int rut) {
		logger.info("Entramos al método para crear una Asesoria en la BD");
		Asesorias aseso = new Asesorias(IDaseso, Fecha, Motivo, rut);
		Asesodao.registrar(aseso);
		String proc = "Asesoria";
		model.addAttribute("proceso",proc);
		return "msgcrear";
	}
	@RequestMapping (value="eliminarasesorias/{idaseso}", method = RequestMethod.GET)
	public String  eliminarAsesorias(Model model,@PathVariable ("idaseso")int idaseso ) {
		logger.info("Entramos al método para desplegar el formulario de eliminar Asesorias");
		Asesorias as= new Asesorias();
		as.setIdaseso(idaseso);
	    Asesodao.eliminarAsesorias(as);
	    String proc = "Asesoria";
		model.addAttribute("proceso",proc);
		return "msgeliminar";
	}
	@RequestMapping (value="editarasesoria/{idaseso}", method = RequestMethod.GET)
	public String  editarAsesorias(Model model,@PathVariable ("idaseso")int idaseso ) {
		logger.info("Entramos al método para desplegar el formulario de eliminar Asesorias");
		Asesorias as= new Asesorias();
		as = Asesodao.obtenerasesoporida(idaseso);
	    model.addAttribute("myAseso", as);
	    
//		metodo para obtener lista de ruts disponibles
		logger.info("Entramos al método para crear un array de ruts");
		List<Profesional> listarut =new ArrayList<Profesional>();
		listarut =Asesodao.obtenerRut();
		model.addAttribute("lstrut" ,listarut);
		return "editarasesoria";
	}
	
	@RequestMapping(value = "/procesareditaraseso", method = RequestMethod.POST)
	public String editarasesoProces(Model model, 
			@RequestParam ("idasesorias") int IDaseso,
			@RequestParam ("fechaaseso") String Fecha,
			@RequestParam ("motivoaseso") String Motivo,
			@RequestParam ("rut") int rut) {
		logger.info("Entramos al método para editar una Asesoria en la BD");
		Asesorias ases = new Asesorias(IDaseso, Fecha, Motivo, rut);
		Asesodao.editarAsesorias(ases);
		String proc = "Asesoria";
		model.addAttribute("proceso",proc);
		return "msgeditar";
	

	}
} 
