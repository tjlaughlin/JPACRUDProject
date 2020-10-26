<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Surfboard Rack</title>
	<link rel="stylesheet" href="css/mainStyles.css"></link>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body style="background-color:grey;">
<div class="container-fluid">
	<h1>Surfboard rack</h1><br>
	<h3>Search for a board</h3>
	
	<br>
	<div >
	<form action="getBoard.do" method="GET">
		Board ID: <input type="text" name="id" /> <input type="submit" 
			value="Search" />
	</form><br>
	
	
	<form action="getBoardBrand.do" method="GET">
		Board brand: <input type="text" name="brand" /> <input type="submit"
			value="Search" />
	</form><br>
	
	<form action="getBoardName.do" method="GET">
		Board name: <input type="text" name="name" /> <input type="submit"
			value="Search" />
	</form><br>
	</div>
	
	
		<form action="addBoard.do" method="GET">
		<input type="hidden" name="" value="" /> <input type="submit"
			value="Add board" />
	</form><br>
	
	
	<h3>List of all boards</h3><br>
	
	<table class="table table-dark">
		<thead class="thead thead-dark">
		  <tr>
			<th>Board ID</th>
			<th>Name</th>
		  </tr>
		</thead>
		<tbody>
			<c:forEach items="${boards}" var="boards">
				<tr>
					<td>${boards.id}</td>
					<td><a href="getBoard.do?id=${boards.id}">${boards.name}</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script> 
</body>
</html>