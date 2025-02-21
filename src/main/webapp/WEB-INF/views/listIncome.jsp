<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Incomes </title>
	</head>
	<body align="center">
		<h1>Incomes  List</h1>
		<table border=3 align="center">
			<tr>
				<th>Income Id</th>
				<th>Title</th>
				<th>Amount</th>
				<th>Description</th>
				<th>Transaction Date</th>
				<th>Action</th>
			</tr> 
			<c:forEach items="${incomeList}" var="i">
					<tr>
						<td>${i.incomeId }</td>
						<td>${i.amount }</td>
						<td>${i.title }</td>
						<td>${i.description }</td>
						<td>${i.transactionDate }</td>
						<td><a href="viewIncome?incomeId=${i.incomeId}"> view </a> | 	
							<a href="deleteIncome?incomeId=${i.incomeId}"> delete </a> |
							<a href="editIncome?incomeId=${i.incomeId}"> edit </a> </td>
					</tr> 
			</c:forEach>
		</table>
	</body>
</html>