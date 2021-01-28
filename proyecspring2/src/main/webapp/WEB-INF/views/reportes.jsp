<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reportes</title>
    <link rel="icon" type="image/png" href="ti.ico" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/hojacssdeestilos.css"/>
    <script src="https://www.chartjs.org/dist/2.9.4/Chart.min.js"></script>
    <script src="https://www.chartjs.org/samples/latest/utils.js"></script>
</head>

<body>
    <div class="header">
        <h1>Plataforma de Registro</h1>
    </div>    
    <hr/>
    <!---Menu---->
    <div class="row col-3 col-s-3 menu">
        <h4>Menu de inicio:</h4>
        <ul>
            <li><a href="index.html" style="color:white;" title="Inicio">Inicio</a></li>
            <li><a href="contacto.html" style="color:white;">Contacto</a></li>
            <li><a href="crearcapacitacion.html" style="color:white;">Crear Capacitación</a></li>
            <li><a href="crearpago.html" style="color:white;">Crear Pago</a></li>
            <li><a href="crearpago.html" style="color:white;">Crear Pago</a></li>
            <li><a href="listarcapacitaciones.html" style="color:white;">Listado de Capacitaciones</a></li>
            <li><a href="listadousuario.html" style="color:white;">Listado usuario</a></li>
            <li><a href="listadoasesorias.html" style="color:white;">Listado Asesoria</a></li>
            <li><a href="listadopago.html" style="color:white;">Listado Pagos</a></li>
            <li><a href="listadovisitas.html" style="color:white;">Listado Visitas</a></li>
            <li><a href="editarcliente.html" style="color:white;">Editar Cliente</a></li>
            <li><a href="editaradministrativo.html" style="color:white;">Editar Administrativo</a></li>
            <li><a href="editarprofesional.html" style="color:white;">Editar Profesional</a></li>
            <li><a href="responderchecklist.html" style="color:white;">Editar Lista de Capacitaciones</a></li>
            <li style="color:white; background-color: green;">Reportes</li>
            <li><a href="login.html" style="color:white;">Login de acceso</a></li>
            <li><a href="listadodeaccidentes.html" style="color:white;">Listado Accidentes</a></li>
            <li><a href="administrarasistentes.html" style="color:white;">Administrar Asistentes</a></li>
        </ul>
    </div>

    <div class="row col-12 col-s-12">
    
        <h2>Grafico de barras</h2>
    <div id="container" >
        
        <canvas id="barras" style="width: 75%;"></canvas>
    </div>
</div>
    <script>
        var color = Chart.helpers.color;
        var barChartData = {
            labels: ['Puente alto', 'Valparaíso', 'Las Condes', 'Vitacura'],
            datasets: [
                {
                label: 'Clientes',
                backgroundColor: color(window.chartColors.green).alpha(0.5).rgbString(),
                borderColor: window.chartColors.red,
                borderWidth: 1,
                data: [
                    23,
                    17,
                    45,
                    67
                ]

                }, 
            {
                label: 'Ventas',
                backgroundColor: color(window.chartColors.red).alpha(0.5).rgbString(),
                borderColor: window.chartColors.blue,
                borderWidth: 1,
                data: [
                    46,
                    34,
                    90,
                    134
                ]
            }]

        };

        window.onload = function () {
            var ctx = document.getElementById('barras').getContext('2d');
            window.myBar = new Chart(ctx, {
                type: 'bar',
                data: barChartData,
                options: {
                    responsive: true,
                    legend: {
                        position: 'top',
                    },
                    title: {
                        display: true,
                        text: 'Gráfico de barras'
                    }
                }
            });

        };
    </script>


<div class="row col-12 col-s-12">
    <h2>Grafico de lineas</h2>

    <canvas id="graficolineas" style="width: 25%;"></canvas>
</div>
    <script>
        var speedCanvas = document.getElementById("graficolineas");

        Chart.defaults.global.defaultFontFamily = "Lato";
        Chart.defaults.global.defaultFontSize = 18;

        var speedData = {
            labels: ["enero", "febrero", "marzo", "abril", "mayo", "junio", "julio","agosto","Septiembre","Octubre","Noviembre","diciembre"],
            datasets: [
                {
                    label: "Accidentes",
                    data: [1, 3, 2, 15, 8, 3, 7, 3, 2, 3, 12, 9],
                    borderColor: window.chartColors.red,
                    borderWidth: 2,
                    backgroundColor: color(window.chartColors.red).alpha(0.5).rgbString(),
                }, 
                
                {
                    label: "Visitas",
                    data: [1, 1, 1, 0, 0, 1, 0, 2, 2, 3, 1, 1],
                    borderColor: window.chartColors.blue,
                    borderWidth: 2,
                    backgroundColor: color(window.chartColors.green).alpha(0.5).rgbString(),
                }, 
            
            ],


        };

        var chartOptions = {
            legend: {
                display: true,
                position: 'top',
                labels: {
                    boxWidth: 80,
                    fontColor: 'black'
                }
            }
        };


        var lineChart = new Chart(speedCanvas, {
            type: 'line',
            data: speedData,
            options: chartOptions
        });

    </script>


<div class="row col-12 col-s-12">
    <h2>Grafico de torta</h2>

    <canvas id="graficotorta" style="width: 25%;"></canvas>
</div>
    <script>
        var torta = document.getElementById("graficotorta");

        Chart.defaults.global.defaultFontFamily = "Lato";
        Chart.defaults.global.defaultFontSize = 18;

        var datatorta = {
            labels: [
                "Cumplidos",
                "No Cumplidos",
                "Cumplidos con observación",
                
            ],
            datasets: [
                {
                    data: [90, 12, 45],
                    backgroundColor: [
                        "#63FF84",
                        "#FF6384",
                        "#FFFF00"
                        
                    ]
                },
            
            ]
        };

        var pieChart = new Chart(torta, {
            type: 'pie',
            data: datatorta
        });
    </script>



</body>

</html>