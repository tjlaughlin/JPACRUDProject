<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>


	<div>
		<h3>${board.brand} - ${board.name} - ${board.boardType} board -
			$${board.price}</h3>
		<p>${board.tailShape}</p>
		<p>${board.length}"</p>
		<p>${board.volume}</p>
		<p>Best waves to surf are around "${board.waveHeight}" in size</p>
	</div>

	<br>
	<br>


	<form action="getBoardUpdate.do" method="GET">
		<input type="hidden" name="id" value="${board.id }" /> <input
			type="submit" value="Update board specs" />
	</form>
	<br>

	<form action="deleteBoard.do" method="GET">
		<input type="hidden" name="id" value="${board.id}" /> <input
			type="submit" value="Delete board from quiver" />
	</form>
	<br>

	<form action="/" method="GET">
		<input type="hidden" name="" value="" /> <input type="submit"
			value="Back to home page" />
	</form>
	<br>

</body>
</html>