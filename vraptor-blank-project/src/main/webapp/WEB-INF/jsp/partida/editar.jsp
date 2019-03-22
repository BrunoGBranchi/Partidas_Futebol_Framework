<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action= '<c:url value="/partida/enviar"></c:url>'  method= "post">
		<label>Código: </label> <input type="text" name="partida.codigo" value="${partida.codigo}" />
		<br>
		<label>Time 1: </label> <input type="text" name="partida.time1" value="${partida.time1}"/>
		<label></label> <input type="text" name="partida.pontuacao1" value="${partida.pontuacao1}"/>
		<label>Time 2: </label> <input type="text" name="partida.time2" value="${partida.time2}" />
		<label></label> <input type="text" name="partida.pontuacao2" value="${partida.pontuacao2}"/>
		<input type="submit" name="Alterar"/>
	</form>

</body>
</html>