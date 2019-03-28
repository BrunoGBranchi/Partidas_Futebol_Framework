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
		<label>Time 1: </label> 
		<select name="partida.time1">
			<option value="${partida.time1}"></option>
			<c:forEach var="t" items="${times}">
				<option value="${t.nome}">${t.nome}</option>
			</c:forEach>
			</select>
		<label></label> <input type="text" name="partida.pontuacao1" value="${partida.pontuacao1}"/>
		<label>Time 2: </label> 
		<select name="partida.time2">
			<option value="${partida.time2}"></option>
			<c:forEach var="t" items="${times}">
				<option value="${t.nome}">${t.nome}</option>
			</c:forEach>
			</select>
		<label></label> <input type="text" name="partida.pontuacao2" value="${partida.pontuacao2}"/>
		<input type="submit" name="Alterar"/>
	</form>

</body>
</html>