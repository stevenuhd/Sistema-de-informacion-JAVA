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

function validacioncrearprofesionales() {
	 var rut= document.getElementById("rutprof").value;
	 var nombre = document.getElementById("nombre").value;
     var apellidos=document.getElementById("apellidos").value;
     var telefono=document.getElementById("telefono").value;
     var titulo=document.getElementById("titulo").value;
     var proyecto=document.getElementById("proyecto").value;
     var cont;

     /*Validacion global*/
 	if ((telefono.length==0 || telefono.length<=8 || telefono.length>=10 || telefono == null || telefono==" ")&&(titulo.length==0 || titulo.length<=5 || titulo.length>=20 || titulo == null || titulo==" ")&&(proyecto.length==0 || proyecto.length<=5 || proyecto.length>=30 || proyecto == null || proyecto==" "))
 	{	
 		alert("¡Todos los campos se encuentran vacíos!");
 	}

// 	 /*validacion rut como campo vacio*/
//      if ( rut.length<=8 || rut.length>=11 || rut==" " || rut==null){
//      	 document.getElementById("rutprof").style.background="#EDF98E";
//          document.getElementById("rutprof").style.borderColor="#000000";
//          alert("¡El campo rut está vacío!");
//          return false;
         
//      }else{

//          document.getElementById("rutprof").style.background="#ffffff";
//          document.getElementById("rutprof").style.borderColor="#9A9797";
//          cont++;

//      }

// 	 /*validacion nombre como campo vacio*/
//      if (nombre.length==0 || nombre.length<3 || nombre.length>15 || nombre==" " || nombre == null){
//         	document.getElementById("nombre").style.background="#EDF98E";
//             document.getElementById("nombre").style.borderColor="#000000";
//          alert("¡El campo nombre está vacío!");
//          return false;
         
//      }else{

//     	 document.getElementById("nombre").style.background="#ffffff";
//          document.getElementById("nombre").style.borderColor="#9A9797";
//          cont++;

//      }
     
//  	/*validacion apellidos como campo vacio*/
//        if (apellidos.length==0 || apellidos.length<3 || apellidos.length>25 || apellidos == null || apellidos==" "){
//           document.getElementById("apellidos").style.background="#EDF98E";
//           document.getElementById("apellidos").style.borderColor="#000000";
//           alert("¡El campo apellidos está vacío!");
//           return false;
          
//       }else{

//      	 document.getElementById("apellidos").style.background="#ffffff";
//          document.getElementById("apellidos").style.borderColor="#9A9797";
//           cont++;

//       }
       
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
         
     	/*validacion titulo como campo vacio*/
           if (titulo.length==0 || titulo.length<=5 || titulo.length>=20 || titulo == null || titulo==" "){
              document.getElementById("titulo").style.background="#EDF98E";
              document.getElementById("titulo").style.borderColor="#000000";
              alert("¡El campo titulo está vacío!");
              return false;
              
          }else{

         	 document.getElementById("titulo").style.background="#ffffff";
             document.getElementById("titulo").style.borderColor="#9A9797";
             cont++;

          }
           
       	/*validacion proyecto como campo vacio*/
             if (proyecto.length==0 || proyecto.length<=5 || proyecto.length>=30 || proyecto == null || proyecto==" "){
               	document.getElementById("proyecto").style.background="#EDF98E";
                document.getElementById("proyecto").style.borderColor="#000000";
                alert("¡El campo proyecto está vacío!");
                return false;
                
            }else{

           	 document.getElementById("proyecto").style.background="#ffffff";
                document.getElementById("proyecto").style.borderColor="#9A9797";
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
        <ul>
        	
            <li><a href="<%= request.getContextPath() %>/home" style="color:white;" title="Inicio">Inicio</a></li>
            <li><a href="<%= request.getContextPath() %>/Linkcontacto" style="color:white;">Contacto</a></li>
            <li><a href="<%= request.getContextPath() %>/crearusuario" style="color:white;">Crear Usuario</a></li>
            <li><a href="<%= request.getContextPath() %>/listarusuario2" style="color:white;">Listado Usuarios</a></li>
            <li><a href="<%= request.getContextPath() %>/listarclientes2" style="color:white;">Listado Clientes</a></li>
            <li><a href="<%= request.getContextPath() %>/listadmin2" style="color:white;">Listado Administrativo</a></li>
            <li><a href="<%= request.getContextPath() %>/listarprofe2" style="color:white;">Listado Profesional</a></li>
            <li><a href="<%= request.getContextPath() %>/listarcapas2" style="color:white;">Listado Capacitaciones</a></li>
            <li><a href="<%= request.getContextPath() %>/listaraccidente2" style="color:white;">Listado Accidentes</a></li>
            <li><a href="<%= request.getContextPath() %>/listarasesorias2" style="color:white;">Listado Asesoria</a></li>
            <li><a href="<%= request.getContextPath() %>/listarasistentes2" style="color:white;">Listado Asistentes</a></li>
            <li><a href="<%= request.getContextPath() %>/listarpagos2" style="color:white;">Listado Pagos</a></li>
            <li><a href="<%= request.getContextPath() %>/listarvisitas2" style="color:white;">Listado Visitas</a></li>
            <li><a href="<%= request.getContextPath() %>/listarchequeo2" style="color:white;">Listado Chequeos</a></li>
            <li><a href="<%= request.getContextPath() %>/logout" style="color:white;">Logout</a></li>
        </ul>
        </div>   

    <!--formulario crear profesional-->
    
    <div class="col-9 col-s-9" id="tableRegistro">
        
        <form method="post" action="procesarprofe">
            <h2>Crear Profesional</h2>
            <table>
            	 <tr>

                    <td><label for="rutprof">RUT Profesional: </label></td>
                    <td><input type="text" name="rutprof" placeholder="xxxxxxxxx" value="<c:out value="${lstusu.getIdusuario()}"/>"/></td>
                </tr>

                <tr>

                    <td><label for="nombre">Nombre: </label></td>
                    <td><input type="text" name="nombre" placeholder="Ingresar nombre" value="<c:out value="${lstusu.getNombre()}"/>"/></td>
                </tr>

                <tr>
                    <td><label for="apellidos">Apellidos: </label></td>
                    <td> <input type="text" name="apellidos" placeholder="Ingresar apellidos" value="<c:out value="${lstusu.getApellidos()}"/>"/></td>
                </tr>
                <tr>
                    <td><label for="telefono">Teléfono: </label></td>
                    <td><input type="text" name="telefono" placeholder="569-xxxxxxxx" /></td>
                </tr>
                <tr>
                    <td><label for="titulo">Título: </label></td>
                    <td><input type="text" name="titulo" placeholder="Ingresar titulo" /></td>
                </tr>
                <tr>
                    <td><label for="proyecto">Poyecto: </label></td>
                    <td><input type="text" name="proyecto" placeholder="Ingresar proyecto" /></td>
                </tr>

                <tr>
                    <td><input type="submit" value="Registrar" /></td>
                    <td><input type="reset" value="Limpiar Formulario" /></td>
                </tr>
                
              </table>
        </form>
    </div>




</body>

</html>