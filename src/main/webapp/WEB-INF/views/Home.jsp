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
        .summary {
            display: flex;
            justify-content: space-around;
            margin: 20px;
        }
        .card {
            background: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .add-expense {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            background: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .transactions {
            margin: 20px;
            background: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background: #f8f8f8;
        }
    </style>
</head>
<body>
    <header>
        <h2>Welcome, User!</h2>
        <nav>
            <ul>
                <li><a href="#">Dashboard</a></li>
                <li><a href="#">Add Expense</a></li>
                <li><a href="#">Reports</a></li>
                <li><a href="#">Logout</a></li>
            </ul>
        </nav>
    </header>
    
    <main>
        <section class="summary">
            <div class="card">Total Income: $5000</div>
            <div class="card">Total Expenses: $3000</div>
            <div class="card">Balance: $2000</div>
        </section>
        
        <button class="add-expense">+ Add Expense</button>
        
        <section class="transactions">
            <h3>Recent Transactions</h3>
            <table>
                <tr>
                    <th>Date</th>
                    <th>Description</th>
                    <th>Amount</th>
                </tr>
                <tr>
                    <td>Feb 10, 2025</td>
                    <td>Groceries</td>
                    <td>$150</td>
                </tr>
                <tr>
                    <td>Feb 9, 2025</td>
                    <td>Electricity Bill</td>
                    <td>$100</td>
                </tr>
            </table>
        </section>
    </main>
</body>
</html>