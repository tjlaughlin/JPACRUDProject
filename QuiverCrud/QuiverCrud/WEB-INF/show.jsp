<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body style="background-color:grey;">
<div class="container-fluid">
	<c:choose>
		<c:when test="${! empty board }">
			<div>
				<h3>${board.brand}-${board.name} - ${board.boardType} board -
					$${board.price}</h3>
				<p>${board.tailShape}</p>
				<p>${board.length}"</p>
				<p>${board.volume}</p>
				<p>Best waves to surf are around "${board.waveHeight}" in size</p>
			</div>
			<form action="getBoardUpdate.do" method="GET">
				<input type="hidden" name="id" value="${board.id }" /> <input
					type="submit" value="Update board specs" />
			</form>
			<br>

			<form action="deleteBoard.do" method="GET">
				<input type="hidden" name="id" value="${board.id}" /> <input
					type="submit" value="Delete board from rack" />
			</form>
			<br>

			<form action="/" method="GET">
				<input type="hidden" name="" value="" /> <input type="submit"
					value="Back to home page" />
			</form>
			<br>
		</c:when>
		<c:otherwise>
			<p>No result</p>
			<br>
			<form action="/" method="GET">
				<input type="hidden" name="" value="" /> <input type="submit"
					value="Back to home page" />
			</form>

		</c:otherwise>
	</c:choose>

</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script> 
</body>
</html>