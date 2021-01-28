<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear Usuario</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/hojacssdeestilos.css"/>
    <link rel="stylesheet" href="hojacssdeestilos.css"/>
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
            <li><a href="<%= request.getContextPath() %>/listarvistausuario" style="color:white;">Listado Usuario</a></li>
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

   

   <form method="post" action="listartipo">
    <h2>listar el tipo de Usuario</h2>
  
       <p>
        <label for="tipo">Tipo de usuario</label> <br/>
        <select name="tipo">
            <option value="cliente">Cliente</option>
            <option value="profesional">Profesional</option>
            <option value="administrativo">Administrativo</option>
            <option value="usuario">usuario</option>
        </select>
        </p>
       <input class="Listalink" type="submit" value="Ir a lista del tipo de Usuario"/>
       

   </form>
</div>

    
</body>
</html>