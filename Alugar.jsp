<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "ligarBD.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Garagem Ze do Carro</title>
	<link rel = "icon" href="imagens/favicon.png">
	<link rel = "stylesheet" href= "css/estilos.css">
</head>
<body>
	<div align = "center">
		<h1>Confirmação de Aluguer</h1>
		<%
			String marca_escolhida=request.getParameter("marca");
			String modelo_escolhido=request.getParameter("modelo");
			String matricula_escolhida=request.getParameter("matricula");
			String data_escolhida=request.getParameter("data");
			String me = marca_escolhida;
			String de = data_escolhida;
			if(marca_escolhida.equals("R"))
			{
				marca_escolhida = "Renault";
				out.println("<img class='carros' src='imagens/renault.png'>");

			}
			else if(marca_escolhida.equals("O"))
			{
				marca_escolhida = "Opel";
				out.println("<img class='carros' src='imagens/opel.png'>");

			}
			else if(marca_escolhida.equals("F"))
			{
				marca_escolhida = "Fiat";
				out.println("<img class='carros' src='imagens/fiat.png'>");

			}
			else 
			{
				marca_escolhida = "Seat";
				out.println("<img class='carros' src='imagens/seat.png'>");

			}
			
			if(data_escolhida.equals("1"))
			{
				data_escolhida = "1990 a 2000";
			}
			else if(data_escolhida.equals("2"))
			{
				data_escolhida = "2001 a 2010";
			}
			else if(data_escolhida.equals("3"))
			{
				data_escolhida = "2011 a 2020";
			}
			else
			{
				data_escolhida = "2021 ou mais recente";
			}
			
			try
			{
				Connection cn = ligacaomysql.criarligacao();
				
				Statement st = cn.createStatement();
				
				st.executeUpdate("insert into aluguer (marca, modelo, matricula, data) values('"+me+"','"+modelo_escolhido+"','"+matricula_escolhida+"','"+de+"')");
				out.println("<h1>Operação efectuada.</h1>");
			}
			catch(SQLException e)
			{
				out.println("<h1>E R R O</h1>");
			}
	
		%>
		<table id="alugar">
			<tr>
				<td>Marca</td>
				<td><%=marca_escolhida%></td>
			</tr>
			<tr>
				<td>Modelo</td>
				<td><%=modelo_escolhido%></td>
			</tr>
			<tr>
				<td>Matricula</td>
				<td><%=matricula_escolhida%></td>
			</tr>
			<tr>
				<td>Data</td>
				<td><%=data_escolhida%></td>
			</tr>
		</table>
		<br><br>
		<a href="Carros.jsp">Voltar</a>
	</div>
</body>
</html>