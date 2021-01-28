                          <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <script type="text/javascript" src="<%= request.getContextPath() %>resources/js/funciones.js"></script>
    <title>Listado de Profesionales</title>
    <link rel="icon" type="image/png"
        href="C:\Users\juani\Documents\JAVA desarrollo web\modulo 3 desarrollo web\Clase 1\Ejercicio grupal 1\ti.ico" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/hojacssdeestilos.css" />
    <link rel="stylesheet" href="http://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="http://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
    <script>

        $(document).ready(function () {
            $('#tblistarventas').DataTable({
                language: {
                    url: 'https://cdn.datatables.net/plug-ins/1.10.22/i18n/Spanish.json'
                }
            });
        });

    </script>
</head>

<body>
    <div class="header">
        <h1>Plataforma de registro de Usuarios.</h1>
    </div>
    <hr />
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

    <div class="row col-9 col-s-9">

        <form>
            <h1>Listado de Profesionales</h1>

            <table  id='tblistarventas' class='display' style='width:100%' border="1">
                <thead>
                <tr>
                    <th>RUT PROFESIONAL</th>
					<th>NOMBRE</th>
					<th>APELLIDOS</th>
					<th>TELEFONO</th>
					<th>TITULO</th>
					<th>PROYECTO</th>
					<th>ELIMINAR/ EDITAR</th>
					
					
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${listaprofe}" var="profe">
					<tr>
						<td><c:out value="${profe.getRut()}" /></td>
						<td><c:out value="${profe.getNombre()}" /></td>
						<td><c:out value="${profe.getApellidos()}" /></td>
						<td><c:out value="${profe.getTelefono()}" /></td>
						<td><c:out value="${profe.getTitulo()}" /></td>
						<td><c:out value="${profe.getProyecto()}" /></td>
						<td>
									<a href="eliminarprofe/<c:out value="${profe.getRut()}" />">Eliminar</a>
							&nbsp;|&nbsp;
							<a href="editarprofe/<c:out value="${profe.getRut()}" />">Editar</a>
						</td>	
					</tr>
				</c:forEach>

				</tbody>
            </table>

        </form>
        
        <br/>
		<a class="Listalink" href='crearprofe'>Crear Profesional</a>
        
        
    </div>
</body>

</html>
						
						
						
						
						
						
						
						
						
						
						
						
	
					