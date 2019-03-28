<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Rank</title>
</head>
<body>
	<table>
		  <tr>
		    <th>Time</th>
		    <th>Pontuação</th>
		  </tr>
			<c:forEach var="p" items="${partidas}">
				<c:forEach var="t" items="${times}">
			
  					<tr> 
		    			<td>${t.nome}</td>
		    			<td>${t.pontuacao}</td>
  					</tr>
  				</c:forEach>
			</c:forEach>
	</table>
</body>
</html>