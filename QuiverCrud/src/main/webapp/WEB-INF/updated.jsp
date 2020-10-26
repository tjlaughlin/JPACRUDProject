<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Database Update</title>
</head>
<body>
	<c:choose>
		<c:when test="${! empty board }">
			board updated
			<br>
			${board.name}
		
		
		</c:when>
		<c:when test="${empty board }">
			board deleted
			<br>
		</c:when>
		
		<c:otherwise>
			Unable to update board
		</c:otherwise>
	</c:choose><br>
		<a href="/">Back to home page</a>

</body>
</html>