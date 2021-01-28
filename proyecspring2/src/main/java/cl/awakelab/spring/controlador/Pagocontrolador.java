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

import cl.awakelab.spring.dao.Pagodaoimp;
import cl.awakelab.spring.modelo.Cliente;
import cl.awakelab.spring.modelo.Pago;

@Controller
public class Pagocontrolador {
	private static final Logger logger = LoggerFactory.getLogger(Pagocontrolador.class);
	
	@Autowired
	Pagodaoimp pagodao;
	
	@RequestMapping(value = "/listarpagos", method = RequestMethod.GET)
	public String listarpago(Model model) {
		List<Pago> listapag =new ArrayList<Pago>();
		listapag =pagodao.obtenerpago();
		model.addAttribute("lstpago" ,listapag);
		return "listarpagos";
	}
	
	@RequestMapping(value = "/listarpagos2", method = RequestMethod.GET)
	public String listarpago2(Model model) {
		List<Pago> listapag =new ArrayList<Pago>();
		listapag =pagodao.obtenerpago();
		model.addAttribute("lstpago" ,listapag);
		return "listarpagos2";
	}
	
	@RequestMapping(value = "/crearpag", method= RequestMethod.GET)
	public String crearpago(Model model) {
		
//		metodo para obtener lista de ruts disponibles
		logger.info("Entramos al método para crear un array de ruts");
		List<Cliente> listarut =new ArrayList<Cliente>();
		listarut =pagodao.obtenerRuts();
		model.addAttribute("lstrut" ,listarut);
		return "crearpagos";
	}
	
	@RequestMapping(value = "/procesarpagos", method = RequestMethod.POST)
	public String crearpagoProcesa(Model model, 
			@RequestParam ("idpago") int idpago,
			@RequestParam ("fechapago") String fechapago,
			@RequestParam ("montopago") int montopago,
			@RequestParam ("mespago") int mespago,
			@RequestParam ("aniopago") int aniopago,
			@RequestParam ("rutcliente") int rutcliente) {
		logger.info("Entramos al método para crear un pago en la BD");
		Pago pag = new Pago( idpago, fechapago, montopago, mespago, aniopago, rutcliente);
		pagodao.registrarpago(pag);
		String proc = "Pago de cliente";
		model.addAttribute("proceso",proc);
		return "msgcrear";
	}
	
	@RequestMapping(value = "/eliminarpago/{id}", method= RequestMethod.GET)
	public String eliminarpago(Model model, @PathVariable ("id") int id) {
		Pago pg =new Pago();
		pg.setIdpago(id);
		pagodao.eliminarpago(pg);
		String proc = "Pago de cliente";
		model.addAttribute("proceso",proc);
		return "msgeliminar";
	}
	
	@RequestMapping(value = "/editarpagos/{id}", method = RequestMethod.GET)
	public String editarpago(Model model, @PathVariable ("id") int id) {
		logger.info("Entramos al método para editar un pago");
		Pago pag = new Pago();
		pag = pagodao.obtenerpagoporid(id);
		model.addAttribute("mipago", pag);
		
//		metodo para obtener lista de ruts disponibles
		logger.info("Entramos al método para crear un array de ruts");
		List<Cliente> listarut =new ArrayList<Cliente>();
		listarut =pagodao.obtenerRuts();
		model.addAttribute("lstrut" ,listarut);
		return "editarpagos";
	}
	
	@RequestMapping(value = "/procesareditarpagos", method = RequestMethod.POST)
	public String editarPagoProcesa(Model model, 
			@RequestParam ("idpago") int idpago,
			@RequestParam ("fechapago") String fechapago,
			@RequestParam ("montopago") int montopago,
			@RequestParam ("mespago") int mespago,
			@RequestParam ("aniopago") int aniopago,
			@RequestParam ("rutcliente") int rutcliente) {
		logger.info("Entramos al método para editar un pago");
		Pago pag = new Pago(idpago, fechapago,  mespago, montopago, aniopago, rutcliente);
		pagodao.actualizarpago(pag);
		String proc = "Pago de cliente";
		model.addAttribute("proceso",proc);
		return "msgeditar";
	}
}
