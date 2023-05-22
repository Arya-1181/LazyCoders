<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display Data</title>
</head>
<body>
	<h1>Displaying a Single Column from a SQL Table</h1>
	<table>
		<tr>
			<th>Name</th>
		</tr>
		<c:forEach var="row" items="${data}">
			<tr>
				<td>${row.name}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
