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

import cl.awakelab.spring.dao.Accidentedaoimp;
import cl.awakelab.spring.modelo.Accidente;
import cl.awakelab.spring.modelo.Cliente;


@Controller 
public class AccidenteControlador {
	private static final Logger logger = LoggerFactory.getLogger(AccidenteControlador.class);
	
	@Autowired
	Accidentedaoimp accidao;

	@RequestMapping(value="/listaraccidente", method = RequestMethod.GET)
	public String listarAccidente(Model model) {
		logger.info("Entramos al método para obtener los Accidentes de la BD");
		List<Accidente> listaraccidente = new ArrayList<Accidente>();
		listaraccidente = accidao.obteneraccidente();
		model.addAttribute("listaraccidente",listaraccidente);
		logger.info("Llamo a la vista(tabla) de Accidentes");
		System.out.println(listaraccidente);
		return "listaraccidente";
	}
	
	@RequestMapping(value="/listaraccidente2", method = RequestMethod.GET)
	public String listarAccidente2(Model model) {
		logger.info("Entramos al método para obtener los Accidentes de la BD");
		List<Accidente> listaraccidente = new ArrayList<Accidente>();
		listaraccidente = accidao.obteneraccidente();
		model.addAttribute("listaraccidente",listaraccidente);
		logger.info("Llamo a la vista(tabla) de Accidentes");
		System.out.println(listaraccidente);
		return "listaraccidente2";
	}
	
	@RequestMapping (value="/crearaccidente", method = RequestMethod.GET)
	public String  crearAccidentes(Model model) {
		logger.info("Entramos al método para desplegar el formulario de Crear accidente");
		
		logger.info("Entramos al método para crear un array de ruts");
		List<Cliente> listarut =new ArrayList<Cliente>();
		listarut =accidao.obtenerRuts();
		model.addAttribute("lstrut" ,listarut);
		return "crearaccidente";
	}
	 
	
	@RequestMapping(value = "/procesaraccidente", method = RequestMethod.POST)
	public String crearaccidenteProcesa(Model model, 
			@RequestParam ("idaccidente") int idaccidente,
			@RequestParam ("accifecha") String accifecha,
			@RequestParam ("accihora") String accihora,
			@RequestParam ("accilugar") String accilugar,
			@RequestParam ("acciorigen") String acciorigen,
			@RequestParam ("accisecuencias") String accisecuencias,
			@RequestParam ("rut") int rut) {
		logger.info("Entramos al método para crear un accidente en la BD");
		Accidente ac = new Accidente(idaccidente , accifecha , accihora , accilugar , acciorigen ,accisecuencias, rut);
		accidao.registrarAccidente(ac);
		return "msgcrear";
	}

	@RequestMapping (value="eliminaraccidente/{idaccidente}", method = RequestMethod.GET)
	public String  eliminarAccidente(Model model, @PathVariable ("idaccidente") int idaccidente) {
		logger.info("Entramos al método para eliminar un Accidente");
		Accidente acci = new Accidente();
		acci.setIdaccidente(idaccidente);
		accidao.eliminarAccidente(acci);
		return "msgeliminar";
	}
	
	@RequestMapping (value="editaraccidente/{idaccidente}", method = RequestMethod.GET)
	public String  editarAccidente(Model model, @PathVariable ("idaccidente") int idaccidente) {
		logger.info("Entramos al método para editar un Accidente");
		Accidente accident = new Accidente();
		accident = accidao.obteneracciporida(idaccidente);
        model.addAttribute("editacc", accident);
        
//		metodo para obtener lista de ruts disponibles
		logger.info("Entramos al método para crear un array de ruts");
		List<Cliente> listarut =new ArrayList<Cliente>();
		listarut =accidao.obtenerRuts();
		model.addAttribute("lstrut" ,listarut);
		return "editaraccidente";
	}
	
	@RequestMapping(value = "/procesareditaraccidente", method = RequestMethod.POST)
	public String editaracciProcesa(Model model, 
			@RequestParam ("idaccidente") int idaccidente,
			@RequestParam ("accifecha") String accifecha,
			@RequestParam ("accihora") String accihora,
			@RequestParam ("accilugar") String accilugar,
			@RequestParam ("acciorigen") String acciorigen,
			@RequestParam ("accisecuencias") String accisecuencias,
			@RequestParam ("rut") int rut) {
		logger.info("Entramos al método para editar un Accidente en la BD");
		Accidente ac = new Accidente(idaccidente , accifecha , accihora , accilugar , acciorigen ,accisecuencias, rut);
		accidao.actualizarAccidente(ac);
		return "msgeditar";
	}
}


