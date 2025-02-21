<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Income </title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        form { width: 50%; margin: auto; }
        input, textarea { width: 100%; padding: 8px; margin: 5px 0; }
        button { background: #2ecc71; color: white; padding: 10px; border: none; cursor: pointer; }
    </style>
</head>
<body>
    <h2>Add Income </h2>
    <form method="post" action="saveIncome" >
        <input type="text" placeholder="title" name="title" required>
        <input type="number" placeholder="amount" name="amount" required>
        <textarea placeholder="description" name="description"></textarea>
        <button type="submit">Add Income</button>
    </form>
</body>
</html>
