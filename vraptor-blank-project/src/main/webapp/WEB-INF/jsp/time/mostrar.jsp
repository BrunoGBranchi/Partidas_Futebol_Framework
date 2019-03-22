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
		    <th>Nome</th> 
		    <th>Opcoes</th>
		  </tr>
			<c:forEach var="t" items="${times}">
			
  				<tr>	
	    			<td>${t.codigo}</td> 
	    			<td>${t.nome}</td>
	    			<td><a href = "<c:url value = "/time/editar/${t.codigo}"/>"><button>Editar</button></a></td> 
	    			<td><a href = "<c:url value = "/time/excluir/${t.codigo}"/>"><button>Excluir</button></a></td>
  				</tr>
			</c:forEach>
	</table>
	<a href = "<c:url value = "/time/cadastro"/>"><button>Cadastrar novo time</button></a>
	<a href = "<c:url value = "/time/partida"/>"><button>Cadastrar Partida</button></a>
	<a href = "<c:url value = "/time/tabela"/>"><button>Tabela</button></a>
</body>
</html>