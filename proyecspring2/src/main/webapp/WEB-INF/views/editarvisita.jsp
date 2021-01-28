<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/hojacssdeestilos.css"/>
  <script type="text/javascript" src="<%= request.getContextPath() %>resources/js/funciones.js"></script>
    <title>Sistema de Información</title>
    
   
    <link rel="icon" type="image/png"
    href="C:\Users\juani\Documents\JAVA desarrollo web\modulo 3 desarrollo web\Clase 1\Ejercicio grupal 1\ti.ico" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>resources/css/hojacssdeestilos.css" />
    
    
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker({
      changeMonth: true,
      changeYear: true
    });
  } );
  </script>
  <script>
 $.datepicker.regional['es'] = {
 closeText: 'Cerrar',
 prevText: '< Ant',
 nextText: 'Sig >',
 currentText: 'Hoy',
 monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
 monthNamesShort: ['Ene','Feb','Mar','Abr', 'May','Jun','Jul','Ago','Sep', 'Oct','Nov','Dic'],
 dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
 dayNamesShort: ['Dom','Lun','Mar','Mié','Juv','Vie','Sáb'],
 dayNamesMin: ['Do','Lu','Ma','Mi','Ju','Vi','Sá'],
 weekHeader: 'Sm',
 dateFormat: 'dd/mm/yy',
 firstDay: 1,
 isRTL: false,
 showMonthAfterYear: false,
 yearSuffix: ''
 };
 $.datepicker.setDefaults($.datepicker.regional['es']);
$(function () {
$("#fecha").datepicker();
});
</script>
    
    
</head>

<body>
    <div class="header">
        <h1>Plataforma de registro de Visita.</h1>
    </div>    
    <hr/>

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


    <!--formulario editar visita-->
    
    <div class="col-9 col-s-9" id="tableRegistro">

        <form method="post" action="<%= request.getContextPath() %>/procesareditarvisita">
            <h2>Editar Visita</h2>
            <table>
            	 <tr>
                    <td><label for="idvisita">ID Visita: </label></td>
                    <td><input type="text" name="idvisita" readonly="readonly" value="<c:out value="${editavis.getIdvisita()}"/>" /></td>
                </tr>

                <tr>

                    <td><label for="visfecha">Fecha: </label></td>
                    <td><input type="text" name="visfecha" id="datepicker" value="<c:out value="${editavis.getVisfecha()}"/>" /></td>
                </tr>

                <tr>
                    <td><label for="vishora">Hora: </label></td>
                    <td> <input type="text" name="vishora" value="<c:out value="${editavis.getVishora()}"/>" /></td>
                </tr>
                <tr>
                    <td><label for="vislugar">Lugar: </label></td>
                    <td><input type="text" name="vislugar" value="<c:out value="${editavis.getVislugar()}"/>" /></td>
                </tr>
                <tr>
                    <td><label for="viscomentarios">Comentarios: </label></td>
                    <td><input type="text" name="viscomentarios" value="<c:out value="${editavis.getViscomentarios()}"/>" /></td>
                </tr>
                <tr>
                    <td><label for="cliente_rutcliente">RUT Cliente: </label></td>
                    <td><select name="cliente_rutcliente"> <c:forEach items="${lstrut}" var="ru">
                    <option selected disabled hidden=>${editavis.getCliente_rutcliente()}</option>
				    <option ><c:out value="${ru.getRutcliente()}"/></option>
                    </c:forEach></select>
<%--                     <td><input type="text" name="cliente_rutcliente" value="<c:out value="${editavis.getCliente_rutcliente()}"/>" /></td> --%>
                </tr>

                <tr>
                    <td><input type="submit" value="Editar Visita" /></td>
                    <td><input type="reset" value="Limpiar Formulario" /></td>
                </tr>
                
              </table>
        </form>
                
        <a href="${pageContext.request.contextPath}/listarvisitas">Volver al Listado de Visitas</a>
        <br>
        <a href="${pageContext.request.contextPath}/">Volver a Home</a>
        
    </div>

</body>

</html>