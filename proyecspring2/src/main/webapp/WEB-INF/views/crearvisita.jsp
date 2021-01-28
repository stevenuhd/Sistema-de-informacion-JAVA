<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<%--      <script type="text/javascript" src="<%= request.getContextPath() %>resources/js/funciones.js"></script> --%>
    <title>Sistema de Información</title>
    <link rel="icon" type="image/png"
        href="C:\Users\juani\Documents\JAVA desarrollo web\modulo 3 desarrollo web\Clase 1\Ejercicio grupal 1\ti.ico" />
        <!-- <link rel="stylesheet" href="hojacssdeestilos.css" /> -->
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
function validacioncrearvisita() {
    var id= document.getElementById("idvisita").value;
    var lugar = document.getElementById("lugar").value;
    var comentarios = document.getElementById("viscomentarios").value;
    var rutcliente = document.getElementById("cliente_rutcliente").value;
 	 var cont;

	/*Validacion global*/
	if ((id.length==0 || id == null || id==" ")&& (lugar.length==0 || lugar == null || lugar==" ")&&(comentarios.length==0 || comentarios == null || comentarios==" ")&&( rutcliente.length<=8 || rutcliente.length>=11 || rut==" " || rut==null))
	{	
		alert("¡Todos los campos se encuentran vacíos!");
	}
      
  	/*validacion lugar como campo vacio*/
        if (id.length==0 || id == null || id==" "){
          	document.getElementById("idvisita").style.background="#EDF98E";
           document.getElementById("idvisita").style.borderColor="#000000";
           alert("¡El campo idvisita está vacío!");
           return false;
           
       }else{

      	 document.getElementById("idvisita").style.background="#ffffff";
           document.getElementById("idvisita").style.borderColor="#9A9797";
           cont++;

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
          
      	/*validacion comentarios como campo vacio*/
            if (comentarios.length==0 || comentarios == null || comentarios==" "){
              	document.getElementById("viscomentarios").style.background="#EDF98E";
               document.getElementById("viscomentarios").style.borderColor="#000000";
               alert("¡El campo comentarios está vacío!");
               return false;
               
           }else{

          	 document.getElementById("viscomentarios").style.background="#ffffff";
               document.getElementById("viscomentarios").style.borderColor="#9A9797";
               cont++;

           }
    	
            /*validacion rut cliente como campo vacio*/
            if ( rutcliente.length<=8 || rutcliente.length>=11 || rut==" " || rut==null){
            	 document.getElementById("cliente_rutcliente").style.background="#EDF98E";
                document.getElementById("cliente_rutcliente").style.borderColor="#000000";
                alert("¡El campo rut cliente está vacío!");
                return false;
                
            }else{

                document.getElementById("cliente_rutcliente").style.background="#ffffff";
                document.getElementById("cliente_rutcliente").style.borderColor="#9A9797";
                cont++;

            }

}



</script>    
    
</head>

<body>
    <div class="header">
        <h1>Plataforma de registro de Clientes.</h1>
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
    
    <div class="col-9 col-s-9" id="tableRegistro">
        
        <form method="post" action="procesarvisita">
            <h2>Crear Visita</h2>
            <table>
            	 <tr>
                    <td><label for="rut">ID Visita: </label></td>
                    <td><input type="text" name="idvisita" placeholder="...." /></td>
                </tr>

                <tr>
                    <td><label for="nombre">Fecha: </label></td>
                    <td><input type="text" name="visfecha" id="datepicker" placeholder="...." /></td>
                </tr>

                <tr>
                    <td><label for="apellido">Hora: </label></td>
                    <td> <input type="text" name="vishora" placeholder="...." /></td>
                </tr>
                <tr>
                    <td><label for="telefono">Lugar: </label></td>
                    <td><input type="text" name="vislugar" placeholder="...."/></td>
                </tr>
                <tr>
                    <td><label for="afp">Comnetarios: </label></td>
                    <td><input type="text" name="viscomentarios" placeholder="...."/></td>
                </tr>
                <tr>
                    <td><label for="sistsalud">RUT Cliente: </label></td>
                    <td><input type="text" name="cliente_rutcliente" placeholder="...."/></td>
                </tr>

                <tr>
                    <td><input type="submit" value="Editar" /></td>
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