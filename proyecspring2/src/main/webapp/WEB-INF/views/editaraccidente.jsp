<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/hojacssdeestilos.css"/>
  <script type="text/javascript" src="<%= request.getContextPath() %>resources/js/funciones.js"></script>
    <title>Editar Asesorias</title>
  


        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

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
        <h1>Plataforma de registro de Usuarios.</h1>
    </div>    
    <hr/>
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
          
            <li><a href="<%= request.getContextPath() %>/creartipousuario" style="color:white;">Crear Usuario</a></li>
            <li><a href="<%= request.getContextPath() %>/listarvistausuario" style="color:white;">Listado usuario</a></li>
   			<li><a href="<%= request.getContextPath() %>/logout" style="color:white;">Logout</a></li>	
        </ul>
        </div>   

    <!--formulario crear capacitacion-->
    
    <div class="col-9 col-s-9" id="tableRegistro2">
        
        <form method="post" action="<%= request.getContextPath() %>/procesareditaraccidente">
            <h2>Editar Asesorias</h2>
            <table>
            	 <tr>

                    <td><label for="idaccidente">ID Accidente: </label></td>
                    <td><input type="text" name="idaccidente" value= '<c:out value="${editacc.getIdaccidente()}"/>' placeholder="...."  /></td>
                </tr>

                <tr>

                    <td><label for="accifecha">Fecha de Accidente: </label></td>
                    <td><input type="text" name="accifecha" id="datepicker" value= '<c:out value="${editacc.getFecha()}"/>' /></td>
                </tr>

                <tr>
                    <td><label for="accihora">Hora del Accidente: </label></td>
                    <td> <input type="text" name="accihora" value= '<c:out value="${editacc.getHora()}"/>' placeholder="" /></td>
                </tr>
                <tr>
                    <td><label for="accilugar">Lugar del Accidente: </label></td>
                    <td> <input type="text" name="accilugar" value= '<c:out value="${editacc.getLugar()}"/>' placeholder="" /></td>
                </tr>
                <tr>
                    <td><label for="acciorigen">Origen del Accidente: </label></td>
                    <td> <input type="text" name="acciorigen" value= '<c:out value="${editacc.getOrigen()}"/>' placeholder="" /></td>
                </tr>
                
               <tr>
                    <td><label for="accisecuencias">Consecuencias del Accidente: </label></td>
                    <td> <input type="text" name="accisecuencias" value= '<c:out value="${editacc.getConsecuencias()}"/>' placeholder="" /></td>
                </tr>
                
                <tr>
                    <td><label for="ruta">RUT Cliente: </label></td>
                      <td><select name="ruta"> <c:forEach items="${lstrut}" var="ru">
                    <option selected disabled hidden=>${editacc.getRutacc()}</option>

                    <option ><c:out value="${ru.getRutcliente()}"/></option>
                    </c:forEach></select>
<%--                     <td><input type="text" name="rut" value= '<c:out value="${editacc.getRutacc()}"/>'placeholder="Escriba su rut..." /></td> --%>
                </tr>

                <tr>
                    <td><input type="submit" value="Editar" /></td>
                    <td><input type="reset" value="Limpiar Formulario" /></td>
                </tr>
                
              </table>
        </form>
    </div>




</body>

</html>