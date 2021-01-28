package cl.awakelab.spring.controlador;



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class Contactocontrolador {
	
	
	@RequestMapping(value="Linkcontacto", method = RequestMethod.GET)
	public String Contacto() {
		
		return "contacto";
	}
	

	
	
	@RequestMapping(value="Linkcrearcont", method = RequestMethod.POST)
	public String Contacto(Model model,
			


			@RequestParam ("nombre") String nombre,
			@RequestParam("apellidop") String apellidopaterno,
			@RequestParam("apellidom") String apellidomaterno,
			@RequestParam ("telefono") String telefono,
			@RequestParam("email") String correoelectronico,
			@RequestParam("comentarios") String comentarios,
			@RequestParam("tipo") String tipodeusuario
		) {

	
			System.out.println(nombre);
			System.out.println(apellidopaterno);
			System.out.println(apellidomaterno);
			System.out.println(telefono);
			System.out.println(correoelectronico);
			System.out.println(comentarios);
			System.out.println(tipodeusuario);
			
			
		return "home";

}
}
	
	





