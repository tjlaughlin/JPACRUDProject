<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film Query</title>
</head>
<body style="background-color:grey;">

			<h3>Add board</h3> 
			<br>
			
			 <form action="addedBoard.do" method="GET"> 
				<%-- <label for="brand">Id:</label> <input type="text" name="id"
					value="${board.id}" /> <input type="hidden" name="id"
					value="${board.id}" />   --%>
			<br>
				<label for="brand">Brand:</label> <input type="text" name="brand"
					value="${board.brand}" /> 
			<br>
				<label for="name">Name:</label> <input type="text" name="name"
					value="${board.name}" /> 
			<br>
				<label for="price">Price:</label> <input type="text" name="price"
					value="${board.price}" /> 
			<br>
				<label for="length">Length:</label> <input type="text" name="length"
					value="${board.length}" /> 
			<br>
				<label for="volume">Board Volume:</label> <input type="text" name="volume"
					value="${board.volume}" /> 
			<br>
				<label for="tailShape">Tail shape:</label> <input type="text" name="tailShape"
					value="${board.tailShape}" /> 
			<br>
				<label for="boardType">Board type:</label> <input type="text" name="boardType"
					value="${board.boardType}" /> 
			<br>
				<label for="waveHeight">Wave height:</label> <input type="text" name="waveHeight"
					value="${board.waveHeight}" /> 
			<br>
			<button type=“submit”  >Submit</button>
			</form>
			
			<br>
			
		
		<br>
		<br>
		<br>
			<form action="/" method="GET">
				<input type="hidden" name="" value="" /> <input type="submit"
					value="Back to home page" />
			</form>

		
 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script> 
</body>
</html>

