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
	<form action= '<c:url value="/time/enviar"></c:url>'  method= "post">
		<label>Código: </label> <input type="text" name="time.codigo" />
		<label>Nome: </label> <input type="text" name="time.nome" />
		<input type="submit" name="Enviar" />
	</form>
</body>
</html>