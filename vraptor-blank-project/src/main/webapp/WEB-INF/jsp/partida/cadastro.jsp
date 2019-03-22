<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastrar um time</title>
</head>
<body>
	
	<form action= '<c:url value="/partida/enviar"></c:url>'  method= "post">
	
		<label>Código: </label> <input type="text" name="partida.codigo" />
		<br>
		<label>Time 1: </label> <input type="text" name="partida.time1" />
		<select>
			<option>Selecione</option>
			<c:forEach var="t" items="${times}">
				<option value="${t.id}">${t.nome}</option>
			</c:forEach>
			</select>
		<label></label> <input type="text" name="partida.pontuacao1" />
		<label>Time 2: </label> <input type="text" name="partida.time2" />
		<label></label> <input type="text" name="partida.pontuacao2" />
		<input type="submit" name="Cadastrar" />
	</form>
</body>
</html>