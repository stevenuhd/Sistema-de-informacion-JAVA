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

import cl.awakelab.spring.dao.Visitadaoimp;
import cl.awakelab.spring.modelo.Cliente;
import cl.awakelab.spring.modelo.Visita;

@Controller
public class Visitacontrolador {
	
private static final Logger logger = LoggerFactory.getLogger(Visitacontrolador.class);
	
	@Autowired
	Visitadaoimp visdao;

	@RequestMapping(value="listarvisitas", method = RequestMethod.GET)
	public String listarvisitas(Model model) {
		logger.info("Entramos al método para obtener las Visitas de la BD");
		List<Visita> listavisita = new ArrayList<Visita>();
		listavisita = visdao.obtenerVisita();
		model.addAttribute("listavis",listavisita);
		logger.info("Llamo a la vista(tabla) de Visitas");
		return "listarvisitas";
	}
	
	@RequestMapping(value="listarvisitas2", method = RequestMethod.GET)
	public String listarvisitas2(Model model) {
		logger.info("Entramos al método para obtener las Visitas de la BD");
		List<Visita> listavisita = new ArrayList<Visita>();
		listavisita = visdao.obtenerVisita();
		model.addAttribute("listavis",listavisita);
		logger.info("Llamo a la vista(tabla) de Visitas");
		return "listarvisitas2";
	}
	
	@RequestMapping (value="/crearvisita", method = RequestMethod.GET)
	public String  crearVisitas(Model model) {
		logger.info("Entramos al método para desplegar el formulario de Crear visita");
		return "crearvisita";
	}
	
	@RequestMapping(value = "/procesarvisita", method = RequestMethod.POST)
	public String crearvisitaProcesa(Model model, 
			@RequestParam ("idvisita") int idvisita,
			@RequestParam ("visfecha") String visfecha,
			@RequestParam ("vishora") String vishora,
			@RequestParam ("vislugar") String vislugar,
			@RequestParam ("viscomentarios") String viscomentarios,
			@RequestParam ("cliente_rutcliente") int cliente_rutcliente ) {
		logger.info("Entramos al método para crear una Visita en la BD");
		Visita vis = new Visita(idvisita , visfecha , vishora , vislugar , viscomentarios , cliente_rutcliente);
		visdao.registrarVisita(vis);
		String proc = "Visita";
		model.addAttribute("proceso",proc);
		return "msgcrear";
	}
	
	@RequestMapping (value="/eliminarvisita/{idvisita}", method = RequestMethod.GET)
	public String  eliminarVisitas(Model model, @PathVariable ("idvisita") int idvisita) {
		logger.info("Entramos al método para eliminar una visita");
		Visita vis = new Visita();
		vis.setIdvisita(idvisita);
		visdao.eliminarVisita(vis);
		String proc = "Visita";
		model.addAttribute("proceso",proc);
		return "msgeliminar";
	}
	
	@RequestMapping (value="/editarvisita/{idvisita}", method = RequestMethod.GET)
	public String  editarVisitas(Model model, @PathVariable ("idvisita") int idvisita) {
		logger.info("Entramos al método para editar un cliente");
		Visita vis = new Visita();
		vis = visdao.obtenerVisitaporid(idvisita);
        model.addAttribute("editavis", vis);
        
//		metodo para obtener lista de ruts disponibles
		logger.info("Entramos al método para crear un array de ruts");
		List<Cliente> listarut =new ArrayList<Cliente>();
		listarut =visdao.obtenerRuts();
		model.addAttribute("lstrut" ,listarut);
		return "editarvisita";
	}
	
	@RequestMapping(value = "/procesareditarvisita", method = RequestMethod.POST)
	public String editarvisitaProcesa(Model model, 
			@RequestParam ("idvisita") int idvisita,
			@RequestParam ("visfecha") String visfecha,
			@RequestParam ("vishora") String vishora,
			@RequestParam ("vislugar") String vislugar,
			@RequestParam ("viscomentarios") String viscomentarios,
			@RequestParam ("cliente_rutcliente") int cliente_rutcliente) {
		logger.info("Entramos al método para editar un Cliente en la BD");
		Visita cli = new Visita(idvisita , visfecha , vishora , vislugar , viscomentarios , cliente_rutcliente);
		visdao.actualizarVisita(cli);
		String proc = "Visita";
		model.addAttribute("proceso",proc);
		return "msgeditar";
	}

}
