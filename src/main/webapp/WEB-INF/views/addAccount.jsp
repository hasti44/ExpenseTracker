<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Account Management</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        form, table { width: 50%; margin: auto; }
        input, textarea { width: 100%; padding: 8px; margin: 5px 0; }
        button { background: #f39c12; color: white; padding: 10px; border: none; cursor: pointer; }
    </style>
</head>
<body>
    <h2>Account Management</h2>
    <form action="saveAccount" method="post">
        <input type="text" placeholder="title" name="title" required>
        <input type="number" placeholder="amount" name="amount" required>
        <textarea placeholder="description" name="description"></textarea>
        <button type="submit">Create Account</button>
    </form>
</body>
</html>
