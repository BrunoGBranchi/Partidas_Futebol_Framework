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
	<form action= '<c:url value="/time/enviar"></c:url>'  method= "post">
		<label>Código: </label> <input type="text" name="time.codigo" value="${time.codigo}"/>
		<label>Nome: </label> <input type="text" name="time.nome" value="${time.nome}" />
		<input type="submit" name="Enviar" />
	</form>

</body>
</html>