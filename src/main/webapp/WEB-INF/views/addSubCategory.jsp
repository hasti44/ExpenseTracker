<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>add Subcategory </title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        form { width: 40%; margin: auto; }
        input { width: 100%; padding: 8px; margin: 5px 0; }
        button { background: #d35400; color: white; padding: 10px; border: none; cursor: pointer; }
    </style>
</head>
<body>
    <h2>add Subcategory</h2>
    <form action="saveSubCategory" method="post">
        <input type="text" placeholder="title" name="title" required>
        <input type="number" placeholder="categoryId" name="categoryId" required>
        <button type="submit">Add Subcategory</button>
    </form>
</body>
</html>
