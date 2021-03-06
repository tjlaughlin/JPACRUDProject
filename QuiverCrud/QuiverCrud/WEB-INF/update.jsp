<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiver edit</title>
</head>
<body style="background-color:grey;">

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
		
			<br>
			<form action="/" method="GET">
				<input type="hidden" name="" value="" /> <input type="submit"
					value="Back to home page" />
			</form>


		</c:when>
		<c:otherwise>
			<p>No result</p>
		</c:otherwise>
	</c:choose>
 
 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script> 
</body>
</html>

