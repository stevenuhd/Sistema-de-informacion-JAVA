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

		<%-- <h1>Editar Profesional</h1>
		<form method="post" action="http://localhost:8081/spring/procesareditar">
			Rut: <input type="text" name="rutprofe" id="rutprofe" value='<c:out value="${myprof.getIdrut()}" />' readonly /><br/>
			Nombre: <input type="text" name="nombre" id="nombre" value='<c:out value="${myprof.getnombre()}" />' /><br/>
			Apellidos: <input type="text" name="txtapellidos" id="txtapellidos" value='<c:out value="${myprof.getApellidos()}" />' /><br/>
			Telefono: <input type="text" name="txttelefono" id="txttelefono" value='<c:out value="${myprof.gettelefono()}" />' /><br/>
			Titulo: <input type="text" name="txttitulo" id="txttitulo" value='<c:out value="${myprof.gettitulo()}" />' /><br/>
			Proyecto: <input type="text" name="txtproyecto" id="txtproyecto" value='<c:out value="${myprof.getproyecto()}" />' /><br/>
			<input type="submit" value="Editar Profesional" /><br/>
		</form>	
		<br/>
		<a href="http://localhost:8081/spring/listarprofe">Volver al listado de Profesional</a>	 --%>
		
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
        
        <form method="post" action="<%= request.getContextPath() %>/procesareditarprof">
            <h2>Editar Profesional</h2>
            <table>
            	 <tr>
                    <td><label for="rutprof">RUT del Profesional: </label></td>
                    <td><input type="text" name="rutprof"  value="<c:out value="${prof.getRut()}"/>"/></td>
                </tr>

                <tr>

                    <td><label for="nombre">Nombre: </label></td>
                    <td><input type="text" name="nombre" value="<c:out value="${prof.getNombre()}"/>" /></td>
                </tr>

                <tr>
                    <td><label for="apellidos">Apellidos: </label></td>
                    <td> <input type="text" name="apellidos" value="<c:out value="${prof.getApellidos()}"/>" /></td>
                </tr>
                <tr>
                    <td><label for="telefono">Telefono: </label></td>
                    <td><input type="text" name="telefono" value="<c:out value="${prof.getTelefono()}"/>" /></td>
                </tr>
                <tr>
                    <td><label for="titulo">Título: </label></td>
                    <td><input type="text" name="titulo" value="<c:out value="${prof.getTitulo()}"/>" /></td>
                </tr>
                <tr>
                    <td><label for="proyecto">Proyecto: </label></td>
                    <td><input type="text" name="proyecto" value="<c:out value="${prof.getProyecto()}"/>" /></td>
                </tr>

                <tr>
                    <td><input type="submit" value="Editar Profesional" /></td>
                    <td><input type="reset" value="Limpiar Formulario" /></td>
                </tr>
                
              </table>
        </form>
        
        
        <a href="${pageContext.request.contextPath}/listarprofesional">Volver al Listado de Profesionales</a>
       
        
        
    </div>




</body>

</html>