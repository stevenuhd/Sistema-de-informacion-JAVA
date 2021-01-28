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

import cl.awakelab.spring.dao.Usuariodaoimp;
import cl.awakelab.spring.idao.iusuariodao;
import cl.awakelab.spring.modelo.Administrativo;
import cl.awakelab.spring.modelo.Cliente;
import cl.awakelab.spring.modelo.Usuario;


@Controller
public class Usuariocontrolador {
	private static final Logger logger = LoggerFactory.getLogger(Profesionalcontrolador.class);
	
	@Autowired
	Usuariodaoimp usudao;
	
	@RequestMapping(value="/listarusuario", method = RequestMethod.GET)
	public String listarusu(Model model) {
		logger.info("Entramos al método para obtener Usuarios de la BD");
		List<Usuario> listausuario = new ArrayList<Usuario>();
		listausuario = usudao.obtenerusuario();
		model.addAttribute("listausu",listausuario);
		logger.info("Llamo a la vista(tabla) de Usuario");
		return "listadousuarios";
	}
	
	@RequestMapping(value="/listarusuario2", method = RequestMethod.GET)
	public String listarusu2(Model model) {
		logger.info("Entramos al método para obtener Usuarios de la BD");
		List<Usuario> listausuario = new ArrayList<Usuario>();
		listausuario = usudao.obtenerusuario();
		model.addAttribute("listausu",listausuario);
		logger.info("Llamo a la vista(tabla) de Usuario");
		return "listadousuarios2";
	}

	@RequestMapping (value="/crearusuario", method = RequestMethod.GET)
	public String  crearUsuarios(Model model) {
		logger.info("Entramos al método para desplegar el formulario de Crear usuario");
		return "crearusuario";
	}

	@RequestMapping(value = "/procesarusuario", method = RequestMethod.POST)
	public String crearusuarioProcesa(Model model, 
			@RequestParam ("run") int idusuario,
			@RequestParam ("nombre") String nombre,
			@RequestParam ("apellidos") String apellidos,
			@RequestParam ("fechanacimiento") String fecha_nacimiento,
			@RequestParam ("tipo") String tipo) {
		logger.info("Entramos al método para crear un Usuario en la BD");
		Usuario usu = new Usuario(idusuario , nombre , apellidos , fecha_nacimiento, tipo);
		usudao.registrarusuario(usu);
		model.addAttribute("lstusu",usu);
	

	   		
	       	if (tipo.equalsIgnoreCase("profesional")) {
	   			tipo = "crearprofesionales";
	   			Usuario usuprof =new Usuario();
	   			usuprof = usudao.obtenerusuporrut(String.valueOf(idusuario));
	   			model.addAttribute("lstusu",usuprof);
	   		}else {
	   			if (tipo.equalsIgnoreCase("administrativo")) {
	   				tipo = "crearadministrativo";
	   				Usuario usuprof =new Usuario();
		   			usuprof = usudao.obtenerusuporrut(String.valueOf(idusuario));
		   			model.addAttribute("lstusu",usuprof);
	   			}else {
	   				tipo = "crearcliente";
	   				Usuario usuprof =new Usuario();
		   			usuprof = usudao.obtenerusuporrut(String.valueOf(idusuario));
		   			model.addAttribute("lstusu",usuprof);
	   			}
	   		}       	
	       	
	       	return tipo;
		
	}
	
	@RequestMapping(value = "/editarusu/{id}", method = RequestMethod.GET)
	public String editaradmin(Model model, @PathVariable ("id") String id) {
		logger.info("Entramos al método para editar un Usuario");
		Usuario usu =new Usuario();
		usu = usudao.obtenerusuporrut(id);
		model.addAttribute("editusu", usu);
		return "editarusuario";
	}
	
	@RequestMapping (value="/eliminarusu/{id}", method = RequestMethod.GET)
	public String eliminarusu(Model model, @PathVariable ("id") int id) {
		logger.info("Entramos al método para eliminar un Usuario");
		Usuario usu = new Usuario();
		usu.setIdusuario(id);
		usudao.eliminarusuario(usu);	
		return "msgeliminar";
	}
}
