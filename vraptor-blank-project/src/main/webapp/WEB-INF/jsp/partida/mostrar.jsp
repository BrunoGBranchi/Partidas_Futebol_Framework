<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Times</title>
</head>
<body>
	<table>
		  <tr>
		    <th>Codigo</th>
		    <th>Time 1</th>
		    <th>Pontuação 1</th>
		    <th>X</th>
		    <th>Pontuação 2</th>
		    <th>Time 2</th> 
		    <th>Opcoes</th>
		  </tr>
			<c:forEach var="p" items="${partidas}">
			
  				<tr>	
	    			<td>${p.codigo}</td> 
	    			<td>${p.time1}</td>
	    			<td>${p.pontuacao1}</td>
	    			<td>X</td>
	    			<td>${p.pontuacao2}</td>
	    			<td>${p.time2}</td>
	    			<td><a href = "<c:url value = "/partida/editar/${p.codigo}"/>"><button>Editar</button></a></td> 
	    			<td><a href = "<c:url value = "/partida/excluir/${p.codigo}"/>"><button>Excluir</button></a></td>
  				</tr>
			</c:forEach>
	</table>
	<a href = "<c:url value = "/time/cadastro"/>"><button>Cadastrar novo time</button></a>
	<a href = "<c:url value = "/partida/cadastro"/>"><button>Cadastrar Partida</button></a>
	<a href = "<c:url value = "/tabela/mostrar"/>"><button>Tabela</button></a>
</body>
</html>