<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<%--      <script type="text/javascript" src="<%= request.getContextPath() %>resources/js/funciones.js"></script> --%>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
    <title>Sistema de Información</title>
    <link rel="icon" type="image/png"
        href="C:\Users\juani\Documents\JAVA desarrollo web\modulo 3 desarrollo web\Clase 1\Ejercicio grupal 1\ti.ico" />
    <link rel="stylesheet" href="resources/css/hojacssdeestilos.css"/>
     <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
    timeFormat: 'hh:mm ',
    interval: 30,
    minTime: '10',
    maxTime: '6:00',
    defaultTime: '23',
    startTime: '10:00',
    dynamic: false,
    dropdown: true,
    scrollbar: true
});


</script>

<script>

function validacioncrearcapacitaciones() {
     var id= document.getElementById("idaccidente").value;
     var lugaraccidente = document.getElementById("accilugar").value;
     var origenaccidente=document.getElementById("acciorigen").value;
     var consecuenciasaccidente = document.getElementById("accisecuencias").value;
   	 var rutcliente = document.getElementById("rut").value;
     var cont;

	/*Validacion global*/
	if ((id.length==0 || id == null || id==" ")&&(lugaraccidente.length==0 || lugaraccidente == null || lugaraccidente==" ")&&(origenaccidente.length==0 || origenaccidente == null || origenaccidente==" ")&&(consecuenciasaccidente.length<=8 || consecuenciasaccidente.length>=11 || consecuenciasaccidente==" " || consecuenciasaccidente==null))
	{	
		alert("¡Todos los campos se encuentran vacíos!");
	}
       
   	/*validacion id accidente como campo vacio*/
         if (id.length==0 || id == null || id==" "){
           	document.getElementById("idaccidente").style.background="#EDF98E";
            document.getElementById("idaccidente").style.borderColor="#000000";
            alert("¡El campo id accidente está vacío!");
            return false;
            
        }else{

       	 document.getElementById("idaccidente").style.background="#ffffff";
            document.getElementById("idaccidente").style.borderColor="#9A9797";
            cont++;

        }
         
     	/*validacion lugar accidente como campo vacio*/
           if (lugaraccidente.length==0 || lugaraccidente == null || lugaraccidente==" "){
              document.getElementById("accilugar").style.background="#EDF98E";
              document.getElementById("accilugar").style.borderColor="#000000";
              alert("¡El campo lugar accidente está vacío!");
              return false;
              
          }else{

         	 document.getElementById("accilugar").style.background="#ffffff";
             document.getElementById("accilugar").style.borderColor="#9A9797";
             cont++;

          }
           
       	/*validacion origen accidente como campo vacio*/
             if (origenaccidente.length==0 || origenaccidente == null || origenaccidente==" "){
               	document.getElementById("acciorigen").style.background="#EDF98E";
                document.getElementById("acciorigen").style.borderColor="#000000";
                alert("¡El campo origen accidente de asistentes está vacío!");
                return false;
                
            }else{

           	 document.getElementById("acciorigen").style.background="#ffffff";
                document.getElementById("acciorigen").style.borderColor="#9A9797";
                cont++;

            }
     	
             /*validacion consecuencias accidente como campo vacio*/
             if (consecuenciasaccidente.length<=8 || consecuenciasaccidente.length>=11 || consecuenciasaccidente==" " || consecuenciasaccidente==null){
             	 document.getElementById("accisecuencias").style.background="#EDF98E";
                 document.getElementById("accisecuencias").style.borderColor="#000000";
                 alert("¡El consecuencias accidente está vacío!");
                 return false;
                 
             }else{

                 document.getElementById("accisecuencias").style.background="#ffffff";
                 document.getElementById("accisecuencias").style.borderColor="#9A9797";
                 cont++;

             }
             
             
//              /*validacion rut cliente como campo vacio*/
//              if ( rut.length<=8 || rut.length>=11 || rut==" " || rut==null){
//              	 document.getElementById("rut").style.background="#EDF98E";
//                  document.getElementById("rut").style.borderColor="#000000";
//                  alert("¡El campo rut está vacío!");
//                  return false;
                 
//              }else{

//                  document.getElementById("rut").style.background="#ffffff";
//                  document.getElementById("rut").style.borderColor="#9A9797";
//                  cont++;

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
          
            <li><a href="<%= request.getContextPath() %>/creartipousuario" style="color:white;">Crear Usuario</a></li>
            <li><a href="<%= request.getContextPath() %>/listarvistausuario" style="color:white;">Listado usuario</a></li>
   			<li><a href="<%= request.getContextPath() %>/logout" style="color:white;">Logout</a></li>	
        </ul>
        </div>   

    <!--formulario crear capacitacion-->
    
    <div class="col-9 col-s-9" id="tableRegistro2">
        
        <form method="post" action="procesaraccidente">
            <h2>Crear Accidente</h2>
            <table>
            	 <tr>

                    <td><label for="idaccidente">ID Accidente: </label></td>
                    <td><input type="text" name="idaccidente" placeholder="...." /></td>
                </tr>

                <tr>

                    <td><label for="accifecha">Fecha de Accidente: </label></td>
                    <td><input type="text" name="accifecha" id="datepicker" placeholder="dd-mm-aaaa..." /></td>
                </tr>

                <tr>
                    <td><label for="accihora">Hora del Accidente: </label></td>
                    <td> <input type="text" name="accihora" class="accihora" placeholder="" /></td>
                </tr>
                
                <tr>
                    <td><label for="accilugar">Lugar del Accidente: </label></td>
                    <td> <input type="text" name="accilugar" placeholder="" /></td>
                </tr>
                
                <tr>
                    <td><label for="acciorigen">Origen del Accidente: </label></td>
                    <td> <input type="text" name="acciorigen" placeholder="" /></td>
                </tr>
                
                <tr>
                    <td><label for="accisecuencias">Consecuencias del Accidente: </label></td>
                    <td> <input type="text" name="accisecuencias" placeholder="" /></td>
                </tr>
                
               
                
            <tr>
                    <td><label for="rut">RUT Cliente: </label></td>
                      <td><select name="rut"> <c:forEach items="${lstrut}" var="ru">
                    <option selected disabled hidden=>${editacc.getRutacc()}</option>

                    <option ><c:out value="${ru.getRutcliente()}"/></option>
                    </c:forEach></select>
<%--                     <td><input type="text" name="rut" value= '<c:out value="${editacc.getRutacc()}"/>'placeholder="Escriba su rut..." /></td> --%>
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