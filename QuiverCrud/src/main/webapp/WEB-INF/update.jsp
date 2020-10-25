<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film Query</title>
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
			</form>
			
			<br>
			
			
			
			
			
			
			<%-- <form action="FilmsUpdate.do" method="POST">
				<label for="description">Description:</label> <input type="text"
					name="description" value="${film.description }" size="100" /> <input
					type="hidden" name="id" value="${film.id }" /> <input
					type="submit" value="Update" />
			</form>
			<br>
			<form action="FilmsUpdate.do" method="POST">
				<label for="releaseYear">Release Year:</label> <input type="text"
					name="releaseYear" value="${film.releaseYear }" /> <input
					type="hidden" name="id" value="${film.id }" /> <input
					type="submit" value="Update" />
			</form>
			<br>
			<form action="FilmsUpdate.do" method="POST">
				<label for=rentalDuration>Rental Duration:</label> <input
					type="text" name="rentalDuration" value="${film.rentalDuration }" />
				<input type="hidden" name="id" value="${film.id }" /> <input
					type="submit" value="Update" />
			</form>
			<br>
			<form action="FilmsUpdate.do" method="POST">
				<label for="rentalRate">Rental Rate:</label> <input type="text"
					name="rentalRate" value="${film.rentalRate }" /> <input
					type="hidden" name="id" value="${film.id }" /> <input
					type="submit" value="Update" />
			</form>
			<br>
			<form action="FilmsUpdate.do" method="POST">
				<label for="replacementCost">Replacement Cost:</label> <input
					type="text" name="replacementCost" value="${film.replacementCost }" />
				<input type="hidden" name="id" value="${film.id }" /> <input
					type="submit" value="Update" />
			</form>
			<br>
			<form action="FilmsUpdate.do" method="POST">
				<label for="length">Length:</label> <input type="text" name="length"
					value="${film.length }" /> <input type="hidden" name="id"
					value="${film.id }" /> <input type="submit" value="Update" />
			</form>
 --%>
		
		<br>
		<br>
			<a href="/">Back to home page</a>


		</c:when>
		<c:otherwise>
			<p>No result</p>
		</c:otherwise>
	</c:choose>
 
</body>
</html>

