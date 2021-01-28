<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<%--      <script type="text/javascript" src="<%= request.getContextPath() %>resources/js/funciones.js"></script> --%>
    <title>Sistema de Información</title>
    <link rel="icon" type="image/png"
        href="C:\Users\juani\Documents\JAVA desarrollo web\modulo 3 desarrollo web\Clase 1\Ejercicio grupal 1\ti.ico" />

    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/hojacssdeestilos.css"/>
    
    <script>

function validacioncrearcliente() {
	
}
      var rut = document.getElementById("rutcliente").value;
      var nombres= document.getElementById("nombres").value;
      var apellidos = document.getElementById("apellidos").value;
      var telefono=document.getElementById("telefono").value;
      var afp = document.getElementById("afp").value;
     var sistemasalud = document.getElementById("sistemasalud").value;
     var direccion = document.getElementById("direccion").value;
     var comuna = document.getElementById("comuna").value;
     var edad = document.getElementById("edad").value;
     var cont;

	/*Validacion global*/
	if (( rut.length<=8 || rut.length>=11 || rut==" " || rut==null)&&(nombres.length==0 || nombres.length<3 || nombres.length>15 || nombres==" " || nombres == null)&&(apellidos.length==0 || apellidos.length<3 || apellidos.length>25 || apellidos == null || apellidos==" ")&&(telefono.length==0 || telefono.length<=8 || telefono.length>=10 || telefono == null || telefono==" ")&&(afp.length==0 || afp.length<3 || afp.length>25 || afp == null || afp==" ")&&(sistesalud<1   sistema>2  sistsalud==0   sistsalud==""  sistsalud== null )&&(direccion.length==0 || direccion.length<3 || direccion.length>25 || direccion == null || direccion==" ")(comuna.length==0 || comuna.length<3 || comuna.length>25 || comuna == null || comuna ==" ")&&(edad.length==0 || edad.length<=2 || edad.length>=10 || edad == null || edad ==" "))
	{	
		alert("¡Todos los campos se encuentran vacíos!");
	}
      
	
	 /*validacion rut cliente como campo vacio*/
    if ( rut.length<=8 || rut.length>=11 || rut==" " || rut==null){
    	 document.getElementById("rutcliente").style.background="#EDF98E";
        document.getElementById("rutcliente").style.borderColor="#000000";
        alert("¡El campo rut está vacío!");
        return false;
        
    }else{

        document.getElementById("rut").style.background="#ffffff";
        document.getElementById("rut").style.borderColor="#9A9797";
        cont++;

    }

    /*validacion nombres como campo vacio*/
  if (nombres.length==0 || nombres.length<3 || nombres.length>15 || nombres==" " || nombres == null){
     	document.getElementById("nombres").style.background="#EDF98E";
         document.getElementById("nombres").style.borderColor="#000000";
      alert("¡El campo nombres está vacío!");
      return false;
     
  }else{

	 document.getElementById("nombres").style.background="#ffffff";
      document.getElementById("nombres").style.borderColor="#9A9797";
      cont++;

  }
         
  	/*validacion apellidos como campo vacio*/
		if (apellidos.length==0 || apellidos.length<3 || apellidos.length>25 || apellidos == null || apellidos==" "){
		document.getElementById("apellidos").style.background="#EDF98E";
		document.getElementById("apellidos").style.borderColor="#000000";
		alert("¡El campo apellidos está vacío!");
		return false;
  
		}else{

		document.getElementById("apellidos").style.background="#ffffff";
		document.getElementById("apellidos").style.borderColor="#9A9797";
		cont++;

	}

		/*validacion telefono como campo vacio*/
        if (telefono.length==0 || telefono.length<=8 || telefono.length>=10 || telefono == null || telefono==" "){
          	document.getElementById("telefono").style.background="#EDF98E";
           document.getElementById("telefono").style.borderColor="#000000";
           alert("¡El campo telefono está vacío!");
           return false;
           
       }else{

      	 document.getElementById("telefono").style.background="#ffffff";
           document.getElementById("telefono").style.borderColor="#9A9797";
           cont++;

       }
        
        /*validacion afp como campo vacio*/
		if (afp.length==0 || afp.length<3 || afp.length>25 || afp == null || afp==" "){
		document.getElementById("afp").style.background="#EDF98E";
		document.getElementById("afp").style.borderColor="#000000";
		alert("¡El campo afp está vacío!");
		return false;
  
		}else{

		document.getElementById("afp").style.background="#ffffff";
		document.getElementById("afp").style.borderColor="#9A9797";
		cont++;

	}
    
		/*validacion sistema salud como campo vacio*/
		if (sistesalud<1   sistema>2  sistsalud==0   sistsalud==""  sistsalud== null ) {
			
	}
    
		/*validacion direccion como campo vacio*/
		if (direccion.length==0 || direccion.length<3 || direccion.length>25 || direccion == null || direccion==" "){
		document.getElementById("direccion").style.background="#EDF98E";
		document.getElementById("direccion").style.borderColor="#000000";
		alert("¡El campo direccion está vacío!");
		return false;
  
		}else{

		document.getElementById("direccion").style.background="#ffffff";
		document.getElementById("direccion").style.borderColor="#9A9797";
		cont++;

	}
		
		
		/*validacion comuna como campo vacio*/
		if (comuna.length==0 || comuna.length<3 || comuna.length>25 || comuna == null || comuna ==" "){
		document.getElementById("comuna").style.background="#EDF98E";
		document.getElementById("comuna").style.borderColor="#000000";
		alert("¡El campo comuna está vacío!");
		return false;
  
		}else{

		document.getElementById("comuna").style.background="#ffffff";
		document.getElementById("comuna").style.borderColor="#9A9797";
		cont++;

	}
		/*validacion edad como campo vacio*/
        if (edad.length==0 || edad.length<=2 || edad.length>=10 || edad == null || edad ==" "){
          	document.getElementById("edad").style.background="#EDF98E";
           document.getElementById("edad").style.borderColor="#000000";
           alert("¡El campo edad está vacío!");
           return false;
           
       }else{

      	 document.getElementById("telefono").style.background="#ffffff";
           document.getElementById("telefono").style.borderColor="#9A9797";
           cont++;

       }
		
		
	
</script>
</head>

<body>
    <div class="header">
        <h1>Plataforma de registro de Clientes.</h1>
    </div>    
    <hr/>
 <!---Menu---->    
        <div class="col-3 col-s-3 menu">
        <ul>
        	
            <li><a href="<%= request.getContextPath() %>/homecliente" style="color:white;" title="Inicio">Inicio</a></li>
            <li><a href="<%= request.getContextPath() %>/Linkcontacto" style="color:white;">Contacto</a></li>
            <li><a href="<%= request.getContextPath() %>/crearcapa" style="color:white;">Crear Capacitación</a></li>
            <li><a href="<%= request.getContextPath() %>/crearpag" style="color:white;">Crear Pago</a></li>
            <li><a href="<%= request.getContextPath() %>/creartipousuario" style="color:white;">Crear Usuario</a></li>
            <li><a href="<%= request.getContextPath() %>/listarvistausuario" style="color:white;">Listado usuario</a></li>
            <li><a href="<%= request.getContextPath() %>/listarcapas" style="color:white;">Listado Capacitaciones</a></li>
            <li><a href="<%= request.getContextPath() %>/listarasesorias" style="color:white;">Listado Asesoria</a></li>
            <li><a href="<%= request.getContextPath() %>/listarpagos" style="color:white;">Listado Pagos</a></li>
            <li><a href="<%= request.getContextPath() %>/listarvisitas" style="color:white;">Listado Visitas</a></li>
            <li><a href="<%= request.getContextPath() %>/reportes" style="color:white;">Reportes</a></li>
            <li><a href="<%= request.getContextPath() %>/listarchequeo" style="color:white;">Chequeos</a></li>
            <li><a href="<%= request.getContextPath() %>/listaraccidente" style="color:white;">Listado Accidentes</a></li>
            <li><a href="<%= request.getContextPath() %>/listarasistentes" style="color:white;">Administrar Asistentes</a></li>
	        <li><a href="<%= request.getContextPath() %>/iniciosesion" style="color:white;">Login de Acceso</a></li>		
        </ul>
        </div>   

    <!--formulario crear capacitacion-->
    
    <div class="col-9 col-s-9" id="tableRegistro">
        
        <form method="post" action="procesarcliente" id="contacto_formulario">
            <h2>Crear Cliente</h2>
            <table>
            	 <tr>

                    <td><label for="rut">RUT del Cliente: </label></td>
                    <td><input type="text" name="rutcliente" placeholder="...." value="<c:out value="${lstusu.getIdusuario()}"/>"/></td>
                </tr>

                <tr>

                    <td><label for="nombre">Nombres: </label></td>
                    <td><input type="text" name="nombres" placeholder="NOMBRES..." value="<c:out value="${lstusu.getNombre()}"/>"/></td>
                </tr>

                <tr>
                    <td><label for="apellido">Apellidos: </label></td>
                    <td> <input type="text" name="apellidos" placeholder="APELLIDOS..." value="<c:out value="${lstusu.getApellidos()}"/>"/></td>
                </tr>
                <tr>
                    <td><label for="telefono">Teléfono: </label></td>
                    <td><input type="text" name="telefono" placeholder="TELEFONO..." /></td>
                </tr>
                <tr>
                    <td><label for="afp">AFP: </label></td>
                    <td><input type="text" name="afp" placeholder="AFP..." /></td>
                </tr>
                <tr>
                    <td><label for="sistsalud">Sistema de Salud: </label></td>
                    <td><input type="text" name="sistemasalud" placeholder="SISTEMA DE SALUD..." /></td>
                </tr>
                
                <tr>
                    <td><label for="direccion">Dirección: </label></td>
                    <td><input type="text" name="direccion" placeholder="DIRECCION..." /></td>
                </tr>
                
                 <tr>
                    <td><label for="comuna">Comuna: </label></td>
                    <td><input type="text" name="comuna" placeholder="COMUNA..." /></td>
                </tr>
                 <tr>
                    <td><label for="edad">Edad: </label></td>
                    <td><input type="text" name="edad" placeholder="EDAD..." /></td>
                </tr>

                <tr>
                    <td><input type="submit" value="Registrar Cliente" /></td>
                    <td><input type="reset" value="Limpiar Formulario" /></td>
                </tr>
                
              </table>
        </form>
        
        <a href="${pageContext.request.contextPath}/listarclientes">Volver al Listado de Clientes</a>
        
    </div>

</body>

</html>