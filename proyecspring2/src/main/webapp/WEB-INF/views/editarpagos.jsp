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
    <title>Editar Pagos</title>

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

    <!--formulario editar pagos-->
    
    <div class="col-9 col-s-9" id="tableRegistro">
        
        <form method="post" action="<%= request.getContextPath() %>/procesareditarpagos">
            <h2>Editar Pagos</h2>
            <table>
            	 <tr>

                    <td><label for="idpago">ID Pago: </label></td>
                    <td><input type="text" name="idpago" value='<c:out value="${mipago.getIdpago()}"/>' readonly/></td>
                </tr>

                <tr>

                    <td><label for="fechapago">Fecha del Pago: </label></td>
                    <td><input type="text" name="fechapago" id="datepicker" value='<c:out value="${mipago.getFechadepago()}"/>' /></td>
                </tr>

                <tr>
                    <td><label for="montopago">Monto: </label></td>
                    <td> <input type="text" name="montopago" value='<c:out value="${mipago.getMontodepago()}"/>'/></td>
                </tr>
                <tr>
                    <td><label for="mespago">Mes del Pago: </label></td>
                    <td><input type="text" name="mespago" value='<c:out value="${mipago.getMesdepago()}"/>' /></td>
                </tr>
                <tr>
                    <td><label for="aniopago">Año del Pago: </label></td>
                    <td><input type="text" name="aniopago" value='<c:out value="${mipago.getAniodepago()}"/>'/></td>
                </tr>
                <tr>
                    <td><label for="rutcliente">RUT del Cliente: </label></td>
                       <td><select name="rutcliente"> <c:forEach items="${lstrut}" var="ru">
                    <option selected disabled hidden=>${mipago.getPagrutclte()}</option>
                    <option ><c:out value="${ru.getRutcliente()}"/></option>
                    </c:forEach></select>
                    
<%--                     <td><input type="text" name="rutcliente" value='<c:out value="${mipago.getPagrutclte()}"/>'/></td> --%>
                </tr>
                
                <tr>
                    <td><input type="submit" value="Registrar Pago" /></td>
                    <td><input type="reset" value="Limpiar Formulario" /></td>
                </tr>
                
              </table>
        </form>
    </div>




</body>

</html>