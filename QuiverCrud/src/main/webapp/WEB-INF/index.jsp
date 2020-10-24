<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiver view</title>
</head>
<body>

<h1>Welcome to Tj's quiver viewer</h1>

</body>

 <h3>Search boards by brand</h3>
	<form action="getBoard.do" method="GET">
		Board brand: <input type="text" name="brand" /> <input type="submit"
			value="search" />
	</form><br>


<h3>List of boards available</h3>
<table>
		
		<tbody>
				<c:forEach items="${boards}" var="boardList">
					<h3>${boardList.id}</h3>
					<a href="getBoard.do?id=${boardList.id}">${boardList.name}</a>
			</c:forEach>
		</tbody>
	</table>

		



</html>
