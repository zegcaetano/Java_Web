<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Garagem Ze do Carro</title>
	<link rel = "icon" href="imagens/favicon.png">
	<link rel = "stylesheet" href= "css/estilos.css">
	
	
	</head>
<body>
	<div align="center">
		<h1>Garagem Zé do Carro</h1>
		<% 
		out.println("<img class='carros' src='imagens/car.png'>");
		%>
		<form method = "POST" action="Alugar.jsp">
		
		<label>Marca</label><br>
		<select name="marca" required>
			<option value="R">Renault</option>
			<option value="O">Opel</option>
			<option value="F">Fiat</option>
			<option value="S">Seat</option>
		</select><br><br>
		
		<label>Modelo</label><br>
		<input type="text" name="modelo" required><br>
	
		<label>Matricula</label><br>
		<input type="text" name="matricula" required><br>
		
		<label>Data</label><br>
		<select name="data" required>
			<option value="1">1990 a 2000</option>
			<option value="2">2001 a 2010</option>
			<option value="3">2011 a 2020</option>
			<option value="4">2021 ou mais recente</option>
		</select><br><br>
		
		<input type="submit" value="Alugar!">
		<input type="reset" value="Cancelar!">
</form>
</div>
</body>
</html>