<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>add category</title>
	</head>
	<body>
	<h2>Add new category</h2>
		<form  action="saveCategory" method="post">
	         <input type="text" name="category" placeholder="Category" required>
	         
	         <button type="submit" id="submit-btn">Add</button>
	     </form>
	</body>
</html>