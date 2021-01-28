<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<%--      <script type="text/javascript" src="<%= request.getContextPath() %>resources/js/funciones.js"></script> --%>
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
    <title>Crear Usuario</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/hojacssdeestilos.css"/>
   
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">


 <script>
  $( function() {
    $( "#fechanacimiento" ).datepicker({
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
$("#fechanacimiento").datepicker();
});
</script>

<script type="text/javascript">
function validacionpago(){
    var payment= document.getElementsById("nombre").value;
    var colormonto=document.getElementsById("nombre");
    var rut=document.getElementsById("run").value;
    var colorrut=document.getElementsById("run");
    var datanio=document.getElementsById("apellido").value;
    var coloranio=document.getElementsById("apellido");
    var datames=document.getElementsById("fechanacimiento").value;
    var colormes=document.getElementsById("fechanacimiento");
    var cont=0;
         /*validacion run como campo vacio*/
         if (rut==0 || rut==" " || rut==null){
            alert("Campo rut vacio");
            colorrut.style.backgroundColor="red";
            cont++;
        /*validacion rut como rango de numero*/
        }else {var rutnum = parseInt(rut);
            if (rutnum<999999 || rutnum.legnth>99999999){
            alert("el rut es incorrecto");
            colorrut.style.backgroundColor="red";
            cont++;
        }


    /*validacion nombre como campo vacio*/
        if (payment == 0 || payment == null || payment==" "){
            alert("Error campos vacíos");
            colormonto.style.backgroundColor= "red";
            cont++;
            
       
        }    
       
        
        if(datames == "- Fecha -"){
            alert("No ha seleccionado una Fecha");
            colormes.style.backgroundColor="red";
            cont++;
        }else{colormes.style.backgroundColor="white";}

        if(datanio == "- Apellido -"){
            alert("No ha seleccionado un Apellido");
            coloranio.style.backgroundColor="red";
            cont++;
        }else{coloranio.style.backgroundColor="white";}
        
   
        }
        if(cont==0){
        alert("Formulario validado");
        colormonto.style.backgroundColor= "white";
        colormes.style.backgroundColor="white";
        coloranio.style.backgroundColor="white";
        colorrut.style.backgroundColor="white";
        window.location.href="crearusuario.jsp"}
    
   
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
        <ul>
        	
            <li><a href="<%= request.getContextPath() %>/home" style="color:white;" title="Inicio">Inicio</a></li>
            <li><a href="<%= request.getContextPath() %>/Linkcontacto" style="color:white;">Contacto</a></li>
            <li><a href="<%= request.getContextPath() %>/crearcapa" style="color:white;">Crear Capacitación</a></li>
            <li><a href="<%= request.getContextPath() %>/crearpag" style="color:white;">Crear Pago</a></li>
            <li><a href="<%= request.getContextPath() %>/creartipousuario" style="color:white;">Crear Usuario</a></li>
            <li><a href="<%= request.getContextPath() %>/listarvistausuario" style="color:white;">Listado Usuario</a></li>
            <li><a href="<%= request.getContextPath() %>/listarcapas" style="color:white;">Listado Capacitaciones</a></li>
            <li><a href="<%= request.getContextPath() %>/listarasesorias" style="color:white;">Listado Asesoria</a></li>
            <li><a href="<%= request.getContextPath() %>/listarpagos" style="color:white;">Listado Pagos</a></li>
            <li><a href="<%= request.getContextPath() %>/listarvisitas" style="color:white;">Listado Visitas</a></li>
            <li><a href="<%= request.getContextPath() %>/reportes" style="color:white;">Reportes</a></li>
            <li><a href="<%= request.getContextPath() %>/listarchequeo" style="color:white;">Chequeos</a></li>
            <li><a href="<%= request.getContextPath() %>/listaraccidente" style="color:white;">Listado Accidentes</a></li>
            <li><a href="<%= request.getContextPath() %>/listarasistentes" style="color:white;">Administrar Asistentes</a></li>
	        <li><a href="<%= request.getContextPath() %>/iniciosesion" style="color:white;">Login de Acceso</a></li>		
        </ul>
        </div>   



 <!--formulario crear capacitacion-->
    
 <div class="col-9 col-s-9" id="tableRegistro">

   

   <form method="post" action="procesarusuario">
    <h2>Crear Usuario</h2>
  	
  	
  		
            <table>
            	 <tr>
                    <td><label for="run">RUT Usuario: </label></td>
                    <td><input type="text" name="run" id="run" placeholder="Sin digito verificador" /></td>
                </tr>
                <tr>
                    <td><label for="nombre">Nombre: </label></td>
                    <td><input type="text" name="nombre" id="nombre" placeholder="Ingresar nombre" /></td>
                </tr>
                <tr>
                    <td><label for="apellidos">Apellidos: </label></td>
                    <td> <input type="text" name="apellidos" id="apellidos" placeholder="Ingresar apellidos" /></td>
                </tr>
                <tr>
                    <td><label for="fechanacimiento">Fecha de Nacimiento: </label></td>
                    <td><input type="text" name="fechanacimiento" id="fechanacimiento" placeholder="DD-MM-YYYY" /></td>
                </tr>
            </table>
       
       <p>
        <label for="tipo">Tipo de usuario</label> <br/>
        <select name="tipo">
        	
            <option  value="CLIENTE">Cliente</option>
            <option value="PROFESIONAL">Profesional</option>
            <option  value="ADMINISTRATIVO">Administrativo</option>
        </select>
        </p>
       <input type="submit" onclick="validacionpago();" value="Ir a creacion de Usuario"/>
       
		
   </form>
</div>

    
</body>
</html>