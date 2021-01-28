<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistema de Información</title>
    <link rel="icon" type="image/png" href="<%= request.getContextPath() %>ti.ico" />
     <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/hojacssdeestilos.css"/>
    <!--     <script type="text/javascript" src="<%= request.getContextPath() %>/resources/js/funciones.js"></script>
     -->
    <script type="text/javascript" src="/resources/js/funciones.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
   <script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker({
      changeMonth: true,
      changeYear: true
    });
  } );
  </script>
  <script type="text/javascript">
  $(document).ready(function(){
	    $('input.accihora').timepicker({});
	});
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

$('.accihora').timepicker({
	 timeFormat: 'HH:mm p',
     interval: 60,
     minTime: '00',
     maxTime: '23',
     defaultTime: '',
     startTime: '',
     dynamic: false,
     dropdown: true,
     scrollbar: true
});
</script>
<script>
function validacioncrearcapacitaciones() {
    //var id= document.getElementById("idcapacitacion").value;
    //var fecha = document.getElementById("fechacapa").value;
    //var hora=document.getElementById("horacapa").value;
    var lugar = document.getElementById("lugar").value;
    var duracion = document.getElementById("duracion").value;
    var cantidad = document.getElementById("cantasist").value;
    var rut = document.getElementById("rut").value;
    var cont;

	/*Validacion global*/
	if ((lugar.length==0 || lugar == null || lugar==" ")&& (duracion.length==0 || duracion == null || duracion==" ")&&(cantidad.length==0 || cantidad == null || cantidad==" ")&&( rut.length<=8 || rut.length>=11 || rut==" " || rut==null))
	{	
		alert("¡Todos los campos se encuentran vacíos!");
	}
      
  	/*validacion lugar como campo vacio*/
        if (lugar.length==0 || lugar == null || lugar==" "){
          	document.getElementById("lugar").style.background="#EDF98E";
           document.getElementById("lugar").style.borderColor="#000000";
           alert("¡El campo lugar está vacío!");
           return false;
           
       }else{

      	 document.getElementById("lugar").style.background="#ffffff";
           document.getElementById("lugar").style.borderColor="#9A9797";
           cont++;

       }
        
    	/*validacion duracion como campo vacio*/
          if (duracion.length==0 || duracion == null || duracion==" "){
             document.getElementById("duracion").style.background="#EDF98E";
             document.getElementById("duracion").style.borderColor="#000000";
             alert("¡El campo duracion está vacío!");
             return false;
             
         }else{

        	 document.getElementById("duracion").style.background="#ffffff";
            document.getElementById("duracion").style.borderColor="#9A9797";
            cont++;

         }
          
      	/*validacion cantidad de asistentes como campo vacio*/
            if (cantidad.length==0 || cantidad == null || cantidad==" "){
              	document.getElementById("cantasist").style.background="#EDF98E";
               document.getElementById("cantasist").style.borderColor="#000000";
               alert("¡El campo cantidad de asistentes está vacío!");
               return false;
               
           }else{

          	 document.getElementById("cantasist").style.background="#ffffff";
               document.getElementById("cantasist").style.borderColor="#9A9797";
               cont++;

           }
    	
            /*validacion rut cliente como campo vacio*/
            if ( rut.length<=8 || rut.length>=11 || rut==" " || rut==null){
            	 document.getElementById("rut").style.background="#EDF98E";
                document.getElementById("rut").style.borderColor="#000000";
                alert("¡El campo rut está vacío!");
                return false;
                
            }else{

                document.getElementById("rut").style.background="#ffffff";
                document.getElementById("rut").style.borderColor="#9A9797";
                cont++;

            }

}
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
          
     
   			<li><a href="<%= request.getContextPath() %>/logout" style="color:white;">Logout</a></li>	
        </ul>
        </div>   

    <!--formulario crear capacitacion-->
    
    <div class="col-9 col-s-9" id="tableRegistro">
        
        <form method="post" action="procesarcapa" onsubmit="return validacioncrearcapacitaciones();">
            <h2>Crear Capacitación</h2>
            <table>
            	 <tr>

                    <td><label for="idcapacitacion">ID Capacitación: </label></td>
                    <td><input type="text" name="idcapacitacion" id="idcapacitacion" placeholder="...." /></td>
                </tr>

                <tr>

                    <td><label for="fechacapa">Fecha de Capacitación: </label></td>
                    <td><input type="text" name="fechacapa" id="datepicker" placeholder="dd-mm-aaaa..." /></td>
                </tr>

                <tr>
                    <td><label for="horacapa">Hora de Capacitación: </label></td>
                    <td> <input type="text" name="horacapa" id="horacapa" class="accihora" placeholder="Hora hh:mm..." /></td>
                </tr>
                <tr>
                    <td><label for="lugar">Lugar: </label></td>
                    <td><input type="text" name="lugar" id="lugar" placeholder="Escriba el lugar..." /></td>
                </tr>
                <tr>
                    <td><label for="duracion">Duración: </label></td>
                    <td><input type="text" name="duracion" id="duracion" placeholder="Escriba la duracion en minutos..." /></td>
                </tr>
                <tr>
                    <td><label for="cantasist">Cantidad de Asistentes: </label></td>
                    <td><input type="text" name="cantasist" id="cantasist" placeholder="Escriba su nombre..." /></td>
                </tr>
                
                  <tr>
                    <td><label for="rut">RUT Cliente: </label></td>
                     <td><select name="rut"> <c:forEach items="${lstrut}" var="ru">
                    <option selected disabled hidden=>${mycapa.getRutclte()}</option>
<%-- 					<option value="${mycapa.getRutclte()}">cambio Rut</option> --%>
                    <option ><c:out value="${ru.getRutcliente()}"/></option>
                    </c:forEach></select>
<%--                     <td><input type="text" name="rut" value='<c:out value="${mycapa.getRutclte()}" />' /></td> --%>
                </tr>

                <tr>
                    <td><input type="submit" value="Registrar" /></td>
                    <td><input type="reset" value="Limpiar Formulario" /></td>
                </tr>
                
              </table>
        </form>
    </div>




</body>

</html>