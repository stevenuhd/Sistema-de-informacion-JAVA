<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <script type="text/javascript" src="<%= request.getContextPath() %>resources/js/funciones.js"></script>
    <title>Sistema de Información</title>
    <link rel="icon" type="image/png"
        href="C:\Users\juani\Documents\JAVA desarrollo web\modulo 3 desarrollo web\Clase 1\Ejercicio grupal 1\ti.ico" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/hojacssdeestilos.css" />
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
        
        <form method="post" action="Editaradministrativoservlet">
            <h2>Editar Administrativo</h2>
            <table>
            	 <tr>
                    <td><label for="rut">RUT del Administrativo: </label></td>
                    <td><input type="text" name="rut" readonly="readonly" value="<c:out value="${myprofe.getRut()}"/>"/></td>
                </tr>

                <tr>

                    <td><label for="nombre">Nombre: </label></td>
                    <td><input type="text" name="nombre" readonly="readonly" value="<c:out value="${myprofe.getNombre()}"/>" /></td>
                </tr>

                <tr>
                    <td><label for="apellidos">Apellidos: </label></td>
                    <td> <input type="text" name="apellidos" readonly="readonly" value="<c:out value="${myprofe.getApellidos()}"/>" /></td>
                </tr>
                <tr>
                    <td><label for="correo">Correo: </label></td>
                    <td><input type="text" name="correo" value="<c:out value="${myprofe.getCorreo()}"/>" /></td>
                </tr>
                <tr>
                    <td><label for="area">Area: </label></td>
                    <td><input type="text" name="area" value="<c:out value="${myprofe.getArea()}"/>" /></td>
                </tr>

  
                <tr>
                    <td><input type="submit" value="Editar" /></td>
                    <td><input type="reset" value="Limpiar Formulario" /></td>
                </tr>
                
              </table>
        </form>
        
        
        <a href="${pageContext.request.contextPath}/Administrativoservlet">Volver al listado de Administrativo</a>
        
        
    </div>




</body>

</html>