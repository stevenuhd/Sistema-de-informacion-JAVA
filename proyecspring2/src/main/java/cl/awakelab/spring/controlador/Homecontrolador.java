package cl.awakelab.spring.controlador;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;




@Controller
public class Homecontrolador {
	
	
	private static final Logger logger = LoggerFactory.getLogger(Homecontrolador.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		  Date date = new Date(); DateFormat dateFormat =
		  DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		  
		  String formattedDate = dateFormat.format(date);
		  
		  model.addAttribute("serverTime", formattedDate );
		 
		
		return "home";
	}
	
	
	@RequestMapping(value="/home", method = RequestMethod.GET)
	public String home(Model model) {

		return "home";
	}
	
	@RequestMapping(value="/homecliente", method = RequestMethod.GET)
	public String homecli(Model model) {

		return "homecliente";
	}
	
	@RequestMapping(value="/homeadministrativo", method = RequestMethod.GET)
	public String homeadmi(Model model) {

		return "homeadministrativo";
	}
	
	@RequestMapping(value="/homeprofesional", method = RequestMethod.GET)
	public String homeprof(Model model) {

		return "homeprofesional";
	}

	
    @RequestMapping(value="/reportes", method = RequestMethod.GET)
	public String reportessistema(Model model) {

		return "reportes";
	}
    
    @RequestMapping(value="/listarvistausuario", method = RequestMethod.GET)
   	public String vistalistadousuarios(Model model) {

   		return "listartipousuario";
   	}
    
	/* tipo = "listarclientes"; */
    
    @RequestMapping(value = "/listartipo", method = RequestMethod.POST)
	public String listarclienteProcesa(Model model,
		@RequestParam ("tipo") String tipo) {
		
    	if (tipo.equalsIgnoreCase("profesional")) {
			tipo = "listarprofe";
		}else {
			if (tipo.equalsIgnoreCase("administrativo")) {
				tipo = "listadmin";
			}else {
				if (tipo.equalsIgnoreCase("cliente")) {
					tipo = "listarclientes";
			}else {
				tipo = "listarusuario";
			}
		}
		}
    
    	
    	return "redirect:/"+tipo+"/";
   
    }
    
    @RequestMapping(value="/creartipousuario", method = RequestMethod.GET)
   	public String creartipousuario(Model model) {

   		return "crearusuario";
   	}
    
    
    @RequestMapping(value = "/creartipo", method = RequestMethod.POST)
   	public String crearclienteProcesa(Model model,
   		@RequestParam ("tipo") String tipo) {
   		
       	if (tipo.equalsIgnoreCase("profesional")) {
   			tipo = "crearprofe";
   		}else {
   			if (tipo.equalsIgnoreCase("administrativo")) {
   				tipo = "crearadmi";
   			}else {
   				tipo = "crearcliente";
   			}
   		}
       	
       	
       	
       	return "redirect:/"+tipo+"/";
      
       }
    
    @RequestMapping(value="/iniciosesion", method = RequestMethod.GET)
   	public String inisesion(Model model) {

   		return "login";
   	}
    
}
