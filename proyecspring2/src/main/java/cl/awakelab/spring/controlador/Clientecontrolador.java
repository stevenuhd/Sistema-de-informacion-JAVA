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

import cl.awakelab.spring.dao.Clientedaoimp;
import cl.awakelab.spring.modelo.Cliente;
import cl.awakelab.spring.modelo.Usuario;

@Controller
public class Clientecontrolador {
	
	private static final Logger logger = LoggerFactory.getLogger(Clientecontrolador.class);
	
	@Autowired
	Clientedaoimp clidao;

	@RequestMapping(value="/listarclientes", method = RequestMethod.GET)
	public String listarClientes(Model model) {
		logger.info("Entramos al método para obtener los Clientes de la BD");
		List<Cliente> listacli = new ArrayList<Cliente>();
		listacli = clidao.obtenerCliente();
		model.addAttribute("listacli",listacli);
		logger.info("Llamo a la vista(tabla) de Clientes");
		return "listarclientes";
	}
	
	@RequestMapping(value="/listarclientes2", method = RequestMethod.GET)
	public String listarClientes2(Model model) {
		logger.info("Entramos al método para obtener los Clientes de la BD");
		List<Cliente> listacli = new ArrayList<Cliente>();
		listacli = clidao.obtenerCliente();
		model.addAttribute("listacli",listacli);
		logger.info("Llamo a la vista(tabla) de Clientes");
		return "listarclientes2";
	}
	
//	@RequestMapping (value="/crearcliente", method = RequestMethod.GET)
//	public String  crearClientes(Model model) {
//		logger.info("Entramos al método para desplegar el formulario de Crear cliente");
//		
//	
//		return "crearcliente";
//	}
	 
	
	@RequestMapping(value = "/procesarcliente", method = RequestMethod.POST)
	public String crearclienteProcesa(Model model, 
			@RequestParam ("rutcliente") int rutcliente,
			@RequestParam ("nombres") String nombres,
			@RequestParam ("apellidos") String apellidos,
			@RequestParam ("telefono") String telefono,
			@RequestParam ("afp") String afp,
			@RequestParam ("sistemasalud") int sistemasalud,
			@RequestParam ("direccion") String direccion,
			@RequestParam ("comuna") String comuna,
			@RequestParam ("edad") int edad, 
			@RequestParam ("rutcliente") int cliente_idusuario){
		logger.info("Entramos al método para crear un Cliente en la BD");
		Cliente cli = new Cliente(rutcliente , nombres , apellidos , telefono , afp , sistemasalud , direccion , comuna , edad, cliente_idusuario);
		clidao.registrarCliente(cli);
		String proc = "Cliente";
		model.addAttribute("proceso",proc);
		return "msgcrear";
	}

	@RequestMapping (value="/eliminarcliente/{rutcliente}", method = RequestMethod.GET)
	public String  eliminarClientes(Model model, @PathVariable ("rutcliente") int rutcliente) {
		logger.info("Entramos al método para eliminar un cliente");
		Cliente cli = new Cliente();
		cli.setRutcliente(rutcliente);
		clidao.eliminarCliente(cli);
		String proc = "Cliente";
		model.addAttribute("proceso",proc);
		return "msgeliminar";
	}
	
	@RequestMapping (value="/editarcliente/{rutcliente}", method = RequestMethod.GET)
	public String  editarClientes(Model model, @PathVariable ("rutcliente") int rutcliente) {
		logger.info("Entramos al método para editar un cliente");
		Cliente cli = new Cliente();
		cli = clidao.obtenerClienteporid(rutcliente);
        model.addAttribute("editacli", cli);
		return "editarcliente";
	}
	
	@RequestMapping(value = "/procesareditarcliente", method = RequestMethod.POST)
	public String editarclienteProcesa(Model model, 
			@RequestParam ("rutcliente") int rutcliente,
			@RequestParam ("nombres") String nombres,
			@RequestParam ("apellidos") String apellidos,
			@RequestParam ("telefono") String telefono,
			@RequestParam ("afp") String afp,
			@RequestParam ("sistemasalud") int sistemasalud,
			@RequestParam ("direccion") String direccion,
			@RequestParam ("comuna") String comuna,
			@RequestParam ("edad") int edad ,
			@RequestParam ("rutcliente") int cliente_idusuario) {
		logger.info("Entramos al método para editar un Cliente en la BD");
		Cliente cli = new Cliente(rutcliente , nombres , apellidos , telefono , afp , sistemasalud , direccion , comuna , edad, cliente_idusuario);
		clidao.actualizarCliente(cli);
		String proc = "Cliente";
		model.addAttribute("proceso",proc);
		return "msgeditar";
	}
	
	@RequestMapping (value="/crearclienteid/{run}", method = RequestMethod.GET)
	public String  crearClientesuser(Model model, @PathVariable ("run") int rutcliente) {
		logger.info("Entramos al método para crear un cliente");
		Usuario usu = new Usuario();
		usu = clidao.obtenerDatosuser(rutcliente);
        model.addAttribute("creacli", usu);
		return "crearcliente";
	}
}
