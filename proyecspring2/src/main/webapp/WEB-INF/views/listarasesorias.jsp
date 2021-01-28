<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <script type="text/javascript" src="<%= request.getContextPath() %>resources/js/funciones.js"></script>
    <title>Listado de Asesorias</title>
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

        <form id="form1" method="post" action="#">
            <h1>Listado de Asesorias</h1>

            <table id='tblistarventas' class='display' style='width:100%' border="1">
                <thead>
                <tr>
                    <th>IDASESORIAS</th>
					<th>FECHA ASESORIAS</th>
					<th>MOTIVO</th>
					<th>RUT PROFESIONAL</th>
					<th>ELIMINAR/ EDITAR</th>
					
					
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${listaasesorias}" var="aseso">
					<tr>
						<td><c:out value="${aseso.getIdaseso()}" /></td>
						<td><c:out value="${aseso.getFecha()}" /></td>
						<td><c:out value="${aseso.getMotivo()}" /></td>
						<td><c:out value="${aseso.getProfrut()}" /></td>
						<td>
							<a href='eliminarasesorias/<c:out value="${aseso.getIdaseso()}"/>'>Eliminar</a>
							&nbsp;| &nbsp;
							<a href='editarasesoria/<c:out value="${aseso.getIdaseso()}" />'>Editar</a>
						</td>	
					</tr>
				</c:forEach>
			   </tbody>

            </table>

        </form>
        
        <br/>
		<a class="Listalink" href='crearasesorias'>Crear Asesoria</a>
        
        
    </div>
</body>

</html>