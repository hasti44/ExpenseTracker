<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Expense of user</title>
	</head>
	<body align="center">
		<h1>Expense List</h1>
		<table border=3 align="center">
			<tr>
				<th>Expense Id</th>
				<th>Amount</th>
				<th>Title</th>
				<th>Description</th>
				<th>Transaction Date</th>
				<th>Account Id</th>
				<th>Action</th>
			</tr>
			<c:forEach items="${expenseList}" var="i">
					<tr>
						<td>${i.expenseId }</td>
						<td>${i.amount }</td>
						<td>${i.title }</td>
						<td>${i.description }</td>
						<td>${i.transactionDate }</td>
						<td>${i.accountId }</td>
						<td><a href="viewExpense?expenseId=${i.expenseId}"> view </a> | 	
							<a href="deleteExpense?expenseId=${i.expenseId}"> delete </a> |
							<a href="editExpense?expenseId=${i.expenseId}"> edit </a> </td>
					</tr> 
			</c:forEach>
		</table>
	</body>
</html>