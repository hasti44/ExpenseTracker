<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        header {
            background: #333;
            color: white;
            padding: 15px;
            text-align: center;
        }
        nav ul {
            list-style: none;
            padding: 0;
        }
        nav ul li {
            display: inline;
            margin: 0 15px;
        }
        nav ul li a {
            color: white;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <header>
        <h2>Welcome, User!</h2>
        <nav>
            <ul>
                <li><a href="#">Dashboard</a></li>
                <li><a href="addExpense">Add Expense</a></li>
                <li><a href="addCategory">Add Category</a></li>
                <li><a href="#">Logout</a></li>
            </ul>
        </nav>
    </header>
    
    
</body>
</html>