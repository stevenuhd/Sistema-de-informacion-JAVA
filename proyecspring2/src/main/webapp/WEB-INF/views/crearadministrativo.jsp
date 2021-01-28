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
function validacioncrearadministrativo() {
    var correo= document.getElementById("correo").value;
    var area = document.getElementById("area").value;
 	 var cont;

	/*Validacion global*/
	if ((id.length==0 || id == null || id==" ")&& (area.length==0 || area == null || area==" "))
	{	
		alert("¡Todos los campos se encuentran vacíos!");
	}
      
  	/*validacion correo como campo vacio*/
        if (id.length==0 || id == null || id==" "){
          	document.getElementById("correo").style.background="#EDF98E";
           document.getElementById("correo").style.borderColor="#000000";
           alert("¡El campo correo está vacío!");
           return false;
           
       }else{

      	 document.getElementById("correo").style.background="#ffffff";
           document.getElementById("correo").style.borderColor="#9A9797";
           cont++;

       }
        
    	/*validacion area como campo vacio*/
          if (area.length==0 || area == null || area==" "){
             document.getElementById("area").style.background="#EDF98E";
             document.getElementById("area").style.borderColor="#000000";
             alert("¡El campo area está vacío!");
             return false;
             
         }else{

        	 document.getElementById("area").style.background="#ffffff";
            document.getElementById("area").style.borderColor="#9A9797";
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
        	
            <li><a href="<%= request.getContextPath() %>/homeadministrativo" style="color:white;" title="Inicio">Inicio</a></li>
            <li><a href="<%= request.getContextPath() %>/Linkcontacto" style="color:white;">Contacto</a></li>
            <li><a href="<%= request.getContextPath() %>/creartipousuario" style="color:white;">Crear Usuarios</a></li>
            <li><a href="<%= request.getContextPath() %>/listarvistausuario" style="color:white;">Administrar UsuarioS</a></li>
            <li><a href="<%= request.getContextPath() %>/listarclientes" style="color:white;">Administrar Clientes</a></li>
            <li><a href="<%= request.getContextPath() %>/listarprofe" style="color:white;">Administar Profesionales</a></li>
            <li><a href="<%= request.getContextPath() %>/listadmin" style="color:white;">Administar Administrativos</a></li>
            
            <li><a href="<%= request.getContextPath() %>/listarpagos" style="color:white;">Listado Pagos</a></li>
            <li><a href="<%= request.getContextPath() %>/crearpag" style="color:white;">Crear Pagos</a></li>
            
            <li><a href="<%= request.getContextPath() %>/listarchequeo" style="color:white;">Listar Chequeos</a></li>
     		<li><a href="<%= request.getContextPath() %>/listarchequeo" style="color:white;">Crear Chequeos</a></li>
     		
     		<li><a href="<%= request.getContextPath() %>/logout" style="color:white;">Logout</a></li>	
     	       
	    	
        </ul>
        </div>   


    <!--formulario crear capacitacion-->
    
    <div class="col-9 col-s-9" id="tableRegistro">
        
        <form method="post" action="procesaradmi">
            <h2>Crear Administrativo</h2>
            <table>
            	 <tr>

                    <td><label for="rutadmi">RUT Administrativo: </label></td>
                    <td><input type="text" name="rutadmi" placeholder="177542520..." value="<c:out value="${lstusu.getIdusuario()}"/>"/></td>
                </tr>

                <tr>

                    <td><label for="nombre">Nombre: </label></td>
                    <td><input type="text" name="nombre" placeholder="Escriba Nombre..." value="<c:out value="${lstusu.getNombre()}"/>"/></td>
                </tr>

                <tr>
                    <td><label for="apellidos">Apellidos: </label></td>
                    <td> <input type="text" name="apellidos" placeholder="Escriba Apellidos..." value="<c:out value="${lstusu.getApellidos()}"/>"/></td>
                </tr>
                <tr>
                    <td><label for="correo">Correo: </label></td>
                    <td><input type="text" name="correo" placeholder="Escriba el Correo..." /></td>
                </tr>
                <tr>
                    <td><label for="area">Area: </label></td>
                    <td><input type="text" name="area" placeholder="Escriba el area profesional..." /></td>
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