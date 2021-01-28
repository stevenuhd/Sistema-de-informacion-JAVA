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
    <link rel="stylesheet" href="hojacssdeestilos.css" />
</head>

<body>
    <div class="header">
        <h1>Plataforma de registro de Usuarios.</h1>
    </div>    
    <hr/>
    <!---Menu---->
        <div class="row col-3 col-s-3 menu">
            <h4>Menu de inicio:</h4>
            <ul>
            <li><a href="<%= request.getContextPath() %>/home" style="color:red;" title="Inicio">Inicio</a></li>
            <li><a href="<%= request.getContextPath() %>/contacto" style="color:red;">Contacto</a></li>
            <li><a href="<%= request.getContextPath() %>/crearcapa" style="color:red;">Crear Capacitación</a></li>
            <li><a href="<%= request.getContextPath() %>/crearpag" style="color:white;">Crear Pago</a></li>
            <li><a href="<%= request.getContextPath() %>/home" style="color:white;">Crear Usuario</a></li>
            <li><a href="<%= request.getContextPath() %>/listarcapas" style="color:red;">Listado Capacitaciones</a></li>
            <li><a href="<%= request.getContextPath() %>/home" style="color:white;">Listado usuario</a></li>
            <li><a href="<%= request.getContextPath() %>/listarasesorias" style="color:white;">Listado Asesoria</a></li>
            <li><a href="<%= request.getContextPath() %>/listarpagos" style="color:white;">Listado Pagos</a></li>
            <li><a href="<%= request.getContextPath() %>/listarvisitas" style="color:white;">Listado Visitas</a></li>
            <li><a href="<%= request.getContextPath() %>/home" style="color:white;">Reportes</a></li>
            <li><a href="<%= request.getContextPath() %>/home" style="color:white;">Listado Accidentes</a></li>
            <li><a href="<%= request.getContextPath() %>/home" style="color:white;">Administrar Asistentes</a></li>
	        <li><a href="loginservlet" style="color:white;">Login de acceso</a></li>		
            </ul>

        </div>

    <!--formulario crear capacitacion-->
    
    <div class="col-9 col-s-9" id="tableRegistro">
        
        <form method="post" action="crearcapacitacionesservlet">
            <h2>Crear Cliente</h2>
            <table>
            	 <tr>

                    <td><label for="rutclte">RUT CLIENTE: </label></td>
                    <td><input type="text" name="rutclte" placeholder="...." /></td>
                </tr>

                <tr>

                    <td><label for="nombres">NOMBRES: </label></td>
                    <td><input type="text" name="nombres" placeholder="dd-mm-aaaa..." /></td>
                </tr>

                <tr>
                    <td><label for="apellido">APELLIDOS: </label></td>
                    <td> <input type="text" name="apellido" placeholder="Hora hh:mm..." /></td>
                </tr>
                <tr>
                    <td><label for="fono">TELEFONO: </label></td>
                    <td><input type="text" name="fono" placeholder="Escriba el lugar..." /></td>
                </tr>
                <tr>
                    <td><label for="afp">AFP: </label></td>
                    <td><input type="text" name="afp" placeholder="Escriba la duracion en minutos..." /></td>
                </tr>
                <tr>
                    <td><label for="sistsalud">SISTEMA DE SALUD: </label></td>
                    <td><input type="text" name="sistsalud" placeholder="Escriba su nombre..." /></td>
                </tr>
                
                <tr>
                    <td><label for="direccion">DIRECCION: </label></td>
                    <td><input type="text" name="direccion" placeholder="Escriba su nombre..." /></td>
                </tr>
                <tr>
                    <td><label for="comuna">COMUNA: </label></td>
                    <td><input type="text" name="comuna" placeholder="Escriba su nombre..." /></td>
                </tr>
                <tr>
                    <td><label for="edad">EDAD: </label></td>
                    <td><input type="text" name="edad" placeholder="Escriba su nombre..." /></td>
                </tr>

                <tr>
                    <td><input type="submit" value="Registrar Cliente" /></td>
                    <td><input type="reset" value="Limpiar Formulario" /></td>
                </tr>
                
              </table>
        </form>
    </div>




</body>

</html>