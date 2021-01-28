<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <script type="text/javascript" src="<%= request.getContextPath() %>resources/js/funciones.js"></script>
    <title>Listado de Visitas</title>
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
        <h1>Plataforma de registro de Visitas.</h1>
    </div>
    <hr />
<!---Menu---->    
        <div class="col-3 col-s-3 menu">
        <h2 class="perfil">Profesional</h2>
        <ul>
        	
           <li><a href="<%= request.getContextPath() %>/homeprofesional" style="color:white;" title="Inicio">Inicio</a></li>
            <li><a href="<%= request.getContextPath() %>/Linkcontacto" style="color:white;">Contacto</a></li>
            
            <li><a href="<%= request.getContextPath() %>/listarvisitas" style="color:white;">Administar Visitas</a></li>
            <li><a href="<%= request.getContextPath() %>/crearvisita" style="color:white;">Ingreso Visitas</a></li>
            
            <li><a href="<%= request.getContextPath() %>/listarasesorias" style="color:white;">Administrar Asesoria</a></li>
            <li><a href="<%= request.getContextPath() %>/crearasesorias" style="color:white;">Creación Asesoria</a></li>    
              
            <li><a href="<%= request.getContextPath() %>/reportes" style="color:white;">Reportes</a></li>  
          
	        <li><a href="<%= request.getContextPath() %>/logout" style="color:white;">Logout</a></li>	
        </ul>
        </div>   

    <div class="row col-9 col-s-9">

        <form>
            <h1>Listado de Visitas</h1>

            <table id='tblistarventas' class='display' style='width:100%' border="1">
                <thead>
                <tr>
                    <th>ID VISITA</th>
					<th>FECHA</th>
					<th>HORA</th>
					<th>LUGAR</th>
					<th>COMENTARIOS</th>
					<th>RUT CLIENTE</th>
					<th>ELIMINAR/EDITAR</th>
					
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${listavis}" var="vis">
					<tr>
						<td><c:out value="${vis.getIdvisita()}" /></td>
						<td><c:out value="${vis.getVisfecha()}" /></td>
						<td><c:out value="${vis.getVishora()}" /></td>
						<td><c:out value="${vis.getVislugar()}" /></td>
						<td><c:out value="${vis.getViscomentarios()}" /></td>
						<td><c:out value="${vis.getCliente_rutcliente()}" /></td>
						<td>
							<!-- <a href="Eliminarvisitaservlet?id=<c:out value="${vis.getIdvisita()}" />">Eliminar</a> -->
							<a href="eliminarvisita/<c:out value="${vis.getIdvisita()}"></c:out>">Eliminar</a>
							&nbsp;|&nbsp;
							<a href="editarvisita/<c:out value="${vis.getIdvisita()}"></c:out>">Editar</a>
						</td>	
					</tr>
				</c:forEach>

				</tbody>
            </table>

        </form>
        
        <br/>
		<a href='crearvisita'>Crear Visita</a>
		
		<a class="finalink" href="${pageContext.request.contextPath}/">Volver a index</a>
         
    </div>
</body>

</html>