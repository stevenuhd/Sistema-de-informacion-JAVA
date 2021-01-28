<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<%--      <script type="text/javascript" src="<%= request.getContextPath() %>resources/js/funciones.js"></script> --%>
    <title>Sistema de Información</title>
    <link rel="icon" type="image/png"
        href="C:\Users\juani\Documents\JAVA desarrollo web\modulo 3 desarrollo web\Clase 1\Ejercicio grupal 1\ti.ico" />
    <link rel="stylesheet" href="resources/css/hojacssdeestilos.css"/>
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

<script>

function validacioncrearasesorias() {
	 var idasesorias= document.getElementById("idasesorias").value;
	 var motivoasesoria = document.getElementById("motivoaseso").value;
	 var rut = document.getElementById("rut").value;
     var cont;

     /*Validacion global*/
 	if ((idasesorias.length==0 || idasesorias.length<=8 || idasesorias.length>=10 || idasesorias == null || idasesorias==" ")&&(motivoasesoria.length==0 || motivoasesoria.length<=5 || motivoasesoria.length>=20 || motivoasesoria == null || motivoasesoria==" ")&&( rut.length<=8 || rut.length>=11 || rut==" " || rut==null))
 	{	
 		alert("¡Todos los campos se encuentran vacíos!");
 	}


       
   	/*validacion id asesorias como campo vacio*/
         if (idasesorias.length==0 || idasesorias.length<=8 || idasesorias.length>=10 || idasesorias == null || idasesorias==" "){
           	document.getElementById("idasesorias").style.background="#EDF98E";
            document.getElementById("idasesorias").style.borderColor="#000000";
            alert("¡El campo id asesorias está vacío!");
            return false;
            
        }else{

       	 document.getElementById("idasesorias").style.background="#ffffff";
            document.getElementById("idasesorias").style.borderColor="#9A9797";
            cont++;

        }
         
     	/*validacion motivo asesoria como campo vacio*/
           if (motivoasesoria.length==0 || motivoasesoria.length<=5 || motivoasesoria.length>=20 || motivoasesoria == null || motivoasesoria==" "){
              document.getElementById("motivoaseso").style.background="#EDF98E";
              document.getElementById("motivoaseso").style.borderColor="#000000";
              alert("¡El campo motivo asesoria está vacío!");
              return false;
              
          }else{

         	 document.getElementById("motivoaseso").style.background="#ffffff";
             document.getElementById("motivoaseso").style.borderColor="#9A9797";
             cont++;

          }
           
       	/*validacion rut como campo vacio*/
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
        
        <form method="post" action="procesaraseso">
            <h2>Crear Asesorias</h2>
            <table>
            	 <tr>

                    <td><label for="idasesorias">ID Asesorias: </label></td>
                    <td><input type="text" name="idasesorias" placeholder="...." /></td>
                </tr>

                <tr>

                    <td><label for="fechaaseso">Fecha de Asesoria: </label></td>
                    <td><input type="text" name="fechaaseso" id="datepicker" placeholder="dd-mm-aaaa..." /></td>
                </tr>

                <tr>
                    <td><label for="motivoaseso">Motivo de la Asesoria: </label></td>
                    <td> <input type="text" name="motivoaseso" placeholder="" /></td>
                </tr>
                
               
                
<!--                 <tr> -->
<!--                     <td><label for="rut">RUT Pofesional a cargo: </label></td> -->
<!--                     <td><input type="text" name="rut" placeholder="Escriba su nombre..." /></td> -->
<!--                 </tr> -->
                
                 <tr>
                    <td><label for="rut">RUT Pofesional a Cargo: </label></td>
                      <td><select name="rut"> <c:forEach items="${lstrut}" var="ru">
<%--                     <option selected disabled hidden=>${myAseso.getProfrut()}</option> --%>

                    <option ><c:out value="${ru.getRut()}"/></option>
                    </c:forEach></select>
<%--                     <td><input type="text" name="rut" value= '<c:out value="${myAseso.getProfrut()}"/>'placeholder="Escriba su nombre..." /></td> --%>
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