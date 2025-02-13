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
		<form  action="saveExpense" method="post">
	         <input type="text" name="expenseTitle" placeholder="Expense Title" required>
	         <input type="text" name="categoryName" placeholder="Category Name" required>
	         <input type="number" name="amount" placeholder="Amount" required>
	         <textbox name="description" placeholder="Description"> </textbox>
	         
	         <button type="submit" id="submit-btn">Add Expense</button>
	     </form>
	</body>
</html>