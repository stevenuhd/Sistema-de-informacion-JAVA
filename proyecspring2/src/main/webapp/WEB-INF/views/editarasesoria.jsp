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

    <!--formulario crear capacitacion-->
    
    <div class="col-9 col-s-9" id="tableRegistro2">
        
        <form method="post" action="<%= request.getContextPath() %>/procesareditaraseso">
            <h2>Editar Asesorias</h2>
            <table>
            	 <tr>

                    <td><label for="idasesorias">ID Asesorias: </label></td>
                    <td><input type="text" name="idasesorias" value= '<c:out value="${myAseso.getIdaseso()}"/>' placeholder="...."  /></td>
                </tr>

                <tr>

                    <td><label for="fechaaseso">Fecha de Asesoria: </label></td>
                    <td><input type="text" name="fechaaseso" id="datepicker" value= '<c:out value="${myAseso.getFecha()}"/>' /></td>
                </tr>

                <tr>
                    <td><label for="motivoaseso">Motivo de la Asesoria: </label></td>
                    <td> <input type="text" name="motivoaseso" value= '<c:out value="${myAseso.getMotivo()}"/>' placeholder="" /></td>
                </tr>
                
               
                
                <tr>
                    <td><label for="rut">RUT Pofesional a Cargo: </label></td>
                      <td><select name="rut"> <c:forEach items="${lstrut}" var="ru">
                    <option selected disabled hidden=>${myAseso.getProfrut()}</option>

                    <option ><c:out value="${ru.getRut()}"/></option>
                    </c:forEach></select>
<%--                     <td><input type="text" name="rut" value= '<c:out value="${myAseso.getProfrut()}"/>'placeholder="Escriba su nombre..." /></td> --%>
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