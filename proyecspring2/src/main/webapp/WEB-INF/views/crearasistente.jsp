<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<%--      <script type="text/javascript" src="<%= request.getContextPath() %>resources/js/funciones.js"></script> --%>
    <title>Sistema de Información</title>
    <link rel="icon" type="image/png"
        href="C:\Users\juani\Documents\JAVA desarrollo web\modulo 3 desarrollo web\Clase 1\Ejercicio grupal 1\ti.ico" />
    <link rel="stylesheet" href="resources/css/hojacssdeestilos.css"/>
    
     <script>

function validacioncrearasistente() {
	 var nombres= document.getElementById("nombres").value;
	 var edad = document.getElementById("edad").value;
	 var idcapacitacion = document.getElementById("capacitacion_idcapacitacion").value;
     var cont;

     /*Validacion global*/
 	if ((nombres.length==0 || nombres.length<=8 || nombres.length>=10 || nombres == null || nombres==" ")&&(edad.length==0 || edad.length<=5 || edad.length>=20 || edad == null || edad==" ")&&( idcapacitacion.length<=8 || idcapacitacion.length>=11 || idcapacitacion==" " || idcapacitacion==null))
 	{	
 		alert("¡Todos los campos se encuentran vacíos!");
 	}


       
   	/*validacion nombres como campo vacio*/
         if (nombres.length==0 || nombres.length<=8 || nombres.length>=10 || nombres == null || nombres==" "){
           	document.getElementById("nombres").style.background="#EDF98E";
            document.getElementById("nombres").style.borderColor="#000000";
            alert("¡El campo nombres está vacío!");
            return false;
            
        }else{

       	 document.getElementById("nombres").style.background="#ffffff";
            document.getElementById("nombres").style.borderColor="#9A9797";
            cont++;

        }
         
     	/*validacion edad como campo vacio*/
           if (edad.length==0 || edad.length<=5 || edad.length>=20 || edad == null || edad==" "){
              document.getElementById("edad").style.background="#EDF98E";
              document.getElementById("edad").style.borderColor="#000000";
              alert("¡El campo edad está vacío!");
              return false;
              
          }else{

         	 document.getElementById("edad").style.background="#ffffff";
             document.getElementById("edad").style.borderColor="#9A9797";
             cont++;

          }
           
       	/*validacion rut como campo vacio*/
          if ( idcapacitacion.length<=8 || idcapacitacion.length>=11 || idcapacitacion==" " || idcapacitacion==null){
          	 document.getElementById("capacitacion_idcapacitacion").style.background="#EDF98E";
               document.getElementById("capacitacion_idcapacitacion").style.borderColor="#000000";
               alert("¡El campo idcapacitacion está vacío!");
               return false;
              
           }else{

               document.getElementById("capacitacion_idcapacitacion").style.background="#ffffff";
               document.getElementById("capacitacion_idcapacitacion").style.borderColor="#9A9797";
               cont++;

           }

}

</script>
</head>

<body>
    <div class="header">
        <h1>Plataforma de registro de Usuarios.</h1>
    </div>    
    <hr/>
 <!---Menu---->    
        <div class="col-3 col-s-3 menu">
         <h2 class="perfil">Cliente</h2>
        <ul>
        	
            <li><a href="<%= request.getContextPath() %>/homecliente" style="color:white;" title="Inicio">Inicio</a></li>
            <li><a href="<%= request.getContextPath() %>/Linkcontacto" style="color:white;">Contacto</a></li>
            <li><a href="<%= request.getContextPath() %>/listarasistentes" style="color:white;">Administrar Asistentes</a></li>
            <li><a href="<%= request.getContextPath() %>/crearasist" style="color:white;">Crear Asistentes</a></li>
            
            <li><a href="<%= request.getContextPath() %>/listaraccidente" style="color:white;">Administrar Accidentes</a></li>
            <li><a href="<%= request.getContextPath() %>/crearaccidente" style="color:white;">Ingresar Accidentes</a></li>
            
            <li><a href="<%= request.getContextPath() %>/listarcapas" style="color:white;">Administrar Capacitaciones</a></li>        
            <li><a href="<%= request.getContextPath() %>/crearcapa" style="color:white;">Crear Capacitación</a></li>
          
            <li><a href="<%= request.getContextPath() %>/creartipousuario" style="color:white;">Crear Usuario</a></li>
            <li><a href="<%= request.getContextPath() %>/listarvistausuario" style="color:white;">Listado usuario</a></li>
   			<li><a href="<%= request.getContextPath() %>/logout" style="color:white;">Logout</a></li>		
        </ul>
        </div>   

    <!--formulario crear capacitacion-->
    
    <div class="col-9 col-s-9" id="tableRegistro">
        
        <form method="post" action="procesarasist">
            <h2>Crear Asistente.</h2>
            <table>
            	 <tr>

                    <td><label for="idasistente">ID Asistente: </label></td>
                    <td><input type="text" name="idasistente" placeholder="Llenado automático..." /></td>
                </tr>

                <tr>

                    <td><label for="nombres">Nombre: </label></td>
                    <td><input type="text" name="nombres" placeholder="nombre y apellido aquí..." /></td>
                </tr>

                <tr>
                    <td><label for="edad">Edad: </label></td>
                    <td> <input type="text" name="edad" placeholder="Su edad aquí..." /></td>
                </tr>
                
                <tr>
                    <td><label for="capacitacion_idcapacitacion">ID Capacitación: </label></td>
                    <td><input type="text" name="capacitacion_idcapacitacion" placeholder="Id capacitación..." /></td>
                </tr>

                <tr>
                    <td><input type="submit" value="Registrar" /></td>
                    <td><input type="reset" value="Limpiar Formulario" /></td>
                </tr>
                
              </table>
        </form>
        
         <a href="${pageContext.request.contextPath}/listarasistentes">Volver al Listado de Asistentes.</a>
        
        <a href="${pageContext.request.contextPath}/">Volver a Home</a>
        
    </div>

</body>

</html>