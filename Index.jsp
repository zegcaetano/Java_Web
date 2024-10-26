<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Restaurante Ze do Pato</title>
	<link rel = "icon" href="Imagens/favicon.png">
	<link rel = "stylesheet" href= "CSS/estilos.css">
</head>
<body>
	
	<div align="center">
	<h1>Zé do pato</h1>
	<%
	Calendar C=Calendar.getInstance();
	int ds=C.get(Calendar.DAY_OF_WEEK);
	
	if (ds==0){
		out.println("<h2>Hoje é sábado.<br></h2>");
		out.println("<h3>Temaki!<br></h3>");
		out.println("<img class='pratos' src='Imagens/temaki.png'>");
	}
	else if (ds==1){
		out.println("<h2>Hoje é domingo.<br></h2>");
		out.println("<h3>Tapas!<br></h3>");
		out.println("<img class='pratos' src='Imagens/Tapas.png'>");
	}
	else if (ds==2){
		out.println("<h2>Hoje é segunda.<br></h2>");
		out.println("<h3>Ramen!<br></h3>");
		out.println("<img class='pratos' src='Imagens/Ramen.png'>");
	}
	else if (ds==3){
		out.println("<h2>Hoje é terça.<br></h2>");
		out.println("<h3>Fish and chips!<br></h3>");
		out.println("<img class='pratos' src='Imagens/FishChips.png'>");
	}
	else if (ds==4){
		out.println("<h2>Hoje é quarta.<br></h2>");
		out.println("<h3>Carbonara!<br></h3>");
		out.println("<img class='pratos' src='Imagens/Carbonara.png'>");
	}
	else if (ds==5){
		out.println("<h2>Hoje é quinta.<br></h2>");
		out.println("<h3>Favas com Chouriço!<br></h3>");
		out.println("<img class='pratos' src='Imagens/Favas.png'>");
	}
	else{
		out.println("<h2>Hoje é sexta.<br></h2>");
		out.println("<h3>Lasanha!<br></h3>");
		out.println("<img class='pratos' src='Imagens/Lasagna.png'>");
	}
	%>
	<form method = "POST" action="Reservar.jsp">
	<label>Data da Reserva</label>
	<input type="date" name="data" required><br>
	
	<label>Email</label><br>
	<input type="email" name="email" required><br>
	
	<label>Nr Pessoas</label><br>
	<input type="number" name="pessoas" required><br>
	
	<label>Refeição</label><br>
	<select name="refeicao" required>
		<option value="A">Almoço</option>
		<option value="J">Jantar</option>
	</select><br><br>
	
	<input type="submit" value="Carrega!">
	<input type="reset" value="Cancelar!">
	
	
</form>
</div>
</body>
</html>