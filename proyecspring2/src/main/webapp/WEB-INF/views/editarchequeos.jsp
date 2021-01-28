<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <script type="text/javascript" src="<%= request.getContextPath() %>resources/js/funciones.js"></script>
    <title>Editar Chequeos</title>
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
            <li><a href="<%= request.getContextPath() %>/listarvistausuario" style="color:white;">Administrar Usuarios</a></li>
            <li><a href="<%= request.getContextPath() %>/listarclientes" style="color:white;">Administrar Clientes</a></li>
            <li><a href="<%= request.getContextPath() %>/listarprofe" style="color:white;">Administar Profesionales</a></li>
            <li><a href="<%= request.getContextPath() %>/listadmin" style="color:white;">Administar Administrativos</a></li>
            
            <li><a href="<%= request.getContextPath() %>/listarpagos" style="color:white;">Listado Pagos</a></li>
            <li><a href="<%= request.getContextPath() %>/crearpag" style="color:white;">Crear Pagos</a></li>
            
            <li><a href="<%= request.getContextPath() %>/listarchequeo" style="color:white;">Listar Chequeos</a></li>
     		<li><a href="<%= request.getContextPath() %>/VistaCrearCheq" style="color:white;">Crear Chequeos</a></li>
     		
     		<li><a href="<%= request.getContextPath() %>/logout" style="color:white;">Logout</a></li>		
        </ul>
        </div>   

    <!--formulario crear capacitacion-->
    
    <div class="col-9 col-s-9" id="tableRegistro">
        
        <form method="post" action="<%= request.getContextPath() %>/procesareditarchequeo">
            <h2>Editar Chequeos</h2>
            <table>
            	 <tr>

                    <td><label for="idchequeo">ID Chequeo: </label></td>
                    <td><input type="text" name="idchequeo" value="${micheq.getIdchequeovisita()}" /></td>
                </tr>

                <tr>

                    <td><label for="estado">Situación: </label></td>
                    <td>
					<select name="estado">
					<option value="${micheq.getEstado()}">${micheq.getEstado()}</option>
					<option value="Se Cumple">Se Cumple</option>
					<option value="Se Cumple C/Obs">Se Cumple C/Obs</option>
					<option value="No se cumple">No se cumple</option>
					</select>
					</td>
                </tr>

                <tr>
               		 <td><label for="idvisita">Id Visita: </label></td>
                    <td><select name="idvisita"><c:forEach items="${lvis}" var="lv">
                    <option value="${micheq.getChequeovisita_idvisita()}">${micheq.getChequeovisita_idvisita()}</option>
                    <option value="<c:out value="${lv.getIdvisita()}"/>"><c:out value="${lv.getIdvisita()}"/></option>
                     </c:forEach></select>
                </tr>
                <tr>
                    <td><label for="nomcheq">Tipo de Chequeo: </label></td>
                    <td><input type="text" name="nomcheq" value="${micheq.getNombrechequeo()}" /></td>
                </tr>
                <tr>
             <!--   <td><label for="rutcliente">Rut Cliente: </label></td>
                    <td><select> <c:forEach items="${lstrut}" var="ru">
                    <option value="${micheq.getCliente_rutcliente()}">${micheq.getCliente_rutcliente()}</option>
                    <option ><c:out value="${ru.getCliente_rutcliente()}"/></option>
                    </c:forEach></select>-->
                 </tr>
               
                <tr>
                    <td><input type="submit" value="Registrar Chequeo" /></td>
                    <td><input type="reset" value="Limpiar Formulario" /></td>
                </tr>
                
              </table>
        </form>
    </div>




</body>

</html>