<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Categories</title>
	</head>
	<body align="center">
		<h1>Category List</h1>
		<table border=3 align="center">
			<tr>
				<th>Category Id</th>
				<th>Title</th>
			</tr> 
			<c:forEach items="${categoryList}" var="i">
					<tr>
						<td>${i.categoryId}</td>
						<td>${i.title }</td>
					</tr> 
			</c:forEach>
		</table>
	</body>
</html>