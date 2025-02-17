<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Expense of user</title>
	</head>
	<body>
	
		<h2>Add Expense</h2>
	    <form action="saveExpense" method="post">
	        <input type="text" name="title"  placeholder="title" required><br>
	       	<input type="number" step="0.01" name="amount"  placeholder="amount" required><br>
	        <textarea name="description" placeholder="description" ></textarea><br>
	        <button type="submit">add expense</button>
	    </form>
    
		
	</body>
	<style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            padding: 20px;
            background-color: #f4f4f4;
        }
        h2 {
            color: #333;
        }
        form {
           
		    background: white;
		    padding: 20px;
		    border-radius: 10px;
		    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		    width: 300px;
		    text-align: center;
		
        }
        input, textarea {
            margin: 10px 0;
            padding: 8px;
            width: 100%;
        }
        
    </style>
</html>