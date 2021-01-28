<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <script type="text/javascript" src="<%= request.getContextPath() %>resources/js/funciones.js"></script>
    <title>Sistema de informacion</title>
    <link rel="icon" type="image/png"
        href="C:\Users\juani\Documents\JAVA desarrollo web\modulo 3 desarrollo web\Clase 1\Ejercicio grupal 1\ti.ico" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/hojacssdeestilos.css"/>
</head>
<body>
	<div class="header">
        <h1>Plataforma de registro de Usuarios.</h1>
    </div> 

	<h1>Eliminar ${proceso}</h1>
	<p>${proceso} ha sido eliminada exitosamente!</p><br/>
	<a href="<%= request.getContextPath() %>/home">Volver al Home</a>
</body>
</html>