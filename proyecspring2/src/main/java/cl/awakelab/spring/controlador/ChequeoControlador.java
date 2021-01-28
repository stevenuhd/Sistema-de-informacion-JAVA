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

import cl.awakelab.spring.dao.ChequeoVisitadaoimp;
import cl.awakelab.spring.modelo.ChequeoVisita;

@Controller
public class ChequeoControlador {
	
	private static final Logger logger = LoggerFactory.getLogger(ChequeoControlador.class);
	
	@Autowired
	ChequeoVisitadaoimp cheqdao;
	
	@RequestMapping(value = "/listarchequeo", method = RequestMethod.GET)
	public String listarcheq(Model model) {
		logger.info("Entramos al método para crear un array a la lista");
		List<ChequeoVisita> listacheq =new ArrayList<ChequeoVisita>();
		listacheq =cheqdao.obtenerChequeo();
		model.addAttribute("lstcheq" ,listacheq);
		
		
		return "listarchequeos";
	}
	
	@RequestMapping(value = "/listarchequeo2", method = RequestMethod.GET)
	public String listarcheq2(Model model) {
		logger.info("Entramos al método para crear un array a la lista");
		List<ChequeoVisita> listacheq =new ArrayList<ChequeoVisita>();
		listacheq =cheqdao.obtenerChequeo();
		model.addAttribute("lstcheq" ,listacheq);
		
		
		return "listarchequeos2";
	}
	
	@RequestMapping(value = "/VistaCrearCheq", method= RequestMethod.GET)
	public String listarrut(Model model) {
		logger.info("metodo de desplegar vista de crear chequeos");
		
		
			logger.info("Entramos al método para crear un array de ruts");
			List<ChequeoVisita> listarut =new ArrayList<ChequeoVisita>();
			listarut =cheqdao.obtenerRuts();
			model.addAttribute("lstrut" ,listarut);
			
			logger.info("Entramos al método para crear un array de ids");
			List<ChequeoVisita> listavis = new ArrayList<ChequeoVisita>();
			listavis = cheqdao.obtenerIDs();
			model.addAttribute("lvis",listavis);
			
//			logger.info("Entramos al método para editar un chequeo");
//			ChequeoVisita cheq = new ChequeoVisita();
//			int id=0;
//			cheq = cheqdao.obtenerIDmax(id);
//			System.out.println(cheq);
//			model.addAttribute("micheq", cheq);
		return "crearchequeos";
	}
	
	@RequestMapping(value = "/procesarchequeos", method = RequestMethod.POST)
	public String crearchequeoProcesa(Model model, 
			
			@RequestParam ("estado") String estado,
			@RequestParam ("idvisita") int idvisita,
			@RequestParam ("nomcheq") String nomcheq ) {
		logger.info("Entramos al método para crear un chequeo en la BD");
		ChequeoVisita cheq = new ChequeoVisita( estado, idvisita, nomcheq);
		cheqdao.registrarChequeo(cheq);
		return "msgcrear";
	}
	
	@RequestMapping(value = "/eliminarchequeo/{id}", method= RequestMethod.GET)
	public String eliminarcheq(Model model, @PathVariable ("id") int id) {
		ChequeoVisita cv =new ChequeoVisita();
		cv.setIdchequeovisita(id);
		cheqdao.eliminarChequeo(cv);
		return "msgeliminar";
	}
	
	@RequestMapping(value = "/editarchequeo/{id}", method = RequestMethod.GET)
	public String editarchequeo(Model model, @PathVariable ("id") int id) {
		logger.info("Entramos al método para editar un chequeo");
		ChequeoVisita cheq = new ChequeoVisita();
		cheq = cheqdao.obtenerChequeoporid(id);
		model.addAttribute("micheq", cheq);
		
		logger.info("Entramos al método para crear un array de ruts");
		List<ChequeoVisita> listarut =new ArrayList<ChequeoVisita>();
		listarut =cheqdao.obtenerRuts();
		model.addAttribute("lstrut" ,listarut);
		
		logger.info("Entramos al método para crear un array de ids");
		List<ChequeoVisita> listavis = new ArrayList<ChequeoVisita>();
		listavis = cheqdao.obtenerIDs();
		model.addAttribute("lvis",listavis);
		return "editarchequeos";
	}
	
	@RequestMapping(value = "/procesareditarchequeo", method = RequestMethod.POST)
	public String editarChequeoProcesa(Model model, 
			@RequestParam ("idchequeo") int idchequeo,
			@RequestParam ("estado") String estado,
			@RequestParam ("idvisita") int idvisita,
			@RequestParam ("nomcheq") String nomcheq) {
		logger.info("Entramos al método para procesareditar un chequeo");
		ChequeoVisita cheq = new ChequeoVisita(idchequeo, estado,  idvisita, nomcheq);
		cheqdao.actualizarChequeo(cheq);
		return "msgeditar";
	}
	
	
}
