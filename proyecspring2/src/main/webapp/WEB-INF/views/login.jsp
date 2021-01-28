<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<title>Iniciar Sesion</title>
		<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/hojacssdeestilos.css"/>
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
	
	
	 
	 <%
	 String error = (String) request.getAttribute("error");
	 if (error != null && error.equals("true"))
	 {
		 out.println("<h4 style=\"color:red\">Invalid login credentials. Please try again!!</h4>");
	 }
	 %>
<!-- 	 <div class="col-6 col-s-9 sec1"> -->
<!-- 	 <div class="login"> -->
<!-- 	 <div class="login-screen"> -->
	 <form name='loginForm' action="<c:url value='login' />" method='POST'>
	
		 <table>
			 <tr>
				 <td>Usuario:</td>
				 <td><input type='text' name='username' value=''></td>
			 </tr>
			 <tr>
				 <td>Contraseña:</td>
				 <td><input type='password' name='password' /></td>
			 </tr>
			 <tr>
				 <td><input name="submit" type="submit" value="Ingresar" /></td>
				 <td><input name="reset" type="reset" /> <input type="hidden"
				 name="${_csrf.parameterName}" value="${_csrf.token}" /></td>		
			 </tr>
		 </table>
	 </form>
<!-- 	 </div> -->
<!-- 	 </div> -->
<!-- 	 </div> -->
	</body>
</html>
 