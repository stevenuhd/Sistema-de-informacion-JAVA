<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <script type="text/javascript" src="<%= request.getContextPath() %>resources/js/funciones.js"></script>
    <title>Listado de Asistentes.</title>
    <link rel="icon" type="image/png"
        href="C:\Users\juani\Documents\JAVA desarrollo web\modulo 3 desarrollo web\Clase 1\Ejercicio grupal 1\ti.ico" />
    <link rel="stylesheet" href="resources/css/hojacssdeestilos.css" />
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
         <h2 class="perfil">Cliente</h2>
        <ul>
        	
          	<li><a href="<%= request.getContextPath() %>/home" style="color:white;" title="Inicio">Inicio</a></li>
            <li><a href="<%= request.getContextPath() %>/Linkcontacto" style="color:white;">Contacto</a></li>
            <li><a href="<%= request.getContextPath() %>/crearusuario" style="color:white;">Crear Usuario</a></li>
             <li><a href="<%= request.getContextPath() %>/homecliente" style="color:white;">Espacio Cliente</a></li>
            <li><a href="<%= request.getContextPath() %>/homeadministrativo" style="color:white;">Espacio Administrativo</a></li>
            <li><a href="<%= request.getContextPath() %>/homeprofesional" style="color:white;">Espacio Profesional</a></li>
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

    <div class="row col-9 col-s-9">

        <form id="form1" method="post" action="#">
            <h1>Listado de Asistentes.</h1>

            <table id='tblistarventas' class='display' style='width:100%' border="1">
                <thead>
                <tr>
                    <th>ID ASISTENTES</th>
					<th>NOMBRES</th>
					<th>EDAD</th>
					<th>ID CAPACITACION</th>
				
					
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${listaasist}" var="asist">
					<tr>
						<td><c:out value="${asist.getIdasistente()}" /></td>
						<td><c:out value="${asist.getNombres()}" /></td>
						<td><c:out value="${asist.getEdad()}" /></td>
						<td><c:out value="${asist.getCapacitacion_idcapacitacion()}" /></td>
						
					</tr>
				</c:forEach>
				</tbody>
				
            </table>

        </form>
        
      
        
    </div>
</body>

</html>