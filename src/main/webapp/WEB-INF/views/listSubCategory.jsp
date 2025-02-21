<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Sub Categories</title>
	</head>
	<body align="center">
		<h1>Sub Category List</h1>
		<table border=3 align="center">
			<tr>
				<th>SubCategory Id</th>
				<th>Title</th>
				<th>Action</th>
			</tr> 
			<c:forEach items="${subCategoryList}" var="i">
					<tr>
						<td>${i.subCategoryId }</td>
						<td>${i.title }</td>
						<td><a href="viewSubCategory?subCategoryId=${i.subCategoryId}"> view </a> | 	
							<a href="deleteSubCategory?subCategoryId=${i.subCategoryId}"> delete </a> |
							<a href="editSubCategory?subCategoryId=${i.subCategoryId}"> edit </a> </td>
					</tr> 
					 
			</c:forEach>
		</table>
	</body>
</html>