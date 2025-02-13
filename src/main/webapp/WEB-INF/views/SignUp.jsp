<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>sign up page</title>
		<!-- <link rel="stylesheet" href="/webContent/style.css"> -->
	</head>
	<style>
	  	body {
		    font-family: Arial, sans-serif;
		    display: flex;
		    justify-content: center;
		    align-items: center;
		    height: 100vh;
		    background-color: #f4f4f4;
		    margin: 0;
		}
		
		.form-box {
		    background: white;
		    padding: 20px;
		    border-radius: 10px;
		    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		    width: 300px;
		    text-align: center;
		}
		
		h2 {
		    margin-bottom: 20px;
		    color: #333;
		}
		
		input[type="text"],
		input[type="email"],
		input[type="password"] {
		    width: 100%;
		    padding: 10px;
		    margin: 10px 0;
		    border: 1px solid #ccc;
		    border-radius: 5px;
		}
		
		button {
		    background-color: #28a745;
		    color: white;
		    padding: 10px;
		    border: none;
		    border-radius: 5px;
		    width: 100%;
		    cursor: pointer;
		    font-size: 16px;
		}
		
		button:hover {
		    background-color: #218838;
		}
		
		p {
		    margin-top: 15px;
		    font-size: 14px;
		}
		
		p a {
		    color: #007bff;
		    text-decoration: none;
		}
		
		p a:hover {
		    text-decoration: underline;
		}
		
		input[type="radio"] {
		    margin: 0 5px;
		}

			
	</style>

	<body>
	    <div class="container">
	        <div class="form-box">
	            <h2>Sign Up</h2>
	            <form id="signup-form" method="post" action="saveUser">
	                <input type="text" name="firstName" placeholder="FirstName" required>
	                <input type="text" name="lastName" placeholder="LastName" required>
	                 Gender: 
	                <input type="radio" id="male" name="gender" value="male">Male
					<input type="radio" id="female" name="gender" value="female">Female
					<input type="email" name="email" placeholder="Email" required>
	                <input type="password" name="password" placeholder="Password" required>
	                <input type="password" name="confirm-password" placeholder="Confirm Password" required>
	                
	                <button type="submit">Sign Up</button>
	            </form>
	            <p>Already have an account? <a href="login">Login</a></p>
	        </div>
	    </div>	
	</body>
</html>