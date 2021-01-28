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
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/hojacssdeestilos.css"/>
</head>

<body>
    <div class="header">
        <h1>Plataforma de registro de Usuarios.</h1>
    </div>    
    <hr/>
<!---Menu---->    
        <div class="col-3 col-s-3 menu">
        <h2 class="perfil">Administrativo</h2>
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
        <!-- <form method="post" action="procesareditarcliente"> -->  <!-- No sé x k no funca -->
        <form method="post" action="<%= request.getContextPath() %>/procesareditarcliente">
            <h2>Editar Cliente</h2>
            <table>
            	 <tr>
                    <td><label for="rut">RUT del Cliente: </label></td>
                    <td><input type="text" name="rutcliente" readonly="readonly" value="<c:out value="${editacli.getRutcliente()}"/>" readonly /></td>
                </tr>

                <tr>

                    <td><label for="nombre">Nombres: </label></td>
                    <td><input type="text" name="nombres" value="<c:out value="${editacli.getNombres()}"/>" /></td>
                </tr>

                <tr>
                    <td><label for="apellido">Apellidos: </label></td>
                    <td> <input type="text" name="apellidos" value="<c:out value="${editacli.getApellidos()}"/>" /></td>
                </tr>
                <tr>
                    <td><label for="telefono">Telefono: </label></td>
                    <td><input type="text" name="telefono" value="<c:out value="${editacli.getTelefono()}"/>" /></td>
                </tr>
                <tr>
                    <td><label for="afp">AFP: </label></td>
                    <td><input type="text" name="afp" value="<c:out value="${editacli.getAfp()}"/>" /></td>
                </tr>
                <tr>
                    <td><label for="sistsalud">Sistema de Salud: </label></td>
                    <td><input type="text" name="sistemasalud" value="<c:out value="${editacli.getSistemasalud()}"/>" /></td>
                </tr>
                
                <tr>
                    <td><label for="direccion">Dirección: </label></td>
                    <td><input type="text" name="direccion" value="<c:out value="${editacli.getDireccion()}"/>" /></td>
                </tr>
                
                <tr>
                    <td><label for="comuna">Comuna: </label></td>
                    <td><input type="text" name="comuna" value="<c:out value="${editacli.getComuna()}"/>" /></td>
                </tr>
                 <tr>
                    <td><label for="edad">EDAD: </label></td>
                    <td><input type="text" name="edad" value="<c:out value="${editacli.getEdad()}"/>" /></td>
                </tr>

                <tr>
                    <td><input type="submit" value="Editar Cliente" /></td>
                    <td><input type="reset" value="Limpiar Formulario" /></td>
                </tr>
                
              </table>
        </form>
                
        <a href="${pageContext.request.contextPath}/listarclientes">Volver al Listado de Clientes</a>
        
    </div>

</body>

</html>