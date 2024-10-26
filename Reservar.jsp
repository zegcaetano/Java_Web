<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "ligarBD.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Restaurante Ze do Pato</title>
	<link rel = "icon" href="Imagens/favicon.png">
	<link rel = "stylesheet" href= "CSS/estilos.css">
</head>
<body>
	<div align = "center">
		<h1>Confirmação de Reserva</h1>
		<%
			String data_reserva=request.getParameter("data");
			String email_cliente=request.getParameter("email");
			String pessoas=request.getParameter("pessoas");
			String refeicao=request.getParameter("refeicao");
			String fref = refeicao;
			if(refeicao.equals("A"))
			{
				refeicao = "Almoço";
			}
			else
			{
				refeicao = "Jantar";
			}
			
			try
			{
				Connection cn = ligacaomysql.criarligacao();
				
				Statement st = cn.createStatement();
				
				st.executeUpdate("insert into reservas (data, email, pessoas, refeicao) values('"+data_reserva+"','"+email_cliente+"','"+pessoas+"','"+fref+"')");
				out.println("<h1>Operação efectuada.</h1>");
			}
			catch(SQLException e)
			{
				out.println("<h1>E R R O</h1>");
			}
			
		%>
		<table id="reservar">
			<tr>
				<td>Data</td>
				<td><%=data_reserva%></td>
			</tr>
			<tr>
				<td>E-mail</td>
				<td><%=email_cliente%></td>
			</tr>
			<tr>
				<td>Pessoas</td>
				<td><%=pessoas%></td>
			</tr>
			<tr>
				<td>Refeição</td>
				<td><%=refeicao%></td>
			</tr>
		</table>
		<br><br>
		<a href="Index.jsp">Voltar</a>
	</div>
</body>
</html>