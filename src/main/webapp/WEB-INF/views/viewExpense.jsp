<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>A expense detail</title>
	</head>
	<body>
		<h2>Expense </h2>		
		<h3>	
				Amount :${e.amount }<br>
				Title :	${e.expenseTitle }<br>
				Description :${e.description }<br>
				Transaction Date :${e.transactionDate }<br>
				Account Id :${e.accountId }<br>
		</h3>	
			
	</body>
</html>