<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ligarBD.*" %>  
  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Testar ligação</title>
</head>
<body>
	<%
	ligacaomysql.criarligacao();
	out.println(ligacaomysql.estadoligacao);
	%>
</body>
</html>