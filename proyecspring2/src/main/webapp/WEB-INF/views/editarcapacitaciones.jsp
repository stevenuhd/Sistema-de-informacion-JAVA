<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/hojacssdeestilos.css"/>
  <script type="text/javascript" src="<%= request.getContextPath() %>resources/js/funciones.js"></script>
<meta charset="ISO-8859-1">
<title>Editar Capacitaciones</title>
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
<!---Menu---->    
        <div class="col-3 col-s-3 menu">
         <h2 class="perfil">Cliente</h2>
        <ul>
      		<li><a href="<%= request.getContextPath() %>/homecliente" style="color:white;" title="Inicio">Inicio</a></li>
            <li><a href="<%= request.getContextPath() %>/Linkcontacto" style="color:white;">Contacto</a></li>
            <li><a href="<%= request.getContextPath() %>/listarasistentes" style="color:white;">Administrar Asistentes</a></li>
            <li><a href="<%= request.getContextPath() %>/crearasist" style="color:white;">Crear Asistentes</a></li>
            
            <li><a href="<%= request.getContextPath() %>/listaraccidente" style="color:white;">Administrar Accidentes</a></li>
            <li><a href="<%= request.getContextPath() %>/crearaccidente" style="color:white;">Ingresar Accidentes</a></li>
            
            <li><a href="<%= request.getContextPath() %>/listarcapas" style="color:white;">Administrar Capacitaciones</a></li>        
            <li><a href="<%= request.getContextPath() %>/crearcapa" style="color:white;">Crear Capacitación</a></li>
          
      
   			<li><a href="<%= request.getContextPath() %>/logout" style="color:white;">Logout</a></li>			
        </ul>
        </div>   
		
		<div class="col-9 col-s-9" id="tableRegistro">
        
        <form method="post" action="<%= request.getContextPath() %>/procesareditar">
            <h1>Editar Capacitaciones</h1>
            <table>
            	 <tr>

                    <td><label for="idcapacitacion">ID Capacitacion: </label></td>
                    <td><input type="text" name="idcapacitacion" value='<c:out value="${mycapa.getIdcapa()}" />' readonly="readonly" /></td>
                </tr>

                <tr>

                    <td><label for="fechacapa">Fecha de Capacitación: </label></td>
                    <td><input type="text" name="fechacapa" id="datepicker" value='<c:out value="${mycapa.getDia()}" />' /></td>
                </tr>

                <tr>
                    <td><label for="horacapa">Hora de Capacitación: </label></td>
                    <td> <input type="text" name="horacapa" value='<c:out value="${mycapa.getHora()}" />' /></td>
                </tr>
                <tr>
                    <td><label for="lugar">Lugar: </label></td>
                    <td><input type="text" name="lugar" value='<c:out value="${mycapa.getLugar()}" />' /></td>
                </tr>
                <tr>
                    <td><label for="duracion">Duración: </label></td>
                    <td><input type="text" name="duracion" value='<c:out value="${mycapa.getDuracion()}" />' /></td>
                </tr>
                <tr>
                    <td><label for="cantasist">Cantidad de Asistentes: </label></td>
                    <td><input type="text" name="cantasist" value='<c:out value="${mycapa.getCantasist()}" />' /></td>
                </tr>
                
                <tr>
                    <td><label for="rut">RUT Cliente: </label></td>
                     <td><select name="rut"> <c:forEach items="${lstrut}" var="ru">
                    <option selected disabled hidden=>${mycapa.getRutclte()}</option>
<%-- 					<option value="${mycapa.getRutclte()}">cambio Rut</option> --%>
                    <option ><c:out value="${ru.getRutcliente()}"/></option>
                    </c:forEach></select>
                    <td><input type="text" name="rut" value='<c:out value="${mycapa.getRutclte()}" />' /></td>
                </tr>

                <tr>
                    <td><input type="submit" value="Editar" /></td>
 
                </tr>
                
              </table>
        </form>
    </div>	

</body>
</html>