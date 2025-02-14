<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>add category</title>
	</head>
	<body>
	<h2>Add new category</h2>

		<form  action="saveExpense" method="post" style={align:center;}>
	         <input type="text" name="expenseTitle" placeholder="Expense Title" required><BR>
	         <input type="text" name="categoryName" placeholder="Category Name" required><BR>
	         <input type="number" name="amount" placeholder="Amount" required><BR>
	         <textbox name="description" placeholder="Description"> </textbox><BR>
	         
	         <button type="submit" id="submit-btn">Add Expense</button>
	     </form>
	</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Expense Management</title>
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
        input, textarea, button {
            margin: 10px 0;
            padding: 8px;
            width: 100%;
        }
        
    </style>
</head>
<body>
    <h2>Add Expense</h2>
    <form action="saveExpense" method="post">
        Title: <input type="text" name="title" required><br>
       	Amount: <input type="number" step="0.01" name="amount" required><br>
        Description: <textarea name="description"></textarea><br>
        <button type="submit">add expense</button>
    </form>
    
   </body>
</html>
