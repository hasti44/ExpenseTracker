<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Category Management</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        form { width: 40%; margin: auto; }
        input { width: 100%; padding: 8px; margin: 5px 0; }
        button { background: #e74c3c; color: white; padding: 10px; border: none; cursor: pointer; }
    </style>
</head>
<body>
    <h2>Manage Categories</h2>
    <form action="saveCategory" method="post">
        <input type="text" placeholder="title" name="title" required>
        <button type="submit">Add Category</button>
    </form>
</body>
</html>
