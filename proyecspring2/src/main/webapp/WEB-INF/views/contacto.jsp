<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <script type="text/javascript" src="<%= request.getContextPath() %>resources/js/funciones.js"></script>
    <title>Contacto</title>
    <link rel="stylesheet" href="hojacssdeestilos.css" />
    <link rel="icon" type="image/png"
        href="C:\Users\juani\Documents\JAVA desarrollo web\modulo 3 desarrollo web\Clase 1\Ejercicio grupal 1\ti.ico" />
    <link rel="stylesheet" href="resources/css/hojacssdeestilos.css"/>
</head>

<body>

<p>Sesion de Usuario: "${nombresesion}" </p>  <a href="Contactocontrolador">cerrar sesion</a>
    <div class="header">
        <h1>Plataforma de Registro</h1>
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

    <!----Registro de usuarios formulario--->

    <div class="row col-9 col-s-9" id="tableRegistro">
        
        
        <form method="post" action="Linkcrearcont">
            <h2>Contacto</h2>
            <table>

                <tr>

                    <td><label for="nombre">Nombre:</label></td>
                    <td><input type="text" name="nombre" placeholder="Escriba su nombre..." /></td>
                </tr>

                <tr>
                    <td><label for="apellidop">Apellido Paterno:</label></td>
                    <td><input type="text" name="apellidop" placeholder="Escriba su apellido Paterno..." /></td>

                <tr>
                    <td><label for="apellidom">Apellido Materno:</label></td>
                    <td><input type="text" name="apellidom" placeholder="Escriba su apellido Materno..." /></td>
                </tr>

 				 <tr>
                    <td><label for="telefono">Telefono:</label></td>
                    <td><input type="text" name="telefono" placeholder="+569-xxxxxxxx" /></td>
                </tr>

                <tr>
                    <td><label for="email">Correo Electronico:</label></td>
                    <td><input type="email" name="email" id="email" placeholder="Escriba su correo electronico..."
                            required /></td>
                </tr>

                <tr>
                    <td><label for="comentarios">Comentarios</label></td>
                    <td><textarea name="comentarios" name="comentarios" placeholder="Escribe tu Sugerencia aca..."
                            maxlength="100"></textarea></td>
                </tr>

                <tr>
                    <td><label for="tipo">Tipo de Usuario</label><br></td>
                    <td> <select name="tipo">
                            <option value="cliente">Cliente</option>
                            <option value="profesional">Profesional</option>
                            <option value="administrativo">Administrativo</option>
                        </select></td>
                </tr>

                <tr>
                    <td><input type="submit" value="Registrar usuario" /></td>
                </tr>
            </table>
        </form>

    </div>



</body>

</html>