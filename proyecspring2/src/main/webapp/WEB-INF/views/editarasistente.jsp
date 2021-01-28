<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="resources/css/hojacssdeestilos.css"/>
  <script type="text/javascript" src="<%= request.getContextPath() %>resources/js/funciones.js"></script>
<meta charset="ISO-8859-1">
<title>Editar Asistentes.</title>
</head>
<body>

<!---Menu---->    
        <div class="col-3 col-s-3 menu">
        <ul>
        	
             <li><a href="<%= request.getContextPath() %>/homecliente" style="color:white;" title="Inicio">Inicio</a></li>
            <li><a href="<%= request.getContextPath() %>/Linkcontacto" style="color:white;">Contacto</a></li>
            <li><a href="<%= request.getContextPath() %>/listarasistentes" style="color:white;">Administrar Asistentes</a></li>
            <li><a href="<%= request.getContextPath() %>/crearasist" style="color:white;">Crear Asistentes</a></li>
            
            <li><a href="<%= request.getContextPath() %>/listaraccidente" style="color:white;">Administrar Accidentes</a></li>
            <li><a href="<%= request.getContextPath() %>/crearaccidente" style="color:white;">Ingresar Accidentes</a></li>
            
            <li><a href="<%= request.getContextPath() %>/listarcapas" style="color:white;">Administrar Capacitaciones</a></li>        
            <li><a href="<%= request.getContextPath() %>/crearcapa" style="color:white;">Crear Capacitación</a></li>
          
            <li><a href="<%= request.getContextPath() %>/creartipousuario" style="color:white;">Crear Usuario</a></li>
            <li><a href="<%= request.getContextPath() %>/listarvistausuario" style="color:white;">Listado usuario</a></li>
   			<li><a href="<%= request.getContextPath() %>/logout" style="color:white;">Logout</a></li>		
        </ul>
        </div>   




		<%-- <h1>Editar Capacitaciones</h1>
		<form method="post" action="http://localhost:8181/m5negocio/procesareditar">
			ID: <input type="text" name="txtidventa" id="txtidventa" value='<c:out value="${myvnt.getIdventa()}" />' readonly /><br/>
			Fecha: <input type="text" name="txtfecha" id="txtfecha" value='<c:out value="${myvnt.getFecha()}" />' /><br/>
			Vendedor: <input type="text" name="txtvendedor" id="txtvendedor" value='<c:out value="${myvnt.getVendedor()}" />' /><br/>
			Monto: <input type="text" name="txtmonto" id="txtmonto" value='<c:out value="${myvnt.getMonto()}" />' /><br/>
			<input type="submit" value="Editar venta" /><br/>
		</form>	
		<br/>
		<a href="http://localhost:8636/spring/listarcapas">Volver al listado de Capacitaciones</a>	 --%>
		
		<div class="col-9 col-s-9" id="tableRegistro">
        
        <form method="post" action="<%= request.getContextPath() %>/procesareditarasist">
            <h1>Editar Asistentes.</h1>
            <table>
            	 <tr>
                    <td><label for="idasistente">ID Asistentes: </label></td>
                    <td><input type="text" name="idasistente" value='<c:out value="${myasist.getIdasistente()}" />' readonly="readonly" /></td>
                </tr>

                <tr>
                    <td><label for="nombres">Nombres: </label></td>
                    <td><input type="text" name="nombres" value='<c:out value="${myasist.getNombres()}" />' /></td>
                </tr>

                <tr>
                    <td><label for="edad">Edad: </label></td>
                    <td> <input type="text" name="edad" value='<c:out value="${myasist.getEdad()}" />' /></td>
                </tr>
                
                <tr>
                    <td><label for="capacitacion_idcapacitacion">ID Capacitacion: </label></td>
                    <td><input type="text" name="capacitacion_idcapacitacion" value='<c:out value="${myasist.getCapacitacion_idcapacitacion()}" />' /></td>
                </tr>
              
                <tr>
                    <td><input type="submit" value="Editar" /></td>
                </tr>
                
              </table>
        </form>
        
        <a href="${pageContext.request.contextPath}/listarasistentes">Volver al Listado de Asistentes.</a>
        <br>
        <a href="${pageContext.request.contextPath}/">Volver a Home</a>
        
    </div>	

</body>
</html>