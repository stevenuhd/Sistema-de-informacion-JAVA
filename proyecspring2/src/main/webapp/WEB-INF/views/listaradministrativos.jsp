<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <script type="text/javascript" src="<%= request.getContextPath() %>resources/js/funciones.js"></script>
    <title>Listado de Administrativos</title>
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

    <div class="row col-9 col-s-9">

        <form>
            <h1>Listado de Administrativos</h1>

           <table id="tblistarventas" border="1">
            <thead>
                <tr>
                    <th colspan="6">Administrativos</th>
                </tr>
                
                <tr>
                    <th>RUT DEL ADMINISTRATIVO</th>
					<th>NOMBRE</th>
					<th>APELLIDOS</th>
					<th>CORREO</th>
					<th>AREA</th>
					<th>ELIMINAR/ EDITAR</th>
					
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${listaadmi}" var="admi">
					<tr>
						<td><c:out value="${admi.getRut()}" /></td>
						<td><c:out value="${admi.getNombre()}" /></td>
						<td><c:out value="${admi.getApellidos()}" /></td>
						<td><c:out value="${admi.getCorreo()}" /></td>
						<td><c:out value="${admi.getArea()}" /></td>
						<td>
							<a href="<%= request.getContextPath() %>/eliminaradmi/ad=<c:out value="${admi.getRut()}" />">Eliminar</a>
							&nbsp;|&nbsp;
							<a href="<%= request.getContextPath() %>/editaradmi/<c:out value="${admi.getRut()}" />">Editar</a>
						</td>	
					</tr>
				</c:forEach>

				</tbody>
            </table>

        </form>
        <a class="Listalink" href='crearadmi'>Crear Administrativo</a>
    </div>
</body>

</html>