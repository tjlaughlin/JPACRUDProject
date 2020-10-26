<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiver edit</title>
</head>
<body>

	 <c:choose>
		<c:when test="${! empty board }">

			Board you are editing: ${board.brand} - ${board.name}
			<br>
			
			<form action="updateBoard.do" method="GET">
				<label for="brand">Brand:</label> <input type="text" name="brand"
					value="${board.brand}" /> <input type="hidden" name="id"
					value="${board.id}" /> 
			<br>
				<label for="name">Name:</label> <input type="text" name="name"
					value="${board.name}" /> <input type="hidden" name="id"
					value="${board.id}" /> 
			<br>
				<label for="price">Price:</label> <input type="text" name="price"
					value="${board.price}" /> <input type="hidden" name="id"
					value="${board.id}" /> 
			<br>
				<label for="length">Length:</label> <input type="text" name="length"
					value="${board.length}" /> <input type="hidden" name="id"
					value="${board.id}" /> 
			<br>
				<label for="volume">Board Volume:</label> <input type="text" name="volume"
					value="${board.volume}" /> <input type="hidden" name="id"
					value="${board.id}" /> 
			<br>
				<label for="tailShape">Tail shape:</label> <input type="text" name="tailShape"
					value="${board.tailShape}" /> <input type="hidden" name="id"
					value="${board.id}" /> 
			<br>
				<label for="boardType">Board type:</label> <input type="text" name="boardType"
					value="${board.boardType}" /> <input type="hidden" name="id"
					value="${board.id}" /> 
			<br>
				<label for="waveHeight">Wave height:</label> <input type="text" name="waveHeight"
					value="${board.waveHeight}" /> <input type="hidden" name="id"
					value="${board.id}" /> 
			<br>
			<button type=“submit” name=“id” value=“${board.id}“>Submit</button>
			</form><br>
		
			<a href="/">Back to home page</a>


		</c:when>
		<c:otherwise>
			<p>No result</p>
		</c:otherwise>
	</c:choose>
 
</body>
</html>

